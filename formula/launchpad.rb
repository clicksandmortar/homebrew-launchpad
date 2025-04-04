# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Launchpad < Formula
  desc "Software to be used as a service scaffolding tool for Clicks & Mortar engineers"
  homepage "https://clicksandmortar.tech/"
  version "2.312.0"
  license "MIT"

  depends_on "gitleaks" => "8.18.2"
  depends_on "zsh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clicksandmortar/launchpad/releases/download/v2.312.0/Launchpad_2.312.0_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ed742b3d105b47da70e35cdb177474ed9cd4ad4c1e08ee8af55124d57c6c309e"

      def install
        bin.install "launchpad"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/clicksandmortar/launchpad/releases/download/v2.312.0/Launchpad_2.312.0_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "648e2e9a1d0fb3ab0defa7c2df2e40487e48e48e794101b897d919b9da19914e"

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
