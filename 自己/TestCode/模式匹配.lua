local str1 = "12\n34567\n321312\n31313\n31321\n3131"
local tb = {}
--[[
local str2 = string.gsub(str1, "#",function(a,b) 
	tb[#tb+1] = a 
	str = b 
end)
--]]
--local str2 = string.gsub(str1, "%d+", "°¡")
--local str2 = string.split(str1,"#")

--[[
function split(s, delim)
	if type(delim) ~= "string" or string.len(delim) <= 0 then
		return
	end
	local start = 1
	local t = {}
	while true do
		local pos = string.find(s, delim, start, true) -- plain find
		if not pos then
			break
		end
		table.insert(t, string.sub(s, start, pos - 1))
		start = pos + string.len(delim)
	end
	table.insert (t, string.sub(s, start))
	return t
end
--]]
print(str1.."\n============")
local str2 =  string.gsub(str1, "%d+".."\n","°¡")
print(str2)

