class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.3.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.3.7/enkryptify_Darwin_arm64.tar.gz"
      sha256 "4ed8371e3bd212a9072b03c2fcb394d518fd9e4fc8b0beeffb551b9e1cb04c4f"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.3.7/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "c6158363ef00858ee94222e67deb4680cf1c0de83c8d791cc8ec5b52122adefb"
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
