class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.2.2/enkryptify_Darwin_arm64.tar.gz"
      sha256 "4f3afeb4d2050d7435c623ddb329ff1d40fb85e567a3a4a358fb80994ee7b3f8"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.2.2/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "c2d7f87d6f589055d0f614e19045b0f37ab50b0ef9811c3f5c28d308d4fd703f"
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
