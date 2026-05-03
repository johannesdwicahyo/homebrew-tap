class Wokku < Formula
  desc "CLI for Wokku - deploy and manage apps on Dokku servers"
  homepage "https://wokku.cloud"
  url "https://wokku.cloud/cli/wokku.tar.gz"
  version "2.0.0"
  sha256 "5463a34c17e326c0227d5fe0f45b65bbc02a61296b457643e48383abaa71ab55"
  license "MIT"

  depends_on "ruby"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"wokku"
  end

  test do
    assert_match "wokku", shell_output("#{bin}/wokku --help 2>&1", 0).downcase
  end
end
