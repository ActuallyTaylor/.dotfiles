# MacOS Defaults
### Disable Accent Key on Hhold
Recently macOS added a new feature that opens a charcter accent menu when you hold a key. This breaks key repeating for any keys with variants. I disable this using the following defualts write.

```
defaults write -g ApplePressAndHoldEnabled -bool false
```
