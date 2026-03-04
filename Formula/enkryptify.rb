class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.2.3/enkryptify_Darwin_arm64.tar.gz"
      sha256 "5563dbb3d8718c20adcebe1d62d9dd7f872efe9d1e080335ca133587cd905ee6"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.2.3/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "2f1773b02ff0fe7e24c55fbf79f9d6648687826e2e822df45b30f8e1e710f6a2"
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
