#!/usr/bin/env sh
# Fail on error/undefined vars; pipefail when available (BusyBox dash lacks it)
set -eu
if set -o pipefail 2>/dev/null; then
  :
fi

# Add TeX Live to PATH
export PATH="/opt/texlive/bin:$PATH"

mkdir -p build

# Compile IEEE (biblatex + biber)
echo "[build] Compiling IEEE"
latexmk -silent -file-line-error -outdir=build -xelatex main_ieee.tex

# Compile ACM (BibTeX)
echo "[build] Compiling ACM"
latexmk -silent -file-line-error -outdir=build -bibtex -xelatex main_acm.tex

# Compile APA7 (biblatex + biber)
echo "[build] Compiling APA7"
latexmk -silent -file-line-error -outdir=build -xelatex main_apa7.tex

echo "[build] PDFs available in build/"
