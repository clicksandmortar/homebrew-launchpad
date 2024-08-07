# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Launchpad < Formula
  desc "Software to be used as a service scaffolding tool for Clicks & Mortar engineers"
  homepage "https://clicksandmortar.tech/"
  version "2.263.0"
  license "MIT"

  depends_on "gitleaks"
  depends_on "zsh"

  on_macos do
    on_arm do
      url "https://github.com/clicksandmortar/launchpad/releases/download/v2.263.0/Launchpad_2.263.0_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e4d6bc2ac797965fc0f2005c76779bc3cce3314247d1cbdd019e1c1732f830ec"

      def install
        bin.install "launchpad"
      end
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/clicksandmortar/launchpad/releases/download/v2.263.0/Launchpad_2.263.0_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "cffe9fd43caca1acf9faf4861b10326d7bf0f31884999310ae5f07e8fe1d5384"

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
