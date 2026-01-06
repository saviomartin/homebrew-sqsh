class Sqsh < Formula
  desc "Fast media compression for your terminal"
  homepage "https://github.com/saviomartin/sqsh"
  url "https://registry.npmjs.org/sqsh/-/sqsh-1.0.5.tgz"
  sha256 "c8d3eae160a892e32837db3dcae515e843e5383fef52b8141940c8bcf8b6d59f"
  license "MIT"

  depends_on "node"
  depends_on "ffmpeg"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/sqsh", "--version"
  end
end
