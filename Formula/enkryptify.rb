class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.4.0/enkryptify_Darwin_arm64.tar.gz"
      sha256 "b6ddc1950acb9624d4e9af99e597e7051124dadf44bda311fc722dbe8830931a"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.4.0/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "17b965e020d5f7c0960a702cf34de57d4c9b793a5854180454f9aa9caa586594"
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
