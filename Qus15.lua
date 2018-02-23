--[[
Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.


How many such routes are there through a 20×20 grid?
--]]

--[[
转化为排列组合问题 

每次排序的时候都是由 横向移动和竖向移动构成  

--]]

function factorial(n)
    if n == 0 then
        return 1;
    else
        return n * factorial(n - 1);
    end
end

function GetRoute(n)

	return factorial(2*n)/factorial(n)/factorial(n)--2756
end


print("sum:"..GetRoute(20))--137846528820
