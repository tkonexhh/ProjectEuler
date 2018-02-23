--[[
A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.
完全数，就是能表示成其小于自身的所有因数的和的正整数。
例如，28可表示成1 + 2 + 4 + 7 + 14 = 28，故28是一个完全数。

一个正整数n，若其小于自身的所有因数的和小于n则n是不足数，若大于则n为充足数。

12是最小的充足数，1 + 2 + 3 + 4 + 6 = 16。
能表示成两个充足数的和的最小正整数是24。
经数学分析，可知任一超过28123的整数都能写成两个充足数的和。
请求出所有不能表示成两个充足数的和的正整数的和。

--]]

function IsPerfectNum(num)
	local sum=0
	for i=1,num/2+2 do
	
		if num%i==0 then
			sum=sum+i
		end
	end
	
	if sum==num then
		return 1 --完全数
	elseif sum <num then
		return 0 --不足数
	else 
		return 2 --充足数
	end
end

function GetSingleSum(num)
	local sum=0
	return sum
end

sum=0
for a=24,28123 do

	if IsPerfectNum(a)==2 then
		
		for b=a,28123-a do
			--print("a:"..a.."b:"..b)
			if IsPerfectNum(b)==2 then
			
			--if a+b <= 28123 then
				--print("num.."..a+b)
				sum=sum+a+b
			--end
			
			end
		
		end
	end

	
end

print(sum)
