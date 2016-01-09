$<.map{|l|a,b,c,d,e,f=l.split.map &:to_f
n=(f-d)/(e-c)
puts"(x%+.3f)^2+(y%+.3f)^2=%.3f^2"%[x=-(n*(a+c)+(n*(b-f)-(c+e))*m=(d-b)/(c-a))/2/n-=m,y=-(x+(a+c)/2)/m-(b+d)/2,((a+x)**2+(b+y)**2)**0.5]}

=begin
$<.map{|l|x,y,z=l.scan(/\S+ \S+/).map{|a|Complex *a.split}
w=z-x;w/=u=y-x
c=u*(w.abs2-w)/2/?i.to_c/w.imag-x
puts"(x%+.3f)^2+(y%+.3f)^2=%.3f^2"%[*c.rect,(c+y).abs]}
=end
