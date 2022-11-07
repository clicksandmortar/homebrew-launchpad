# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Launchpad < Formula
  desc "Software to be used as a service scaffolding tool for Clicks & Mortar engineers"
  homepage "https://clicksandmortar.tech/"
  version "2.2.13"
  license "MIT"

  depends_on "zsh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clicksandmortar/launchpad/releases/download/v2.2.13/Launchpad_2.2.13_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "eab8497fb83d987b6ee900af7d2cfa418b52841cf1fb2e896029b4982f5e2490"

      def install
        bin.install "launchpad"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clicksandmortar/launchpad/releases/download/v2.2.13/Launchpad_2.2.13_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "74e7029d1819f7f11868059cc240f599a6e999f82b8c0a98d92a04e890ee6f9a"

      def install
        bin.install "launchpad"
      end
    end
  end

  test do
    system "#{bin}/launchpad", "--version"
  end
end
