#d=->n,k,r{n-=k;r<?r??\\*k+?|*n :?|*~-k+?/*-~n}
d=->n,k,r{n-=k;r>?l??|*~-k+?/*n+=1:?\\*k+?|*n}
#e=->n,k,r{k-=r;'\|'[r]*k+'|/'[r]*n-=k}
e=->n,k,r{(?\\*k+?|*~-n+?/*n)[n*r,n]}
e=->n,k,r{(?\\*k+?|*n+?/*n)[n*r+r,n]}

puts d[10, 5, 'r']
puts e[10, 5, 1]

puts d[10, 5, 'l']
puts e[10, 5, 0]

puts d[12, 7, 'r']
puts e[12, 7, 1]
