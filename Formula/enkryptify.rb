class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.3.1/enkryptify_Darwin_arm64.tar.gz"
      sha256 "1247252bf616644d176e90ac1fe7b4cdecea4fd0913b57759d9c530057121e84"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.3.1/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "6446730de47373b2eb19f3f35ad7a5e1931f716768ce7f02c776ddfa88d571d8"
    end
  end

  def install
    bin.install "ek"
    bash_completion.install "ek.bash" => "ek"
    zsh_completion.install "ek.zsh" => "_ek"
  end

  test do
    system "#{bin}/ek", "--version"
  end
end
