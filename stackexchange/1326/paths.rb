#!ruby -n
#s=1;1.upto(l=$_.to_i){|a|s+=s*l/a;p s};p s
p (1..l=$_.to_i).inject(1){|a,b|a+a*l/b}
