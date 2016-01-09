code=<<'EOD'.chomp
M='%d are "%s"'
O=IO.read$0
?\127>B="My source has 267#{s=" characters.
"}#{z=(m=O.chars.uniq).map{|c|M%[O.count(c),c]}*$/}
Besides unquoted numbers, my output has 1060"+s
$><<B+m.map{|c|M%[(B+z+s="
It's good to be a program.").gsub!(/\d++(?!")/,"").count(c),c]}*$/+s
EOD

#eval code.sub("$0", '"packed.rb"')
IO.write("packed.rb", code)

# q.scan(/\D/).size = 67 (hardcoded strings) + S.chars.uniq.size*9
# I.scan(/\D/).size = " + 38 = 105 + S.chars.uniq.size*9
# v.scan(/\D/).size = (S.chars.uniq.size+1)*9
# Sus := S.chars.uniq.size
# (I+v).scan(/\D/).size = Sus*18 + 106 + Sus*9 + 9
#$><<q<<(D.size*(9+9)+99+~1)<<X+M+s

# everything hardcoded, 271
=begin
s='%d are "%s"'
?\267>O=IO.read("packed.rb")
B="My source has 271#{y=" characters.
"}#{z=(m=O.chars.uniq).map{|c|s%[O.count(c),c]}*$/}
Besides unquoted numbers, my output has 1060"+y
$><<B+m.map{|c|s%[(B+z+$M="
It's good to be a program.").gsub!(/\d++(?!")/,"").count(c),c]}*$/+$M
EOD
=end

# more cheated, 336
=begin
R="I=$/+$/+'eval R=%p'%R;"+<<'EOD'.gsub(/;\n/,?;).chop
?\4>w='%d are "%s"';
B="My source has #{I.size}#{X=" characters.
"}#{z=(m=I.chars.uniq).map{|x|w%[I.count(x),x]}*$/}
Besides unquoted numbers, my output has 1114"+X;
$><<B+m.map{|c|w%[(B+z+$M="
It's good to be a program.").gsub!(/\d++(?!")/,'').count(c),c]}*$/+$M;
EOD

code = "

eval R=%p" % R
=end

# no fucking idea... eliminated dependency on D, I think?
# also put newline into actual code, so no need to add it for check later
=begin
r="?B>y='eval r=%p
'%r
"+<<'EOD'.gsub(/;\n/,?;).chop
B='My source has '+y.size.to_s+X=' characters.
'
I='
Besides unquoted numbers, my output has 1123'+X;
!z=(D=y.chars.uniq).map{|c|[y.count(c),'are',?"+c+?"]*' '}*$/
M="It's good to be a program."
$><<(x=B+z+I)+D.map{|c|j=' are "
"';(1+(x+j*(111>>1)+j*2+M).gsub(/\d++(?!")/,"").count(c)).to_s+(j[2*3]=c;j)}*$/+$/+M
EOD
=end

# cheated solution, 347
=begin
r="?B>S='eval r=%p'%r;"+<<'EOD'.gsub(/;\n/,?;).chop
q='My source has '+S.size.to_s+(X=' characters.
')+(D=S.chars.uniq).map{|c|[S.count(c),'are',?"+c+?"]*' '}*$/+'
Besides unquoted numbers, my output has ';
I=q+X+M="It's good to be a program.";
D<<$/;
v=D.map{|c|j=' are "
"';(-~(I+j*D.size).count(c)).to_s+(j[~-~$.]=c;j)}*$/+$/;
$><<q<<(I+v).scan(/\D/).size<<X+v+M
EOD
=end

# uncheated solution, 367
=begin
r="S='eval r=%p'%r;"+<<'EOD'.chop.gsub(/;\n/,?;)
O=-~$.;
q="My source has #{S.size}"+(X=' characters.
')+S.chars.uniq.map{|c|[k=S.count(c),k>O ? :are: :is,?"+c+?"]*' '}*$/+'
Besides unquoted numbers, my output has ';
r=(w=q+X+s="It's good to be a program.").scan(D=/\D/).uniq;
$><<q<<(w+v=r.map{|c|j=' are "
"';(-~(w+j*r.size).count(c)).to_s+(j[~O]=c;j)}*$/+$/).scan(D).size<<X+v+s
EOD

# 1 newline zuviel weil (?"+$/+j=' are "')*r.size auch eine für ende von array-join rechnet

#p [r+~-(u+t+s).size, (v+w).chars.grep(/\D/).size]
#p (q+u+(r+~-(u+t+s).size).to_s+t+v+s).chars.grep(/\D/).size

#q+=S.chars.uniq.map{|c|"#{k=S.count c} #{k>O ? :are: :is} \"#{c}\""}*$/;

# q.scan(D).size = X.size+??? (is/are...)
# X.size = 13
# s.size = 26
# r.size = S.chars.uniq.size+1
# v.scan(D).size = 9*r.size
# r=r.scan ...

puts p,S
=end
