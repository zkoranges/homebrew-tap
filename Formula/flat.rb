class Flat < Formula
  desc "Flatten codebases into AI-friendly format"
  homepage "https://github.com/zkoranges/flat"
  url "https://github.com/zkoranges/flat/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "b68b29387f3570706fa39266568cb28541b6854086741903579c29f216ccbf65"
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
