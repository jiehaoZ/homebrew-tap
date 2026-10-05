cask "cairn" do
  version "0.1.5"
  sha256 "729bf13f5485f7fa26b2ecd8dba5332b6abdaee57684c333af3226d29443b1c7"

  url "https://github.com/jiehaoZ/Cairn/releases/download/v#{version}/Cairn-#{version}-arm64.dmg"
  name "Cairn"
  desc "Turn an ebook you own into a narrated path you can walk to the end"
  homepage "https://github.com/jiehaoZ/Cairn"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Cairn.app"

  zap trash: "~/Library/Application Support/Cairn"
end
