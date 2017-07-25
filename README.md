dotfiles
========

Configuration files for bash and bootstrap scripts for OS X Sierra.


## Basic install


```
$ git clone git@github.com:thiagopbueno/dotfiles.git
```

Download and install [XCode](https://itunes.apple.com/br/app/xcode/id497799835?l=en&mt=12) and then install XCode Command Line Tools:

```
$ xcode-select --install
```

Run bootstrap script:

```
$ chmod +x bootstrap.sh
$ ./bootstrap.sh
```

## Additional installations

```
$ chmod +x install-python.sh install-ruby.sh
$ ./install-python.sh
$ ./install-ruby.sh
```
