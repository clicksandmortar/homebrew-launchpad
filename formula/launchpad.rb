# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Launchpad < Formula
  desc "Software to be used as a service scaffolding tool for Clicks & Mortar engineers"
  homepage "https://clicksandmortar.tech/"
  version "2.1.7-beta5"
  license "MIT"

  depends_on "zsh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clicksandmortar/launchpad/releases/download/v2.1.7-beta5/Launchpad_2.1.7-beta5_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "65588750d0f2eee64fc029368fd562a9bbd3db754e105c59f023d748a578578b"

      def install
        bin.install "launchpad"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clicksandmortar/launchpad/releases/download/v2.1.7-beta5/Launchpad_2.1.7-beta5_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "6034503e0753c7ebc8089464364a00b6212dd22f9c30091a28d34e665d83eb8f"

      def install
        bin.install "launchpad"
      end
    end
  end

  test do
    system "#{bin}/launchpad", "--version"
  end
end
