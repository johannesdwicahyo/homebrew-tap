class Wokku < Formula
  desc "CLI for Wokku — deploy and manage apps on Dokku servers"
  homepage "https://github.com/johannesdwicahyo/wokku-cli"
  url "https://rubygems.org/downloads/wokku-cli-0.6.0.gem"
  version "0.6.0"
  sha256 "64ade5a8a67e0c7352e3b682a9c96bcca7af9f94e3ceee6e05eb41a084544eb5"
  license "MIT"

  depends_on "ruby"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "install", cached_download,
           "--no-document",
           "--no-user-install",
           "--install-dir", libexec
    bin.install libexec/"bin/wokku"
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end

  test do
    assert_match "wokku/", shell_output("#{bin}/wokku version")
  end
end
