FROM debian:10.2

RUN apt-get update && apt-get install --yes --no-install-recommends \
    texlive-full

COPY /src .

RUN [ "pdflatex", "-jobname=CV", "-interaction=nonstopmode", "main.tex" ]
