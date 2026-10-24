# Homebrew tap for Ignite

I put this tap together to make [Ignite](https://github.com/twostraws/Ignite) easier to install with Homebrew. I maintain it independently; it's not an official Ignite tap.

## Supported platforms

| Platform | Requirements | Status |
|---|---|---|
| macOS on Apple Silicon | Sonoma or later, plus the Xcode Command Line Tools (`xcode-select --install`) or Xcode 16+ | Tested in CI, with and without Xcode |
| Linux (Ubuntu 24.04) | [Homebrew on Linux](https://docs.brew.sh/Homebrew-on-Linux). Homebrew installs Swift for you | Tested in CI |
| macOS on Intel | Sonoma or later, plus the Command Line Tools or Xcode 16+ | Not tested |

On every change, CI audits the formula, builds it from source, runs its tests, and creates, builds and previews a sample site on Ubuntu and Apple Silicon. Intel Macs should still work, but they aren't tested: Homebrew now treats them as [Tier 3](https://docs.brew.sh/Support-Tiers) and no longer builds bottles for them, so installs there compile more from source and take longer.

## Install

```sh
brew install nyan-lin-tun/tap/ignite-swift
```

Homebrew builds the command-line tool from source, so installation can take a little while. It also installs Python for the local preview server. Ignite uses Swift 6 and Git to create and build sites: on macOS they come with the Command Line Tools, and on Linux Homebrew installs Swift alongside Ignite. You don't need a separate Swift toolchain.

The package is called `ignite-swift`, but you'll use `ignite` in your terminal:

```sh
ignite new ExampleSite
cd ExampleSite
ignite build
ignite run --preview
```

## A few things to know

- Homebrew already has an unrelated package called `ignite`. Both use the same command name, so they can't be installed together through Homebrew.
- On Linux, `ignite run --preview` can't open a browser for you yet, so open the printed URL yourself.
- If you've installed Ignite manually before, run `which -a ignite` to check whether your terminal is still picking up the old copy.
- This tap installs Ignite 0.7.1. If `ignite --version` shows 0.6.9, that's the version string in Ignite's source—it doesn't mean Homebrew installed the wrong version.

## Problems or suggestions?

If you run into trouble installing through Homebrew, [open an issue here](https://github.com/nyan-lin-tun/homebrew-tap/issues). For problems with Ignite itself, head over to [Ignite's repository](https://github.com/twostraws/Ignite).
