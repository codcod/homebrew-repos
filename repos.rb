# After a new release of repos:
# - update version number in "url"
# - run: "shasum -a 256 ~/Downloads/repos-1.0.x.tar.gz" and copy output to "sha256"

class Repos < Formula
  desc "Clone multiple GitHub repositories and run arbitrary commands inside them."
  homepage "https://github.com/codcod/repos"
  url "https://github.com/codcod/repos/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "cb3e3d2ec53b3d714e46d2a48562ac82bb8f8fbe8b6f49bfce910dd447106151"
  license "MIT" # or whatever license you use

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"repos", "./cmd/repos"
  end

  test do
    system "bin/repos", "--version"
  end
end
