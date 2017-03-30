local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("npc/��Ӣ������")

---------------------���˾�����������巭ҳ------------------------
function fanye(player,yeshu)
	yeshu = tonumber(yeshu)
	gerensaixianshi(player,yeshu)
	return ""
end

---------------------���˾�����������ս------------------------
function guanzhan(player,name)
	local player1 = lualib:Name2Guid(name)
	
	if string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..player.."\"") ~= nil then
		return "��Ϊ������ң������Թ�ս��"
	end
	
	if lualib:Player_IsOnline(player1) == true then--�ж��Ƿ�����
	else
		return "�Է������ߣ�"
	end
	
	local map = lualib:MapGuid(player1)
	local mapname = ""
	
	if map ~= nil then
		mapname = lualib:KeyName(map)
	end
	
	if string.find(mapname,"��Ӣ������") ~= nil and string.find(mapname,"�����") == nil and string.find(mapname,"��Ϣ��") == nil then	
		lualib:Player_JumpToRole(player,name) --���͵�����ս�����ǰ
		return ""
	else
		return "�Է����ڱ�����ͼ�У�"
	end
end

---------------------��Ҫ����------------------------
function gerenbaoming(player)
	if lualib:GetInt("0","jyjjc_jieduan") ~= 1 then
		return "���ڻ����ǻ����ʱ�䣬����ʱ��Ϊÿ��19:00~20:00��"
	end
	
	if string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..player.."\"") ~= nil then
		return "���Ѿ��������ˣ�"
	end

	if lualib:Player_GetIntProp(player,  lua_role_level) >= 30 then
		local t1_table = {}
		if lualib:GetStr("0", "jyjjc_gerenjinji") == "" then
			t1_table = {player}
		else
			t1_table = json.decode(lualib:GetStr("0", "jyjjc_gerenjinji"))
			t1_table[#t1_table+1] = player
		end
		lualib:SetStr("0", "jyjjc_gerenjinji", json.encode(t1_table))
		gerensaixianshi(player,1)
		lualib:SysMsg_SendMsgDlg(player,1,"�����ɹ��������ĵȴ�������ʼ��#BUTTON0#ǰ����Ϣ��#BUTTONEND##BUTTON0#�ر�#BUTTONEND#", 100, "xiuxijian", "")
		return ""
	else
		return "30��������Ҳſ��ԲμӴ˻��"
	end
end

---------------------ȡ������------------------------
function gerenquxiao(player)
	if lualib:GetInt("0","jyjjc_jieduan") >= 2 then
		return "�������ڽ����У�����ȡ��������"
	end

	if string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..player.."\"") ~= nil then
		local s,i = string.gsub(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..player.."\",","")
		if i == 0 then
			s,i = string.gsub(lualib:GetStr("0", "jyjjc_gerenjinji"),",\""..player.."\"","")
			if i == 0 then
				s = ""
			end
		end
		lualib:SetStr("0", "jyjjc_gerenjinji",s)
		gerensaixianshi(player,1)
		return "ȡ�������ɹ���"
	else
		return "�㻹û�б�������"
	end
end