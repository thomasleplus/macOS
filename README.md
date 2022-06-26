# macOS

Useful tidbits for macOS

## [.emacs](.emacs)

This is my usual Emacs configuration file. Most options are commented with a short explanation.

## [Evernote Export](Evernote Export.applescript)

I use this very simple AppleScript to export my Evernote notes nightly before my computer backs itself up. It is a source file but you can use Script Editor to turn it into an executable script.

## [Evernote Sed](Evernote Sed.applescript)

This script applies sed commands to all my notes' titles. You should use the `osascript` command to invoke this script from the command line.

## [TrueCrypt Auto-mount Favorites](org.truecrypt.auto-mount-favorites.plist)

This plist file can be used to mount all your favorited TrueCrypt images on login. Simply put that file in your `~/Library/LaunchAgents/` folder and then load it using the following command:

`$ launchctl load ~/Library/LaunchAgents/org.truecrypt.auto-mount-favorites.plist`

## [kext-switch](kext-switch)

The kernel extensions of VirtualBox and macFUSE / OSXFuse sometimes conflict
with each other. This script allows you to choose which one you want
to run using the following commands:

`$ kext-swtich fuse`
`$ kext-swtich vbox`
`$ kext-swtich status`

Shamelessly inspired of https://github.com/osxfuse/osxfuse/issues/315#issuecomment-271548072
