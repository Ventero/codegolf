f=->a{require"date";d=Date.parse(a,0,0)+1;d+=1until d.day*d.month==58;d.strftime"%A"}
