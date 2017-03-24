local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

function main(npc, player)
	local msg = [[你好，有什么可帮你的吗？

	<@yingxiong *01*建立英雄>
	<@huolong *01*购买火龙之心>
]]	
	return msg
end

local hero_ = {
				{"英雄（男战士）", 1, 1},
				{"英雄（女战士）", 1, 2},
				{"英雄（男法师）", 2, 1},
				{"英雄（女法师）", 2, 2},
				{"英雄（男道士）", 3, 1},
				{"英雄（女道士）", 3, 2},
			}


function yingxiong(npc, player)
	local msg = [[你现在可以挑选一位英雄了。不过你只有一次挑选机会，
当你成功领取英雄后是无法再更换，请您仔细选择！
你想带领哪位英雄呢？
]]
	local x = 0
	local y = 50
	local num = 0
	
	for i = 1, #hero_ do
		msg = msg.."#POS<X:"..x..",Y:"..y..">#<@hero_ex#"..i.." *01*"..hero_[i][1]..">"
		x = x + 100 
		num = num + 1
		if num >= 3 then
			num = 0
			x = 0
			y = y + 18
		end
	end
	
	msg = msg.."\n<@main *01*返回>\n"
	return msg
end


function hero_ex(npc, player, index)
    lualib:InputDlg(player, 1, "输入你的英雄的名称", 60, 14, "CreateHeroInput", index)
    return ""
end


function CreateHeroInput(id, player, input, index)
	local index = tonumber(index)
	
	lualib:CreateHeroForPlayer(player, string.trim(input), hero_[index][2], hero_[index][3],  "CreateHeroResult", string.trim(input).."#"..hero_[index][3])
	return ""
end


function CreateHeroResult(player, err, guid, str)
	local result = string.split(str, "#")
	local name = result[1]
	local gender = tonumber(result[2])
	
	local playername = lualib:Name(player)
    if err == 0 then
		lualib:SysMsg_SendBroadcastMsg("["..playername .."]通过巫山城英雄管理,成功领取战斗伙伴!", "恭喜")	
        lualib:SysWarnMsg(player, "创建英雄"..name.."成功")
		
		if not lualib:AddItem(player, "木剑", 1, false, "", "") then
			lualib:SysMsg_SendTriggerMsg(player, "赠送木剑失败！")
		end
		
		if not lualib:AddItem(player, "金创药(小)包", 1, true, "", "") then
			lualib:SysMsg_SendTriggerMsg(player, "赠送金创药(小)包失败！")
		end
		
		if not lualib:AddItem(player, "魔法药(小)包", 1, true, "", "") then
			lualib:SysMsg_SendTriggerMsg(player, "赠送金创药(小)包失败！")
		end
		
		local award_item = {"布衣(男)", "布衣(女)"}
		if not lualib:AddItem(player, award_item[gender], 1, false, "", "") then
			lualib:SysMsg_SendTriggerMsg(player, "赠送木剑失败！")
		end
		
		lualib:SetStr(player, "dfhero", guid)
    else
        lualib:SysWarnMsg(player, "创建英雄"..name.."失败，错误码是"..err)
    end
end


function huolong(npc, player)
	local msg = [[购买火龙之心需要200元宝，你确定购买吗？
<@huolongEx *01*购买>
<@main *01*返回>
]]
	return msg
end


function huolongEx(npc, player)
	if lualib:Player_GetBagFree(player) < 1 then
	    return "背包空间不够，需要1个格子！"
	end
	
	if not lualib:Player_SubIngot(player, 200, false, "", "") then
		return "你没有200元宝，无法购买"
	end
	
	if not lualib:AddItem(player, "火龙之心", 1, false, "", "") then
		return "添加道具失败！"
	end
	return "购买火龙之心成功！\n<@main *01*返回>\n"
end
