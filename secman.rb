# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Secman < Formula
  desc "👊 Human-friendly and amazing TUI secrets manager"
  homepage "https://secman.dev"
  version "6.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scmn-dev/secman/releases/download/v6.2.3/secman_macos_v6.2.3_amd64.zip"
      sha256 "107e0e864aa0efe5edca75c9dd0b3ae01a6528e266330c47fea687167a5fcf94"

      def install
        bin.install "bin/secman"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scmn-dev/secman/releases/download/v6.2.3/secman_macos_v6.2.3_arm64.zip"
      sha256 "8b3e3e0cab57d554d791da77681d14afc3e8fe87f1d3903e16a6d31c264b44f8"

      def install
        bin.install "bin/secman"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scmn-dev/secman/releases/download/v6.2.3/secman_linux_v6.2.3_arm64.zip"
      sha256 "21993318b2eb814cb5dd4b0570379e55ab4b185edb7e2c25fcb43a8f512ab8ca"

      def install
        bin.install "bin/secman"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/scmn-dev/secman/releases/download/v6.2.3/secman_linux_v6.2.3_arm.zip"
      sha256 "c0ea63ad5933887a41f58f3265f6a53a8370e717818169bd89454f263bb2bfe1"

      def install
        bin.install "bin/secman"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scmn-dev/secman/releases/download/v6.2.3/secman_linux_v6.2.3_amd64.zip"
      sha256 "e35b52ee751435f88079c7031ee6023ac3aaa8934631d6a662ce7b0b0c515384"

      def install
        bin.install "bin/secman"
      end
    end
  end

  def post_install
    system "npm install --global @secman/scc"
  end
end
