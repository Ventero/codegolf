#r=$<.map{|i|i.count ?0};r.max.downto(1){|i|puts ?0*r.count{|x|x>=i}}
#r=$<.map{|i|i.count ?0};puts (1..z=r.max).map{|i|?0*r.count{|x|x>z-i}}
#puts$<.map{|i|i.chop.chars.sort}.transpose.map{|i|i.reverse*""}
#puts$<.map{|i|i.chop.chars.sort}.reverse.transpose.map &:join
puts$<.map(&:chars).reverse.transpose.sort[1,50].map &:join
# works for test case below
#puts$<.map(&:chars).reverse.transpose.sort.map(&:join).grep /0/
=begin
o o
o o
->
oo
oo
=end
