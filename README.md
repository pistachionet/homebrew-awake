# homebrew-awake

Homebrew tap for [Awake](https://github.com/pistachionet/awake), a macOS menu
bar app that keeps a MacBook awake while the lid is closed.

## Install

```sh
brew install --cask pistachionet/awake/awake
```

This installs the signed and notarized build from Awake's GitHub releases.

## Manual Tap

If you prefer to add the tap first:

```sh
brew tap pistachionet/awake
brew trust pistachionet/awake
brew install --cask awake
```

The one-line install command above is recommended because it names the exact tap
and cask directly.

## Uninstall

```sh
brew uninstall --zap awake
```

`--zap` removes Awake's sudoers rule at `/etc/sudoers.d/awake`.
