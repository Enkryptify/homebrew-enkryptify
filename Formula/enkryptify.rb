class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.2.1/enkryptify_Darwin_arm64.tar.gz"
      sha256 "8678898e73826b294af8ec4b4a117fa80805bd7cd933d20ad0779f24669db3d9"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.2.1/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "f8cfee9fe6794da2198c0b38b485b84d0e590beb3fc3f55791b500a89f8758fb"
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
