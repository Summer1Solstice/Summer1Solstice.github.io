#Requires AutoHotkey v2.0

stdout(str) => FileAppend(str "`n", "*", "UTF-8")
stderr(str) => FileAppend(str "`n", "**", "UTF-8")
OnError((e, *) => (stderr(e.Message "`n"), ExitApp()))

result := "# 目录`n"
loop files "./*.md" {
    if A_LoopFileName = "index.md" {
        continue
    }
    result .= Format("[{1}](./{2})  `n", SubStr(A_LoopFileName, 1, StrLen(A_LoopFileName) - 3), A_LoopFileName)
}
FileDelete("index.md")
FileAppend(result, "index.md", "UTF-8")