cask "ading" do
  version "0.8.2"
  sha256 "b2e89b7ef84f73dc381cc88975dc33d0b83418b81211542231dad9edcca49c64"

  url "https://politeness-ading.oss-cn-shanghai.aliyuncs.com/ota/desktop_mac/releases/#{version}/ADing-#{version}-arm64.dmg"
  name "阿钉"
  name "ADing"
  desc "Chat-style workspace that puts your local coding agents on one team"
  homepage "https://www.coffeestudy.com.cn/ading/"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "ADing.app"

  zap trash: [
    "~/Library/Application Support/ADing",
    "~/Library/Preferences/com.politeness.ading.plist",
    "~/Library/Saved Application State/com.politeness.ading.savedState",
  ]
end
