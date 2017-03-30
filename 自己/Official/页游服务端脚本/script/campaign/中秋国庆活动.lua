--------------------------------------------------------------------------------
--计划任务的定时回调（玩法逻辑部分）
--------------------------------------------------------------------------------


local map_table = {
					{"将军冢1", "将军冢一层", {{"小喽啰1", 50}}}, 
                    {"将军冢2", "将军冢二层", {{"小喽啰1", 50}}}, 
                    {"将军冢3", "将军冢三层", {{"小喽啰2", 50}}}, 
                    {"废弃矿洞1", "矿洞入口", {{"小喽啰1", 50}}}, 
                    {"废弃矿洞3", "北部矿区", {{"小喽啰1", 50}}}, 
                    {"废弃矿洞4", "北部采集场", {{"小喽啰2", 50}}}, 
                    {"废弃矿洞5", "南部采集场", {{"小喽啰2", 50}}}, 
                    {"妖山暗穴1", "妖山暗穴一层", {{"小喽啰2", 50}}}, 
                    {"妖山暗穴2", "妖山暗穴二层", {{"小喽啰2", 50}}}, 
                    {"妖山暗穴3", "妖山暗穴三层", {{"小喽啰2", 50}}}, 
                    {"妖山暗穴4", "妖山暗穴四层", {{"小喽啰3", 50}}}, 
                    {"妖山暗穴5", "妖山暗穴五层", {{"小喽啰3", 50}}}, 
                    {"绝路城1", "绝路城东部", {{"小喽啰3", 50}}}, 
                    {"绝路城3", "绝路城西部", {{"小喽啰3", 50}}}, 
                    {"天荒阵1", "天荒阵一层", {{"小喽啰3", 50}}}, 
                    {"天荒阵2", "天荒阵二层", {{"小喽啰3", 50}}}, 
                    {"天荒阵3", "天荒阵三层", {{"小喽啰3", 50}}}, 
                    {"天荒阵4", "天荒阵四层", {{"小喽啰3", 50}}}, 
                    {"天荒阵5", "天荒阵五层", {{"小喽啰4", 50}}}, 
                    {"天荒阵6", "天荒阵六层", {{"小喽啰4", 50}}}, 
                    {"邪庙1", "天荒邪庙一层", {{"小喽啰3", 50}}}, 
                    {"邪庙2", "天荒邪庙二层", {{"小喽啰3", 50}}}, 
                    {"邪庙3", "天荒邪庙三层", {{"小喽啰3", 50}}}, 
                    {"邪庙4", "天荒邪庙四层", {{"小喽啰4", 50}}}, 
                    {"天魔石窟1", "天魔石窟一层", {{"小喽啰4", 50}}}, 
                    {"天魔石窟2", "天魔石窟二层", {{"小喽啰4", 50}}}, 
                    {"天魔石窟3", "天魔石窟三层", {{"小喽啰4", 50}}}, 
                    {"天魔石窟4", "天魔石窟四层", {{"小喽啰4", 50}}}, 
				}


function on_start(id, map)
end

function on_start_decl(id, map, times)
	local times = tonumber(times)
	local start_time = lualib:GetAllDays(lualib:Str2Time("2012-9-28 00:00:00"))
	local end_time = lualib:GetAllDays(lualib:Str2Time("2012-10-7 00:00:00"))
	lualib:Map_GenNpc(map, "中秋国庆活动", 232, 224, 0, 4)
	lualib:Map_GenNpc(lualib:Map_GetMapGuid("巫山城"), "中秋国庆活动", 241, 298, 0, 4)
	lualib:Map_GenNpc(lualib:Map_GetMapGuid("东临城"), "中秋国庆活动", 321, 295, 0, 4)
	if times == 0 then
		lualib:SysMsg_SendBoardMsg("0", "[中秋、国庆节快乐]", "[中秋、国庆节活动]已经开始！", 15000)
		lualib:AddTimerEx(map, 101, 1800000, 450, "mob", "")
	else
		lualib:SysMsg_SendBoardMsg("0", "[中秋、国庆节快乐]", "[中秋、国庆节活动]还有"..math.floor(times / 60000).."分钟开始。", 15000)
		
		
		--第一次刷怪
		if times >= start_time and times <= end_time then
			for i = 1, #map_table do
				local map_guid = lualib:Map_GetMapGuid(map_table[i][1])
				for j = 1, #map_table[i][3] do
						lualib:Map_BatchGenMonster(map_guid, map_table[i][3][j][1], map_table[i][3][j][2], false)
						lualib:SetInt(map_guid, "guoqing_monster_num", 50)
				end
			end	
			lualib:SysMsg_SendBoardMsg("0", "[中秋、国庆节快乐]", "楼喽大量出现在各大地宫，请大家迅速前去消灭！", 15000)
		end
	end
end

function on_end_decl(id, map, times)
	lualib:SysMsg_SendBoardMsg("0", "[中秋、国庆节快乐]", "[中秋、国庆节活动]已结束，活动使者将在8号晚24点消失，请尽快兑换活动奖励！", 15000)
	lualib:AddTimerEx(map, 102, 86400000, 1, "delNpc", "")
end

function mob(map)
	local start_time = lualib:GetAllDays(lualib:Str2Time("2012-9-28 00:00:00"))
	local end_time = lualib:GetAllDays(lualib:Str2Time("2012-10-7 00:00:00"))
	local times = lualib:GetAllDays(0)
	
	if times >= start_time and times <= end_time then
		for i = 1, #map_table do
			local map_guid = lualib:Map_GetMapGuid(map_table[i][1])
			local monster_num = lualib:GetInt(map_guid, "guoqing_monster_num")
			for j = 1, #map_table[i][3] do
					lualib:Map_BatchGenMonster(map_guid, map_table[i][3][j][1], map_table[i][3][j][2] - monster_num, false)
					lualib:SetInt(map_guid, "guoqing_monster_num", 50)
			end
		end	
		lualib:SysMsg_SendBoardMsg("0", "[中秋、国庆节快乐]", "楼喽大量出现在各大地宫，请大家迅速前去消灭！", 15000)
	end
end

function delNpc(map)
	lualib:Map_ClearNpc(map, "中秋国庆活动", 232, 224, 0, 4)
	lualib:Map_ClearNpc(lualib:Map_GetMapGuid("巫山城"), 241, 298, 0, "中秋国庆活动")
	lualib:Map_ClearNpc(lualib:Map_GetMapGuid("东临城"), 321, 295, 0, "中秋国庆活动")
end





function Goto(id,player,map)
	local msg = "想参与活动请到各大主城安全区去找中秋活动大使了解吧！"
	lualib:NPCTalk(player, msg)
    return true
end