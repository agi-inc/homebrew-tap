class Agi < Formula
  desc "Terminal-based AI agent for desktop automation"
  homepage "https://github.com/agi-inc/agi-cli"
  url "https://registry.npmjs.org/@agi_inc/cli/-/cli-0.5.6.tgz"
  sha256 "c8d3eae160a892e32837db3dcae515e843e5383fef52b8141940c8bcf8b6d59f"
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
