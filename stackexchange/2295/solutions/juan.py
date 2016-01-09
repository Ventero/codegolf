f=[(0,0)]
s=[input()]
a=list.append
L=len
w=0
while s:
 i=raw_input();s[-1]-=1;l=L(s)
 try:a(s,int(i));a(f,(l,0))
 except:a(f,(l,i));w=max(w,4*l+L(i))
 while s:
  c=s.pop()
  if c:break
  a(f,(L(s),1))
 if c:a(s,c)
for l,s in f:p=w-4*l-2;print'| '*l+(".'"[s]+'-'*p+".'"[s]if s in(0,1)else s+' '*(p+2-L(s)))+' |'*l

