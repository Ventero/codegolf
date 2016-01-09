ref = IO.read("ref")
idx = (0...ref.size).reject{|i|" ^"[ref[i]]}
encoded = idx.map{|i|i|(ref[i].ord<<10)}

#encoded = idx.group_by{|i|ref[i]}.flat_map{|c,o|
#	off, *rest = o
#	first = (1 << 19) | (off << 9) | c.ord
#	p first>>9
#	[first, *rest.each_slice(2).map{|a,b|(a << 9) | (b || a)}]
#}

p encoded.map{|i|i.to_s(16)}
p encoded.size
puts encoded.pack("U*")
