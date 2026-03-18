class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.2.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.2.8/enkryptify_Darwin_arm64.tar.gz"
      sha256 "60482da32e637413f5d888268710c4e1eb659a3da3560e004511bcfe9a50a97d"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.2.8/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "efb3386c53a250afa2e859dfc2c9fbe93c915b12a55442179d5b8cf155aaa8d1"
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
