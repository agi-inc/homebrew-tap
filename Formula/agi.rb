class Agi < Formula
  desc "Terminal-based AI agent for desktop automation"
  homepage "https://github.com/agi-inc/agi-cli"
  url "https://registry.npmjs.org/@agi_inc/cli/-/cli-0.5.2.tgz"
  sha256 "5e505817ab86337e6566f980e30a221d1b0c391da9b78f616d143371628c2a2e"
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
