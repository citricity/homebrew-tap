cask "diff-trek" do
  version "0.0.4"
  sha256 "…"   # shasum -a 256 on the release .dmg

  url "https://github.com/citricity/difftrek/releases/download/#{version}/Diff.Trek_#{version}_universal.dmg"
  name "Diff Trek"
  desc "Fast continuous Git diff viewer"
  homepage "https://github.com/citricity/difftrek"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Diff Trek.app"

  caveats <<~EOS
    To use `git dt`, open Diff Trek and choose
    Diff Trek > Install 'git dt' Command…
  EOS
end
