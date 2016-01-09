#$><<[$/,(gets||Time.now.strftime("%T")).tr(z=" .':","").bytes.map{|a|$><<z[a/4-12];z[a%4]}]*""
#$><<[$/,(gets||Time.now.to_s[11,8]).tr(z=" .':","").bytes.map{|a|$><<z[a/4-12];z[a%4]}]*""
#$><<[$/,(gets||`date`[10,8]).tr(z=" .':","").bytes.map{|a|$><<z[a/4-12];z[a%4]}]*""
