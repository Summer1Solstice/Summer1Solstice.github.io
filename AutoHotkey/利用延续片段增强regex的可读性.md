---
title: 利用延续片段增强regex的可读性
tags:
  - 正则
  - regex
  - 延续片段
  - 注释
author: Summer1Solstice
date: 2026-03-05 10:08:25
modify: 2026-03-05 10:11:54
description: 描述
---
### 利用延续片段增强regex的可读性
关于[延续片段](https://www.autohotkey.com/docs/v2/Scripts.htm#continuation-section)
```AutoHotkey
regex := "
(Join LTrim0 RTrim0 Comments
\w+ ; 匹配多个大小写英文字母、阿拉伯数字、下划线
\d+ ; 匹配多个阿拉伯数字
)"
```
`Join`：直接连接所有行。  
`LTrim0 RTrim0`：不去除行首行尾的空格和制表符，默认行为是去除。  
`Comments`：允许分号注释。  
