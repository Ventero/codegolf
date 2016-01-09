$<.map{|i|e=z=Rational(i)
r=2
x=[]
(e=(z**(1.0/r)).round(8);e**r==z&&x<<"%d^%d"%[e,r];r+=1)while e>=2
puts [z.to_i,x*", "]*" = "}
