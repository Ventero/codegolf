k=$<.read.split.map &:to_i;p (0..358).map{|a|a%20>17?0:(0..2).map{|i|k[20*i+a,3].inject:+}.inject(:*)}.max
