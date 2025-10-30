# macOS

Useful tidbits for macOS

## [.emacs](.emacs)

This is my usual Emacs configuration file. Most options are commented with a short explanation.

## [Evernote Export](Evernote%20Export.applescript)

I use this very simple AppleScript to export my Evernote notes nightly before my computer backs itself up. It is a source file but you can use Script Editor to turn it into an executable script.

**Support for AppleScript was removed in Evernote 10. Overall Evernote has been plagued with bugs and is overpriced as a result so I have since moved to [Joplin](https://joplinapp.org).**

## [Evernote Sed](Evernote%20Sed.applescript)

This script applies sed commands to all my notes' titles. You should use the `osascript` command to invoke this script from the command line.

**Support for AppleScript was removed in Evernote 10. Overall Evernote has been plagued with bugs and is overpriced as a result so I have since moved to [Joplin](https://joplinapp.org).**

## [TrueCrypt Auto-mount Favorites](org.truecrypt.auto-mount-favorites.plist)

This plist file can be used to mount all your favorited TrueCrypt images on login. Simply put that file in your `~/Library/LaunchAgents/` directory and then load it using the following command:

`$ launchctl load ~/Library/LaunchAgents/org.truecrypt.auto-mount-favorites.plist`

**TrueCrypt is discontinued so I have migrated to [VeraCrypt](https://www.veracrypt.fr). There is an easier way to do this with VeraCrypt, simply configure macOS to open the encrypted file [on login](https://support.apple.com/en-us/guide/mac-help/mh15189/mac)**

## [kext-switch](kext-switch)

The kernel extensions of VirtualBox and macFUSE / OSXFuse sometimes conflict
with each other. This script allows you to choose which one you want
to run using the following commands:

`$ kext-swtich fuse`
`$ kext-swtich vbox`
`$ kext-swtich status`

Shamelessly inspired of [https://github.com/osxfuse/osxfuse/issues/315#issuecomment-271548072](https://github.com/osxfuse/osxfuse/issues/315#issuecomment-271548072).

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct and the process for submitting pull requests.

## Security

Please read [SECURITY.md](SECURITY.md) for details on our security policy and how to report security vulnerabilities.

## Code of Conduct

Please read [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) for details on our code of conduct.

## License

This project is licensed under the terms of the [LICENSE](LICENSE) file.
