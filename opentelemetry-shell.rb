class OpentelemetryShell < Formula
  desc "OpenTelemetry functions for shells"
  homepage "https://github.com/krzko/opentelemetry-shell"
  url "https://github.com/krzko/opentelemetry-shell.git", tag: "0.0.1", revision: "8250bcb16eb71547656d44b84fc23ba1eb2a30bc"
  version "0.0.1"
  license "Apache-2.0"

  depends_on 'curl'
  depends_on 'jq'

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "make", "version"
  end
end
