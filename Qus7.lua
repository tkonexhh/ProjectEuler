--[[
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?

输出第10001个质数
--]]

function IsPrime(num)

	if num ==1 then 
		return false
	elseif num <=3 then
		return true
	end

	
	for i=2,num-1 do
		
		if not( num%i~=0) then 
			--print("asd"..num)
			return false
		end
	
	end
	
	return true

end

function main()
	local num_prime=0--质数序列
	local num=1;
	while  num_prime~=10001 do 
		
		num=num+1
		
		if IsPrime(num) then
			
			num_prime=num_prime+1
			print("prime:"..num)
			--print("num_prime:"..num_prime)
		end
		
		
		--print("num:"..num)
	end

	print("10001st prime:"..num)
end

main()