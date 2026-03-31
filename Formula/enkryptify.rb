class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.3.3/enkryptify_Darwin_arm64.tar.gz"
      sha256 "6f85f0997e3f00f0a0ea740666fb5c39219fffdb13f453dbb02cf1be2dd4623f"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.3.3/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "0c61831d5c429140fb0ac406aca895a01a626a6eb179cff935db63ed2571bcec"
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
