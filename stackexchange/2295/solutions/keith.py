def P(n):x=raw_input();return eval('[(n+".","","-")]'+'+P(n+"| ")'*int(x))+[(n+"'",'','-')]if'0'<x<':'else[(n,x,' ')]
r=P('')
for q,t,f in r:print q+t+f*(max(len(2*x+y)for x,y,a in r)-len(2*q+t))+q[::-1]

