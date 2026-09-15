cask "ading" do
  version "0.3.0"
  sha256 "f607f92b6bf4f89637cf703ba42b7bb3275f2e8f23cfdfa1c1e7b7592397501b"

  url "https://politeness-ading.oss-cn-shanghai.aliyuncs.com/releases/#{version}/ADing-#{version}-arm64.dmg"
  name "阿钉"
  name "ADing"
  desc "Chat-style workspace that puts your local coding agents on one team"
  homepage "https://www.coffeestudy.com.cn/"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "阿钉.app"

  zap trash: [
    "~/Library/Application Support/阿钉",
    "~/Library/Preferences/com.xianqiu.ading.desktop.plist",
    "~/Library/Saved Application State/com.xianqiu.ading.desktop.savedState",
  ]
end
