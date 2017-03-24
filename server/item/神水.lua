local shenmi_equip = {
						["神秘戒指"] = 1,
						["神秘腰带"] = 1,
						["神秘头盔"] = 1,
					}

function main(player, item)
	if not lualib:Item_Destroy(player, item, "", "") then
		lualib:SysMsg_SendWarnMsg(player, "扣除神水失败")
		return false
	end
	
	for i = 1, 21 do
		local equip = lualib:Item_GetBySite(player, i)
		if equip ~= "" and equip ~= nil then
			local equipName = lualib:KeyName(equip)
			if shenmi_equip[equipName] ~= nil then
				lualib:SetInt(equip, "apply_equip", 0)
			end
		end
	end
	return true
end