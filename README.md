# homebrew-looplens

Homebrew tap for LoopLens.

## Install

```bash
brew tap ppippi-dev/looplens
brew install --cask looplens
```

## If macOS says the app is damaged (or install does not work)

Some release builds may trigger Gatekeeper warnings while signing/notarization is being stabilized.
For private use (you and trusted friends), use this workaround:

```bash
brew uninstall --cask looplens
rm -rf "/Applications/LoopLens.app"
brew install --cask --no-quarantine looplens
sudo codesign --force --deep --sign - "/Applications/LoopLens.app"
open "/Applications/LoopLens.app"
```

If LoopLens is already installed, you can repair it in place:

```bash
sudo xattr -dr com.apple.quarantine "/Applications/LoopLens.app"
sudo codesign --force --deep --sign - "/Applications/LoopLens.app"
open "/Applications/LoopLens.app"
```
