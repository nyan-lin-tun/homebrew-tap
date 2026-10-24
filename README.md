# Community Homebrew tap

Community-maintained packaging by nyan-lin-tun for [Ignite](https://github.com/twostraws/Ignite). This is not an official twostraws tap.

## Install (after this tap is published)

```sh
brew install nyan-lin-tun/tap/ignite-swift
ignite --help
ignite new ExampleSite
cd ExampleSite
ignite build
ignite run --preview
```

Requires macOS Sonoma or newer and Xcode 16 or newer to compile the CLI. Swift 6+ and Git remain necessary to create and build sites. Python is installed as a dependency for the preview server. The formula builds from source; no prebuilt bottles are provided.

The formula is named `ignite-swift`, but the command is `ignite`. It conflicts with Homebrew's unrelated `ignite` package. An existing manually installed `ignite` can also shadow this command; inspect `which -a ignite` before removing any old installation.

Version 0.7.1 uses upstream tag `0.7.1`, commit `3dbb1361c6f7b31638830dd949cdd3d7852ae56e`. Upstream's CLI currently prints `0.6.9` for `--version`; the formula deliberately preserves upstream code. The latest GitHub Release record is 0.6.4 and has no uploaded binaries.

## Maintenance

For each update, inspect the upstream tag, download its source archive, calculate SHA-256, and update the formula URL and checksum together. Run `brew install --build-from-source`, `brew test`, and `brew audit --strict` against the tap. Test both Apple Silicon and Intel before claiming both are verified.

The source archive is checksum-verified, but upstream does not include Package.resolved, so Swift dependencies are resolved during installation. This is not a fully reproducible build.

Report packaging issues to this repository; report Ignite behavior to upstream with a reproduction. No upstream release workflow changes or repository secrets are required.
