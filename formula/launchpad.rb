# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Launchpad < Formula
  desc "Software to be used as a service scaffolding tool for Clicks & Mortar engineers"
  homepage "https://clicksandmortar.tech/"
  version "2.26.0"
  license "MIT"

  depends_on "zsh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clicksandmortar/launchpad/releases/download/v2.26.0/Launchpad_2.26.0_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ca2807988abf2d8555e09bebb0e53c905f99a6b12dcdda7357fbbe185673b0b6"

      def install
        bin.install "launchpad"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clicksandmortar/launchpad/releases/download/v2.26.0/Launchpad_2.26.0_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "086898a44e97435e329eec37203ce689699e599b0f39d5e093c54ffba0ca0ee6"

      def install
        bin.install "launchpad"
      end
    end
  end

  test do
    system "#{bin}/launchpad", "--version"
  end
end
