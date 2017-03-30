----------------------------------------------------------------------------------
--计划任务的定时回调（玩法逻辑部分）
--------------------------------------------------------------------------------

function on_start(id, map)
end


local item_gen_x = 263
local item_gen_y = 238


local CItem = 
{
			{
            {"审判", 785}, 
            {"忘机", 785}, 
            {"囚龙", 785}, 
            {"审判(极)", 520}, 
            {"忘机(极)", 520}, 
            {"囚龙(极)", 520}, 
            {"龙渊", 390}, 
            {"天瀑", 390}, 
            {"十杀", 390}, 
            {"断空", 200}, 
            {"碎空", 200}, 
            {"噬空", 200}, 
            {"斗士铠甲(男)", 390}, 
            {"斗士铠甲(女)", 390}, 
            {"灵魂法衣(男)", 390}, 
            {"灵魂法衣(女)", 390}, 
            {"护体道袍(男)", 390}, 
            {"护体道袍(女)", 390}, 
            {"赤峰战甲(男)", 200}, 
            {"赤峰战甲(女)", 200}, 
            {"阎罗长袍(男)", 200}, 
            {"阎罗长袍(女)", 200}, 
            {"光明道袍(男)", 200}, 
            {"光明道袍(女)", 200}, 
            {"讨伐令", 775}, 
			},
			{
            {"骷髅手套", 520}, 
            {"绿玉项链", 520}, 
            {"破坏戒指", 520}, 
            {"摄魂戒指", 520}, 
            {"龙牙手镯", 520}, 
            {"唤魔铃铛", 520}, 
            {"混元戒指", 520}, 
            {"幻邪手镯", 520}, 
            {"灵光石项链", 520}, 
            {"黄金头盔", 520}, 
            {"阎魔头盔", 520}, 
            {"魔化面具", 520}, 
            {"浮云", 520}, 
            {"王者之链", 270}, 
            {"魔炫护腕", 270}, 
            {"君王战戒", 270}, 
            {"残月之坠", 270}, 
            {"紫炎护腕", 270}, 
            {"星冥魔戒", 270}, 
            {"天极项链", 270}, 
            {"天翼手镯", 270}, 
            {"上清玄指", 270}, 
            {"麒麟战盔", 270}, 
            {"龙牙面具", 270}, 
            {"无魂头盔", 270}, 
			}, 
			{
				{"500元宝", 10000}
			},
			{
				{"祝福神水", 10000},
			}, 
            {
                {"低级物攻精炼符",  685}, 
                {"低级魔攻精炼符",  685}, 
                {"低级道术精炼符",  685}, 
                {"低级物防精炼符",  685}, 
                {"低级魔防精炼符",  685}, 
                {"低级HP精炼符",    685}, 
                {"低级MP精炼符",    685}, 
                {"中级物攻精炼符",  342}, 
                {"中级魔攻精炼符",  342}, 
                {"中级道术精炼符",  342}, 
                {"中级物防精炼符",  342}, 
                {"中级魔防精炼符",  342}, 
                {"中级HP精炼符",    342}, 
                {"中级MP精炼符",    342}, 
                {"高级物攻精炼符",  228}, 
                {"高级魔攻精炼符",  228}, 
                {"高级道术精炼符",  228}, 
                {"高级物防精炼符",  228}, 
                {"高级魔防精炼符",  228}, 
                {"高级HP精炼符",    228}, 
                {"高级MP精炼符",    228}, 
                {"物攻精炼符(+10)", 171}, 
                {"魔攻精炼符(+10)", 171}, 
                {"道术精炼符(+10)", 171}, 
                {"物防精炼符(+10)", 171}, 
                {"魔防精炼符(+10)", 171}, 
                {"HP精炼符(+10)",   171}, 
                {"MP精炼符(+10)",   171}, 
            }, 
            {
                {"低级物攻精炼符",  685}, 
                {"低级魔攻精炼符",  685}, 
                {"低级道术精炼符",  685}, 
                {"低级物防精炼符",  685}, 
                {"低级魔防精炼符",  685}, 
                {"低级HP精炼符",    685}, 
                {"低级MP精炼符",    685}, 
                {"中级物攻精炼符",  342}, 
                {"中级魔攻精炼符",  342}, 
                {"中级道术精炼符",  342}, 
                {"中级物防精炼符",  342}, 
                {"中级魔防精炼符",  342}, 
                {"中级HP精炼符",    342}, 
                {"中级MP精炼符",    342}, 
                {"高级物攻精炼符",  228}, 
                {"高级魔攻精炼符",  228}, 
                {"高级道术精炼符",  228}, 
                {"高级物防精炼符",  228}, 
                {"高级魔防精炼符",  228}, 
                {"高级HP精炼符",    228}, 
                {"高级MP精炼符",    228}, 
                {"物攻精炼符(+10)", 171}, 
                {"魔攻精炼符(+10)", 171}, 
                {"道术精炼符(+10)", 171}, 
                {"物防精炼符(+10)", 171}, 
                {"魔防精炼符(+10)", 171}, 
                {"HP精炼符(+10)",   171}, 
                {"MP精炼符(+10)",   171}, 
            }, 
            {
                {"低级物攻精炼符",  685}, 
                {"低级魔攻精炼符",  685}, 
                {"低级道术精炼符",  685}, 
                {"低级物防精炼符",  685}, 
                {"低级魔防精炼符",  685}, 
                {"低级HP精炼符",    685}, 
                {"低级MP精炼符",    685}, 
                {"中级物攻精炼符",  342}, 
                {"中级魔攻精炼符",  342}, 
                {"中级道术精炼符",  342}, 
                {"中级物防精炼符",  342}, 
                {"中级魔防精炼符",  342}, 
                {"中级HP精炼符",    342}, 
                {"中级MP精炼符",    342}, 
                {"高级物攻精炼符",  228}, 
                {"高级魔攻精炼符",  228}, 
                {"高级道术精炼符",  228}, 
                {"高级物防精炼符",  228}, 
                {"高级魔防精炼符",  228}, 
                {"高级HP精炼符",    228}, 
                {"高级MP精炼符",    228}, 
                {"物攻精炼符(+10)", 171}, 
                {"魔攻精炼符(+10)", 171}, 
                {"道术精炼符(+10)", 171}, 
                {"物防精炼符(+10)", 171}, 
                {"魔防精炼符(+10)", 171}, 
                {"HP精炼符(+10)",   171}, 
                {"MP精炼符(+10)",   171}, 
            }, 
            {
                {"一包循环魔咒", 10000}
            }, 
}




function on_start_decl(id, map, times)
	--[[
	local mon_gen_x = {258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 267, 266, 265, 264, 263, 262, 261, 260, 259} 
	local mon_gen_y = {238, 239, 240, 241, 242, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 234, 235, 236, 237}
    local times = tonumber(times)
    local pick_item_time = {}
    
    if times == 0 then
		lualib:SysMsg_SendBoardMsg("0", "[龙城夺宝]", "[龙城夺宝]已开始，请速去龙城药店附近夺取宝物！", 15000)
		for i = 1, #mon_gen_x do
			lualib:Map_GenSingleMonster(map, mon_gen_x[i], mon_gen_y[i], 1, 4, "经验树", false)
		end
		for i = 1, #CItem do
            pick_item_time[i] = 180 + lualib:GenRandom(1, 300)  --拾取时间为3~8分钟
            
			local maxs = 0
			for j = 1, #CItem[i] do
				maxs = maxs + CItem[i][j][2]
			end
			local rand = math.random(1, maxs)
			local gen_item = 0
			
			local maxs2 = 0
			for q = 1, #CItem[i] do
				maxs2 = maxs2 + CItem[i][q][2]
				if rand <  maxs2 then
					gen_item = q
					break
				end
			end
			if "" == lualib:Map_GenItemRnd(map, item_gen_x, item_gen_y, 2, CItem[i][gen_item][1], 1, true, pick_item_time[i]) then
				lualib:Error("龙城夺宝地图创建物品失败！")
			else
				lualib:SysMsg_SendBroadcastMsg("龙城药店附近刷出宝物"..CItem[i][gen_item][1]..",请大家速去抢夺！", "")
			end
		end
    else		
		lualib:SysMsg_SendBoardMsg("0", "[龙城夺宝]", "[龙城夺宝]还有"..math.floor(times / 60000).."分钟开启。届时龙城药店附近将刷出一批宝物！", 15000)
    end
	]]--
end

function on_end_decl(id, map, times)
end

function Goto(id,player,map)
--[[	local x = 230
	local y = 230
	local r = 3
	local map_key_name = "龙城"
	local gold = 1500
	local level = lualib:Level(player)
	if level >= 40 then
		gold = 15000
	else
		gold = 1500
	end
	local msg = ""
	
	if lualib:HasBuff(player,"摆摊") then
	lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
	return false
	end
	
	
	if not lualib:Player_IsGoldEnough(player, gold, false) then
	msg = msg.."当前传送需要"..gold.."金币"
	lualib:NPCTalk(player, msg)
    return true
    end
	
	if not lualib:Player_SubGold(player, gold, false, "传送", player) then
	msg = msg.."扣除金币失败"
	lualib:NPCTalk(player, msg)
    return true
    end
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100001670#"..x.."#"..y.."#0#0")
	
	if not lualib:Player_MapMoveXY(player,map_key_name, x, y, r) then
		lualib:SysMsg_SendWarnMsg(player, "")
	end
	--]]
end
