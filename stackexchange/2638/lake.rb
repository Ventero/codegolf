r=""+x=$<.read
x[0,s=x=~/$/]=x[~s,s]=?**s
f=""+x.gsub!(/^.|.$/,?*)
s.times{(?0..?9).map{|i|x.gsub(i){p=$`.size
[1,-1,s+1,s+2,s,~s,-s,-s-2].any?{|g|f[p+g]<?+&&r[p+g]<=r[p]}&&f[p]=?*}}}
(0...x.size).map{|i|putc f[i]>?*??*:r[i]}
