class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.4.1/enkryptify_Darwin_arm64.tar.gz"
      sha256 "161ed7bcd6fe4416a41a5488fb3c4d00de5d7dd78fa473e59f85a35b7b5c0282"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.4.1/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "147064ea943802551fafcc5d2606b672e5f7241152bf443292892ee081b1669f"
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
