# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Otelgen < Formula
  desc "A tool to generate synthetic OpenTelemetry logs, metrics and traces telemetry data."
  homepage "https://github.com/krzko/otelgen"
  version "0.5.1"

  on_macos do
    on_intel do
      url "https://github.com/krzko/otelgen/releases/download/v0.5.1/otelgen_darwin_amd64.tar.gz"
      sha256 "1167642ded943e1a471cc4711c05e9640dfd8ccf6dc9d7ad89c7b2235f392705"

      def install
        bin.install "otelgen"
      end
    end
    on_arm do
      url "https://github.com/krzko/otelgen/releases/download/v0.5.1/otelgen_darwin_arm64.tar.gz"
      sha256 "32c686757002e817e55a78df8dfe1d2a2e9c9e45f03f6d346c5301482e2a73bd"

      def install
        bin.install "otelgen"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/krzko/otelgen/releases/download/v0.5.1/otelgen_linux_amd64.tar.gz"
        sha256 "36ce128acc2dce2614bb1d8dcdbb51f6e2ffb0e81dd992a7e1f8b38e227874f6"

        def install
          bin.install "otelgen"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/krzko/otelgen/releases/download/v0.5.1/otelgen_linux_arm64.tar.gz"
        sha256 "e946fd7801831931cd9b98bfc0369396c96173627f8d710f84667feebefa5e3b"

        def install
          bin.install "otelgen"
        end
      end
    end
  end

  test do
    system "#{bin}/otelgen -v"
  end
end
