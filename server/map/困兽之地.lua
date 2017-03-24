--�ճ����֮��
--30ֻ��

local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local monster_tbl = {
	{ "����BOSS"  , 1 , false } , 
}
local item_tbl = {
	{ "����1"  , 1 , true } , 
	{ "����2"  , 1 , true } , 
	{ "����3"  , 1 , true } , 
	{ "����4"  , 1 , true } , 
	{ "����5"  , 1 , true } , 
	{ "����6"  , 1 , true } , 
}

local cur = 0
function on_map_create(sMapID)
	lualib:AddTrigger(sMapID, lua_trigger_leave_map , "on_leave_map" )
	lualib:AddTrigger(sMapID, lua_trigger_enter_map, "on_enter_map") 
	lualib:AddTrigger(sMapID, lua_trigger_monster_post_die, "on_monster_post_die") 
	for i = 1, #monster_tbl do
		lualib:Map_GenMonster(sMapID, 62, 45, 8, 4, monster_tbl[i][1], monster_tbl[i][2], monster_tbl[i][3]);
		-- lualib:Map_BatchGenMonster( sMapID , monster_tbl[i][1] , monster_tbl[i][2] , monster_tbl[i][3] );
	end
	return ""
end



function on_enter_map(player)
	local str = "#COLORCOLOR_YELLOW#���#COLOREND##COLORCOLOR_BLUE#��"..lualib:Name(player).."��#COLOREND##COLORCOLOR_YELLOW#��������֮�أ���սBOSS��#COLOREND#";
	lualib:SysMsg_SendBroadcastColor(str, "", 1, 12);
	return ""
end


function on_leave_map(player)
	if not lualib:Player_IsPlayer(player) then
		return ""
	end
	local sMapID = lualib:MapGuid(player)
	return ""
end




--��������
function on_monster_post_die(monster, killer)
	local mon_keyname = lualib:KeyName(monster);
	if mon_keyname ~= "����BOSS" then 
		return ""
	end
	local player = ""
	mapGuid = lualib:MapGuid(killer)
	if not lualib:Player_IsPlayer(killer) then
		if lualib:GUIDType(killer) == 2 then
			player = lualib:Name2Guid(lualib:Monster_GetMaster(killer))
		else
			player = lualib:GetHeroLord(killer)
		end
	else
		player = killer
	end
	
	if lualib:Player_AddGold(player, 5000, false, "��սBOSS", player) then 
		local str = "#COLORCOLOR_YELLOW#���#COLOREND##COLORCOLOR_BLUE#��"..lualib:Name(player).."��#COLOREND##COLORCOLOR_YELLOW#��ɱBOSS���5000��ҽ���������һ�ؼ�Ʒװ��������2���Ӻ󱣻�ʧЧ���ȵ��ȵã�#COLOREND#";
		lualib:SysMsg_SendBroadcastColor(str, "", 1, 12);
	end
	
	local x, y = lualib:X(monster), lualib:Y(monster);
	local sMapID = lualib:MapGuid(monster)
	for i = 1, #item_tbl do
		if "" == lualib:Map_GenItem(sMapID, x, y, item_tbl[i][1], item_tbl[i][2], item_tbl[i][3], 120) then
		   lualib:Error("����֮�ص�ͼˢ��Ʒʧ�ܣ�")
		   return ""
		end
	end
	return ""
end


-- function onLeave(sMapID, player)
	-- if lualib:Player_MapMoveXY(player, "��ɽ��" , 223 , 180 , 3 ) then
		-- lualib:SetInt(player, "FirstCompleteDailyFB", 1)
	-- end
	-- return ""
-- end



-- function GetReward_3(sMapID, player)
	-- local iMonster_count = lualib:Map_GetMonsterCount( sMapID , "" , true , true )
	-- if iMonster_count <= 0 then
		-- if not (lualib:BagFree(player, true, false, false) > 0) then
			-- if lualib:MailToPlayer("�ڰ���̳", player , "��ѡ��˫��������������ע�����" , 0 , 0 , { "������ƬС" , 25 , 1 } ) then
				-- if lualib:Player_AddExp(player ,600000 , "�ڰ���̳" ,"system") then
					-- onLeave(sMapID, player)
				-- end
			-- end
		-- else	
			-- if lualib:AddItem(player , "������ƬС" , 25 , true , "�����ڰ���̳����", "ÿ�ո���ϵͳ") then
				-- if lualib:Player_AddExp(player ,600000 ,"�ڰ���̳" ,"system") then
					-- onLeave(sMapID, player)
				-- end
			-- end
		-- end
	-- else
		-- onLeave(sMapID, player)
	-- end
	-- return ""
-- end

-- function GetDoubleReward_3(sMapID, player)
	-- local iMonster_count = lualib:Map_GetMonsterCount( sMapID , "" , true , true )
	-- if iMonster_count <= 0 then
		-- if not (lualib:GetIngot(player) >= 188) then
			-- lualib:ShowFormWithContent(player, "�ű���", "DailyFbWnd.MsgBox()")
		-- else
			-- if lualib:SubIngot(player, 188, "ÿ�ո���", "ϵͳ") then
				-- if not (lualib:BagFree(player, true, false, false) > 0) then
					-- if lualib:MailToPlayer("�ڰ���̳", player , "��ѡ��˫��������������ע�����" , 0 , 0 , { "������ƬС" , 50 , 1 } ) then
						-- if lualib:Player_AddExp(player ,1200000 , "�ڰ���̳" ,"system") then
							-- onLeave(sMapID, player)
						-- end
					-- end
				-- else
					-- if lualib:AddItem(player , "������ƬС" , 50 , true , "�����ڰ���̳˫������", "ÿ�ո���ϵͳ") then
						-- if lualib:Player_AddExp(player ,1200000 , "�ڰ���̳" ,"system") then
							-- onLeave(sMapID, player)
						-- end
					-- end
				-- end
			-- end
		-- end
	-- else
		-- onLeave(sMapID)
	-- end
	-- return ""
-- end