l=*$<
i=l*""
e=[]
d=[1,-1,x=l[0].size,-x]
r=[f=9e9]*s=x*b=l.size;r[i=~/@/]=0
r.map{i.gsub(/ /){r[p=$`.size]=d.map{|u|p>-u&&r[u+p]||f}.min+1;e<<p if p%x%~-~-x*(p/-~x%~-b)<1}}
r[g=e.find{|i|r[i]<f}].times{i[g]=?*;g+=d.find{|l|r[g]>r[g+l]}}
puts i
