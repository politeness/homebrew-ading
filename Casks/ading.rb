cask "ading" do
  version "0.11.2"
  sha256 "56a2d3fd514eb50aad0fd54e461b0609beb8c67df8c568394913b6d0941e2653"

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
