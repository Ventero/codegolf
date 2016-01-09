#!ruby -plrmathn
#$_+=" = "+$_.to_i.prime_division.map{|a|a[0,a[1]]*"^"}*" * "
$_+=?=+$_.to_i.prime_division.map{|a|a[0,a[1]]*?^}*?*
