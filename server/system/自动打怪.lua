local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)


-----------------------ͼ����ʾ-----------------------------
function guaji_xianshi(player)	
	ShowTimeCount2(player, 0, 1903800079, "�Զ����",0,"") --��ʾĿ��ͼ��
end

-------------------ͼ�걻���-----------------------
function guaji(player)
	ShowTimeCount2(player, 0, 1903800079, "�Զ����",0,"") --��ʾĿ��ͼ��
	local msg = ""
	
	if lualib:GetInt(player, "autoattack") == 1 then
		lualib:StopAutoRun(player)
		lualib:SetInt(player, "autoattack", 0)

		lualib:SysTriggerMsg(player, "�����뿪�ˣ��ٴε���ɽ����Զ�ս����")
	else
		lualib:StartAutoRun(player, "")
		lualib:SetInt(player, "autoattack", 1)
		lualib:SetStr(player, "map_1", lualib:MapGuid(player))
		lualib:SysTriggerMsg(player, "�������ˣ������ڻ������Լ�����Ѫ����������ս���ţ��ж��ɣ����ˡ����ٴε�������Զ�ս����")
	end

	return ""
end

function close(player)
	return ""
end