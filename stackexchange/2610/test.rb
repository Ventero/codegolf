#!/usr/bin/ruby1.9.1
tests = [2047, "!2k"], [4096, "4k"], [0x80003c00, "2G;15k"], [2049, "2k;1"], [0x1, "1"], [4097, "4k;1"], [0xFFFFF, "!1M"], [0xa000, "40k"], [1022, "1022"], [0x100000, "1M"], [2048, "2k"], [0x20000f, "2M;15"], [0, "0"], [0x0, "0"], [1, "1"], [0x80aef3, "8M;43k;755"], [14636699861675008, "13P;1023M;27k"], [0xFFFFFFFFFFFFFFFe, "15E;1023P;1023T;1023G;1023M;1023k;1022"], [1023, "!1k"], [4095, "!4k"], [0xFFFFFFFFFFFFFFFF, "!16E"], [1025, "1k;1"], [1024, "1k"]

res = tests.map{|test,sol|
	p(`echo "#{test}" | ruby1.9.1 formatnumbers.rb`.chomp) == sol
}

p res.all? ? true : res


