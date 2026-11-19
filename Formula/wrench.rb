class Wrench < Formula
  desc "Short description of your tool"
  homepage "https://github.com/amarexperiments/wrench"
  url "https://repo.dexterslab.in/api/v1/repositories/toolbox/download/wrench-darwin-arm64.tar.gz"
  sha256 "1ae647c1dad457a05e4ee00c5e06812287fa0a845476e3bc56b3eca58ec81172"
  version "0.20.0"

  def install
    bin.install "wrench"
  end

  test do
    system "#{bin}/wrench", "--version"
  end
end
