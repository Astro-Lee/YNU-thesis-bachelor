# YNU-thesis-bachelor

[![Sync to Gitee](https://github.com/Astro-Lee/YNU-thesis-bachelor/actions/workflows/Sync%20to%20Gitee.yml/badge.svg)](https://gitee.com/Astro-Lee/YNU-thesis-bachelor) 
[![Compile LaTeX document](https://github.com/Astro-Lee/YNU-thesis-bachelor/actions/workflows/Compile%20LaTeX%20document.yml/badge.svg)](https://github.com/Astro-Lee/YNU-thesis-bachelor/actions/workflows/Compile%20LaTeX%20document.yml)
![Repo Size](https://img.shields.io/github/repo-size/Astro-Lee/YNU-thesis-bachelor?label=Repo%20size)

## 介绍
云南大学本科毕业论文(设计) LaTeX 模板根据[《云南大学本科学生毕业论文(设计)工作要求及规范》](http://www.jwc.ynu.edu.cn/info/1003/2052.htm)和[《云南大学本科毕业论文(设计)写作规范(试行)》](https://gitee.com/Astro-Lee/YNU-thesis-bachelor/attach_files/1048489/download/%E4%BA%91%E5%8D%97%E5%A4%A7%E5%AD%A6%E6%9C%AC%E7%A7%91%E6%AF%95%E4%B8%9A%E8%AE%BA%E6%96%87%EF%BC%88%E8%AE%BE%E8%AE%A1%EF%BC%89%E5%86%99%E4%BD%9C%E8%A7%84%E8%8C%83%EF%BC%88%E8%AF%95%E8%A1%8C%EF%BC%89.pdf)编写，**个人能力、精力有限，不保证完全符合规范！此外，该模板未经学校官方核准，如有顾虑，请不要使用！**

## 建议
- 入门推荐阅读[lshort-zh-cn](http://mirrors.ctan.org/info/lshort/chinese/lshort-zh-cn.pdf)
- 任务期限在三个月以内不推荐新手使用 LaTeX


## 编辑
### [在线：Overleaf](https://cn.overleaf.com/login)
### [本地：安装发行版软件](http://mirrors.ctan.org/info/install-latex-guide-zh-cn/install-latex-guide-zh-cn.pdf) + [Visual Studio Code 编辑器](https://code.visualstudio.com/) + LaTeX Workshop 插件

在Visual Studio Code中使用快捷键`Ctrl+p`调出搜索框，搜索`settings.json`，并在其中添加如下代码：
```json
"latex-workshop.view.pdf.viewer":"tab",
"latex-workshop.view.pdf.internal.synctex.keybinding": "double-click",
"latex-workshop.intellisense.package.enabled": true,
"latex-workshop.latex.autoClean.run": "onFailed",
"latex-workshop.message.error.show": false,
"latex-workshop.message.warning.show": false,

"latex-workshop.latex.recipes": [
    {
      "name": "latexmk 🔃",
      "tools": ["latexmk"]
    },],

"latex-workshop.latex.tools": [
    {
        "name": "latexmk",
        "command": "latexmk",
        "args": [],
        "env": {}
    },],
```
更多配置参考[LaTeX Workshop WiKi](https://github.com/James-Yu/LaTeX-Workshop/wiki/)。

## 编译
仅支持**XeLaTeX**编译器，可使用 [latexmk](https://zhuanlan.zhihu.com/p/256370737) 命令进行编译：
- 编译命令：`latexmk`
- 清除编译过程中产生的辅助文件：`latexmk -c`

## PDF转Word
 可使用 [Adobe PDF to Word](https://www.adobe.com/acrobat/online/pdf-to-word.html) 转换 `*.pdf` 文件。第二次转换文件时需要登录 Adobe 账号才能下载，建议在浏览器的“无痕浏览”、“隐私模式”等模式下访问以跳过强制登录。