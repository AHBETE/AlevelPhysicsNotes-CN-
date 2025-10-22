# 创建LaTeX文件
cat > formula.tex << 'EOF'
\documentclass[preview]{standalone}
\usepackage{amsmath}
\usepackage{bm}
\begin{document}
$ \bm{a+b} $
\end{document}
EOF

# 编译+转换 (500DPI + 全方向裁剪)
latex.exe -interaction=nonstopmode formula.tex
dvipng.exe -D 500 -bg Transparent -T "0.1in,0.1in,0.1in,0.1in" -o formula.png formula.dvi

# 清理
rm formula.{aux,log,dvi,tex}
