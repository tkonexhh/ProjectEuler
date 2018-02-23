--[[
You are given the following information, but you may prefer to do some research for yourself.

1 Jan 1900 was a Monday.
Thirty days has September,
April, June and November.
All the rest have thirty-one,
Saving February alone,
Which has twenty-eight, rain or shine.
And on leap years, twenty-nine.
A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

1 Jan 1901 to 31 Dec 2000

在20世纪（1901年1月1日到2000年12月31日）一共有多少个星期日落在了每月的第一天。
1900（非闰年）年1月1日是星期一，1900年的最后一天算出来是星期二，即对7余1。
--]]

function IsRun(year)
	--[[
		能被4整除且不能被100整除的为闰年
		能被400整除的是闰年
	--]]
	if year%4==0 and year%100 ~= 0 then 
		return true	
	elseif year%400==0 then
		return true
	else 
		return false
	end

end

monsday={31,28,31,30,31,30,31,31,30,31,30,31}

day=1 --日
monIndex=1--一月
year=1901--年
weekIndex=2--星期几

count=0;
while year<2001 do
	
	if day==1 and weekIndex==7 then 
		count=count+1
	end
	
	weekIndex=weekIndex+1
	if(weekIndex>=8) then
		weekIndex=1
	end
	
	day=day+1
	
	if day >monsday[monIndex] then
		day=1
		monIndex=monIndex+1
		
		if monIndex >=13 then
			monIndex=1
			year=year+1
		end
	end
	
	
	if IsRun(year) then
		monsday[2]=29
	else
		monsday[2]=28
	end

	print("year:"..year.."mon:"..monIndex.."day:"..day.."week:"..weekIndex)
	
end

print (count)

