# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the release pipeline.
# Template variables (0.1.3, {{SHA256_*}}) are replaced at release time.
class Elekspixel < Formula
  desc "CLI bridge for EleksMaker WiFi pixel LED displays"
  homepage "https://github.com/zshx-dev/elekspixel"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zshx-dev/elekspixel/releases/download/v0.1.3/elekspixel-aarch64-apple-darwin.tar.gz"
      sha256 "cb90080e58ca8d749ca0e48e7428a3f75b5445d14f7bf700e231f0bcb7e8948d"
    end
    on_intel do
      url "https://github.com/zshx-dev/elekspixel/releases/download/v0.1.3/elekspixel-x86_64-apple-darwin.tar.gz"
      sha256 "81e5f81b8f1230a0fb5e8f6a1356e872a5df4623458b0624d00f01def09f35bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zshx-dev/elekspixel/releases/download/v0.1.3/elekspixel-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c62398faca5e81f87bddc7e5a8487ba2037df3f257ed25b4b641e61adfdce784"
    end
    on_intel do
      url "https://github.com/zshx-dev/elekspixel/releases/download/v0.1.3/elekspixel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ed98d9701c4fdb256eaa6a45c9dbb39dc138017bd6a3ce5f4f0b04dabeda6bd"
    end
  end

  def install
    bin.install "elekspixel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/elekspixel --version")
  end
end
