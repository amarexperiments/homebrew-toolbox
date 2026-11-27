# homebrew-toolbox

A [Homebrew tap](https://docs.brew.sh/Taps) for personal developer tools.

## Setup

Add the tap once:

```sh
brew tap amarexperiments/toolbox
```

## Tools

| Tool | Type | Install |
| --- | --- | --- |
| [wrench](#wrench) | Formula (CLI) | `brew install wrench` |
| [blueprint](#blueprint) | Cask (macOS app + CLI) | `brew install --cask blueprint` |

Both tools currently ship for Apple Silicon (arm64) macOS only.

### wrench

A harness written in Go, installed as the `wrench` command.

```sh
brew install amarexperiments/toolbox/wrench
wrench --version
```

### blueprint

Maps a code repository into a Blockly visualization. Installs `blueprint.app` and puts a `blueprint` command on your PATH (requires macOS Big Sur or later).

```sh
brew install --cask amarexperiments/toolbox/blueprint
blueprint /path/to/repo
```

## Updating and removing

```sh
brew update
brew upgrade wrench
brew upgrade --cask blueprint

brew uninstall wrench
brew uninstall --cask blueprint   # add --zap to also remove app data
brew untap amarexperiments/toolbox
```

