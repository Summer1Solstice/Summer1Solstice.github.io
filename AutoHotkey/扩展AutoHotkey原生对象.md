---
title: 扩展AutoHotkey原生对象
tags:
  - 扩展
  - 对象
author: Summer1Solstice
date: 2026-03-05 10:09:10
modify: 2026-03-05 10:23:01
description: 对AHK对象添加方法
---
### 扩展AutoHotkey原生对象
```AutoHotkey
Array.Prototype.DefineProp("Join", { call: JOIN })
JOIN(this, sep := " ") {
    result := ""
    for i in this {
        if IsObject(i) {
            i := Type(i)
        }
        result .= i . sep
    }
    return RTrim(result, sep)
}
OutputDebug ["数", "组", "转", "字", "符", "串"].Join("")
```
如何扩展原始值，请看[这里](https://www.autohotkey.com/docs/v2/Objects.htm#primitive-extension)
