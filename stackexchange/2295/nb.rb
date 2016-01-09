#!/usr/bin/ruby

if ARGV.size == 0 then
	$stderr.puts "Usage",  "	#$0 <boxPercentage> <minBoxItems> <maxBoxItems> <maxLevels> <minTextLength> <maxTextLength>"
	exit 1
end

@boxprob = ARGV.shift.to_f
@minBoxItems, @maxBoxItems, @maxLevels, @minTextLength, @maxTextLength = ARGV.map &:to_i

Chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-'\"!?.,()     "

class String
	def fill_chars len, max = Chars.size, charset = Chars
		str = self.dup
		while str.size < len
			str << charset[rand max].chr
		end
		str
	end
end

def createBox level
	items = rand(@maxBoxItems - @minBoxItems + 1) + @minBoxItems
	[items] + (1..items).map{createItem level}
end

def createItem level
	(level < @maxLevels && rand < @boxprob) ? createBox(level + 1) : createText
end

def createText
	length = rand(@maxTextLength - @minTextLength + 1) + @minTextLength
	Chars[rand 52].chr.fill_chars(length).strip.fill_chars(length, 52)
end

puts createBox(1)
