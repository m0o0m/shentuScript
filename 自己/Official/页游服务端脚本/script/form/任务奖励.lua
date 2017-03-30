local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
--有任务奖励加编号，没有的去掉
local quest_sc = {	
					[1] = 1,
					[2] = 1,
					[3] = 1,
					[4] = 1,
					[5] = 1,
					[6] = 1,
					[7] = 1,
					[8] = 1,
					[9] = 1,
					
					[10] = 1,
					[11] = 1,
					[13] = 1,
					[14] = 1,
					[15] = 1,
					[16] = 1,
					[17] = 1,
					[19] = 1,
					
					[21] = 1,
					[23] = 1,
					[25] = 1,
					[26] = 1,
					[28] = 1,
					[29] = 1,
					
					[31] = 1,
					[33] = 1,
					[34] = 1,
					[36] = 1,
					
					[41] = 1,
					[42] = 1,
					[43] = 1,
					[45] = 1,
					[47] = 1,
					[48] = 1,
					
					[52] = 1,
					[54] = 1,
					[55] = 1,
					
					[63] = 1,
					[67] = 1,
					[69] = 1,
					
					[72] = 1,
					[73] = 1,
					[74] = 1,
					[75] = 1,
					[76] = 1,
					[78] = 1,
					[79] = 1,
					
					[80] = 1,
					[81] = 1,
					[84] = 1,
					[89] = 1,
					
				}

function getRewardList(player,quest_id)
	if quest_sc[tonumber(quest_id)] == nil then
		return ""
	end
	--lualib:Debug("quest_id = "..tostring(quest_id))
	local reward_path = "quest/"..tostring(quest_id).."_reward"
	--lualib:Debug(reward_path)
	--if not lualib:IO_FileExists(reward_path) then return "" end
	local data = require(reward_path)
	local reward = {}	
	if not data then
		--lualib:Debug("无奖励物品脚本")
		reward[0] = "无脚本任务奖励" 
		--return ""
	else

		local item_table = data.item_table
		local gender = lualib:Gender(player)
		local job = lualib:Job(player)
		local tb = item_table[job][gender]		
		local index = 1
		for k,v in pairs(tb) do
			local keyname = tostring(v[1])
			local count = v[2]
			local bind = v[3]
			reward[index] = {keyname,count,bind}
			index = index + 1
		end
	end	
	--lualib:Debug("reward = "..serialize(reward))
	lualib:ShowFormWithContent(player,"脚本表单","MWshowReward("..serialize(reward)..")")


	return ""
end
