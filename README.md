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

## Installing

First of all, you want to connect to the internet, as you'd usually do on a
regular arch installation.

Then, you want to set up mirrors. Fortunately, xyarchiso comes with
`reflector`, so you can simply run something like:

```
reflector --save /etc/pacman.d/mirrorlist --protocol https --latest 20
```

...or just edit the mirrorlist manually.

After that, set up the key database. You can use the `setup-keys` script, which
basically runs two `pacman-key` commands

Then comes the juicy part: using `jimmy`. First, we generate a sample file. Then
we edit it, and then we use `jimmy` again to generate a shell script from it.
And then we execute it, which installls Arch on the system-proper.

```
jimmy --sample >input.yaml
vim input.yaml
jimmy --file input.yaml >script.sh
chmod +x script.sh
./script.sh
```

And that's it! You'll end up with Arch installed on your system. But beware:
there aren't any users configured, so you might want to do that.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to
discuss what you would like to change.
