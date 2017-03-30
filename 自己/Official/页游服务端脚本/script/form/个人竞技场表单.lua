local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("npc/精英竞技场")

---------------------个人竞技场——面板翻页------------------------
function fanye(player,yeshu)
	yeshu = tonumber(yeshu)
	gerensaixianshi(player,yeshu)
	return ""
end

---------------------个人竞技场——观战------------------------
function guanzhan(player,name)
	local player1 = lualib:Name2Guid(name)
	
	if string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..player.."\"") ~= nil then
		return "你为参赛玩家，不可以观战！"
	end
	
	if lualib:Player_IsOnline(player1) == true then--判断是否在线
	else
		return "对方不在线！"
	end
	
	local map = lualib:MapGuid(player1)
	local mapname = ""
	
	if map ~= nil then
		mapname = lualib:KeyName(map)
	end
	
	if string.find(mapname,"精英竞技场") ~= nil and string.find(mapname,"组队赛") == nil and string.find(mapname,"休息间") == nil then	
		lualib:Player_JumpToRole(player,name) --传送到被观战玩家面前
		return ""
	else
		return "对方不在比赛地图中！"
	end
end

---------------------我要报名------------------------
function gerenbaoming(player)
	if lualib:GetInt("0","jyjjc_jieduan") ~= 1 then
		return "现在还不是活动报名时间，报名时间为每日19:00~20:00。"
	end
	
	if string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..player.."\"") ~= nil then
		return "你已经报过名了！"
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
		lualib:SysMsg_SendMsgDlg(player,1,"报名成功，请耐心等待比赛开始。#BUTTON0#前往休息间#BUTTONEND##BUTTON0#关闭#BUTTONEND#", 100, "xiuxijian", "")
		return ""
	else
		return "30级以上玩家才可以参加此活动。"
	end
end

---------------------取消报名------------------------
function gerenquxiao(player)
	if lualib:GetInt("0","jyjjc_jieduan") >= 2 then
		return "比赛正在进行中，不可取消报名。"
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
		return "取消报名成功！"
	else
		return "你还没有报过名。"
	end
end