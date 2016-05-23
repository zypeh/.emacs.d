
# Zypeh's Emacs Configs
## since 2012 | Reworked on 2016

This is an emacs configuration tree that support a number of 
programming languages.

To install, clone this repo to ~/.emacs.d. Ensure that the 'init.el'
contained in this repo ends up at ~/.emacs.d/init.el.

Before starting up Emacs, be sure you have install sbcl and slime or 
else it will pop a warning message.


Some of the tips or tricks might be useful to others, and some of them 
are not...... that might annoy people who aren't me.

- zypeh

## installation

### benchmarking
we need the `benchmarking-init-el` to measure the time spent to load packages
```bash
git clone https://github.com/dholm/benchmark-init-el.git benchmark-init
cd benchmark-init
make
```

### code search
we need the `silver_sercher` for code search
```bash
brew install the_silver_searcher
```

### markdown
```bash
brew install markdown
```

### javascript
for code-analysis, we use `tern` for code completion
```bash
npm install -g tern
```

## slime integration

### hyperspec documentation
Put the latest hyperspec documentation into directory `/usr/local/share/doc/hyperspec` and slime will automatically search for it

```bash
mkdir /usr/local/share/doc/hyperspec
cd /usr/local/share/doc/hyperspec
wget ftp://ftp.lispworks.com/pub/software_tools/reference/HyperSpec-7-0.tar.gz
tar -zxvf HyperSpec-7.0.tar.gz
rm HyperSpec-7.0.tar.gz
```

<hr>

[![endorse] (http://api.coderwall.com/zypeh/endorsecount.png)] (http://coderwall.com/zypeh)



