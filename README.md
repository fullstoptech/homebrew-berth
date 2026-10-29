# Homebrew tap for Berth

[Berth](https://github.com/fullstoptech/berth) is a native macOS Docker manager for Colima.

```bash
brew tap fullstoptech/berth
brew trust fullstoptech/berth
brew install --cask berth
```

Homebrew 7 asks you to trust a third-party tap once before it installs from it.

Requires macOS 14 or later on Apple silicon. The cask installs the signed, notarized DMG from Berth's GitHub releases.
