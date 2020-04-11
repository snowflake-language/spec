#
# snowflake-specifcation - the snowflake specification
#
# this program is in the public domain. for more information, see unlicense.txt
#

## prelude

ifeq ($(origin .RECIPEPREFIX), undefined)
    $(error your make version does not support .RECIPEPREFIX. please use a newer version of make)
endif

.RECIPEPREFIX = >
.ONESHELL:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

## rules

pdf: out/specification.pdf

html: out/specification.html

release: out/specification.tar.gz

clean:
> @rm -rf out

## file rules

out/specification.tar.gz: out/specification.pdf out/specification.html
> @tar -cf out/specification.tar.gz out/ >/dev/null 2>/dev/null

out/specification.pdf: out
> @pandoc --latex-engine=xelatex specification.md -o out/specification.pdf

out/specification.html: out
> @pandoc --katex --standalone specification.md -o out/specification.html

out:
> @mkdir -p out
