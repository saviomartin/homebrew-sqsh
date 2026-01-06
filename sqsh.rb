class Sqsh < Formula
  desc "Fast media compression for your terminal"
  homepage "https://github.com/saviomartin/sqsh"
  url "https://registry.npmjs.org/sqsh/-/sqsh-1.0.4.tgz"
  sha256 "8986851c348fe21552a9641b975bec0e02d917ef3abebd38b1bc44b7b2a9b9b2"
  license "MIT"

  depends_on "node"
  depends_on "ffmpeg"

  def install
    libexec.install Dir["*"]
    system "npm", "install", "-g", "#{libexec}"
  end

  test do
    system "#{bin}/sqsh", "--version"
  end
end
