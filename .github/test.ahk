#Requires AutoHotkey v2.0

stderr := FileAppend.Bind(, "**", "UTF-8")
stdout := FileAppend.Bind(, "*", "UTF-8")
OnError((e, *) => (stderr(e.Message "`n"), ExitApp()))
stderr("error")
stdout("stdout")
stdout(A_AhkVersion)