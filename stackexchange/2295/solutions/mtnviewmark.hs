f§(a,b)=(f a,b)
h c=(c,'-',c)
b l=h".":map(\(p,f,q)->("| "++p,f,q++" |"))l++[h"'"]
y[]s z=([(s,' ',"")],z)
y[(n,_)]_ z=b§foldr(\_(l,w)->(l++)§x w)([],z)[1..n]
x(a:z)=y(reads a)a z
m(p,_,q)=length$p++q
n®a@(p,c,q)=p++replicate(n-m a)c++q++"\n"
o(l,_)=l>>=(maximum(map m l)®)
main=interact$o.x.lines

