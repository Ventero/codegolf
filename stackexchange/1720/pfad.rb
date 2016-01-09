#f=->t{(l=1...t.size).map{|a|[0,*l].map{|b|t[a][b]+=t[a-1][b>0?b-1:0,b>0?3:2].max}};t[-1].max};q=[*$<].map{|a|a.split.map &:to_i};puts [f[q.transpose],f[q]]*" "
#f=->t{1.upto(l=t.size-1){|a|0.upto(l){|b|t[a][b]+=t[a-1][b>0?b-1:0,b>0?3:2].max}};t[l].max};q=[*$<].map{|a|a.split.map &:to_i};puts [f[q.transpose],f[q]]*" "
#f=->t{(1...l=t.size).map{|a|l.times{|b|t[a][b]+=t[a-1][b>0?b-1:0,b>0?3:2].max}};t[-1].max};q=[*$<].map{|a|a.split.map &:to_i};puts [f[q.transpose],f[q]]*" "
#f=->t{(1...l=t.size).map{|a|l.times{|b|t[a][b]+=t[a-1][b>0?b-1:0,b>0?3:2].max}};t[-1].max};q=$<.map{|a|a.split.map &:to_i};puts [f[q.transpose],f[q]]*" "
f=->t{(1...l=t.size).map{|a|l.times{|b|t[a][b]+=t[a-1][(b>0?b-1:0)..b+1].max}};t[-1].max};q=$<.map{|a|a.split.map &:to_i};puts [f[q.transpose],f[q]]*" "

