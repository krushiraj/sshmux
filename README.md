# sshmux
 Persistent SSH sessions using `tmux`

# Installation

## Homebrew (macOS/Linux)
```bash
brew tap krushiraj/sshmux
brew install sshmux
```

## Manual Installation
1. Download the `sshmux` script
2. Make it executable: `chmod +x sshmux`
3. Move it to your PATH: `sudo mv sshmux /usr/local/bin/`

# Prerequisites
- Must have tmux installed on server (because sessions data for persistence is stored on server side)

# Usage
```
sshmux [options] [servername or ip]
```

# Examples
```
# directly connect to server and name the session based on number increments
sshmux myserver

# connect to existing session names 'mysession' or create new if one doesn't exist already
sshmux myserver -s mysession

# list all active sessions for the server
sshmux myserver --ls
```

Once you have established the connection it is same as using `tmux`.

Refer this cheatsheet to know more about `tmux` - [https://tmuxcheatsheet.com/](https://tmuxcheatsheet.com/)

# Development

## Creating a Release
To create a new release:

1. Calculate the SHA256 for the new version:
   ```bash
   curl -L https://github.com/krushiraj/homebrew-sshmux/archive/refs/tags/v1.0.1.tar.gz | shasum -a 256
   ```

2. Update `Formula/sshmux.rb`:
   - Update the `url` version tag
   - Update the `sha256` hash with the calculated value

3. Commit, tag, and push:
   ```bash
   git add Formula/sshmux.rb
   git commit -m "Release v1.0.1"
   git tag v1.0.1
   git push && git push --tags
   ```
