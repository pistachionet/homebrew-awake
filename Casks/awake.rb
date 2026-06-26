cask "awake" do
  version "1.0.0"
  sha256 "cb197c74e44c21958e7b9c7de5432ab048c0203ca6c7f6cd3220118c0386b31d"

  url "https://github.com/pistachionet/awake/releases/download/v#{version}/Awake-#{version}.zip",
      verified: "github.com/pistachionet/awake/"
  name "Awake"
  desc "Menu bar toggle to keep a MacBook awake with the lid closed"
  homepage "https://github.com/pistachionet/awake"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Awake.app"

  uninstall quit: "io.github.pistachionet.awake"

  zap trash:  "~/Library/Preferences/io.github.pistachionet.awake.plist",
      delete: "/etc/sudoers.d/awake"

  caveats <<~EOS
    Awake needs a one-time permission grant before it can toggle sleep.
    Launch it, click the menu bar icon, and choose
    "Grant permission (one-time)...". This installs a sudoers rule limited to
    exactly two pmset commands; `brew uninstall --zap awake` removes it.
  EOS
end
