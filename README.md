# sshmux
 Persistent SSH sessions using `tmux`

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

> PS: The code in the executable is not mine. I used this sometime ago in Linux and found parts of code in some archives and rebuilt it.