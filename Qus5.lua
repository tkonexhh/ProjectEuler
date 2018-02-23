--[[
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

--]]


function IsPos(num)

	for i=1,20 do
		
		if num%i ~=0 then 
			return false
		end
		
	end

	return true

end


function main()
	print("start")
	targetNum=0
	i =20
	while not IsPos(i) do
		i=i+1
	end
	
	targetNum=i
	
	print("targetNum:"..targetNum)
end

main()