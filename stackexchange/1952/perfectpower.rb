puts (r=2..32).map{|j|r.map{|i|(1..2**(64.0/j/i)).map{|a|a**(j*i)}}}.flatten.uniq.sort[0..-2]
