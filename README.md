# DevOps Golang Tools

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

All programs have `--help` to list the available options.

**Make sure you run `make update` if updating and not just `git pull` as you will often need the latest library submodule and possibly new upstream libraries**

## Quick Start

### Ready to run Docker image

All programs and their pre-compiled dependencies can be found ready to run on [DockerHub](https://hub.docker.com/r/https://github.com/nholuongut/devops-golang-tools/).

List all programs:

```shell
docker run https://github.com/nholuongut/devops-golang-tools
```

Run any given program:

```shell
docker run https://github.com/nholuongut/devops-golang-tools <program> <args>
```

### Automated Build from source

installs git, make, pulls the repo and build the binaries:

```shell
curl -L https://git.io/go-bootstrap | sh
```

or manually:

```shell
git clone https://github.com/nholuongut/devops-golang-tools
```

The `make` command automates building the go binaries which can then be copied around to other systems of the same
family, eg. Linux or Mac.

Alternatively there is shebang magic which means each `.go` program can be called directly like a script and it'll
runtime compile and execute instantly like a scripted language. This is a neat trick for quick usage and testing built
on `go run`, but for frequent use the compiled binaries are usually the way to go.

[Detailed Build Instructions](https://github.com/nholuongut/devops-golang-tools#detailed-build-instructions) are available further down.

### Usage

All programs come with a `--help` switch which includes a program description and the list of command line options.

Environment variables are supported for convenience and also to hide credentials from being exposed in the process list
eg. `$PASSWORD`, `$TRAVIS_TOKEN`. These are indicated in the `--help` descriptions in brackets next to each option and
often have more specific overrides with higher precedence eg. `$AMBARI_HOST`, `$HBASE_HOST` take priority over `$HOST`.

### DevOps Golang Tools - Inventory

- Linux:
  - `uniq2.go` - like `uniq` but you don't have to sort first and it preserves the ordering
  - `diffnet.go` - simplifies diff output to show only lines added/removed, not moved, from patch files or stdin
    (pipe from standard `diff` or `git diff` commands)
  - `httpfirst.go` - returns the first http/https url address argument to respond (fastest multi-threaded reply using
    go channels). More sophisticated version is `find_active_server.py` in the [DevOps Python tools](https://github.com/nholuongut/devops-python-tools) repo which can
    handle multi-master clusters, tcp sockets, regex etc.
  - `pldd.go` - parses `/proc` on Linux to show the runtime `.so` loaded dynamic shared libraries a program pid is
    using. Runtime equivalent of the classic static `ldd` command and because the system `pldd` command often fails to
    attach to a process
  - `colors.go` - prints a table of terminal colors and their escape codes for doing fancy shell stuff
  - `welcome.go` - cool spinning welcome message greeting your username and showing last login time and user to put in
    your shell's `.profile` (there are also Python and Perl versions in my
    [DevOps Python Tools](https://github.com/nholuongut/devops-python-tools) and
    [DevOps Perl Tools](https://github.com/nholuongut/devops-perl-tools) repos)

### Detailed Build Instructions

#### Manual Setup

Enter the go-tools directory and run git submodule init and git submodule update to fetch my library repo:

```shell
git clone https://github.com/nholuongut/devops-golang-tools go-tools
cd go-tools
git submodule update --init
./compile.sh
```

##### Mac OS X

The automated build also works on Mac OS X but you'll need to install [Apple XCode](https://developer.apple.com/download/) (on recent Macs just typing
`git` is enough to trigger Xcode install).

I also recommend you get [HomeBrew](https://brew.sh/) to install other useful tools and libraries you may need like OpenSSL for
development headers and tools such as wget (these are installed automatically if Homebrew is detected on Mac OS X):

```shell
bash-tools/install/install_homebrew.sh
```

### Updating

Run `make update`. This will git pull and then git submodule update which is necessary to pick up corresponding library
updates.

### Contributions

Patches, improvements and even general feedback are welcome in the form of GitHub pull requests and issue tickets.

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=https://www.linkedin.conhom/in/nholuongut/DevOps-Golang-tools&type=Date)](https://star-history.com/#https://www.linkedin.conhom/in/nholuongut/DevOps-Golang-tools&Date)


# 🚀 I'm are always open to your feedback.  Please contact as bellow information:
### [Contact ]
* [Name: nho Luong]
* [Skype](luongutnho_skype)
* [Github](https://github.com/nholuongut/)
* [Linkedin](https://www.linkedin.com/in/nholuong/)
* [Email Address](luongutnho@hotmail.com)
* [PayPal.me](https://www.paypal.com/paypalme/nholuongut)

![](https://i.imgur.com/waxVImv.png)
![](Donate.png)
[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/nholuong)

# License
* Nho Luong (c). All Rights Reserved.🌟