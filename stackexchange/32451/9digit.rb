[*r=1..9].permutation{|i|r.all?{|x|eval(i[0,x]*"")%x<1}&&$><<i*""}
