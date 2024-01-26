# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Launchpad < Formula
  desc "Software to be used as a service scaffolding tool for Clicks & Mortar engineers"
  homepage "https://clicksandmortar.tech/"
  version "2.223.1"
  license "MIT"

  depends_on "zsh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clicksandmortar/launchpad/releases/download/v2.223.1/Launchpad_2.223.1_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "9bff3fe96c2d56af33be78809b9e2535640d62a2a48d8fc2805d729782583d26"

      def install
        bin.install "launchpad"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clicksandmortar/launchpad/releases/download/v2.223.1/Launchpad_2.223.1_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "663619bcba2ea08a54b8a45e7dafb178e04bf3380baa239978903043da028b94"

      def install
        bin.install "launchpad"
      end
    end
  end

  test do
    system "#{bin}/launchpad", "--version"
  end
end
