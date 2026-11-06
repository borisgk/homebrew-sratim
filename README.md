# Homebrew Tap for Sratim

Official Homebrew tap for the [Sratim](https://github.com/borisgk/sratim) media server.

## Installation

```bash
# 1. Tap and trust the repository
brew tap borisgk/sratim
brew trust borisgk/sratim

# 2. Install Sratim
brew install sratim

# 3. Start the background service
brew services start sratim
```

## Running as a Background Service

```bash
# Start background service
brew services start sratim

# Check status / info
brew services info sratim

# Restart service
brew services restart sratim

# Stop service
brew services stop sratim

# View live logs
tail -f $(brew --prefix)/var/log/sratim.log
```
