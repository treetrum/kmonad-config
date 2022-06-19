# Personal kmonad config repo

Used to hold kmonad config files for various (non-qmk) compatible keyboards

## Prerequisites

-   [kmonad](https://github.com/kmonad/kmonad) installed available in your PATH

## Usage

```sh
kmonad ./path/to/config.kdb
```

## Run at login (Mac only)

1. Copy `./launchd-examples/com.kmonad.plist` to the launchd folder: `/Library/LaunchDaemons` (rename if you'd like)
2. Fill in paths for kmonad and config file
3. Give the file input monitoring access (`System Preferences → Security & Privacy → Privacy → Input Monitoring`) to the following items:
    - The `launchctl` binary
    - The `kmonad` binary
4. Either reboot, or load the plist manually

### If loading manually

```fish
sudo launchctl load -w /Library/LaunchDaemons/com.kmonad.plist
```

### Restarting after config changes

```fish
# Ensure service label matches the 'Label' property specific in the plist
sudo launchctl stop kmonad
sudo launchctl start kmonad
```
