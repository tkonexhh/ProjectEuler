--[[
The sum of the squares of the first ten natural numbers is,

1 2 + 22 + ... + 102 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10) seq2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural 
numbers and the square of the sum is 3025 ? 385 = 2640.

Find the difference between the sum of the squares of the first one 
hundred natural numbers and the square of the sum.


--]]


function Sum1()
	local sum=0
	for i=1,100 do 
		sum=sum+i*i
	end
	return sum
end

function Sum2()
	local sum=0
	for i=1,100 do 
		sum=sum+i
	end
	return sum*sum
end

function main()
	final=Sum2()-Sum1()
	
	print("final:"..final)
end

main()--25164150