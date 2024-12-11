class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  url "https://github.com/Enkryptify/cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "bb5684db1279c9de9c99b9415adf3f43d4d1fcea355d7ca12e5ec6e12ddd8aaa"
  license "GPL-3.0-only"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"enkryptify"
  end

  test do
    system bin/"enkryptify", "--version"
  end
end
