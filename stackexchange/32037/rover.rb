E,N,W,S=*0..3
x,y,i=eval"a="+gets
gets.bytes{|c|x+=c%2*1i**i=i+1-c&3}
$><<[(x+y.i).rect,"NWSE"[i]]*?,

=begin
[1,1.i,-1,-1.i][i]
(1.-i&2)*(1.i.**i%2)
[1,i,-1,-i]
[i**0,i**1,i**2,i**3]

gets.chars{|c|c==?M?k+=[1,1.i,-1,-1.i][i]:i=(i.+c<?R?1:-1)%4}

c<?R?1:-1
(c.ord&3)-1

-1+76&3 = 3
-1+82&3 = 1
-1+(76&3) = -1
-1+(82&3) = 1

1,2,N\nMRMLM
2,4,N

2,4,N\nMMLMLMMMLMLMR
2,4,E

-5,-7,E\nMMLMLMMMLMLMR
-5,-7,S
=end

=begin
{}:,;n/()8%5% # [["MLMRM" ""] "-5,-7" i]
  \~ # [["MLMRM" ""] i x y]
  -1 2-1??:i* # [["MLMRM" ""] i x y.i]
  @@3$0= # [["MLMRM" ""] y.i i x "MLMRM"]
  { # [i x c]
    @ # [x c i]
    \ # [x i c]
    .2%\ # [x i c%2 c]
    @ # [x c%2 c i]
    ) # [x c%2 c i+1]
    \ # [x c%2 i+1 c]
    - # [x c%2 i+1-c]
    3&:e # [x c%2 i+1-c&3]
    i # [x c%2 i+1-c&3 1i]
    \ # [x c%2 1i i+1-c&3]
    ? # [x c%2 1i**(i+1-c&3)]
    * # [x c%2*1i**(i+1-c&3)]
    e\ # [x i+1-c&3 c%2*1i**(i+1-c&3)]
    @ # [i+1-c&3 c%2.... x]
    + # [i+1-c&3 x+...]
  }/ # [["MLMRM" ""] y.i i x]
@+ # [["MLMRM" ""] i x+y.i]
"ENWS"1/@=
=end
