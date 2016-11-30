(*
Evernote Export - Exports all Evernote's notes.
Copyright (C) 2016 Thomas Leplus

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*)
tell application "Evernote"
	set homepath to path to home folder as Unicode text
	set allmynotes to find notes
	export allmynotes to (homepath & "Documents:Evernote.enex" as Unicode text)
end tell
