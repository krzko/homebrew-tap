# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class RunO11yRun < Formula
  desc "A single-binary 🌯 wrapper around `docker compose` with embedded configurations to effortlessly run your local observability stack"
  homepage "https://github.com/krzko/run-o11y-run"
  version "0.8.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/krzko/run-o11y-run/releases/download/v0.8.1/run-o11y-run_darwin_arm64.tar.gz"
      sha256 "92f65b6162f9b2574973c03ea480a7f74c039946e8d904858545425e844e7d0e"

      def install
        bin.install "run-o11y-run"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/krzko/run-o11y-run/releases/download/v0.8.1/run-o11y-run_darwin_amd64.tar.gz"
      sha256 "a2ee408b9d594fcd95f0f5769803437665ef5ae26724cb2f081feac214e92382"

      def install
        bin.install "run-o11y-run"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/krzko/run-o11y-run/releases/download/v0.8.1/run-o11y-run_linux_arm64.tar.gz"
      sha256 "551d7f5614f8f423a4b138be3834d06084ea6f8110bb657c20b97b9978ab5ad2"

      def install
        bin.install "run-o11y-run"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/krzko/run-o11y-run/releases/download/v0.8.1/run-o11y-run_linux_amd64.tar.gz"
      sha256 "f3a67a259a3258629f66251fa7d7bcd8555397fd9ef9913e748f846627ee8ef0"

      def install
        bin.install "run-o11y-run"
      end
    end
  end

  test do
    system "#{bin}/run-o11y-run -v"
  end
end
