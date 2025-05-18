class Repos < Formula
  desc "CLI tool to operate multiple GitHub repos"
  homepage "https://github.com/codcod/repos"
  url "https://github.com/codcod/repos/archive/v1.0.0.tar.gz"
  sha256 "894a31867e905d54ec3327f83ee55f202fe7b6e547eebbfeda926eb306db54b5"
  license "MIT" # or whatever license you use

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/repos", "--version"
  end
#   test do
#     # Add a basic test that verifies the tool works
#     assert_match "version", shell_output("#{bin}/yourtoolname --version")
#   end
end