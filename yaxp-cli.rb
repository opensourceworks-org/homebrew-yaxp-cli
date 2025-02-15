class MyRustCli < Formula
    desc "<yaxp ⚡> Yet Another XSD Parser"
    homepage "https://github.com/opensourceworks-org/yaxp"
    url "https://github.com/opensourceworks-org/homebrew-yaxp-cli/releases/download/v0.2.2/macos-arm64-v0.2.2.tar.gz"
    sha256 "5d1e8bdd55af522ab5a1eff9e1783f7d1df347c096fba18d7de22b66f18d7161"
    license "MIT"
  
    depends_on "rust" => :build
  
    def install
        # Install the pre-built binary into Homebrew's bin directory.
        bin.install "yaxp-cli"
    end
  
    test do
      # A basic test to verify that the binary was installed correctly.
      assert_match "yaxp-cli 0.2.2", shell_output("#{bin}/yaxp-cli --version")
    end
  end
  