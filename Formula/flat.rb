class Flat < Formula
  desc "Flatten codebases into AI-friendly format"
  homepage "https://github.com/zkoranges/flat"
  url "https://github.com/zkoranges/flat/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "24ca3d1b0e0f27cbdc184feec333095b6316662d7561cb0015789c5655552c11"
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
