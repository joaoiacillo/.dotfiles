# .dotfiles

My desktop environment configurations and setup process

## Installation

Make sure to install the [applications](#applications) and
[Firefox Extensions](#firefox-extensions) manually before running the script.

```bash
$ bash install.sh
```

### Configuring uBlock Origin

This step needs to be done manually as well. But you can use uBlock Origin
import buttons.

**Backup:** (Settings > Restore from file...)

`ublock/ublock-backup.txt`

**Dynamic Rules:** (My rules > Import from file...)

`ublock/ublock-dynamic-rules.txt`

## Applications

-   i3
-   kitty
-   firefox
-   picom
-   polybar
-   rofi
-   pywal
-   networkmanager_dmenu

## Firefox Extensions

-   uBlock Origin
-   CanvasBlocker
-   Skip Redirect

## uBlock Filter Lists

This section is divided into uBlock Filter subcategories:

### Privacy

-   AdGuard URL Tracking Protection
-   Block Outsider Intrusion into LAN

### Annoyances

-   EasyList – Annoyances
-   [Actually Legitimate URL Shortener Tool](https://raw.githubusercontent.com/DandelionSprout/adfilt/master/LegitimateURLShortener.txt)

## uBlock Rules

All blocked by default:

```
no-cosmetic-filtering: * true
no-large-media: * true
no-remote-fonts: * true
no-scripting: * true
* * * block
```

## uBlock Advanced Settings

-   filterAuthorMode=true
