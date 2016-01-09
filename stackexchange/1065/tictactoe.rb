r=*[*l=0..8,0,3,6,1,4,7,2,5,8,0,4,8,2,4,6].each_slice(3)
w=->a{r.any?{|b|b&a==b}}
[*l].permutation(9){|a|u=[[],[]];i=-1
u[i%2]<<a[i+=1]while !((x=w[u[1]])||o=w[u[0]])&&i<8
puts a*""+":#{x ??X:o ??O:?D}"}
