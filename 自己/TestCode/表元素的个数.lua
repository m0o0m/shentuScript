

local t = {1,2,3,4,5,6,7,["ÄãºÃ"] = 8}
function table_count(t)
	t = t or {}
	--local n = 0 
	for _,v in pairs(t) do 
		--n = n + 1
		print(v)
	end
	
	
end
table_count(t)

local table = {1,[2] = {1},1,2,[3]=4,}
    print("table size:" .. size(table))