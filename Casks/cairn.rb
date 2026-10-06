cask "cairn" do
  version "0.1.6"
  sha256 "86677a1b89d41a6eef22b4122df92d1523fdbae8f180f89accca6a217dc16bbd"

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
