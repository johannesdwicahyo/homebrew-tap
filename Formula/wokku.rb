class Wokku < Formula
  desc "CLI for Wokku Cloud — deploy and manage apps, databases and storage"
  homepage "https://wokku.cloud"
  url "https://rubygems.org/downloads/wokku-cli-0.11.0.gem"
  version "0.11.0"
  sha256 "bd05d706209283f3724dbea6ec881ec91b7b21a7ec218be74c0667b3c79c5e23"
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
