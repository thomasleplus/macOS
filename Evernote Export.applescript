tell application "Evernote.app"
	set homepath to path to home folder as Unicode text
	set allmynotes to «event EVRNfind»
	«event EVRNenxp» allmynotes given «class kfil»:(homepath & "Documents:Evernote.enex" as Unicode text)
end tell
