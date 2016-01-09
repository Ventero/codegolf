$><<($*[0]..$*[1]).map{|a|n=0.0;(1..s=a.size).map{|i|n+=a.chars.each_cons(i).count{|x|x[0]>?0&&(r=x.join.to_i**0.5)==r.to_i}};[-n/s,a]}.min[1]
