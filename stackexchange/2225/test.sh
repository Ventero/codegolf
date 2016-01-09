for i in *.out; do echo "$i"; cmp <(cat ${i%%.*}.in | ruby1.9.1 maze.rb) $i; done
