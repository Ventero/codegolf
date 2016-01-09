d=gets.hex;$><<[292,146,73,448,56,7,273,84].map{|m|d&m<m ?d&m>0?'cat':'lose':'win'}.max
d=gets.hex;$><<[292,146,73,448,56,7,273,84].map{|m|m>(m&=d)?m>0?'cat':'lose':'win'}.max

m>d&m d&m>0
true  true  cat
true  false lose
false true  win
m>d&m ?d&m>0?'cat':'lose':'win'

[292,146,73,448,56,7,273,84].map{|m|d&m<m ?d&m>0?'cat':'lose':'win'}

779681432087933822244
0x2a4440e38e01252524

0x3c912449e00e22254
0x3c912449e0444a838
0x79224893c01c444a800
0x79224893c0889507000




def test(r)
  c = 0
  512.times{|d|
    $_="%09b"%d

    ref = [292,146,73,448,56,7,273,84].map{|m|d&m<1?:lose:d&m<m ?:cat: :win}.max

    $_ = $_.gsub(/.../,'\0_').chop
    sol = ($_.tr("01","10")[r]?:win:~r ?:lose: :cat)

    (c+=1; p [$_, $+, ref, sol]) if ref != sol
  }
  c
end

#$><<(gets[/(.)..(\1|.\1.)..\1|^(...)*(.)\4\4|^..(.).\5.\5/]?$+>?0?:win: :lose: :cat)
$><<(gets[r=/1..(1|.1.)..1|111(...)*$|^..1.1.1/]?:win:$_.tr("01","10")[r]?:lose: :cat)
x=gets.tr"01","10";$><<(~(r=/1..(1|.1.)..1|111(...)*$|^..1.1.1/)?:win:x[r]?:lose: :cat)
$><<(gets.tr("01","10")[r=/0..(0|.0.)..0|^(...)*000|^..0.0.0/]?:win:~r ?:lose: :cat)
$>.<< gets.tr("01","10")[r=/0..(0|.0.)..0|000(...)*$|^..0.0.0/]?:win:~r ?:lose: :cat
$><<(gets.tr("ox","xo")[r=/o...(o|.o.)...o|ooo|o_.o._o/]?:win:~r ?:lose: :cat)
$><<(gets(p).tr("ox","xo")[r=/o..(o|.o.)..o|ooo|o$.o.$o/m]?:win:~r ?:lose: :cat)
