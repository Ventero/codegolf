#r=eval$<.read
r= [[0, 1, 0, 0, 0, 0, 1, 0, 0, 0], [0, 1, 1, 0, 0, 0, 0, 1, 1, 0], [0, 1, 1, 0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 1, 1, 0, 0, 0, 1, 0], [0, 0, 0, 1, 1, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 1, 1, 0, 1, 0], [0, 0, 0, 0, 0, 1, 1, 0, 1, 0], [0, 0, 0, 0, 0, 0, 0, 0, 1, 1]]

#s=v=->x,y{r[y][x]>0&&!(s<<[x,y]).uniq!&&(x>0&&v[x-1,y];y>0&&v[x,y-1];v[x+1,y];v[x,y+1])rescue p;s}
#u=(0..99).map{|x|s=[];v[x/10,x%10]}.max_by &:size
#v=->x,y{r[y][x]>0?(r[y][x]=0;[[x,y]]+(x>0?v[x-1,y]:[])+(y>0?v[x,y-1]:[])+v[x+1,y]+v[x,y+1]):[] rescue []}
#u=(0..99).map{|x|v[x/10,x%10]}.max_by &:size
#puts"Size: #{u.size} Coordinates: "+u.map{|a|?(+a*?,+?)}*?\s

r.flatten!
#r=eval$<.read
#s=v=->p{r[p]>0&&!(s<<p).uniq!&&(v[p+10];p>9&&v[p-10];p%10<9&&v[p+1];p%10>0&&v[p-1])rescue p;s};u=(0..99).map{|x|s=[];v[x]}.max_by &:size
#u=(0..99).map(&v=->p{p<0||p>99||r[p]<1?[]:(r[p]=0;[p]+v[p+10]+v[p-10]+v[p%10<9?p+1:p]+v[p%10>0?p-1:p])}).max_by &:size
#u=(X=0..99).map(&v=->p{X===p&&r[p]>0?[p]+[p%c>(r[p]=0)?p-1:p,p-c,p+c,p%c<9?p+1:p].flat_map(&v):[]}).max_by &:size

#c=10;u=(X=0..99).map(&v=->p{X===p&&r[p]>0?[p]+v[p%c>(r[p]=0)?p-1:p]+v[p+c]+v[p-c]+v[p%c<9?p+1:p]:[]}).max_by &:size
#puts"Size: #{u.size} Coordinates:"+u.map{|a|" (#{a%c},#{a/c})"}*""


#u=(X=0..99).map(&v=->p{X===p&&r[p]==1?" (#{u=p%c=r[p]=10},#{p/c})"+[p+c,p-c,u>0&&p-1,u<9&&p+1].map(&v)*"":""}).max_by &:size
#u=(X=0..99).map(&v=->p{X===p&&r[p]==1?" (#{u=p%c=r[p]=10},#{p/c})"+v[p+c]+v[p-c]+v[u>0&&p-1]+v[u<9&&p+1]:""}).max_by &:size
#u=(0..99).map(&v=->p{p>=0&&r[p]>(r[p]=0)?" (#{u=p%c=10},#{p/c})"+v[p+c]+v[p-c]+v[u>0?p-1:p]+v[u<9?p+1:p]:""}).max_by &:size
#u=(0..99).map(&v=->p{p>=0&&r[p]==1?" (#{u=p%c=r[p]=10},#{p/c})"+v[p+c]+v[p-c]+v[u>0?p-1:p]+v[u<9?p+1:p]:""}).max_by &:size
r=eval *$*
u=(0..99).map(&v=->p{-~p*r[p]>0?" (#{r[p]=0;u=p%c=10},#{p/c})"+v[p+c]+v[p-c]+v[u>0?p-1:p]+v[u<9?p+1:p]:""}).max_by &:size
puts"Size: #{u.size/6} Coordinates:"+u