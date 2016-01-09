#k=->z,p{[*0..z,*z.downto(0)].map{|i|[i*=0.02,0.3-i,i][p,2]}}
#[3,*k[10,1],[3,2],*k[10,0],[0,2],[3,2],2,*[[0.1,0.2]]*9].map{|x,y=0|c=Time.now;1until Time.now-c>x;sleep y}


#[3,*r=(s=(0..15).map{|i|[0.3-i*=0.02,i]})[0,11],*r.reverse,[3,2],*s.reverse,*s,[0,2],[3,2],2,*[[0.1,0.2]]*9].map{|x,y=0|c=Time.now
#1until Time.now-c>x
#sleep y}

#[3,*q=a[0,11],*q.reverse,[3,2],*a.reverse,*a,[0,2],[3,2],2,*[[0.1,0.2]]*9].map{|x,y=0|c=Time.now

#a=(0..15).map{|i|[0.3-i*=0.02,i]}
#[[3,0],*a[0,11],*(z=a.reverse)[5,11],3,*z,*a,0,3,[2,0],*[[0.1,0.2]]*9].map{|x,y=2|c=Time.now;1until Time.now-c>x;sleep y}

#a=(0..15).map{|i|[0.9-3*i*=0.02,i]}
#[9,*a[0,11],*(z=a.reverse)[5,11],11,*z,*a,2,11,6,*[0.3]*9].map{|x,y|c=Time.now;1until Time.now-c>x/3;sleep y||x%3}

#a=(0..15).map{|i|[0.3-i*=0.02,i]}
#[3,*a[0,11],*(z=a.reverse)[5,11],11,*z,*a,8,11,2,*[[0.1,0.2]]*9].map{|x,y|c=Time.now
#1until Time.now-c>x%4
#sleep y||x/4}

#a=*0..15;[[3,0],*a[0,11],*(z=a.reverse)[5,11],[3,2],*z,*a,[0,2],[3,2],[2,0],*[[0.1,0.2]]*9].map{|x,y|y||(x=0.3-y=x*0.02);c=Time.now;1until Time.now-c>x;sleep y}

#[[3,0],*(a=*0..10),*a.reverse,[3,2],*(z=*0..15),*z.reverse,[0,2],[3,2],[2,0],*[[0.1,0.2]]*9].map{|x,y|y||(x=0.3-y=x*0.02);c=Time.now;1until Time.now-c>x;sleep y}

#a=[];16.times{|i|a=z,*a;$*<<z=[0.3-i*=0.02,i]}
#[3,*$*[0,11],*a[0,11],[3,2],*a,*$*,[0,2],[3,2],2,*[[0.1,0.2]]*9].map{|x,y=0|c=Time.now
#1until Time.now-c>x
#sleep y}

#http://screen.ventero.de/2014-07-08-02-41-07_881.png
