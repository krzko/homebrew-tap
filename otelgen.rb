# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Otelgen < Formula
  desc "A tool to generate synthetic OpenTelemetry logs, metrics and traces, the core observability pillars"
  homepage "https://github.com/krzko/otelgen"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/krzko/otelgen/releases/download/v0.4.2/otelgen_darwin_amd64.tar.gz"
      sha256 "c788375d653203a59425ae4ec9ed0afa03834cf68a5406aab68d67c8f636f4dd"

      def install
        bin.install "otelgen"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/krzko/otelgen/releases/download/v0.4.2/otelgen_darwin_arm64.tar.gz"
      sha256 "a1eedd851e735b362d4216f569202272c372eaa7485b890ce862625ebace8cdb"

      def install
        bin.install "otelgen"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/krzko/otelgen/releases/download/v0.4.2/otelgen_linux_arm64.tar.gz"
      sha256 "5e8b0f2b37bc9398f490bda50efd8bc03e733346457819ea6e29652501dd0abf"

      def install
        bin.install "otelgen"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/krzko/otelgen/releases/download/v0.4.2/otelgen_linux_amd64.tar.gz"
      sha256 "8849779a637e29e07bd6e6e22ee58869d7d8e9bb5b4d5c56706c76492b5b2de4"

      def install
        bin.install "otelgen"
      end
    end
  end

  test do
    system "#{bin}/otelgen -v"
  end
end
