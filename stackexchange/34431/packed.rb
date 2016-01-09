M='%d are "%s"'
O=IO.read$0
?\127>B="My source has 267#{s=" characters.
"}#{z=(m=O.chars.uniq).map{|c|M%[O.count(c),c]}*$/}
Besides unquoted numbers, my output has 1060"+s
$><<B+m.map{|c|M%[(B+z+s="
It's good to be a program.").gsub!(/\d++(?!")/,"").count(c),c]}*$/+s