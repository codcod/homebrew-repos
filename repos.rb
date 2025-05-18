# After a new release of repos:
# - update version number in "url"
# - run: "shasum -a 256 ~/Downloads/repos-1.0.x.tar.gz" and copy output to "sha256"

class Repos < Formula
  desc "Clone multiple GitHub repositories and run arbitrary commands inside them."
  homepage "https://github.com/codcod/repos"
  url "https://github.com/codcod/repos/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "0e9e76fa02dbf3f598b9049c7ddae17d218719823315f4acb0990acb9205cb26"
  license "MIT" # or whatever license you use

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"repos", "./cmd/repos"
  end

  test do
    system "bin/repos", "--version"
  end
end
