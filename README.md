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
To update the Homebrew formula for a new release:

1. Create and push a version tag in this repository:
   ```bash
   git tag v1.0.1
   git push origin v1.0.1
   ```

2. Calculate the SHA256 for the release:
   ```bash
   curl -L https://github.com/krushiraj/sshmux/archive/refs/tags/v1.0.1.tar.gz | shasum -a 256
   ```

3. Update the formula in the [homebrew-sshmux](https://github.com/krushiraj/homebrew-sshmux) repository:
   - Update the `url` version tag
   - Update the `sha256` hash with the calculated value
   - Commit and push the changes
