class Wokku < Formula
  desc "CLI for Wokku - deploy and manage apps on Dokku servers"
  homepage "https://wokku.cloud"
  url "https://wokku.cloud/cli/wokku.tar.gz"
  version "2.0.0"
  sha256 "7090dd8f99423d889a5a33d1a4439c12bcfa9d17c50d3e1e759461f654f09210"
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
