class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.4.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.4.3/enkryptify_Darwin_arm64.tar.gz"
      sha256 "618e2b0f7d7c9fd6a1ed9cbdd099da3f645ba5165f4487c1bb2b65f57ab2a58d"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.4.3/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "bf863471bee95d0b29f205035e89fbaa405f3e0d43749638fcd2f03b2c57efa5"
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
