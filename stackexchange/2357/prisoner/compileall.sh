#!/bin/bash

for i in src/*.c; do
	f=$(basename "$i")
	gcc -o "warriors/${f%%.*}" "$i"
done

for i in src/*.py; do
	python -c "import py_compile;py_compile.compile('$i')"
	chmod +x "${i}c"
	mv "${i}c" "warriors/$(basename $i)c"
done

for i in src/*.lsp; do
	f=$(basename "$i")
	clisp -q -q -c "$i" -o "warriors/${f%%.*}"
	echo "#!/usr/bin/clisp" > "warriors/${f%%.*}"
	cat "warriors/${f%%.*}.fas" >> "warriors/${f%%.*}"
	chmod +x "warriors/${f%%.*}"
	rm "warriors/${f%%.*}.fas" "warriors/${f%%.*}.lib"
done
