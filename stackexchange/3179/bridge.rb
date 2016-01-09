l=*$<
l[i=l.index{|a|a[0]==?_}].tr! ' /\\', '_)('
l[i-1].gsub!(/\/( *)/){?/+?_*$1.size}if i>0
l[i+1].gsub!(/\\ +/){|a|z=x=a.size;(a[x/=2,2]=a[z-x-(1-x%2),2]="||";x-=1)while x>5;a}.tr! '/\\', ?Y
(i+1...l.size).map{|a|l[a-1].scan(?|){l[a][r=$`.size]==" "&&l[a][r]=?|}}
puts l

