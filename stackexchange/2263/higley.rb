f=->i{r=[i];(x=s=0;(2..i).map{|j|(s+=j;x+=1;i/=j)while i%j<1};r<<i=s*x)until r.uniq!;r.size}
