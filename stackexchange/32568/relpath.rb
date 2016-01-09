$;=/\\|\//
a,b=$*.map &:split
#r=(0..x=a.size).find{|i|a[i]!=b[i]};puts"../"*(x-r)+b[r..-1]*?/
#x=-1;puts"../"*(a.size-r=a.index{a[x+=1]!=b[x]})+b[r..-1]*?/
#puts"../"*(a.size-r=a.index{a[$.+=1]!=b[$.]}+1)+b[r..-1]*?/
#x=-1;puts a.map{a[x+=1]==b[0]?(b.shift;p):"../"}*""+b*?/
#$><<a.map{a[~-$.+=1]==b[0]?(b.shift;p):"../"}*""+b*?/
$><<a.map{|x|x==b[0]?(b.shift;p):"../"}*""+b*?/
