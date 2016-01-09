#c=[0]*40
#eval("[#{gets}]").map{|i|c[i]=1}
#40.times{puts c.map{|i|" X"[i]}*"";c=(0..39).map{|x|110[4*c[x-1]+2*c[x]+c[(x+1)%40]]}}

#(r=0..39).map{puts c.map{|i|" X"[i]}*"";c=r.map{|x|110[4*c[x-1]+2*c[x]+c[(x+1)%40]]}}

# wrap:
#c=[0]*40
#eval"[#{gets}].map{|i|c[i]=1}"+'
#c=(1..40).map{|x|putc" X"[u=c[x-1]]
#110[4*c[x-2]+2*u+c[x%40]]};puts'*40

# no wrap:
c=[0]*41
eval"[#{gets}].map{|i|c[i]=1}"+'
c=*(0..39).map{|x|putc" X"[u=c[x]]
110[4*c[x-1]+2*u+c[x+1]]},0;puts'*40

#c=[0]*41
#eval"[#{gets}].map{|i|c[i]=1}
#c=(0..39).map{|x|putc' X'[u=c[x]]
#110[4*c[x-1]+2*u+c[x+1]]}<<0;puts&&"*40+?1

#c=[0]*41
#eval"[#{gets}].map{|i|c[i]=1}"+";x=0
#c=[#{'(putc" X"[u=c[x]];110[4*c[x-1]+2*u+c[x+=1]]),'*40}]<<0;puts"*40

=begin

111
100
000

011

110
101
010
001
=end
