puts"Iterations: #{(1..7).find{s=$_.chars.sort*"";puts [r=s.reverse,?-,s,?=,$_="%04d"%(r.to_i-s.to_i)]*" ";~/6174/}}."
