class Wrench < Formula
  desc "Harness in golang"
  homepage "https://repo.dexterslab.in"
  url "https://repo.dexterslab.in/api/v1/repositories/toolbox/download/wrench-darwin-arm64.tar.gz"
  sha256 "489fc300f310683fc973a36a004c360282ac2837c04ac4311a9a61106852f68a"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "wrench"
  end

  test do
    system "#{bin}/wrench", "--version"
  end
end
