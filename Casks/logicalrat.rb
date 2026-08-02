cask "logicalrat" do
  version "0.1.0"
  sha256 "3c3b8bd2cb27834e325270a3e3598096d2706592ada940a6ede1179a27ae548d"

  url "https://github.com/realAndi/LogicalRat/releases/download/v#{version}/LogicalRat-#{version}.zip",
      verified: "github.com/realAndi/LogicalRat/"
  name "LogicalRat"
  desc "Menu bar battery, DPI and polling rate for the Logitech PRO X Superlight 2"
  homepage "https://github.com/realAndi/LogicalRat"

  depends_on macos: :ventura

  app "LogicalRat.app"

  # The build is ad-hoc signed rather than notarized, so Gatekeeper blocks it until the
  # quarantine attribute is cleared. Homebrew removed --no-quarantine, so this is manual.
  caveats do
    <<~EOS
      LogicalRat is ad-hoc signed and not notarized, so macOS will refuse to open it
      until you clear the quarantine attribute:

        xattr -dr com.apple.quarantine "#{appdir}/LogicalRat.app"

      Alternatively, right-click the app in Finder and choose Open, then Open again.
    EOS
  end

  zap trash: [
    "~/Library/Preferences/com.realandi.logicalrat.plist",
  ]
end
