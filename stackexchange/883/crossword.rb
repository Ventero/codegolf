#h,*g=$<.map &:chop;u=(g*?#).tr"^#",y=?\s
h,*g=*$<;u=g.join.tr($/,?#).tr"^#",y=?\s;w=h.size+1
e=->c,i{fail [c,i%w,i/w]*y}
z=u.index"# #";z&&e[?L,z+1];
(0...u.size).map{|a|u[a]==u[~a]||e[?S,a+1];u[a]==y&&y!=u[a+w]&&y!=u[a-w]&&e[?L,a]}
