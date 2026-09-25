cask "ading" do
  version "0.7.0"
  sha256 "8d6dd68c706cfa84ed2e73cae8a414028f6d14a4f7a367eea8174cdd88857298"

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
