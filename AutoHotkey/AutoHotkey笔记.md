# 目录
- [目录](#目录)
- [笔记](#笔记)
    - [AutoHotkey 的索引](#autohotkey-的索引)
    - [数据类型的次序](#数据类型的次序)
    - [WinHide 和 WinExist](#winhide-和-winexist)
# 笔记
### AutoHotkey 的索引
AHK 的索引从 1 开始，而不是常见的 0，通常 AHK 内置函数的返回 0 直观表示假值。
### 数据类型的次序
Map、Object 的 key 没有次序，迭代时不按添加 key 的顺序。
### WinHide 和 WinExist
`WinHide` 隐藏窗口，`WinExist` 检测窗口。  
如果你隐藏了一个在所有窗口上面的窗口，那么 `WinExist("A")` 检测不到任何窗口，甚至报错。  
正确的做法，获取这个窗口的句柄，然后置底或最小化它，再隐藏。