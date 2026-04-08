class Wokku < Formula
  desc "CLI for Wokku - deploy and manage apps on Dokku servers"
  homepage "https://wokku.dev"
  url "https://raw.githubusercontent.com/johannesdwicahyo/wokku/main/cli/wokku"
  version "0.1.0"
  sha256 "6befad3151519c60f7d037a8b38b217ab8003f7c7ce0791b118a40996ec7f82d"
  license "MIT"

  depends_on "ruby"

  def install
    bin.install "wokku"
  end

  test do
    assert_match "Wokku CLI", shell_output("#{bin}/wokku version 2>&1", 0)
  end
end
