# xyarchiso

A minimal archiso profile featuring [jimmy](https://github.com/xylous/jimmy)

## Goals

The main purpose of this archiso profile is to contain only the bare minimum,
plus an arch installer (`jimmy`) that can do most of the work for you, minus
configuring users.

## Getting started

### Requirements

- Arch or an Arch-based distribution
- `archiso` package, for `mkarchiso`

## Building

Clone this repository locally and run `build.sh`:

```
git https://github.com/xylous/xyarchiso xyarchiso
cd xyarchiso
./build.sh
```

The resulting ISO file will be placed in the current directory, after which you
can burn it to an USB or load it into a VM.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to
discuss what you would like to change.
