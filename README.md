# Homebrew Tap for Sratim

Official Homebrew tap for [Sratim](https://github.com/borisgk/sratim) media server.

## Installation

```bash
brew install borisgk/sratim/sratim
```

Or via explicit tap:

```bash
brew tap borisgk/sratim
brew install sratim
```

## Running as a Background Daemon

```bash
# Start background service
brew services start sratim

# Check status
brew services info sratim

# Restart service
brew services restart sratim

# Stop service
brew services stop sratim
```
