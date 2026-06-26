# homebrew-awake

Homebrew tap for [Awake](https://github.com/pistachionet/awake), a macOS menu
bar app that keeps a MacBook awake while the lid is closed.

## Install

```sh
brew tap pistachionet/awake
brew install --cask pistachionet/awake/awake
```

This installs the signed and notarized build from Awake's GitHub releases.

## Short Install Name

If you want to use the shorter cask name, trust the tap first:

```sh
brew tap pistachionet/awake
brew trust pistachionet/awake
brew install --cask awake
```

The fully-qualified cask name above is recommended because it names the exact tap
and cask directly without requiring `brew trust`.

## Uninstall

```sh
brew uninstall --zap awake
```

`--zap` removes Awake's sudoers rule at `/etc/sudoers.d/awake`.
