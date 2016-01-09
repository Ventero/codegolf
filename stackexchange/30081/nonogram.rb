n=$*.shift.to_i;k=*$*.each_slice(n)
u=->k{k.map{|i|r=i.join.scan(/1+/).map{|i|"%2d"%i.size}
[*["  "]*n,*r[0]?r:" 0"][-n,n]}}
puts u[k.transpose].transpose.map{|i|" "*(n-~n)+i*""},"  "*n+?++"--"*n,u[k].map{|i|i*""+?|}
