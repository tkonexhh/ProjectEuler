--[[
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 3 2 + 4 2 = 9 + 16 = 25 = 5 2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

a+b+c=1000 -->使得a平方 +b平方=c平方
--]]


for a=1,332 do
	for b=a+1,500 do
		c=1000-a-b	
		if(a*a +b*b==c*c) then
			print("a"..a.."b"..b.."c"..c)
			print(a*b*c)--31875000
			return 
		end
	end
	
end

