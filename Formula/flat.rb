class Flat < Formula
  desc "Flatten codebases into AI-friendly format"
  homepage "https://github.com/zkoranges/flat"
  url "https://github.com/zkoranges/flat/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "97c1552eca13a8911eac47c84f6d1563e4200e7ae0156273541abc3bf216f60f"
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
