class Pgcumber < Formula
  desc "Use Gherkin to write plain-text, human-readable test cases for your PostgreSQL data."
  homepage "https://github.com/arkadiusjonczek/pgcumber"
  url "https://github.com/arkadiusjonczek/pgcumber/archive/refs/tags/0.2.3.tar.gz"
  sha256 "a3e01abc39f78e9b029398b59f98f73f1bebc8e5876cefb74330d5af111f325f"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"pgcumber"), "./cmd/pgcumber"
  end

  test do
    assert_match "pgcumber", shell_output("#{bin}/pgcumber --version", 1)
  end
end
