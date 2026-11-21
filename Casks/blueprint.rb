cask "blueprint" do
  version "0.20.0"
  sha256 "b6fb10afe5d46f4681762db0edba44f64fbdee4f850fb05300739a40259bc953"

  # Assumed to sit next to wrench's tarball on the same host; upload bin/blueprint.dmg here.
  url "http://repo.cluster1.lab/api/v1/repositories/toolbox/download/blueprint-darwin-arm64.dmg" 
  #"https://repo.dexterslab.in/api/v1/repositories/toolbox/download/blueprint-#{version}.dmg"
  name "Blueprint"
  desc "Map a code repository into a Blockly visualization"
  homepage "https://repo.dexterslab.in"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "blueprint.app"
  # Puts `blueprint /path/to/repo` on the PATH.
  binary "#{appdir}/blueprint.app/Contents/MacOS/blueprint"

  zap trash: [
    "~/Library/Application Support/blueprint",
    "~/Library/Caches/blueprint",
    "~/Library/Preferences/com.mycompany.myproduct.plist",
    "~/Library/Saved Application State/com.mycompany.myproduct.savedState",
  ]
end
