local buff_t = {
					["����ҩˮ"] = {"������", "��Ĺ����ٶ�����5������180�룡"},
					["������ҩˮ"] = {"ŭ����", "��ĵ�������������5�㣬����180�룡"},
					["ħ����ҩˮ"] = {"ŭ����", "���ħ������������5�㣬����180�룡"},
					["������ҩˮ"] = {"ŭ����", "��Ĺ�������������5�㣬����180�룡"}
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