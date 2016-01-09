s=->n{eval (1...n).select{|a|n%a<1}*?+}
f=->n{s[s[n]]==n}
