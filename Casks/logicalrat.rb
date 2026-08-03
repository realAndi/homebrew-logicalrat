cask "logicalrat" do
  version "0.1.0"
  sha256 "5df7bde4392ef7caeb50dfbbf9181180005f45c6b455d65cd29d8087e15f1a2e"

  url "https://github.com/realAndi/LogicalRat/releases/download/v#{version}/LogicalRat-#{version}.zip",
      verified: "github.com/realAndi/LogicalRat/"
  name "LogicalRat"
  desc "Menu bar battery, DPI and polling rate for the Logitech PRO X Superlight 2"
  homepage "https://github.com/realAndi/LogicalRat"

  depends_on macos: :ventura

  app "LogicalRat.app"

  zap trash: [
    "~/Library/Preferences/com.realandi.logicalrat.plist",
  ]
end
