n=gets.to_i
y=z=[*[1]*n,0]*n
$<.map{|i|a,b=i.split.map &:to_i;b ?[*y&&[b>1&&-1,b<n&&1,a>1&&~n,a<n&&n+1],0].map{|f|f&&z[n*a+a-n-2+b+f]*=-1}:y=!y}
z.map{|a|putc"
OX"[a]}
