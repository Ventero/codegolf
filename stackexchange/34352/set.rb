#$_,$A=$*;eval"A,B=#$A"
$_,a=$*;A,B=eval a
p (~/c/?B.map{|i|~/d/?A.map{|j|[i,j]}:!A.index(i)^~/m/?p: i}:A+B).uniq.compact

=begin
#$_,A,B=$*.map(&:split)

!A.index(i)^! ~/i/


A i r
0 0 i
0 1 p
1 0 p
1 1 i

0 1 i
1 0 i
0 0 p
1 1 p
=end
