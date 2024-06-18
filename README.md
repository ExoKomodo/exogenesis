# ExoGenesis

## Important Links

* [Documentation](https://exokomodo.github.io/exogenesis)
* [Source Code Repository](https://github.com/ExoKomodo/exogenesis)
* [Nim](https://nim-lang.org)
* [Nimble Package Manager](https://github.com/nim-lang/nimble)
* [Scoop](https://scoop.sh/)

## Local Development

If `nim` is installed

```shell
nimble develop -g # Installs a link to the source code as an installed module
cd ./examples/hello
nimble setup -Y # Downloads internet packages and finds the locally linked exogenesis
nimble exo_build # Builds a normal binary
nimble exo_debug # Builds a debug binary
nimble exo_run # Runs the example directly
```

## Setup Nim

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

### [Ubuntu] Install SDL2

```bash
sudo apt-get install libsdl2-dev
```

### [Mac] Install SDL2

```zsh
brew install sdl2{,_gfx,_image,_mixer,_net,_ttf}
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

### [Windows] Install C compiler

Follow the instructions [here](https://nim-lang.org/install_windows.html) to install minGW

### [Windows] Install SDL2

TODO
