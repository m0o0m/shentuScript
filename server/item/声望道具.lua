local item_ = {
					["1点声望"] = 1,
					["5点声望"] = 5,
					["10点声望"] = 10,
					["50点声望"] = 50,
					["100点声望"] = 100,
				}


function main(player, item)
	local name = lualib:KeyName(item)
	
	if item_[name] == nil then
		lualib:SysMsg_SendWarnMsg(player, "道具无法使用！")
		return false
	end
	
	if not lualib:Item_Destroy(player, item, "", "") then
		lualib:SysMsg_SendWarnMsg(player, "道具无法使用！")
		return false
	end
	
	local sw = lualib:GetInt(player, "shengwang")
	lualib:SetInt(player, "shengwang", sw + item_[name])
	lualib:SysMsg_SendWarnMsg(player, "您增加了"..item_[name].."点声望值！")
	return true
end