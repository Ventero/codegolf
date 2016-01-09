f=$<.map{|g|[*g.chop.bytes]}
f.flatten.max.downto(49){|j|puts f.transpose.map{|n|n.count{|r|r>=j}}*""}
