class IgniteSwift < Formula
  desc "Static site builder for Swift developers"
  homepage "https://github.com/twostraws/Ignite"
  url "https://github.com/twostraws/Ignite/archive/refs/tags/0.7.1.tar.gz"
  sha256 "9d2b87d49a5c304530058a4866372048df556264851a39d84644efb3cf95e332"
  license "MIT"

  depends_on xcode: ["16.0", :build]
  depends_on macos: :sonoma
  depends_on "python@3.14"

  conflicts_with "ignite", because: "both install an ignite executable"

  def install
    system "swift", "build", "-c", "release", "--product", "IgniteCLI", "--disable-sandbox"
    bin.install ".build/release/IgniteCLI" => "ignite"
    # The CLI locates this helper beside its executable.
    (bin/"ignite-server.py").write "#!#{formula_opt_bin("python@3.14")}/python3.14\n" + File.read("server.py")
    chmod 0755, bin/"ignite-server.py"
  end

  def caveats
    <<~EOS
      Building Ignite sites requires Swift 6 or newer, provided by Xcode or
      the Xcode Command Line Tools. Creating sites also requires Git.
    EOS
  end

  test do
    assert_match "USAGE: ignite", shell_output("#{bin}/ignite --help")
    assert_match "Can't find Package.swift", shell_output("#{bin}/ignite build")
    assert_match "--directory", shell_output("#{bin}/ignite-server.py --help")
  end
end
