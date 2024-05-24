# bin

My own utility commands.

## Setup

Clone this repository into your home directory.

```
cd ~
git clone https://github.com/swimpenguin/bin.git
cd bin
```

Add the following command to your shell config file such as `~/.bashrc` or `~/.zshrc`.

```
export PATH=$HOME/bin:$PATH
```

Give each file permission to execute.
You can run chmod by your own hand or execute the script as follows.

```
bash setup.sh
```

## Description

### gitroot

Use this command in your git repository. It shows the root directory which contains `.git`

Example: 

In `/Users/swimpenguin/demo/src/main/com/example/demo`, 

```
$ gitroot
/Users/swimpenguin/demo
```
