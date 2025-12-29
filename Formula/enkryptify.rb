class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.2.0/enkryptify_Darwin_arm64.tar.gz"
      sha256 "631cdc13f9d5472a6eac349ca49feb00c6c6739425c61c7088cf6cdc3a51ed1d"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.2.0/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "1e013e6a5dcf68aa845da1d59ab6a6ed33b4abc9e2b1a245d212af600f92c3d0"
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
