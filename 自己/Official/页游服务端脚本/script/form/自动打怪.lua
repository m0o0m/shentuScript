local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/Ŀ��ϵͳ")


-----------------------ͼ����ʾ-----------------------------
function guaji_xianshi(player)	
	--ShowTimeCount2(player, 0, 1903800079, "�Զ����",0,"") --��ʾĿ��ͼ��
 --AddSEIcon(player, 2, -2, "�Զ����", 1800200075, "����ʱ", "guaji","","�����Զ����")

end

-------------------ͼ�걻���-----------------------
function guaji(player,isauto)
	--ShowTimeCount2(player, 0, 1903800079, "�Զ����",0,"") --��ʾĿ��ͼ��

	
	
	local msg = ""
	if isauto == nil or isauto == "" then
		if lualib:GetInt(player, "autoattack") == 1 then
			lualib:StopAutoRun(player)
			lualib:SetInt(player, "autoattack", 0)
			lualib:ShowFormWithContent(player,"�ű���","WndDelEffect(GameMainBar._wnd,\"Auto\")")
			--lualib:SysTriggerMsg(player, "��ͣ�Զ�ս�����ٴε���ɽ����Զ�ս����")
			if lualib:HasBuff(player,"�Զ����") then
				lualib:DelBuff(player, "�Զ����")
				
			end
		else
			lualib:StartAutoRun(player, "")
			lualib:SetInt(player, "autoattack", 1)
			lualib:SetStr(player, "map_1", lualib:MapGuid(player))
			lualib:ShowFormWithContent(player,"�ű���","WndAddEffect(GameMainBar._wnd,\"Auto\",3020300000,0,-3,150,0)")
			if lualib:GetClientType(player) == 1 then
				lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "�������ȡ���Զ��һ�")
			else
				lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "����һ���ťȡ���Զ��һ�")
			end	
			--lualib:SysTriggerMsg(player, "��ʼ�Զ�ս�����ٴε�������Զ�ս����")
			if not lualib:HasBuff(player,"�Զ����") then
				lualib:AddBuff(player, "�Զ����", 0)		
				
			end		
		end
	else
		isauto = tonumber(isauto)
		if isauto == 1 then
			lualib:StartAutoRun(player, "")
			lualib:SetInt(player, "autoattack", 1)
			lualib:SetStr(player, "map_1", lualib:MapGuid(player))
			lualib:ShowFormWithContent(player,"�ű���","WndAddEffect(GameMainBar._wnd,\"Auto\",3020300000,0,-3,150,0)")
			if lualib:GetClientType(player) == 1 then
				lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "�������ȡ���Զ��һ�")
			else
				lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "����һ���ťȡ���Զ��һ�")
			end	
			if not lualib:HasBuff(player,"�Զ����") then
				lualib:AddBuff(player, "�Զ����", 0)
				
			end	
			--lualib:SysTriggerMsg(player, "��ʼ�Զ�ս�����ٴε�������Զ�ս����")
		elseif isauto == 0 then
			lualib:StopAutoRun(player)
			lualib:SetInt(player, "autoattack", 0)
			--lualib:SysTriggerMsg(player, "��ͣ�Զ�ս�����ٴε���ɽ����Զ�ս����")
			lualib:ShowFormWithContent(player,"�ű���","WndDelEffect(GameMainBar._wnd,\"Auto\")")
			if lualib:HasBuff(player,"�Զ����") then
				lualib:DelBuff(player, "�Զ����")	
			end
		end
	end
	return ""
end

function close(player)
	return ""
end