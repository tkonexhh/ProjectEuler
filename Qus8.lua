--[[
The four adjacent digits in the 1000-digit number that have the greatest product are 9 × 9 × 8 × 9 = 5832.
在1000位数字，有最大的产品相邻的四个数字是9×9×8×9 = 5832。
73167176531330624919225119674426574742355349194934
96983520312774506326239578318016984801869478851843
85861560789112949495459501737958331952853208805511
12540698747158523863050715693290963295227443043557
66896648950445244523161731856403098711121722383113
62229893423380308135336276614282806444486645238749
30358907296290491560440772390713810515859307960866
70172427121883998797908792274921901699720888093776
65727333001053367881220235421809751254540594752243
52584907711670556013604839586446706324415722155397
53697817977846174064955149290862569321978468622482
83972241375657056057490261407972968652414535100474
82166370484403199890008895243450658541227588666881
16427171479924442928230863465674813919123162824586
17866458359124566529476545682848912883142607690042
24219022671055626321111109370544217506941658960408
07198403850962455444362981230987879927244284909188
84580156166097919133875499200524063689912560717606
05886116467109405077541002256983155200055935729725
71636269561882670428252483600823257530420752963450

Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?

找出1000个数字中的十三个相邻的数字，它们拥有最大的乘积。这个乘积的价值是多少？
--]]

s=[[
73167176531330624919225119674426574742355349194934
96983520312774506326239578318016984801869478851843
85861560789112949495459501737958331952853208805511
12540698747158523863050715693290963295227443043557
66896648950445244523161731856403098711121722383113
62229893423380308135336276614282806444486645238749
30358907296290491560440772390713810515859307960866
70172427121883998797908792274921901699720888093776
65727333001053367881220235421809751254540594752243
52584907711670556013604839586446706324415722155397
53697817977846174064955149290862569321978468622482
83972241375657056057490261407972968652414535100474
82166370484403199890008895243450658541227588666881
16427171479924442928230863465674813919123162824586
17866458359124566529476545682848912883142607690042
24219022671055626321111109370544217506941658960408
07198403850962455444362981230987879927244284909188
84580156166097919133875499200524063689912560717606
05886116467109405077541002256983155200055935729725
71636269561882670428252483600823257530420752963450
]]

size=13
s=string.gsub(s,"\n","")--去除换行符
maxnum=0

for i=1,1000-size do
	--取第一个13位数
	str=string.sub(s,i,size+i-1)
	print(str)
	local tempNum=1
	
	for j=1,#str do
		local num=string.sub(str,j,j)
		
		
		tempNum=tempNum*num
	end
	
	if tempNum>maxnum then
		maxnum=tempNum
	end
end

print("MAX:"..maxnum)
--23514624000
--[[求值最大的字符串
size=13
s=string.gsub(s,"\n","")--去除换行符
maxstr=string.sub(s,1,size)
for index=1,1000-size do
	
	compliestr=string.sub(s,index+1,size+index)
	--print("maxstr:"..maxstr.."compliestr"..compliestr)
	for i=1 ,string.len(compliestr) do
		complieNum=string.sub(compliestr,i,i)
		maxNum=string.sub(maxstr,i,i)
	
		if(complieNum>maxNum) then
			print("maxstr:"..maxstr.."compliestr"..compliestr)
			maxstr=compliestr
			
			break
		elseif complieNum==maxNum then 
			--继续
		else --complieNum<maxNum
			break
		end
		--print("complieNum:"..complieNum.."maxNum"..maxNum)
	end
end

print(maxstr)--9989000889524
--]]