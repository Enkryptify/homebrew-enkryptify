class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.2.1-beta.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.2.1-beta.1/enkryptify_Darwin_arm64.tar.gz"
      sha256 "af51ceca2e4612095914f28fbaf67a538121fed34d71032d40fd0899d63bc4e3"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.2.1-beta.1/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "904a6f1f58124718a381edfd46254b2e2b5919eed5d39a3fb7048273068db939"
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
