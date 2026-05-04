class Wokku < Formula
  desc "CLI for Wokku - deploy and manage apps on Dokku servers"
  homepage "https://wokku.cloud"
  url "https://wokku.cloud/cli/wokku.tar.gz"
  version "2.0.0"
  sha256 "48ab102c424e4289d114852a8efe1172cb3699c040a28d051976ec6e5062380b"
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
