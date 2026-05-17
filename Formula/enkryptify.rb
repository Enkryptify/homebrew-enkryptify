class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.3.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.3.5/enkryptify_Darwin_arm64.tar.gz"
      sha256 "d6aed38ea83ea27b542a8d1ec485be01b01716896af2e992ccf8b958ed88ffc1"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.3.5/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "cb5bdf4c007d27c1d0dd83c9f0c3e2b56dd49964f12ea8a3a838d9bed4996997"
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
