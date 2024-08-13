# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Launchpad < Formula
  desc "Software to be used as a service scaffolding tool for Clicks & Mortar engineers"
  homepage "https://clicksandmortar.tech/"
  version "2.266.1"
  license "MIT"

  depends_on "gitleaks"
  depends_on "zsh"

  on_macos do
    on_arm do
      url "https://github.com/clicksandmortar/launchpad/releases/download/v2.266.1/Launchpad_2.266.1_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "cf58ee7bb83cab1a6d24b0601f4802288dbdf4f51f97920cf3f807f0c4655b3f"

      def install
        bin.install "launchpad"
      end
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/clicksandmortar/launchpad/releases/download/v2.266.1/Launchpad_2.266.1_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "0f11f661712a2799a94148aea83c4c65fa9bc6143444fc610d69898ca27bbce9"

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
