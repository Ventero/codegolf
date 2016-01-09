#k=->z{(0..z).map{|i|[0.15-r=i*0.01,r]}}
#r=k[10];u=k[15]
#[[3,0],*r,*r.reverse,[3,2],*u.reverse,*u,[0,2],[2,2],[1,0],*[[0.01,0.02]]*50].map{|x,y|c=Time.now;1until Time.now-c>x;sleep y}

#k=->z,p{(0..z).map{|i|[i*=0.01,0.15-i,i][p,2]}}
#[[3,0],*k[10,1],*k[10,0],[3,2],*k[15,0],*k[15,1],[0,2],[2,2],[1,0],*[[0.01,0.02]]*50].map{|x,y|c=Time.now;1until Time.now-c>x;sleep y}
#k=->z,p{r=(0..z).map{|i|[i*=0.01,0.15-i,i][p,2]};r+r.reverse}

#k=->z,p{[*0..z,*z.downto(0)].map{|i|[i*=0.01,0.15-i,i][p,2]}}
#[[3,0],*k[10,1],[3,2],*k[15,0],[0,2],[2,2],[1,0],*[[0.1,0.2]]*9].map{|x,y|c=Time.now;1until Time.now-c>x;sleep y}

#k=->z,p{[*0..z,*z.downto(0)].map{|i|[i*=0.02,0.3-i,i][p,2]}}
#[3,*k[9,1],[3,2],*k[15,0],[0,2],[3,2],2,*[[0.1,0.2]]*9].map{|x,y=0|c=Time.now;1until Time.now-c>x;sleep y}

def get_samples range, direction
	case direction
		when :up then range.reverse
		when :down then range
		when :updown then range.reverse + range
		when :downup then range + range.reverse
	end
end

def gradient num_samples, direction, base = 0.3, increment = 0.02, scale = 1
	samples = get_samples [*0..num_samples], direction

	samples.map{|i|
		i *= increment
		[base - scale * i, i]
	}
end

def curve num_samples, direction, base = 0.3, increment = 0.02
	samples = get_samples [*0..num_samples], direction

	start = base / 2

	samples.map{|i|
		cur = start + (num_samples / 2 - i) * increment
		[[base - cur, cur], [cur, base - cur]]
	}
end

def weird_curve *args
	ret = gradient *args
	k = true
	ret.map{|i|
		k = !k
		k ? i : i.reverse
	}
end

# letters are defined as a series of pairs of (spin-time, sleep-time)
# with the time in seconds
THIN_A = gradient(15, :updown, 0.2, 0.2/15)
A = gradient(15, :updown)
I = 2,0
L = 1.5,0, [[0.1,0.2]]*9
M = 2,0, gradient(9, :downup), 2,0
N = 1,0, gradient(9, :down), 2,0
U = 1,0, gradient(9, :downup, 0.1, 0.03, 0.1), 1,0
V = 0.5,0, gradient(12, :downup, 0.25, 0.02), 0.5,0
W = 0.5,0, [gradient(12, :downup, 0.25, 0.02)]*2, 0.5,0
O = curve(25, :down, 0.15, 0.003), curve(25, :up, 0.15, 0.003)

[O].map{|i|
	# add pause after each letter
	i + [0,2]
}.flatten.each_slice(2){|x,y|
	# spin, then sleep
	c = Time.now
	1 until Time.now-c > x
	sleep y
}
