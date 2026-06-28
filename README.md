# homebrew-awake

Homebrew tap for [Awake](https://github.com/pistachionet/awake), a macOS menu
bar app that keeps a MacBook awake while the lid is closed.

## Install

```sh
brew install --cask pistachionet/awake/awake
```

This installs the signed and notarized build from Awake's GitHub releases.
Homebrew auto-taps `pistachionet/awake` when you use the fully-qualified cask name.

## Uninstall

```sh
brew uninstall --zap awake
```

`--zap` removes Awake's sudoers rule at `/etc/sudoers.d/awake`.
