--[[
n! means n × (n − 1) × ... × 3 × 2 × 1

For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!

--]]

numbers={}

numbers[1]=1

function GetInt(x)
	if math.ceil(x) == x then
		x = math.ceil(x);
	else
		x = math.ceil(x) - 1;
	end
	return x
end

function ParseNumbers(numbers)
	print("len"..#numbers)
	for i=1,#numbers+1 do
		local chushu=GetInt(numbers[i]/10)
		local yushu=numbers[i]%10
		
		if numbers[i+1]==nil then
				numbers[i+1]=0
		end
		
		if chushu>0 then
			numbers[i]=yushu

			numbers[i+1]=numbers[i+1]+chushu
		end
		
		
	end
	
end

for i=1,100 do
	for j=1,#numbers do
		numbers[j]=numbers[j]*i
		
	end
	ParseNumbers(numbers)
	--print(i)
end

sum=0
for i=1,#numbers do

	sum=sum+numbers[i]
	print(numbers[i])
end


print(sum)