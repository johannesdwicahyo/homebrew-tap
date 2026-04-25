class Wokku < Formula
  desc "CLI for Wokku - deploy and manage apps on Dokku servers"
  homepage "https://wokku.cloud"
  url "https://raw.githubusercontent.com/johannesdwicahyo/wokku/main/cli/wokku"
  version "0.6.0"
  sha256 "e8202a5ad19600a5659311fa7d7ecb8e689d66cae721254eb517a5bda8fd0884"
  license "MIT"

  depends_on "ruby"

  def install
    bin.install "wokku"
  end

  test do
    assert_match "wokku", shell_output("#{bin}/wokku --help 2>&1", 0).downcase
  end
end
