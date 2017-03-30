local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
function Buy(player,index)
	local index_num = tonumber(index)
	local free = lualib:BagFree(player, true, false, false);
	if free < 1 then 
		lualib:ShowFormWithContent(player, "�ű���", "Package_buy.Msg('��������',"..index_num..")");
		return ""
	end
	if index_num == 1 then 
		local str = "ǿЧ��ҩ��"
		if lualib:GetBindGold(player) < 20000 then
			lualib:ShowFormWithContent(player, "�ű���", "Package_buy.Msg('�󶨽�Ҳ���','1')")
			return ""
		else
			if lualib:Player_SubGold(player, 20000, true, "�����̵�", player) == false then
				return "�۳��󶨽��ʧ��"
			else
				lualib:AddItem(player, str, 1, false, "�����̵�", player)
				lualib:ShowFormWithContent(player, "�ű���", "Package_buy.Msg('����ɹ�','1')")
			end
		end
	elseif index_num == 2 then 
		local str = "����ѩ˪������"
		if lualib:GetBindGold(player) < 80000 then
			lualib:ShowFormWithContent(player, "�ű���", "Package_buy.Msg('�󶨽�Ҳ���','2')")
			return ""
		else
			if lualib:Player_SubGold(player, 80000, true, "�����̵�", player) == false then
				return "�۳��󶨽��ʧ��"
			else
				lualib:AddItem(player, str, 1, false, "�����̵�", player)
				lualib:ShowFormWithContent(player, "�ű���", "Package_buy.Msg('����ɹ�','2')")
			end
		end
	elseif index_num == 3 then 
			local str = "�󻹵���"
			if lualib:Player_IsIngotEnough(player, 50, true) == false then 
				lualib:ShowFormWithContent(player, "�ű���", "Package_buy.Msg('��Ԫ������','3')");
				return ""
			else
				if lualib:Player_SubIngot(player, 50, true, "��ݹ���󻹵���", player) == false then
					return "�۳�Ԫ��ʧ�ܣ�" 
				else
					lualib:AddItem(player, str, 1, false, "�����̵�", player)
					lualib:ShowFormWithContent(player, "�ű���", "Package_buy.Msg('����ɹ�','3')")
				end
			end
	elseif index_num == 4 then 
			local str = "���ʯ"
			if lualib:Player_IsIngotEnough(player, 40, true) == false then 
				lualib:ShowFormWithContent(player, "�ű���", "Package_buy.Msg('��Ԫ������','4')");
				return ""
			else
				if lualib:Player_SubIngot(player, 40, true, "��ݹ������ʯ", player) == false then
					return "�۳�Ԫ��ʧ�ܣ�" 
				else
					lualib:AddItem(player, str, 1, false, "�����̵�", player)
					lualib:ShowFormWithContent(player, "�ű���", "Package_buy.Msg('����ɹ�','4')")
				end
			end		
	end
	--lualib:SysPromptMsg(player, "����ɹ�����")
	return ""
end

