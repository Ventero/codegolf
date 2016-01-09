g=(?9*8+".
")*8
r=->x,a=0{x<0||a<g[x].to_i&&(g[x]=a.to_s;[21,19,12,8].map{|i|r[x+i,a+1];r[x-i,a+1]})}
r[eval gets.split*?++"*10"]
puts g.tr(?.,"")
