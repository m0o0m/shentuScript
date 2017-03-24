local buff_t = {
					["疾风药水"] = {"疾驰神丹", "你的攻击速度提升5，持续180秒！"},
					["道术力药水"] = {"怒道神丹", "你的道术力上限提升5点，持续180秒！"},
					["魔法力药水"] = {"怒法神丹", "你的魔法力上限提升5点，持续180秒！"},
					["攻击力药水"] = {"怒攻神丹", "你的攻击力上限提升5点，持续180秒！"}
				}


function main(player, item)
	local item_name = lualib:KeyName(item)
	
	if not buff_t[item_name] then
		return false
	end
	
	if not lualib:Item_Destroy(player, item, "", "") then
		return false
	end
	
	if not lualib:AddBuff(player, buff_t[item_name][1], 180) then
		return false
	else
		lualib:SysMsg_SendTriggerMsg(player, buff_t[item_name][2])
		return true
	end
end