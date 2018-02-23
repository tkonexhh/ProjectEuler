--[[

--]]

function ReadFile(path)
	local file=io.open(path,"r")
	if file then
		local content=file:read("*all")
		io.close(file)
		return content
	end	
	return nil
end

function Split(szFullString, szSeparator)  
	local nFindStartIndex = 1  
	local nSplitIndex = 1  
	local nSplitArray = {}  
	while true do  
		local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)  
		if not nFindLastIndex then  
			nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))  
			break  
		end  
		nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)  
		nFindStartIndex = nFindLastIndex + string.len(szSeparator)  
		nSplitIndex = nSplitIndex + 1  
	end  
	return nSplitArray  
end  

function Sort(a,b)
	len_a=string.len(a)
	len_b=string.len(b)
	minlen=math.min(len_a,len_b)
	
	for i=1,minlen do
		
		if string.byte(string.sub(a,i,i))<string.byte(string.sub(b,i,i)) then
			return true
		elseif string.byte(string.sub(a,i,i))==string.byte(string.sub(b,i,i)) then
			
			if i==minlen then
				if len_a<len_b then
					return true
				else
					return false
				end
			end
			
		else 
			return false
		end
		
	end
end

function GetNameScore(name)
	local score=0

	--print(#name)
	for i=1,#name do
		local value=string.byte(string.lower(string.sub(name,i,i)))-string.byte("a")+1
		--print(string.sub(name,i,i).."value.."..value)
		score=score+value
	end
	
	return score
end

content=ReadFile("p022_names.txt")
names=Split(content,",")

for i=1,#names do
	names[i]=string.sub(names[i],2,string.len(names[i])-1)
end

table.sort(names,Sort)

sum=0
for i=1,#names do
	sum=sum+GetNameScore(names[i])*i	
end

print("938th:"..names[938].."   value:"..938*GetNameScore(names[938]))
print(sum)