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

### churl

Convert URLs of images stored in Google Drive to a format that can be embedded directly into your blog.

```
churl [url]
```

If you use Mac OS, the generated URL is save to the clipboard at the same time.
