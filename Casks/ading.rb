cask "ading" do
  version "0.8.0"
  sha256 "a0a26c99a28c89f8e4879daf26b2a57a890b7328c20f92e7dac4e187ccaf7670"

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
