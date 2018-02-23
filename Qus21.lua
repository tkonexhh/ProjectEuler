--[[
Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.


10000一下所有亲数之和 
能被a整除的数字是和是b，能够b整除的数字之和是a，且a！=b，则a，b是亲数。 
思路： 

--]]

function GetAmicable(num)
	
	local numbers={}
	local count=0;
	
	for i=1,num/2+1 do
		if num%i==0 then 
			count=count+1
			numbers[count]=i
		end
	end
	
	local sum=0
	for i=1,#numbers do
		sum=sum+numbers[i]
	end
	
	return sum--numbers
end

tsum=0
for i=1,10000 do
	local num=GetAmicable(i)
	local num2=GetAmicable(num)
	
	if num2==i and i~=num then
		tsum=tsum+i
	end
end

print(tsum)--31626
