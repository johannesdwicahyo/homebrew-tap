class Wokku < Formula
  desc "CLI for Wokku - deploy and manage apps on Dokku servers"
  homepage "https://wokku.cloud"
  url "https://wokku.cloud/cli/wokku"
  version "2.0.0"
  sha256 "0933429f8395795208fc575096f35108a999a07c3ef968e419c55f7244a55651"
  license "MIT"

  depends_on "ruby"

  def install
    bin.install "wokku"
  end

  test do
    assert_match "wokku", shell_output("#{bin}/wokku --help 2>&1", 0).downcase
  end
end
