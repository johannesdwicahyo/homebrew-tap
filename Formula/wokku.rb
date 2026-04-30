class Wokku < Formula
  desc "CLI for Wokku - deploy and manage apps on Dokku servers"
  homepage "https://wokku.cloud"
  url "https://raw.githubusercontent.com/johannesdwicahyo/wokku/main/cli/wokku"
  version "2.0.0"
  sha256 "84a981eb25ed793443fd332d28272c132ab54e78636331a8e2ece2536039b509"
  license "MIT"

  depends_on "ruby"

  def install
    bin.install "wokku"
  end

  test do
    assert_match "wokku", shell_output("#{bin}/wokku --help 2>&1", 0).downcase
  end
end
