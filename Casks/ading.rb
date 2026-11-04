cask "ading" do
  version "0.11.1"
  sha256 "d0bc0720bc9d8530efdfbd7f8582bddbfd82bf9b39dd237f6d767938fed7f175"

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
