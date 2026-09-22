cask "ading" do
  version "0.5.0"
  sha256 "ca5513f6006ec75304d2316888af73de4fb632b45e7ee3b8cdb68adef0b51ea6"

  url "https://politeness-ading.oss-cn-shanghai.aliyuncs.com/releases/#{version}/ADing-#{version}-arm64.dmg"
  name "阿钉"
  name "ADing"
  desc "Chat-style workspace that puts your local coding agents on one team"
  homepage "https://www.coffeestudy.com.cn/"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "阿钉.app"

  zap trash: [
    "~/Library/Application Support/阿钉",
    "~/Library/Preferences/com.xianqiu.ading.desktop.plist",
    "~/Library/Saved Application State/com.xianqiu.ading.desktop.savedState",
  ]
end
