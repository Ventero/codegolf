M={};x=0,m=q=0
gets.scan(/.(\d+)/){?1.upto($1){m,y=x
x[d=$&.ord%10%7-2]+=1|($u=M[y]||={})[m]=d
m<q&&q=m}}
$u[m]=2
puts M.sort.map{|_,b|(q..b.max[0]).map{|k|">vX <^"[b[k]||3]}*""}
