local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("form/NPC_IsNotInScene")

function on_accept(player,quest_id)
	lualib:DropQuest(player, 500)	--ɾ����������
	return true
end

function can_accomplish(player,quest_id)
	if lualib:GetInt(player, "questCanAccomplish") ~= 0 then
		return true
	end
	--lualib:SysPromptMsg(player, "repeat")
	if lualib:AddBuff(player, "�������", 0) then
		lualib:SetInt(player, "questCanAccomplish",1)
		lualib:DelayCall(player, 3000, "DelayCall_FindExploitTaskNpc", player)
	end
	
	
	return true
end

function on_accomplish(player,quest_id,select)
	if lualib:ForceAcceptQuest(player,500) then  --ǿ�ƽ�ȡ��������
		lualib:SetInt(player, "questCanAccomplish",0)
	end			
	return true
end

function DelayCall_FindExploitTaskNpc(player)
	if "��ɽ��" ~= lualib:KeyName(lualib:MapGuid(player)) then
		FindExploitTaskNpc(player)
	end
end
