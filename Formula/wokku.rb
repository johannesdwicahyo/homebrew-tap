class Wokku < Formula
  desc "CLI for Wokku — deploy and manage apps on Dokku servers"
  homepage "https://github.com/johannesdwicahyo/wokku-cli"
  url "https://rubygems.org/downloads/wokku-cli-0.5.3.gem"
  version "0.5.3"
  sha256 "80f819d7eedd39bcc7e5e0c46e23a6dd2aa606757c5baa163657cd1b144109e6"
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
