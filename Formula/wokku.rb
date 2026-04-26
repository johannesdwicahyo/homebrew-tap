class Wokku < Formula
  desc "CLI for Wokku - deploy and manage apps on Dokku servers"
  homepage "https://wokku.cloud"
  url "https://raw.githubusercontent.com/johannesdwicahyo/wokku/main/cli/wokku"
  version "1.6.0"
  sha256 "dad7f579094fa4cf758b84ff3cca7acdf5123986abe72815212f7a255c6e3bb9"
  license "MIT"

  depends_on "ruby"

  def install
    bin.install "wokku"
  end

  test do
    assert_match "wokku", shell_output("#{bin}/wokku --help 2>&1", 0).downcase
  end
end
