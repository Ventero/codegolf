#require"date"
#f=->a,t{r=0
#100/[a,a.rotate(-1),a.reverse].select{|x,*y|x+=x<100?x<50?2000:1900:0
#Date.valid_date?(x,*y)&&r+=t>Date.new(x,*y)?0:1}.size*r}

#f=->a,t{eval([a,a.rotate(~s=0),a.reverse].map{|x,*y|(x=t>Time.gm(x<100?x+=2e3-100*x/=50:x,*y)?0:100;s+=1;x)rescue 0}*?+)/s}
#f=->a,t{100/[a,a.rotate(~r=0),a.reverse].select{|x,*y|(t>Time.gm(x<100?x+=2e3-100*x/=50:x,*y)?0:r+=1)rescue p}.size*r}
f=->a,t{[a,a.rotate(~s=r=0),a.reverse].map{|x,*y|(t>Time.gm(x<100?x+2e3-100*x/=50:x,*y)||r+=100;s+=1)rescue p};r/s}
#f=->a,t,r=0{[a,a.rotate(~s=3),a.reverse].map{|x,*y|(t>Time.gm(x<100?x+2e3-100*x/=50:x,*y)||r+=100)rescue s-=1};r/s}

#p [[14,12,14],[8,2,2006],[6,7,5],[6,5,7],[12,31,99]].map{|i|f[i,Date.new(2006, 07, 05)]}
p [[14,12,14],[8,2,2006],[6,7,5],[6,5,7],[12,31,99]].map{|i|f[i,Time.gm(2006, 07, 05)]}
#[100,50,33,66,0]


=begin
x+=x<100?x<50?2000:1900:0
x=x<100?1950+(x+50)%100:x
x<100&&x=1950+(x+50)%100
x<100&&x+=2e3-100*(x/50)
x<100?x+=100*~x/50+2100:x
x<100?x+=2e3-100*(x/50):x
x<100?x+=2e3-100*x/=50:x
x<100?x+2e3-100*x/=50:x

x+2e3-100*x/=50
(x+50)%100+1950

x<100?x+2e3-100*x/=50:x
[x+2e3-100*x/=50,x].max
([2e3,1900][x/50]||0)+x
[2e3,1900][x/50].to_i+x
=end
