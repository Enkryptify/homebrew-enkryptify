# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Enkryptify < Formula
  desc "Official Enkryptify CLI for injecting secrets into your codebase"
  homepage "https://enkryptify.com"
  version "0.1.1"
  license "GPL-3.0-only"

  on_macos do
    on_intel do
      url "https://github.com/Enkryptify/cli/releases/download/v0.1.1/enkryptify_Darwin_x86_64.tar.gz"
      sha256 "7864438569dfe8d2b6e187d5042a5de56cddbfa14aa785eb8fb607a3f212b6b5"

      def install
        bin.install "enkryptify"
      end
    end
    on_arm do
      url "https://github.com/Enkryptify/cli/releases/download/v0.1.1/enkryptify_Darwin_arm64.tar.gz"
      sha256 "5329aeb9304297991ab647a3fc84633990e4d5cc80c709a9c46e99b904474630"

      def install
        bin.install "enkryptify"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Enkryptify/cli/releases/download/v0.1.1/enkryptify_Linux_x86_64.tar.gz"
        sha256 "7ce93125130ceff412dff8e530164b310591536e742bc5a829f40ea12aeab59d"

        def install
          bin.install "enkryptify"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/Enkryptify/cli/releases/download/v0.1.1/enkryptify_Linux_armv6.tar.gz"
        sha256 "af039346b2f672ae99c953a9213e03f29ac87c0820afa4ebc6d47b7c00ec1481"

        def install
          bin.install "enkryptify"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Enkryptify/cli/releases/download/v0.1.1/enkryptify_Linux_arm64.tar.gz"
        sha256 "066d7712155b077ab22f8de1f0791bfe0b2fd5d374ad46460535b010253da696"

        def install
          bin.install "enkryptify"
        end
      end
    end
  end

  test do
    system "#{bin}/enkryptify --version"
  end
end
