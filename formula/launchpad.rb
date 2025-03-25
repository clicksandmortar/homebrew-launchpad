# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Launchpad < Formula
  desc "Software to be used as a service scaffolding tool for Clicks & Mortar engineers"
  homepage "https://clicksandmortar.tech/"
  version "2.310.0"
  license "MIT"

  depends_on "gitleaks" => "8.18.2"
  depends_on "zsh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clicksandmortar/launchpad/releases/download/v2.310.0/Launchpad_2.310.0_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "40a89943c1ac12b785aaa93bbf4d644b046b7bec3f28ef7c6905c2a93b4ade1e"

      def install
        bin.install "launchpad"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/clicksandmortar/launchpad/releases/download/v2.310.0/Launchpad_2.310.0_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "d68d2e17e96394a9eee9af63b45c8cf63149b0ca37f991314544776518c5a129"

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
