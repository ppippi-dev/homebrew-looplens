cask "looplens" do
  version "0.1.0"
  arch arm: "arm64", intel: "x64"

  sha256 arm: "53b2447bcb83b3597c1c01d5d023dd7534cfa8664cd53c5e3a5ca61f0847f259",
         intel: "5d16ecc98e9f26b6856e585dcfd2969e2f01820c549dcf2f775b841e30d1aeff"

  url "https://github.com/ppippi-dev/stealth/releases/download/v#{version}/LoopLens-#{version}-mac-#{arch}.dmg"
  name "LoopLens"
  desc "Monitor Claude Code/OpenCode run timelines and stop causes"
  homepage "https://github.com/ppippi-dev/stealth"

  depends_on macos: ">= :sonoma"

  app "LoopLens.app"

  zap trash: [
    "~/Library/Application Support/LoopLens",
    "~/Library/Preferences/dev.ppippi.looplens.plist"
  ]
end
