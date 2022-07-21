# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpentelemetryShell < Formula
  desc "OpenTelemetry functions for shells"
  homepage "https://github.com/krzko/opentelemetry-shell"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/krzko/opentelemetry-shell/releases/download/v0.0.5/opentelemetry-shell_0.0.5_darwin_arm64.tar.gz"
      sha256 "5fa9982bb6b99c6302cd3fa23c0a4bdc0f410828ea714a05ec7cc0c0e280a704"

      def install
        system "make _banner && make install"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/krzko/opentelemetry-shell/releases/download/v0.0.5/opentelemetry-shell_0.0.5_darwin_amd64.tar.gz"
      sha256 "404ce370cef5657b37dd68f426868665798f1098686c17c0be1fde7ccb048b11"

      def install
        system "make _banner && make install"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/krzko/opentelemetry-shell/releases/download/v0.0.5/opentelemetry-shell_0.0.5_linux_arm64.tar.gz"
      sha256 "4be2020362d57b14c43f54faab94b9ade859e5ccf21854773ebe234f6bb82d44"

      def install
        system "make _banner && make install"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/krzko/opentelemetry-shell/releases/download/v0.0.5/opentelemetry-shell_0.0.5_linux_amd64.tar.gz"
      sha256 "31d5247926bfe900ec7fbf341ba90cbfdc6dd980c48ce5793d09a93eb092ec12"

      def install
        system "make _banner && make install"
      end
    end
  end

  depends_on "curl"
  depends_on "jq"

  test do
    system "make version"
  end
end