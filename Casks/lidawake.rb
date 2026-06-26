cask "lidawake" do
  version "1.0.0"
  sha256 "REPLACE_WITH_SHA256_OF_THE_ZIP"   # printed by scripts/package.sh

  url "https://github.com/pistachionet/LidAwake/releases/download/v#{version}/LidAwake-#{version}.zip",
      verified: "github.com/pistachionet/LidAwake/"
  name "LidAwake"
  desc "Menu bar toggle to keep a MacBook awake with the lid closed"
  homepage "https://github.com/pistachionet/LidAwake"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "LidAwake.app"

  uninstall quit: "io.github.pistachionet.lidawake"

  zap trash:  "~/Library/Preferences/io.github.pistachionet.lidawake.plist",
      delete: "/etc/sudoers.d/lidawake"

  caveats <<~EOS
    LidAwake needs a one-time permission grant before it can toggle sleep.
    Launch it, click the menu bar icon, and choose
    "Grant permission (one-time)...". This installs a sudoers rule limited to
    exactly two pmset commands; `brew uninstall --zap` removes it.
  EOS
end
