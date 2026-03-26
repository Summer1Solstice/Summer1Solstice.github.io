在 AutoHotkey 中方法包含了一个隐藏参数 `this`，在定义方法时隐式定义，在调用时又隐式传入。  
这样做的好处是省事，但有时也很让人困扰。  
当定义一个方法为另一个在对象外部的函数，或者绑定函数对象时

```AutoHotkey
OnError((e, *) => (OutputDebug(e.Message "`n"), -1))
class test {
    __New() {
        this.out1() ;Too many parameters passed to function.
        this.out2() ;Too many parameters passed to function.
        this.out1.Call()    ;1
        this.out2.Call()    ;2
        this.out3() ;3
        this.out4() ;4
    }
    out1 := OutputDebug.bind(1)
    out2 => OutputDebug.bind(2)
    out3 := (*) => (OutputDebug(3))
    out4() => OutputDebug(4)
}
t := test()
```
在上面这个示例中，尝试调用 `this.out1()`、`this.out2()` 时，自动传入了 this 参数，会报参数错误。  
```
Error: Too many parameters passed to function.

Specifically: OutputDebug
```
而想避免这个问题，有 2 个解决方法。  
1、构造匿名函数或使用胖箭头语法定义方法，接受 this 参数但不使用。
```AutoHotkey
    out3 := (*) => (OutputDebug(3))
    out4() => OutputDebug(4)
```
更直白点的写法：
```AutoHotkey
    out3() {
        OutputDebug(3)
    }
```
2、调用函数的 call 方法
```AutoHotkey
    this.out1.Call()    ;1
    this.out2.Call()    ;2
```
我偶然发现了这个方法，但是不清楚为什么这样写没有传入 `this` 参数，但确实是可行的。~~这也是写这篇笔记的动机~~
