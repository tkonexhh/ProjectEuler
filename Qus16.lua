--[[
2的15次方 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2 的1000次方?
--超大数运算
--]]

numbers={}
size=500
for i=1,size+1 do
	numbers[i]=0
end
numbers[1]=1

function GetIntPart(x)
	if x<=0 then 
		return math.ceil(x)
	end
	
	if math.ceil(x)==x then 
		x=math.ceil(x)
	else	
		x=math.ceil(x)-1
	end
	
	return x
end

function PrintNumbers(numbers)--打印数组
	for i=1 ,#numbers do
		if numbers[i]~=0 then
			print("i"..i.."num"..numbers[i])
		end
	end
	
	--return numbers
end

function Parse(numbers)--转化数组
	for i=1,size do
		chushu=GetIntPart(numbers[i]/10)
		yushu =numbers[i]%10
		
		if chushu~=0 then
			numbers[i]=yushu
			numbers[i+1]=numbers[i+1]+chushu
		end
		--print("i"..i.."  "..numbers[i].."除数:"..chushu.."余数"..yushu);
		
	end

	return numbers
end

function GetNum(n)--计算阶乘
	for i=1,n do
		for i=1,size do
			numbers[i]=numbers[i]*2
			
		end
		
		Parse(numbers)
	end
	
	return numbers
end

function GetDigitSum(numbers)
	local sum=0

	for i=1,#numbers do
		if numbers[i]~=0 then
			sum=sum+numbers[i]
		end
	end
	
	print("sum:"..sum)
	return sum
end

print(GetDigitSum(GetNum(1000)))