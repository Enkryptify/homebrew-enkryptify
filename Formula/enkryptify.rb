class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.2.4/enkryptify_Darwin_arm64.tar.gz"
      sha256 "df4b1378f89804cbb83600e383387b367d280793f11c3d7f14fae1393e5199f0"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.2.4/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "802cb29b4b7930adc9dc006f552b65d5a4cee6a78bd16e77f7d69445fbbd2f86"
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
