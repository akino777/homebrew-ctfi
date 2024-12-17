# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Ctfi < Formula
  desc "This is a CLI that creates text for inspection."
  homepage ""
  url "https://github.com/akino777/ctfi/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "d1d1f114bb0070ed52293dba7c11aab3acc62ebfdd69278795026977430b4b8c"
  license "MIT"

  depends_on 'swift' => :build

  def install
    system 'swift', 'build', '-c', 'release', '--disable-sandbox'
    bin.install '.build/release/ctfi'
  end


  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test ctfi`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end
