class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.2.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.2.7/enkryptify_Darwin_arm64.tar.gz"
      sha256 "b395d8cdecc8eab5b3618b7e85f317d8734dbf921093b2f787ebaf7b0af975ed"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.2.7/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "72b85ab9547b27d54ccf7dbd24ce03c2cd2a310c21e853c2c5df331a38fc5744"
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
