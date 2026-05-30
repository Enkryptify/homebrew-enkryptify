class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.4.2/enkryptify_Darwin_arm64.tar.gz"
      sha256 "add66baa130923fc8f5f72eeb7e9f3f81382626d1f648981b40b70a31e6a11d8"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.4.2/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "9b6c635571599975e4d23a88c91fd3b096909a56ab4f378e61df54f08838c4ce"
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
