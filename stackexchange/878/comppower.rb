# new version, only works if c,f != 0, doesn't compare complex values

z=->a,b,c,d,e,f{l=Math.method:log
u=->a,b{b&1<1?a.abs: a}
a=u[a,b=u[b,c]];d=u[d,e=u[e,f]]
a*d<0?a<=>d :a<0?-z[-a,b,c,-d,e,f]:b*e<0?b<=>e :b<0?-z[a,-b,c,d,-e,f]:l[l[a]/l[d]]<=>f*l[e]-c*l[b]}

=begin
l(a)/l(d) no problem because:

a,b,e > 0
d = 1 -> log(d) = 0 -> lhs = Infinity
a < 1 impossible
-> a >= 1
-> a**b**c >= 1
-> Infinity >= 1 == true

-> 1
=end

=begin
if a*d<0 then
  a<=>d
elsif a<0 then
  -z[-a,b,c,-d,e,f]
elsif b*e<0 then
  b<=>e
elsif b<0
  -z[a,-b,c,d,-e,f]
else
  l[l[a]]+c*l[b]<=>l[l[d]]+f*l[e]
end
}
=end

=begin
# Old version, *most likely* works for all inputs
z=->a,b,c,d,e,f{l=->a{Math.log a}
u=->a,b,c=1{b&1<1&&c>0?a.abs: a}
b=u[b,c];e=u[e,f]
a=u[a,b,c];d=u[d,e,f]
a|b|d|e>0?(l[l[a]]+c*l[b])<=>(l[l[d]]+f*l[e]):a<0?d>0?-1:-z[-a,b,c,-d,e,f]:d<0?1:b<0?e>0?-1:-z[a,-b,c,d,-e,f]:e<0?1:0}


=begin
def fix_sign a,b,c=1
	(b%2 == 0 and c > 0) ? a.abs : a
end

def f a,b,c,d,e,f
	b = fix_sign b,c
	e = fix_sign e,f
	a = fix_sign a,b,c
	d = fix_sign d,e,f

	if a > 0 and b > 0 and d > 0 and e > 0 then
		# we can safely use the double log formula
		return Math.log(Math.log(a)) + c * Math.log(b) <=> Math.log(Math.log(d)) + f * Math.log(e)
	end

	if a < 0 then
		if d > 0 then
			# a ** b ** c < 0 < d ** e ** f
			return -1
		else
			# a < 0 && d < 0, so just compare the absolute values of both
			# but flip the result
			return -f(-a,b,c,-d,e,f)
		end
	else if d < 0 then
		# d < 0 && a > 0
		return 1
	else if b < 0 then
		# a > 0 && d > 0
		if e > 0 then
			# b**c is < 0, so a**b**c is < 1, while d**e**f is >= d (which is > 1)
			return -1
		else
			# e < 0 && b < 0, so just compare absolut values again
			return -f(a,-b,c,d,-e,f)
		end
	else if e < 0 then
		# b > 0, e < 0, see above
		return 1
	end

	# should never be reached
	return 0
end
=end

puts [
z[100, 100, 100, 50, 100, 100] == 1,
z[-100, 100, 100, 50, 100, 100] == 1,
z[-100, 99, 100, 50, 100, 100] == -1,
z[100, -100, -100, -1, 3, 100] == 1,
z[535, 10**9, 10**8, 443, 10**9, 10**9] == -1,
z[1, 1, 1, 2, 1, 1] == -1,
z[2, 1, 1, 1, 1, 1] == 1,
z[-1, -1, 1, 2, 2, 2] == -1,
z[1, -5, -9, 2, -1, 2] == -1,
z[1, -5, -9, 2, -1, 3] == 1,
z[1, 5, 9, 2, 1, 3] == -1,
z[1, 5, 9, 2, 1, -3] == -1,
z[1, 5, 9, 2, -1, 3] == 1,
z[1, 5, 9, 2, -1, -3] == 1,
z[1, 5, 9, -2, 1, 3] == 1,
z[1, 5, 9, -2, 1, -3] == 1,
z[1, 5, 9, -2, -1, 3] == 1,
z[1, 5, 9, -2, -1, -3] == 1,
z[1, 5, -9, 2, 1, 3] == -1,
z[1, 5, -9, 2, 1, -3] == -1,
z[1, 5, -9, 2, -1, 3] == 1,
z[1, 5, -9, 2, -1, -3] == 1,
z[1, 5, -9, -2, 1, 3] == 1,
z[1, 5, -9, -2, 1, -3] == 1,
z[1, 5, -9, -2, -1, 3] == 1,
z[1, 5, -9, -2, -1, -3] == 1,
z[1, -5, 9, 2, 1, 3] == -1,
z[1, -5, 9, 2, 1, -3] == -1,
z[1, -5, 9, 2, -1, 3] == 1,
z[1, -5, 9, 2, -1, -3] == 1,
z[1, -5, 9, -2, 1, 3] == 1,
z[1, -5, 9, -2, 1, -3] == 1,
z[1, -5, 9, -2, -1, 3] == 1,
z[1, -5, 9, -2, -1, -3] == 1,
z[1, -5, -9, 2, 1, 3] == -1,
z[1, -5, -9, 2, 1, -3] == -1,
z[1, -5, -9, 2, -1, 3] == 1,
z[1, -5, -9, 2, -1, -3] == 1,
z[1, -5, -9, -2, 1, 3] == 1,
z[1, -5, -9, -2, 1, -3] == 1,
z[1, -5, -9, -2, -1, 3] == 1,
z[1, -5, -9, -2, -1, -3] == 1,
z[-1, 5, 9, 2, 1, 3] == -1,
z[-1, 5, 9, 2, 1, -3] == -1,
z[-1, 5, 9, 2, -1, 3] == -1,
z[-1, 5, 9, 2, -1, -3] == -1,
z[-1, 5, 9, -2, 1, 3] == 1,
z[-1, 5, 9, -2, 1, -3] == 1,
z[-1, 5, 9, -2, -1, 3] == -1,
z[-1, 5, 9, -2, -1, -3] == -1,
z[-1, -5, 9, 2, 1, 3] == -1,
z[-1, -5, 9, 2, 1, -3] == -1,
z[-1, -5, 9, 2, -1, 3] == -1,
z[-1, -5, 9, 2, -1, -3] == -1,
z[-1, -5, 9, -2, 1, 3] == 1,
z[-1, -5, 9, -2, 1, -3] == 1,
z[-1, -5, 9, -2, -1, 3] == -1,
z[-1, -5, 9, -2, -1, -3] == -1,
z[2, 3, 7, 2, 4, 5] == 1,
z[2, 3, 7, 2, 4, -5] == 1,
z[2, 3, 7, 2, -4, 5] == 1,
z[2, 3, 7, 2, -4, -5] == 1,
z[2, 3, 7, -2, 4, 5] == 1,
z[2, 3, 7, -2, -4, 5] == 1,
z[2, 3, -7, 2, 4, 5] == -1,
z[2, 3, -7, 2, 4, -5] == -1,
z[2, 3, -7, 2, -4, 5] == 1,
z[2, 3, -7, 2, -4, -5] == 1,
z[2, 3, -7, -2, 4, 5] == -1,
z[2, 3, -7, -2, -4, 5] == 1,
z[2, -3, 7, 2, 4, 5] == -1,
z[2, -3, 7, 2, 4, -5] == -1,
z[2, -3, 7, 2, -4, 5] == -1,
z[2, -3, 7, 2, -4, -5] == -1,
z[2, -3, 7, -2, 4, 5] == -1,
z[2, -3, 7, -2, -4, 5] == -1,
z[2, -3, -7, 2, 4, 5] == -1,
z[2, -3, -7, 2, 4, -5] == -1,
z[2, -3, -7, 2, -4, 5] == 1,
z[2, -3, -7, 2, -4, -5] == 1,
z[2, -3, -7, -2, 4, 5] == -1,
z[2, -3, -7, -2, -4, 5] == 1,
z[-2, 3, 7, 2, 4, 5] == -1,
z[-2, 3, 7, 2, 4, -5] == -1,
z[-2, 3, 7, 2, -4, 5] == -1,
z[-2, 3, 7, 2, -4, -5] == -1,
z[-2, 3, 7, -2, 4, 5] == -1,
z[-2, 3, 7, -2, -4, 5] == -1,
z[-2, -3, 7, 2, 4, 5] == -1,
z[-2, -3, 7, 2, 4, -5] == -1,
z[-2, -3, 7, 2, -4, 5] == -1,
z[-2, -3, 7, 2, -4, -5] == -1,
z[-2, -3, 7, -2, 4, 5] == -1,
z[-2, -3, 7, -2, -4, 5] == -1,
z[3, -3, 3, -4, 1, 1] == 1,
z[-2, 1, 1, 1, 1, 1] == -1,
z[-1, 1, 1, -2, 3, 1] == 1,
z[1, 1, 1, -1, 1, 1] == 1,
z[1, 1, 1, 2, 3, 1] == -1,
z[1, 1, 1, 2, -3, 2] == -1,
z[1, 1, 1, 2, -3, 1] == 1,
z[-1, 1, 1, 1, 1, 1] == -1,
z[2, 3, 1, 1, 1, 1] == 1,
z[2, -3, 2, 1, 1, 1] == 1,
z[2, -3, 1, 1, 1, 1] == -1,
z[2,3,-1000,1,1,1] == 1
].all?{|i|i}