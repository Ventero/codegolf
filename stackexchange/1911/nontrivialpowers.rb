#h={};(2..64).map{|a|(2..12).map{|b|a**b<4097&&(h[a**b]||=[])<<[a,b]*?^}}
#puts h.sort.map{|a,b|[a,b*", "]*" = "}
4097.times{|x|s=[]
2.upto(64){|a|2.upto(12){|b|a**b==x&&s<<[a,b]*?^}}
puts [x,s*", "]*" = "if s[0]}
