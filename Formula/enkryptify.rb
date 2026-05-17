class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.3.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Enkryptify/cli/releases/download/v0.3.6/enkryptify_Darwin_arm64.tar.gz"
      sha256 "e45db5b51ce8fa3a40e1f32395b21e71c3ddbb3200875e7ed1e09a6b974d28bb"
    else
      url "https://github.com/Enkryptify/cli/releases/download/v0.3.6/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "6b3ef4502c7450c833b9dea433a7e2882b3779577056db016ee47469805dae42"
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
