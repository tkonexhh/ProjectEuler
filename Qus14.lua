--[[
The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.

--]]

function GetNextNum(n)

	if n%2==0 then 
		return n/2
	else 
		return 3*n+1
	end

end

function GetChain(n)

	local maxLength=0

	maxLength=0;
--print(x)
	while n~=1 do
		maxLength=maxLength+1
		n=GetNextNum(n)
	--print(x)
	end
	
	
	return maxLength
end

maxLength=0;
num=0;
for i=1000000 ,1,-1 do 
	length=GetChain(i)
	if length> maxLength then
		maxLength=length
		num=i;
	end
end

print(maxLength.."num:"..num)--837799

