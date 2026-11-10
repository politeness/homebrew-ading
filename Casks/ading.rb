cask "ading" do
  version "0.11.3"
  sha256 "5736f372fcc9ad305f50156e85a7a3f8779c918ebbf7c543602cd6ce446959b3"

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
