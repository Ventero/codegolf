g=->n{(1..n).map{g[Integer l=gets.chop]rescue l}}
w=->b{b.chr&&b.size rescue b.map{|e|w[e]}.max+4}
p=->b,c{r=c-2
[?.+?-*r+?.,*b.map{|i|p[i,c-4]}.flatten.map{|k|"| #{k} |"},?'+?-*r+ ?']rescue[b.ljust(c)]}
puts p[b=g[1][0],w[b]]

