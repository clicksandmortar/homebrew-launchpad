# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Launchpad < Formula
  desc "Software to be used as a service scaffolding tool for Clicks & Mortar engineers"
  homepage "https://clicksandmortar.tech/"
  version "2.1.7-beta1"
  license "MIT"

  depends_on "zsh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clicksandmortar/launchpad/releases/download/v2.1.7-beta1/Launchpad_2.1.7-beta1_Darwin_arm64.tar.gz"
      sha256 "5443d435819e77c29cf3ac402404a903fce5dfdc6753011fa778abfd309e6118"

      def install
        bin.install "launchpad"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clicksandmortar/launchpad/releases/download/v2.1.7-beta1/Launchpad_2.1.7-beta1_Linux_arm64.tar.gz"
      sha256 "07b2f998b53dce8f34c00eb15b022099ac669e0286eff231636e04bc692928b6"

      def install
        bin.install "launchpad"
      end
    end
  end

  test do
    system "#{bin}/launchpad", "--version"
  end
end
