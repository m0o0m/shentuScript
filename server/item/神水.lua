local shenmi_equip = {
						["���ؽ�ָ"] = 1,
						["��������"] = 1,
						["����ͷ��"] = 1,
					}

function main(player, item)
	if not lualib:Item_Destroy(player, item, "", "") then
		lualib:SysMsg_SendWarnMsg(player, "�۳���ˮʧ��")
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