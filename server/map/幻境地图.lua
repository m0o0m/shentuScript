function on_map_create(map)
	lualib:AddTrigger(map, lua_trigger_enter_map, "on_trigger_enter_map")                        --玩家进入地图触发
	lualib:AddTrigger(map, lua_trigger_leave_map, "on_trigger_leave_map")                        --玩家离开地图触发   
	
	--local map_k = lualib:KeyName(map)
	--if map_k = "幻境1层" then
	--	lualib:Map_BatchGenMonster(map, "幻境尸王", 1, true)
	--	--lualib:Map_BatchGenMonster()
	--elseif map_k = "幻境4层" then
	--	lualib:Map_BatchGenMonster(map, "幻境触龙神", 1, true)	                ---还是用表刷怪
	--end

end


function on_trigger_enter_map(player)
	--60秒  1000金币
	
	local timer_id = lualib:GenTimerId(player)
	lualib:AddTimer(player, timer_id, 60000, -1, "SubPlayerGold")
	lualib:SetInt(player, "id", timer_id)
	
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.幻境内怪物经验为外界的两倍！\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.但每一分钟会扣除1000金币！\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.没钱不要来哦！^_^#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 310)	
	

end

function on_trigger_leave_map(player)	
	lualib:DisableTimer(player, lualib:GetInt(player, "id"))
	lualib:SetInt(player, "id", 0)

end

function SubPlayerGold(player, timer_id)
	if lualib:Player_SubGold(player, 1000, false, "幻境消耗", "") == false then
		local map_k = "龙城"
		local x, y = 246, 274		
		lualib:Player_MapMoveXY(player, map_k, x, y, 5)
		lualib:SysWarnMsg(player, "金币不足1000，想想办法吧！")
	else
		--lualib:SysWarnMsg(player, "扣除金币1000！")
	end

end
