# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SlackBuddy < Formula
  desc "Slack Buddy is a convenient tool designed to help you manage your Slack status effortlessly"
  homepage "https://github.com/krzko/slack-buddy"
  version "0.1.22"
  depends_on :macos

  on_macos do
    url "https://github.com/krzko/slack-buddy/releases/download/v0.1.22/slack-buddy_darwin_all.tar.gz"
    sha256 "16f53eedda9b0fe0948b4305146650bebde79661ec01d82e61335da8d1952dc2"

    def install
      bin.install "slack-buddy"
    end
  end

  test do
    system "#{bin}/slack-buddy -v"
  end
end