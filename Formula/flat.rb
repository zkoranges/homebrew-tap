class Flat < Formula
  desc "Flatten codebases into AI-friendly format"
  homepage "https://github.com/zkoranges/flat"
  url "https://github.com/zkoranges/flat/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "4f452d13967ab469c92244a2630388a86ead2d9eef2dd39c8d8a2e72d18fd1fc"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flat --version")
  end
end
