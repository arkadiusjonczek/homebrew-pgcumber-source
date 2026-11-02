class Pgcumber < Formula
  desc "Use Gherkin to write plain-text, human-readable test cases for your PostgreSQL data."
  homepage "https://github.com/arkadiusjonczek/pgcumber"
  
  url "https://github.com/arkadiusjonczek/pgcumber.git",
      tag:      "0.2.3",
      revision: "e3b2ddf427e977820812cb54e2663d8c8fdb825b"
  
  license "MIT"
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args(output: bin/"pgcumber", ldflags: :goreleaser), "./cmd/pgcumber"
  end

  test do
    assert_match "pgcumber", shell_output("#{bin}/pgcumber --version", 1)
  end
end
