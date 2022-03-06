# YNU-thesis-bachelor

[![Sync to Gitee](https://github.com/Astro-Lee/YNU-thesis-bachelor/actions/workflows/Sync%20to%20Gitee.yml/badge.svg)](https://gitee.com/Astro-Lee/YNU-thesis-bachelor) [![Compile LaTeX document](https://github.com/Astro-Lee/YNU-thesis-bachelor/actions/workflows/Compile%20LaTeX%20document.yml/badge.svg)](https://github.com/Astro-Lee/YNU-thesis-bachelor/actions/workflows/Compile%20LaTeX%20document.yml)

## 介绍
云南大学本科毕业论文(设计) LaTeX 模板根据[《云南大学本科学生毕业论文(设计)工作要求及规范》](http://www.jwc.ynu.edu.cn/info/1003/2052.htm)编写，**个人能力、精力有限，不保证完全符合规范！此外，该模板未经学校官方核准，如有顾虑，慎用！**

## 编译
仅支持**XeLaTeX**编译器，可使用 [latexmk](https://zhuanlan.zhihu.com/p/256370737) 命令进行编译：
- 编译命令：`latexmk`
- 清除编译过程中产生的辅助文件：`latexmk -c`

## Visual Studio Code 编辑器 + LaTeX Workshop 插件
在`settings.json`中添加如下代码：
```json
    "latex-workshop.view.pdf.viewer":"tab",

    "latex-workshop.latex.recipes": [
        {
          "name": "latexmk 🔃",
          "tools": [
            "latexmk"
          ]
        },],

    "latex-workshop.latex.tools": [
        {
            "name": "latexmk",
            "command": "latexmk",
            "args": [],
            "env": {}
        },],
```
更多配置参考[LaTeX Workshop WiKi](#https://github.com/James-Yu/LaTeX-Workshop/wiki/)。

## PDF转Word
 可使用 [Adobe PDF to Word](https://www.adobe.com/acrobat/online/pdf-to-word.html) 转换 `*.pdf` 文件。第二次转换文件时需要登录 Adobe 账号才能下载，建议在浏览器的“无痕浏览”、“隐私模式”等模式下访问以跳过强制登录。