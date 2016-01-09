c=$<.map{|l|l.split.map &:to_f}
a,b,m,n,d=c.shift
g=0
c.map{|x,y,p|4*((r=m-a)*(b-y)-(a-x)*(s=n-b))**2/(r**2+s**2)<d*d&&g+=p}
p g.to_i
