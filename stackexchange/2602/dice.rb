#z=" o";$><<(s=[?-*5,z[1/a=1+rand(6)]+?\s+z[a/4]+?|,z[a/6]]*"
#|")+z[a%2]+s.reverse
#z=" o";$><<(s=[?-*5,z[a=rand(6)]+?\s+z[a/3]+?|,z[a/5]]*"
#|")+z[1-a%2]+s.reverse


#z=" "*5+?o;s=[?-*5,z[5-a=rand(6)]+?\s+z[a/3]+?|,z[a]]*"
#|";$><<s+z[~a%2]+s.reverse
#z=" o";$><<(s=[?-*5,z[2/~a=rand(6)]+?\s+z[a/3]+?|,z[a/5]]*"
#|")+z[~a%2]+s.reverse

z=" o";$><<(s=?-*5+"
|#{z[2/~a=rand(6)]} #{z[a/3]}|
|"+z[a/5])+z[~a%2]+s.reverse
