#x,y,z=*$<;25.times{|r|70.times{|c|$><<z[[(c-x.to_f+2.i*(r-y.to_i)).abs/70*k=z=~/$/,k-1].min]};puts}
x,y,$_=*$<;25.times{|r|70.times{|c|$><<$_[[(c-x.to_f+2.i*(r-y.to_i)).abs/70*~/$/,~/.$/].min]};puts}
