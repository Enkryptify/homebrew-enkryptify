class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.2.5/enkryptify_Darwin_arm64.tar.gz"
      sha256 "7ecba33c111b4cf35398a33b5e0cf843794401562e5a58e0f3f3a727d7a7c9d6"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.2.5/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "f3f66899660d015c32179f12a3f2514cd921a87f6673072a0e17e81272c1fec6"
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
