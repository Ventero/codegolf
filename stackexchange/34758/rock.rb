r=gets p
r[r[(r[k=1+~/o/+x=r.to_i,2]=~/ /||-x)+k]&&=?o]=" "
$><<r

=begin
#r[(r[k=1+~/o/+x=r.to_i,2]=~/ /||-x)+k]=?o;sub ?o," "
#r[r[z=r.to_i-~u= ~/o/]>(r[u]=?\s)?r[z+1]<?#?z+1:u+1:z]=?o
=end

=begin
r=gets p
r[r[z=r.to_i+u=-~~/o/]<?#?z:r[z+1]<?#?z+1:u]=?o
r[~-u]=?\s
$><<r
=end

=begin
r=gets p
r[k= ~/o/]=?\s
r[r[z=k-~r.to_i]<?#?z:r[z+1]<?#?z+1:k+1]=?o
$><<r
=end

#r[k= ~/o/]=?\s
#r[[z=k+r.to_i+1,z+1,k+1].find{|i|r[i]<?#}]=?o
