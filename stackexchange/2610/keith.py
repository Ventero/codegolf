N=input()
M=1023
s='0'[N:]
if N&M==M:N+=1;s='!'
print s+';'.join('%d'%b+k for b,k in zip([N>>10*(6-i)&M for i in range(7)],'EPTGMk ')if b)

