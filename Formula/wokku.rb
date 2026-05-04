class Wokku < Formula
  desc "CLI for Wokku — deploy and manage apps on Dokku servers"
  homepage "https://github.com/johannesdwicahyo/wokku-cli"
  url "https://rubygems.org/downloads/wokku-cli-0.1.0.gem"
  version "0.1.0"
  sha256 "bf1f086c2d6a950a096f6bc516510b9c97b692346b6abb5d1dc4959f3d4cb10c"
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
