# After a new release of repos:
# - update version number in "url"
# - run: "shasum -a 256 ~/Downloads/repos-1.0.x.tar.gz" and copy output to "sha256"

class Repos < Formula
  desc "Clone multiple GitHub repositories and run arbitrary commands inside them."
  homepage "https://github.com/codcod/repos"
  url "https://github.com/codcod/repos/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "f8f907bb931f46161d4914c9be03840925031a1b37a34416430888c4c2e2221a"
  license "MIT" # or whatever license you use

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"repos", "./cmd/repos"
  end

  test do
    system "bin/repos", "--version"
  end
end
