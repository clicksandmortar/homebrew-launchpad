# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Launchpad < Formula
  desc "Software to be used as a service scaffolding tool for Clicks & Mortar engineers"
  homepage "https://clicksandmortar.tech/"
  version "2.243.2"
  license "MIT"

  depends_on "gitleaks"
  depends_on "zsh"

  on_macos do
    on_arm do
      url "https://github.com/clicksandmortar/launchpad/releases/download/v2.243.2/Launchpad_2.243.2_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "422612b4fd591688efdba8b6b6fa97941a79970af222c772b2cd08d4a85da9ff"

      def install
        bin.install "launchpad"
      end
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/clicksandmortar/launchpad/releases/download/v2.243.2/Launchpad_2.243.2_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "08eafc7284d99e5f8f7ccc125aa72baa9e4b5870255477bb68d04e72df0a12e3"

        def install
          bin.install "launchpad"
        end
      end
    end
  end

  test do
    system "#{bin}/launchpad", "--version"
  end
end
