#$_[$_[z=$_.to_i-~u= ~/o/]>($_[u]=?\s)?$_[z+1]<?#?z+1:u+1:z]=?o
#($_[k=$_.to_i-~~/o/,2]=$_[k,2].sub(" ",r="o"))[r]||$_[~/o/+1]=r;sub ?o," "
#r=$_[k=1+~/o/+x=$_.to_i,2];r&&sub($_[(r=~/ /||-x)+k]=?o," ")

#sub$_[($_[k=1+~/o/+x=$_.to_i,2]||$_)=~/ /+k||k-x]=?o," "
sub$_[($_[k=1+~/o/-x=-$_.to_i,2]=~/ /||x)+k]&&=?o," "

# fails for last line
#sub$_[($_[k=1+~/o/+x=$_.to_i,2]=~/ /||-1)+k]=?o," "
