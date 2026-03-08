---
title: AutoHotkey脚本的可移植性
tags:
  - 移植性
  - 解释器
author: Summer1Solstice
date: 2026-03-05 10:14:48
modify: 2026-03-05 10:15:14
description: 描述
---
### AutoHotkey 脚本的可移植性
官方解释请看[此处](https://www.autohotkey.com/docs/v2/Program.htm#portability)  
```cmd
AutoHotkey.exe [Switches] [Script Filename] [Script Parameters]
```
简单来说，AHK 的 `.exe` 解释器启动时，如果没有指定 `Script Filename`，就会自动加载与自己同名的 `.ahk` 文件。  
[docs](https://www.autohotkey.com/docs/v2/Scripts.htm#cmd)  
名为 `abc.exe` 的解释器，直接启动时会自动加载同目录下的 `abc.ahk`。   