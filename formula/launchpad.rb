# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Launchpad < Formula
  desc "Software to be used as a service scaffolding tool for Clicks & Mortar engineers"
  homepage "https://clicksandmortar.tech/"
  version "2.252.0"
  license "MIT"

  depends_on "gitleaks"
  depends_on "zsh"

  on_macos do
    on_arm do
      url "https://github.com/clicksandmortar/launchpad/releases/download/v2.252.0/Launchpad_2.252.0_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "df702d812129eab973771fbfc8eb3a7730ebfc410a378e7cb147552a0f1a4fc8"

      def install
        bin.install "launchpad"
      end
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/clicksandmortar/launchpad/releases/download/v2.252.0/Launchpad_2.252.0_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "d7b9c1c60d1ede9ece44a096e4d6a28724449c13f56957f8117cf3505bfbf0aa"

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
