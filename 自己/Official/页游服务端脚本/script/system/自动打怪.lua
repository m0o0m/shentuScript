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

	if lualib:HasBuff(player,"��̯") then
		lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬��������̯��")
		return ""
	end
	
	local msg = ""
	if isauto == nil or isauto == "" then
		if lualib:GetInt(player, "autoattack") == 1 then
			lualib:StopAutoRun(player)
			lualib:SetInt(player, "autoattack", 0)
			lualib:ShowFormWithContent(player,"�ű���","WndDelEffect(GameMainBar._wnd,\"Auto\");GameMainBar.AutoMagic(".. 0 ..")")
			
			 
			--lualib:SysTriggerMsg(player, "��ͣ�Զ�ս�����ٴε���ɽ����Զ�ս����")
			if lualib:HasBuff(player,"�Զ����") then
				lualib:DelBuff(player, "�Զ����")
				
			end
		else
			lualib:StartAutoRun(player, "")
			lualib:SetInt(player, "autoattack", 1)
			lualib:SetStr(player, "map_1", lualib:MapGuid(player))
			lualib:ShowFormWithContent(player,"�ű���","WndAddEffect(GameMainBar._wnd,\"Auto\",3020300000,0,-3,150,0);GameMainBar.AutoMagic(".. 1 ..")")
		
			if lualib:GetClientType(player) == 1 then
				lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "�������ȡ���Զ��һ�")
			else
				lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "����һ���ťȡ���Զ��һ�")
			end	
			--lualib:SysTriggerMsg(player, "��ʼ�Զ�ս�����ٴε�������Զ�ս����")
			if not lualib:HasBuff(player,"�Զ����") then
				lualib:AddBuff(player, "�Զ����", 0)		
				
			end		
			changeServant(player)
		end
	else
		isauto = tonumber(isauto)
		if isauto == 1 then
			lualib:StartAutoRun(player, "")
		
			lualib:SetInt(player, "autoattack", 1)
			lualib:SetStr(player, "map_1", lualib:MapGuid(player))
			
			lualib:ShowFormWithContent(player,"�ű���","WndAddEffect(GameMainBar._wnd,\"Auto\",3020300000,0,-3,150,0);GameMainBar.AutoMagic(".. 1 ..")")
			if lualib:GetClientType(player) == 1 then
				lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "�������ȡ���Զ��һ�")
			else
				lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "����һ���ťȡ���Զ��һ�")
			end	
			if not lualib:HasBuff(player,"�Զ����") then
				lualib:AddBuff(player, "�Զ����", 0)
				
			end	
			changeServant(player)
			--lualib:SysTriggerMsg(player, "��ʼ�Զ�ս�����ٴε�������Զ�ս����")
		elseif isauto == 0 then
			lualib:StopAutoRun(player)
			lualib:SetInt(player, "autoattack", 0)
			--lualib:SysTriggerMsg(player, "��ͣ�Զ�ս�����ٴε���ɽ����Զ�ս����")
			lualib:ShowFormWithContent(player,"�ű���","WndDelEffect(GameMainBar._wnd,\"Auto\");GameMainBar.AutoMagic(".. 0 ..")")
			if lualib:HasBuff(player,"�Զ����") then
				lualib:DelBuff(player, "�Զ����")	
			end
		end
	end
	return ""
end

function changeServant(player)
	if lualib:Job(player) == 3 then
		local hasSkill = false
		local index = 1
		local skill_table = {"��֮ͥ��1��","��֮ͥ��2��","��֮ͥ��3��","��֮ͥ��4��"}
		for i = 1 , #skill_table do
			if lualib:HasSkill(player, skill_table[i], false) == true then
				hasSkill = true
				index = i
				break
			end
		end	
		if hasSkill then
			local servant_t = lualib:Player_GetServantList(player) 
			if #servant_t ~= 0 then
				for i = 1 , #servant_t do 
					if lualib:Name(servant_t[i]) == "����ʿ��" then	
						if not lualib:Player_SpellTarget(player,skill_table[index],player) then
							--lualib:SysPromptMsg(player,""..skill_table[index].."������ʹ��ʧ��")
						else
							--lualib:SysPromptMsg(player,""..skill_table[index].."������ʹ�óɹ���")
						end
					end
				end
			end
		end	
	end

	
end	

function close(player)
	return ""
end