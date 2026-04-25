class Wokku < Formula
  desc "CLI for Wokku - deploy and manage apps on Dokku servers"
  homepage "https://wokku.cloud"
  url "https://raw.githubusercontent.com/johannesdwicahyo/wokku/main/cli/wokku"
  version "0.1.2"
  sha256 "5b1ccc8e3fa149672e0c60ef6368674b8a64c15b4ed288eba700db2d459b59c0"
  license "MIT"

  depends_on "ruby"

  def install
    bin.install "wokku"
  end

  test do
    assert_match "wokku", shell_output("#{bin}/wokku --help 2>&1", 0).downcase
  end
end
