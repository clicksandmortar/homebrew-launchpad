# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Launchpad < Formula
  desc "Software to be used as a service scaffolding tool for Clicks & Mortar engineers"
  homepage "https://clicksandmortar.tech/"
  version "2.77.0"
  license "MIT"

  depends_on "zsh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clicksandmortar/launchpad/releases/download/v2.77.0/Launchpad_2.77.0_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f65138db811019459764782a7765d47d6fcf8e0523c5ee167b1f4bbef86683ad"

      def install
        bin.install "launchpad"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clicksandmortar/launchpad/releases/download/v2.77.0/Launchpad_2.77.0_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c5c2fc9e8a9ae6390cd95deb1877cf21384f079da3b0e0773406c7ca684882ab"

      def install
        bin.install "launchpad"
      end
    end
  end

  test do
    system "#{bin}/launchpad", "--version"
  end
end
