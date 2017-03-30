local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

function SystemReward(player)
	local str = lualib:GetStr(player,"RewardStr")
	local tab = {}
	if str ~= "" then
		tab = json.decode(str)	
	end
	local rewardtab = serialize(tab)
	lualib:ShowFormWithContent(player,"脚本表单","SystemTeach.info("..rewardtab..")")
	return ""
end

function UpdateReward(player,name)
	local str = lualib:GetStr(player,"RewardStr")
	local tab = {}
	if str ~= "" then
		tab = json.decode(str)	
	end
	if #tab > 1 then
		for i = 1 , #tab do 
			if name == tab[i][2] then
				table.remove(tab,i)
				str = json.encode(tab)
				break
			end
		end
	else
		tab = {}
		str = ""
	end
	local rewardtab = serialize(tab)
	lualib:ShowFormWithContent(player,"脚本表单","SystemTeach.info("..rewardtab..")")
	lualib:SetStr(player,"RewardStr",str)
	return ""
end