# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the elekspixel release pipeline.
class Elekspixel < Formula
  desc "CLI bridge for EleksMaker WiFi pixel LED displays"
  homepage "https://github.com/zshx-dev/elekspixel"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zshx-dev/elekspixel/releases/download/v0.1.2/elekspixel-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/zshx-dev/elekspixel/releases/download/v0.1.2/elekspixel-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zshx-dev/elekspixel/releases/download/v0.1.2/elekspixel-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/zshx-dev/elekspixel/releases/download/v0.1.2/elekspixel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "elekspixel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/elekspixel --version")
  end
end
