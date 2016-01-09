=begin
eval"A,B="+gets;s=1;1.upto(a-b){|i|s+=s*b/i};p s
eval"A,B="+gets;

eval"A,B="+gets;s=1;1.upto(a-b){|i|s+=s*b/i};p s
eval"A,B="+gets;i=0;s=1;p eval"s+=s*(a-b)/i+=1;"*b
eval"A,B="+gets;s=1;b.times{|i|s+=s*(a-b)/i+=1};p s
eval"A,B="+gets;i=0;p eval"(1+%f/i+=1)*"%b*(a-b)+?1
eval"A,B="+gets;p eval"(1+b/%f)*"*(a-=b)%[*1..a]+?1
eval"A,B="+gets;p eval (1..a-b).map{|i|"(1+b/%f)"%i}*?*
eval"A,B="+gets;i=0;p eval"(A-B+i+=1)/i*"*B+?1
eval"a,b=i="+gets;p eval"i/(a-i-=1)*"*b+"1"
eval"A,B=I="+gets;p eval"I/(A-I-=1)*"*B+?1

"I/(A-I-=1)*"*B+?1
["I/(A-I-=1)"]*B*?*
=end
eval"A,B=I="+gets;p eval"I/(A-I-=1)*"*B+?1
