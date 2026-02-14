class Flat < Formula
  desc "Flatten codebases into AI-friendly format"
  homepage "https://github.com/zkoranges/flat"
  url "https://github.com/zkoranges/flat/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "fd1b9ba0ab54eced4540ef83104a0ab38fb5dbe3816bbf8f375440b5f798127f"
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
