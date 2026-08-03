cask "logicalrat" do
  version "0.2.0"
  sha256 "90021ed0cf561c2d6764543b3968d18bf07cf7d41b386428d2cb04e214a2121d"

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
