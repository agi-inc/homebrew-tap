class Agi < Formula
  desc "Terminal-based AI agent for desktop automation"
  homepage "https://github.com/agi-inc/agi-cli"
  url "https://registry.npmjs.org/@agi_inc/cli/-/cli-0.4.0.tgz"
  sha256 "1c550553dfcb03bcc40bc129d83e8131f49870bfb6ae020cd0aaf46f3182ff6c"
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
