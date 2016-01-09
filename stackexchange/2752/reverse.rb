puts$<.map{|i|i[/[^01\s]/]?"%08b"%i.reverse: i.to_i(2).to_s.reverse}
