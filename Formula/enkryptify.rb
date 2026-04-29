class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.3.4/enkryptify_Darwin_arm64.tar.gz"
      sha256 "1350db1da48d3f3b5bc0bcc1e7722b0593f499f8da1a5f15ec03b871768ff021"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.3.4/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "41e720879dc4c9e9cebe252d3f59ce654b44b43fceeff0c630e184b23ec6766d"
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
