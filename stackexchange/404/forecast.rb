#!ruby -nrdate
7.times{|i|puts (Date.parse($_)+i).strftime "%A #{"\023\004\016\016\035"[$_[-4]%5]-9+rand(20)}"}

=begin
require"date";a,b=gets.split;Date::DAYNAMES.rotate(Date.parse(a).wday).map{|d|puts [d,{?r=>10,?m=>20,?t=>5,?n=>-5}[b[2]]+rand(20)]*" "}
require"date";a,b=gets.split;u=Date.parse a;7.times{puts [u.strftime("%A"),{?r=>10,?m=>20,?t=>5,?n=>-5}[b[2]]+rand(20)]*" ";u=u.next}
require"date";a,b=gets.split;(u=Date.parse a).step(u+6){|i|puts [i.strftime("%A"),{?r=>10,?m=>20,?t=>5,?n=>-5}[b[2]]+rand(20)]*" "}
require"date";a,b=gets.split;(u=Date.parse a).step(u+6){|i|$><<i.strftime("%A ")<<{?r=>10,?m=>20,?t=>5,?n=>-5}[b[2]]+rand(20)<<$/}
require"date";a,b=gets.split;(u=Date.parse a).step(u+6){|i|$><<i.strftime("%A #{{?r=>10,?m=>20,?t=>5,?n=>-5}[b[2]]+rand(20)}\n")}
require"date";a,b=gets.split;(u=Date.parse a).step(u+6){|i|$><<i.strftime("%A #{{?r,10,?m,20,?t,5,?n,-5}[b[2]]+rand(20)}\n")}
require"date";a,b=gets.split;(u=Date.parse a).step(u+6){|i|$><<i.strftime("%A #{rand(20)+({?r,10,?m,20,?n,-5}[b[2]]||5)}\n")}
require"date";a,b=gets.split;puts ((u=Date.parse a)..u+6).map{|i|i.strftime "%A #{({?r,10,?m,20,?n,-5}[b[2]]||5)+rand(20)}"}
require"date";a,b=gets.split;puts ((u=Date.parse a)..u+6).map{|i|i.strftime "%A #{[20,-5,0,0,0,10,5][b[2]-109]+rand(20)}"}
require"date";a,b=gets.split;puts ((u=Date.parse a)..u+6).map{|i|i.strftime "%A #{[10,0,5,20,-5][b[2]%8-2]+rand(20)}"}
require"date";a,b=gets.split;puts ((u=Date.parse a)..u+6).map{|i|i.strftime "%A #{[10,-5,5,5,20][b[3]%5]+rand(20)}"}
require"date";a,b=gets.split;puts (0..6).map{|i|(Date.parse(a)+i).strftime "%A #{[10,-5,5,5,20][b[3]%5]+rand(20)}"}
require"date";a,b=gets.split;0.upto(6){|i|puts (Date.parse(a)+i).strftime "%A #{[10,-5,5,5,20][b[3]%5]+rand(20)}"}
require"date";a,b=gets.split;7.times{|i|puts (Date.parse(a)+i).strftime "%A #{[10,-5,5,5,20][b[3]%5]+rand(20)}"}
require"date";gets;7.times{|i|puts (Date.parse($_)+i).strftime "%A #{[10,-5,5,5,20][$_[-3]%5]+rand(20)}"}
#!ruby -nrdate;7.times{|i|puts (Date.parse($_)+i).strftime "%A #{[10,-5,5,5,20][$_[-4]%5]+rand(20)}"}
#!ruby -nrdate;7.times{|i|puts (Date.parse($_)+i).strftime "%A #{"aaaaa"[$_[-4]%5]-9+rand(20)}"}
#!ruby -nrdate;7.times{|i|puts (Date.parse($_)+i).strftime "%A #{"aa"[$_[-4]%2]+rand(1)}"} # nicht volle range, \012\026
#!ruby -nrdate;7.times{|i|puts (Date.parse($_)+i).strftime "%A #{"aa"[$_[-4]%2]+rand}"} # nicht volle range, floattemp

20
30
15
5

require"date";a,b=gets.split;7.times{|i|puts [(Date.parse(a)+i).strftime("%A "),[10,-5,5,5,20][b[3]%5]+srand%20]}


require"date";a,b=gets.split;(u=Date.parse a).step(u+6){|i|$><<i.strftime("%A #{{r:10,m:20,t:5,n:-5}[b[2].to_sym]+rand(20)}\n")}
require"date";a,b=gets.split;(u=Date.parse a).step(u+6){|i|$><<i.strftime("%A #{rand(20)+({r:10,m:20,n:-5}[b[2].to_sym]||5)}\n")}
require"date";a,b=gets.split;(u=Date.parse a).step(u+6){|i|$><<i.strftime("%A #{rand(20)+({r:10,m:20,n:-5}[:"#{b[2]}"]||5)}\n")}
=end


