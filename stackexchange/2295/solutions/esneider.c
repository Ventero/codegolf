#define F(n)for(int i=0;i<n;i++)
#define H(n,s,a...)F(n)printf(s);printf(a);
#define I(s)H(v,"| ",s)H(l-2,"-",s)J
#define J H(v," |","\n")
S[1<<17][26],N[1<<17],P,a;E(p){int l=strlen(gets(S[p]));if(sscanf(S[p],"%d",N+p))F(N[p])l<(a=E(++P))?l=a:l;return l+4;}R(p,v,l){if(N[p]){I(".")F(N[p])R(++P,v+1,l-4);I("'")}else{H(v,"| ","%-*s",l,S[p])J}}main(){R(P=0,0,E(0)-4);}

