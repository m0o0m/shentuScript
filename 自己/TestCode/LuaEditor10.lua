local job = {
	["战士"] = {lever = 30,["姓名"] = "张三",["性别"] = "男"},
	["法师"] = {lever = 36,["姓名"] = "李四",["性别"] = "男"},
	["道士"] = {lever = 28,["姓名"] = "王五",["性别"] = "男"}
	
}

local player = {}

for k,v in pairs(job) do 
	if k =="战士" then
		player = v;
		
		for k,v in pairs(player) do
			 if k == "lever" then 
				if v>20 and v<30 then 
					print("恭喜玩家"..player["姓名"].."获得汗血宝马！！")
				elseif v>=30 then 
					print("恭喜玩家"..player["姓名"].."获得独角兽！！")
				else 
					print("您的等级不符合要求")
					
				end
			end
		end
	end
end