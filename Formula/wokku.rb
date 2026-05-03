class Wokku < Formula
  desc "CLI for Wokku - deploy and manage apps on Dokku servers"
  homepage "https://wokku.cloud"
  url "https://wokku.cloud/cli/wokku.tar.gz"
  version "2.0.0"
  sha256 "7b38c29cc3132a85f63dbc018586a370d10557c921efc6e4cb43a4bfe1655fcc"
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
