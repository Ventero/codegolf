l = open("quine.rb").read.chomp
M = l.size
u = l*4
r =(-2*M...2*M).map{|n|`echo #{n} | ruby1.9.1 quine.rb`}.join
p r, u, r == u
