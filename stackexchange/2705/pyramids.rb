d=gets.split-[?0]
10.times{|i|puts [?\s*(9-i),l=?/+?-*2*i+?\\,d.map{|r|i<(r=r.to_i)??\s*2*(r+~i)+l :l[-2*r,99]}]*""}
