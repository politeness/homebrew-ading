cask "ading" do
  version "0.3.0"
  sha256 "c65bc7d3a6d56195952d722165bbcefbd445660f1d5c8dfde17c53a1c51d7fad"

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
