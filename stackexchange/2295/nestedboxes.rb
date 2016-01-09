#r=->l{(1..l).map{z=gets.to_i;z>0?r[z] : $_.chop}};r[gets.to_i]
#r=->l{(1..l.to_i).map{gets;~/\d/?r[$_]:$_.chop}};r[gets]

#f=->a,i="",j=""{[i+?.+?-*(s=m-2*i.size)+?.+j,*a.map{|x|"| "+i+x+?\s*(s-x.size-2)+j+" |"rescue f[x,i+"| ",j+" |"]},i+?'+?-*s+?'+j]}
#z=->a,b{a+b+a.reverse};f=->a,i=""{[z[i+?.,?-*(s=m-2*i.size)],*a.map{|x|z[v=i+"| ",x+?\s*(s-x.size-2)]rescue f[x,v]},z[i+?',?-*s]]}

#m=0;r=->l,i=2{(1..l.to_i).map{gets;~/\d/?r[$_,i+4]:(m=[m,i+~/$/].max;$_.chop)}}
#f=->a,i=""{[i+?.+?-*(s=m-2*i.size)+?.+j=i.reverse,a.map{|x|"| "+i+x+?\s*(s-x.size-2)+j+" |"rescue f[x,"| "+i]},i+?'+?-*s+?'+j]}
#puts f[r[gets]]

#m=[];r=->l{m<<(gets+l*2).size;~/\d/?eval('[l+?.,?-,?-,'+'*r["| "+l],'*$_.to_i+"l+?',?-,?-]"):[l,$_.chop,?\s]}
#m=[];r=->l{m<<(l*2+i=gets.chop).size;~/\d/?eval('[l+?.,p=?-,p,'+'*r["| "+l],'*i.to_i+"l+?',p,p]"):[l,i,?\s]}
#r[""].each_slice(3){|a,b,c|puts a+b+c*(m.max-(a*2+b).size)+a.reverse}
r=->l{$*<<(l*2+i=gets.chop).size;/\d/?eval('[l+?.,p=?-,p,'+'*r["| "+l],'*i.to_i+"l+?',p,p]"):[l,i,?\s]}
r[""].each_slice(3){|a,b,c|puts a+b+c*($*.max-(a*2+b).size)+a.reverse}
