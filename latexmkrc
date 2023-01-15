$out_dir = "build";
$lualatex = "lualatex -interaction=nonstopmode -halt-on-error %O %S";

# use lualatex:
$pdf_mode = 4;

@default_files = ("cover-letter.tex");
$clean_ext = "bcf bbl glg glo gls run.xml xdy"
