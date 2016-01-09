[?$*z=(e=??/??)+e,-e+?"*d=z+e,?$*d,?$*d,?%*d,?\s,?,*z-e,?%*d,?&*d,?$*d,?@+?$,?!].map{|a|putc a}
[?H,?e,?l,?l,?o,?\s,?W,?o,?r,?l,?d,?!].map{|a|putc a}
$><<:"Hello World!"


u = [[1,1],[2,1],[2,2],[1,2]].map{|a|Complex(*a)}
u = [[1,1],[2,1],[2,2],[1,2]].map{|a|Complex(*a)}

f=->z{(u=z.uniq.map{|a|Complex *a}).product(u).select{|a,b|u.index (b-a)*Complex::I+a}.size==8}

l = [[1,1],[2,1],[2,2],[1,2]]
f=->z{(r=z.uniq.map{|a|Complex *a}).product(r).any?{|a,b|c=a+(b-a)*i=?i.to_c;p i;d=(c-b)*i+b;puts [a,b,c,d].map(&:inspect).join", "; c!=a&&r.index(c)&&r.index(d)}}
