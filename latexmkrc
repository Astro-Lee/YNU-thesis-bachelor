@default_files = ('main.tex');

#使用xelatex变量指定的命令编译
$pdf_mode = 5;
$postscript_mode = $dvi_mode = 0;

$xelatex = "xelatex -file-line-error -halt-on-error -interaction=nonstopmode -no-pdf -synctex=1 %O %S";
$xdvipdfmx = "xdvipdfmx -q -E -o %D %O %S";
$bibtex_use = 1.5;

#$pdf_previewer = 'start "D:/SumatraPDF/SumatraPDF.exe" %O %S';#设置PDF阅读器
#$preview_mode = 1;#手动编译完成后预览
#$preview_continuous_mode = 1;#保存后，自动编译并预览

$clean_ext = "synctex.gz acn acr alg aux bbl bcf blg brf fdb_latexmk glg glo gls idx ilg ind ist lof log lol lot out run.xml toc dvi";