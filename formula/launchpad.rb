# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Launchpad < Formula
  desc "Software to be used as a service scaffolding tool for Clicks & Mortar engineers"
  homepage "https://clicksandmortar.tech/"
  version "2.279.1"
  license "MIT"

  depends_on "gitleaks"
  depends_on "zsh"

  on_macos do
    on_arm do
      url "https://github.com/clicksandmortar/launchpad/releases/download/v2.279.1/Launchpad_2.279.1_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "118effb3711b987ad05110cda0faeadecaf2a0df79c5f604ca28865fe6312be6"

      def install
        bin.install "launchpad"
      end
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/clicksandmortar/launchpad/releases/download/v2.279.1/Launchpad_2.279.1_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "4d5862504ec15a320419e3831de9e5dadb902b5f32191020ea3dc05c225de6a6"

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
