rotate=->s{s.split($/).map{|i|i.chars.reverse}.transpose.map(&:join).join($/)}

s=<<EOD.gsub(?#,"")
 3 ; p #
0|0;p=p#
0|0; p;#
;p  ||0#
p= p||0#
;p  p ;#
2||p= p#
 00;p  #
     1 #
EOD

#p *p||1

<<EOD
 30;p  #
0||p=p #
0|0;p=p#
;p;p|p;#
p=p ||0#
;p   p;#
2||p =p#
 00;1  #
EOD



#puts rotate[s]
#puts rotate[rotate[s]]
puts rotate[rotate[rotate[s]]]

puts ">>> 0°"
eval s
puts "<<<"
puts ">>> 90°"
eval rotate[s]
puts "<<<"
puts ">>> 180°"
eval rotate[rotate[s]]
puts "<<<"
puts ">>> 270°"
eval rotate[rotate[rotate[s]]]
puts "<<<"

# works, symmetric
=begin
       0  #
      0|0 #
  p ;;0|0 #
   ;00;3  #
p *0||2* p#
  1;00;   #
 0|0;; p  #
 0|0      #
  0       #
=end

# works
=begin
 30;p  #
0||p=p #
0|| p  #
;p  ||0#
p=p ||0#
;p   p;#
2||p =p#
 00;1  #
     p #
=end

# works
=begin
 30;p  #
0||p=p #
0|0;p;p#
;p;p|p;#
p=p ||0#
;p   p;#
2||p =p#
 00;1  #
     p #
=end

# works
=begin
  3 ;p  #
 p| p=p #
p |  p;p#
 ;p  |p;#
 p=p ||0#
 ;p   p;#
 2||p =p#
  00;1  #
      p #
=end

# works
=begin
  3 ;p  #
p |p =p #
 0|| p;p#
 ;p|p|p;#
 p=p ||0#
 ;p   p;#
 2||p =p#
  00;1  #
      p #
=end

# works
=begin
  3 ;p;p#
 p|p =p;#
2 || p=p#
 ;p|p|p;#
;p=p ||0#
 ;p   p;#
2 ||p =p#
  00; p #
     1  #
=end

# 0, nil, 2, nil
=begin
  p ;00  #
 p= p||0 #
p=p ;00|0#
  ; p;0|0#
;p     p;#
0|0;p ;  #
0|00; p=p#
 2||p =p #
  00; p  #
=end

# 0, false, 2, 3
=begin
  3 ; p;p#
 p|p ; p;#
2 || p =p#
 ;p|p |p;#
;p=p  ||0#
 ;p p; p;#
2 ||  p=p#
  00;1;p #
=end

=begin
p;p ; 3  #
;p ; p|p #
p= p || 0#
;p  p|p|0#
2||p=p=p;#
0|p;p=p;p#
 1; ;p;  #
=end
=begin
p;p ;  3 #
;p ;  p|0#
p=  p ||0#
;p p;p|p;#
2||   p=p#
0|p; p=p;#
 1;p; p;p#
=end

# 0,nil,2,nil
=begin
p;p ;  3 #
;p ;  p|0#
p=  p ||0#
;p p;p|p;#
2||   p=p#
0|p; p=p;#
 1;p; p;p#
=end

# works for 0,1,2
=begin
p;p ;  2 #
 p ;  p|0#
p=   p||0#
;p  p; p;#
2||   p=p#
0|p; p=p #
 1;p; p  #
=end

# works for 0, 1
=begin
 p;   2 #
     p| #
p=p  ||0#
;p ;p|p;#
2||p ==p#
  p;p p #
 1;p;1  #
=end

# shit
=begin
   3
  p=
 p||=0
2=||
  =p
  1

 p; 2 #
   p|0#
p=p||0#
;p  p;#
2||p=p#
0|p   #
 1 ;p #


 0000000  #
 0||2*  p #
p   *0|| 0#
  000000  #


 p ;00; 1 #
p *0||2* p#
 3 ;00; p #
=end

# 9 × 10
=begin
    p    #
         #
  0 * 0  #
  00100  #
  0||2* p#
p *0||0  #
  00300  #
  0 * 0  #
         #
    p    #
=end

# 10 × 10
=begin
    p     #
          #
  0 *  0  #
  003000  #
  00|000  #
p *0||2* p#
  001000  #
  0 *  0  #
          #
    p     #
=end

# 11 × 11
=begin
      01   #
    0 | 0  #
   00 ||0  #
      0|00 #
  p   *p||0#
 0     *0  #
 0*     0  #
003** 0 +0 #
+0| 0 ; 0  #
2||2*  p   #
 00;0      #
=end

=begin
     00
 p *p||0
0|00
0|0 |00;
 0  || 1
 0
 2+ 00;p
=begin
=end

=begin
   00
200||p
+  00
    0*
0 || p
0 |0 |0
;  0 |0
p 1; 0
=begin
=end

=begin
p;00 +2
      0
1 ||  0
;00| 0|0
    00|0
0||p* p
 00
=begin
=end

=begin
 0 ;1 p
0| 0  ;
0| 0| 0
 p || 0
 *0
  00  +
 p||002
  00
=begin
=end
