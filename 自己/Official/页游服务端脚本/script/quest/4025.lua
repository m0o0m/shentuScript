local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_accept(player, quest_id)
	lualib:SetInt(player, "4025", 0)
	return true
end

--[[
function can_accomplish(player, quest_id)
	local tb = {"独角兽", "梦魇兽", "吼天兽", "雪域天狼", "霸下玄龟"}
	for i = 1, #tb do
		if lualib:ItemCountByKey(player, tb[i], true, false, false, 2) > 0 then lualib:SetInt(player, "4025", 1) end		
	end
	
	local a = lualib:GetInt(player, "4025")
	if a ~= 1 then
	return false
	end
	return true
end

]]
function on_accomplish(player, quest_id)
	lualib:AddTimer(player, 45877, 100, 1, "quxiao_renwu_time")
	return true
end	

function quxiao_renwu_time(player, timer_id)
	lualib:AcceptQuest(player, 4025)
	--lualib:Player_RunGMCmd(player, "quest", "4024 1")
  	local tb = {}
	local msg = ""
	msg = msg.."请选择您要上缴的坐骑：\n"
	msg = msg.."#COLORCOLOR_RED#提示：如果提交的是绑定的马，将获得绑定金币，如果提交的是非绑定的马，将获得金币！\n \n#COLOREND#"
	local huoqu_guid_tb = {"独角兽", "梦魇兽", "吼天兽", "雪域天狼", "霸下玄龟"}
	local pinzhi_tb = {{"普通", 1}, {"极品", 2}, {"珍品", 3}, {"绝品", 4}, {"神品", 5}}
	
	local item_guid_tb = lualib:GetItemsByKeys(player, "独角兽#梦魇兽#吼天兽#雪域天狼#霸下玄龟", false, true, false, false)
	for i = 1, table.getn(item_guid_tb) do
		local dengji = lualib:Item_GetCustomVarInt(player, item_guid_tb[i], "h_type")
		if dengji > 0 then
			table.insert(tb, {dengji, lualib:KeyName(item_guid_tb[i]), item_guid_tb[i]})
		end
	end
	
	table.sort(tb, function(a,b) return a[1] < b[1] end)
	
	for k, v in pairs(tb) do
		if lualib:Item_IsBind(player, v[3]) == true then
			msg = msg.."坐骑名字：【#COLORCOLOR_BROWN#"..v[2].."#COLOREND#】   坐骑品质【#COLORCOLOR_BROWN#"..v[1].."#COLOREND#】  坐骑属性【绑定】  <@tijiao_ma_renwu#"..v[3].." *01*[上缴]>\n"
		else
			msg = msg.."坐骑名字：【#COLORCOLOR_BROWN#"..v[2].."#COLOREND#】   坐骑品质【#COLORCOLOR_BROWN#"..v[1].."#COLOREND#】  坐骑属性【非绑定】  <@tijiao_ma_renwu#"..v[3].." *01*[上缴]>\n"
		end
	end


	lualib:NPCTalk(player, msg)
end

function tijiao_ma_renwu(player, item_guid)
	local itemname	= lualib:Name(item_guid)
	local itemkeyname = lualib:KeyName(item_guid)
	local item_num = lualib:ItemCountByKey(player, itemkeyname, true, false, false, 2)
	local item_player_guid = lualib:Item_GetRole(item_guid)
	if item_player_guid == "" then
		lualib:SysTriggerMsg(player, "你是不是把["..itemname.."]给放别处了？")
		return "你是不是把[任务物品]给放别处了？"
	end
	
	if player ~= item_player_guid then
		lualib:SysTriggerMsg(player, "你是不是把["..itemname.."]给放别处了？")
		return "你是不是把["..itemname.."]给放别处了？"
	end
	
	if lualib:Item_IsBind(player, item_guid) == true then
		if lualib:Item_Destroy(player, item_guid, "提交任务删除物品", player) == true then
			lualib:Player_AddGold(player, 500000, true, "完成任务奖励金币", player)
			lualib:SysWarnMsg(player, "你获得了500000绑定金币！")
		else
			lualib:NPCTalk(player, "提交任务物品失败！！！")
			return ""
		end
	else
		if lualib:Item_Destroy(player, item_guid, "提交任务删除物品", player) == true then
			lualib:Player_AddGold(player, 500000, false, "完成任务奖励金币", player)
			lualib:SysWarnMsg(player, "你获得了500000金币！")
		else
			lualib:NPCTalk(player, "提交任务物品失败！！！")
			return ""
		end
	end
	lualib:DropQuest(player, 4025)
	lualib:NPCTalk(player, "任务提交成功！！！")
	return ""
end
