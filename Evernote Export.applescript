tell application "Evernote"
	set homepath to path to home folder as Unicode text
	set allmynotes to find notes
	export allmynotes to (homepath & "Documents:Evernote.enex" as Unicode text)
end tell
