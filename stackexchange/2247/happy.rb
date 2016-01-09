gets;$_="#{eval gsub /./,'+\&**2'}"until$_.to_i<5;puts$_<"2"?:Happy: :Unhappy
a=gets.to_i;a=eval"#{a}".gsub /./,'+\&**2'until a<5;puts a<2?:Happy: :Unhappy
a=gets.to_i;a=eval [*"#{a}0".chars]*"**2+"until a<5;puts a<2?:Happy: :Unhappy
