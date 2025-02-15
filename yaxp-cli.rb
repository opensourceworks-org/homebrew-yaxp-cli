class YaxpCli < Formula
  desc "<yaxp ⚡> Yet Another XSD Parser"
  homepage "https://github.com/opensourceworks-org/homebrew-yaxp-cli"
  url "https://github.com/opensourceworks-org/homebrew-yaxp-cli/releases/download/v0.2.2/macos-arm64-v0.2.2.tar.gz"
  sha256 "5b16bcff134ec8234d4c873e9005520c5cb065e4b3a421277273be157b87e6d1"
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
  