local item_ = {
					["1������"] = 1,
					["5������"] = 5,
					["10������"] = 10,
					["50������"] = 50,
					["100������"] = 100,
				}


function main(player, item)
	local name = lualib:KeyName(item)
	
	if item_[name] == nil then
		lualib:SysMsg_SendWarnMsg(player, "�����޷�ʹ�ã�")
		return false
	end
	
	if not lualib:Item_Destroy(player, item, "", "") then
		lualib:SysMsg_SendWarnMsg(player, "�����޷�ʹ�ã�")
		return false
	end
	
	local sw = lualib:GetInt(player, "shengwang")
	lualib:SetInt(player, "shengwang", sw + item_[name])
	lualib:SysMsg_SendWarnMsg(player, "��������"..item_[name].."������ֵ��")
	return true
end