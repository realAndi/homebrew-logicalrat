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

  # The build is ad-hoc signed rather than notarized, so Homebrew's quarantine would stop it
  # launching. Install with --no-quarantine, or clear the attribute afterwards.
  caveats do
    <<~EOS
      LogicalRat is ad-hoc signed and not notarized, so macOS will refuse to open it
      unless the quarantine attribute is cleared:

        xattr -dr com.apple.quarantine "#{appdir}/LogicalRat.app"

      Installing with --no-quarantine avoids this:

        brew install --cask --no-quarantine logicalrat
    EOS
  end

  zap trash: [
    "~/Library/Preferences/com.realandi.logicalrat.plist",
  ]
end
