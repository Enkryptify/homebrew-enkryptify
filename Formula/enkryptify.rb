class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.3.2/enkryptify_Darwin_arm64.tar.gz"
      sha256 "b37ab5efa6ce4dbbb32a20234b905f57a372e089370ebaf43f4ec017d2466695"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.3.2/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "a9cc5b266dbb97c5b8f5f4939c55eb7fba63a14848cc80733e9d1b992dfae74e"
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
