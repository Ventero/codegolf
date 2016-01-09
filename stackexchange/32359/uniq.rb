h={};i=eval$*[0];v=i.flatten.uniq
loop{h[a=v.sample(1+rand(v.size)).sort]||=i.any?{|o|(o&a).size!=1}||p(a)}
