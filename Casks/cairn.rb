cask "cairn" do
  version "0.1.2"
  sha256 "ff8ec49528262aaf108bc5fc86c806751e9bff636c4871a584ac810e2484f3e4"

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

  # The app is not notarized; without this macOS reports it as damaged.
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/Cairn.app"],
        writable_paths: ["Cairn.app"],
        writable_base:  :appdir
  end

  zap trash: "~/Library/Application Support/Cairn"
end
