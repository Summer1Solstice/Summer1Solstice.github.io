#Requires AutoHotkey v2.0

stdout(str) => FileAppend(str "`n", "*", "UTF-8")
stderr(str) => FileAppend(str "`n", "**", "UTF-8")
OnError((e, *) => (stderr(e.Message "`n"), ExitApp()))

stderr("error")
stdout("stdout")