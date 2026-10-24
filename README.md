# Homebrew tap for Ignite

I put this tap together to make [Ignite](https://github.com/twostraws/Ignite) easier to install with Homebrew. I maintain it independently; it's not an official Ignite tap.

## Install

On macOS, you'll need Sonoma or later and Xcode 16 or later. On Linux (tested on Ubuntu 24.04), you'll need [Homebrew on Linux](https://docs.brew.sh/Homebrew-on-Linux) and a [Swift 6 toolchain](https://www.swift.org/install/linux/) for building sites.

```sh
brew install nyan-lin-tun/tap/ignite-swift
```

Homebrew builds the command-line tool from source, so installation can take a little while. It also installs Python for the local preview server. You'll still need Swift 6+ and Git to create and build sites.

The package is called `ignite-swift`, but you'll use `ignite` in your terminal:

```sh
ignite new ExampleSite
cd ExampleSite
ignite build
ignite run --preview
```

## A few things to know

- Homebrew already has an unrelated package called `ignite`. Both use the same command name, so they can't be installed together through Homebrew.
- If you've installed Ignite manually before, run `which -a ignite` to check whether your terminal is still picking up the old copy.
- This tap installs Ignite 0.7.1. If `ignite --version` shows 0.6.9, that's the version string in Ignite's source—it doesn't mean Homebrew installed the wrong version.

Installation, site creation, builds, and local previews have been tested on Apple Silicon with macOS 27 and Swift 6.4. Homebrew's tests and audit pass too. CI also builds, tests and previews a sample site on Ubuntu 24.04 and Apple Silicon macOS on every change. Intel Macs aren't tested, since Homebrew now treats them as Tier 3 and no longer builds bottles for them. On Linux, `ignite run --preview` can't open a browser for you yet, so open the printed URL yourself.

## Problems or suggestions?

If you run into trouble installing through Homebrew, [open an issue here](https://github.com/nyan-lin-tun/homebrew-tap/issues). For problems with Ignite itself, head over to [Ignite's repository](https://github.com/twostraws/Ignite).
