# ExoGenesis

[Documentation](https://exokomodo.github.io/KomodoNim/komodo.html)

## Important Links

* [Source Code Repository](https://github.com/ExoKomodo/exogenesis)
* [Nim](https://nim-lang.org)
* [Nimble Package Manager](https://github.com/nim-lang/nimble)
* [Scoop](https://scoop.sh/)

## Setup

To install [`nim`](https://nim-lang.org), use [`choosenim`](https://github.com/dom96/choosenim) to manage versions

### [Unix] Install Choosenim

Follow the install instructions found on [choosenim's repo](https://github.com/dom96/choosenim), or run the following commands:

```bash
curl https://nim-lang.org/choosenim/init.sh -sSf | sh
```

You will need to update your path in your shell's rcfile

```shell
export PATH=~/.nimble/bin:$PATH
```

### [Unix] Install Nim

```bash
choosenim stable
```

### [Windows] Install Nim

#### Using scoop

Follow the instructions found on [Scoop's website](https://scoop.sh), or run the following commmands:

```PowerShell
iwr -useb get.scoop.sh | iex
```

Then install `nim`

```PowerShell
scoop install nim
```
