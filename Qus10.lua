--[[
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
--]]

function IsPrime(num)

	if num ==1 then 
		return false
	elseif num <=3 then
		return true
	end

	
	for i=2,math.sqrt(num)+1 do
		
		if not( num%i~=0) then 
			--print("asd"..num)
			return false
		end
	
	end
	
	return true

end

i=0
num=2
sum=0
while num<2000000 do

	if(IsPrime(num)) then
		sum=sum+num
		i=i+1
		print(num)
	end
	num=num+1
end

print(sum)--142913828922
