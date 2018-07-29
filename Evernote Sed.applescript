on run argv
	tell application "Evernote"
		repeat with aNote in find notes
			set oldTitle to title of aNote as string
			-- let's escape single quotes
			set delim to AppleScript's text item delimiters
			set AppleScript's text item delimiters to "'"
			set the pieces to every text item of oldTitle
			set AppleScript's text item delimiters to "'\\''"
			set escapedTitle to the pieces as string
			set AppleScript's text item delimiters to delim
			-- now apply each sed commands
			repeat with arg in argv
				set newTitle to do shell script "echo '" & escapedTitle & "' | sed '" & arg & "'"
				set newTitle to text 1 thru -1 of newTitle -- remove line return
			end repeat
			if newTitle is not equal to oldTitle then
				set title of aNote to newTitle
			end if
		end repeat
	end tell
end run
