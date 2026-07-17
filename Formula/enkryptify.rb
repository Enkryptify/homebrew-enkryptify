class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.4.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.4.4/enkryptify_Darwin_arm64.tar.gz"
      sha256 "7697ae84d59261efc2731768e509f8de7959eee3cafb677fae5db967dd295d1c"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.4.4/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "834d8db92687d72f2e560bb25fac4608f3f37a7f53394d2e353fe4943a0852b0"
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
