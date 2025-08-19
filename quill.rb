# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Quill < Formula
  desc "Static SPA blog generator from Markdown"
  homepage "https://github.com/bim-dev-tools/quill"
  url "https://github.com/bim-dev-tools/quill/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "e3a1dc3854ebaed9956fe60cf6bf2d6c8ade911a830242722e1e9f943f0c0ec9"
  license "MIT"

  depends_on "go" => :build

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "go", "build", *std_go_args(ldflags: "-s -w"), "."
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test quill`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end
