u,v,a,b,d=gets.split.map &:to_f
a-=u;b-=v
p eval$<.map{|l|"(x=%f-u;t=(x*a+b*y=%f-v)/(a**2+b**2);d*d<(x-t=t<0?0:t>1?1:t)**2+(y-t*b)**2?0:%d)"%l.split}*'+'
