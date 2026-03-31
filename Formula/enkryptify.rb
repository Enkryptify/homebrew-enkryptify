class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.3.0/enkryptify_Darwin_arm64.tar.gz"
      sha256 "620f3efdeb68e0f92eba05de494d64ef2735ca36982ac310e2067c70ab25b9d7"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.3.0/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "f78532d00ede357ae2e19422de968a818ad76866689439158672119220d535a8"
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
