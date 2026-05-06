class Wokku < Formula
  desc "CLI for Wokku — deploy and manage apps on Dokku servers"
  homepage "https://github.com/johannesdwicahyo/wokku-cli"
  url "https://rubygems.org/downloads/wokku-cli-0.2.0.gem"
  version "0.2.0"
  sha256 "6621f0427fb3e18eebd44b9c503a96b946b2994748d946547ebf7dc04a677097"
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
