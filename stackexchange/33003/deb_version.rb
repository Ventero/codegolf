#g=->a{a.split(/(\d+)/).map{|w|w[/\d/]?w.hex: w.bytes.map{|c|c<126?c.chr[/[a-z]/i]?c:c+77:-1}<<0}<<[0]}
#puts$<.sort_by{|a|a[/^(\d+:)?(.+?)(-[^-]+)?\n/];z="#$3";[$1.to_i,g["#$2"],g[z]]}

#g=->a{a.scan(/(\D*)(\d*)/).map{|w,n|w.bytes.map{|c|c<126?c.chr[/[a-z]/i]?c: c+123:-1}+[0,n.hex]}}
#puts$<.sort_by{|a|a[/^(\d+:)?(.+?)(-[^-]+)?\n/];z="#$3";[$1.to_i,g["#$2"],g[z]]}

#puts$<.sort_by{|a|a[/^(\d+:)?(.+?)(-[^-]+)?\n/]
#%W{#$1 #$2 #$3}.map{|a|a.scan(/(\D*)(\d*)/).map{|w,n|w.bytes.map{|c|c<126?c.chr[/[a-z]/i]?c:c+123:-1}+[0,n.hex]}}}

#puts$<.sort_by{|a|a[/^(\d+:)?(.+?)(-[^-]+)?\n/]
#$~[1,3].map{|a|"#{a}".scan(/(\D*)(\d*)/).map{|w,n|w.bytes.map{|c|c<126?c.chr[/[a-z]/i]?c:c+123:-1}+[0,n.hex]}}}

#puts$<.sort_by{|a|a[/^(\d+:)?(.+?)(-[^-]+)?\n/];$~.captures.map{|q|"#{q}".scan(/(\D*)(\d*)/).map{|w,n|w.bytes.map{|c|c<126?c.chr[/[a-z]/i]?c:c+123:-1}+[0,n.hex]}}}
#puts$<.sort_by{|a|r=[];3.times{|i|"#{a[/^(\d+:)?(.+?)(-[^-]+)?\n/,-~i]}".scan(/(\D*)(\d*)/){|w,n|w.bytes{|c|r.<<c<126?c.chr[/[a-z]/i]?c:c+123:-1};r<<0<<n.hex}};r}

puts$<.sort_by{|a|(1..3).map{|i|"#{a[/^(\d+:)?(.+?)(-[^-]+)?
/,i]}".scan(/(\D*)(\d*)/).map{|w,n|w.bytes.map{|c|c<126?c>58?c:c+99:-1}+[0,n.hex]}}}
