class Agi < Formula
  desc "Terminal-based AI agent for desktop automation"
  homepage "https://github.com/agi-inc/agi-cli"
  url "https://registry.npmjs.org/@agi_inc/cli/-/cli-0.5.1.tgz"
  sha256 "53a351bc0eb1971274e4caac1b81488dd6ee73c80407289fb937642db737125b"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/agi"
  end

  test do
    assert_match "agi", shell_output("#{bin}/agi --help", 1)
  end
end
