--任务完成回调
--select_index 可选奖励索引


function on_accept(player, quest_id)	
	local msg = "#COLORCOLOR_RED#\n      亲，如果你还没有领取升级成就奖励，赶紧领了吧！#COLOREND#\n\n"	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@achievement *01*成就奖励(点击领取)>：\n      <@achievement *01*升级之后，在成就面板【江湖历练】中，可一次性领取大量经验！>\n\n"
	--msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#245#221#1 *01*悬赏任务(点击传送)>：\n"  
	--msg = msg .. "      通过#COLORCOLOR_GREENG#天机老人#COLOREND#接取#COLORCOLOR_GREENG#悬赏任务#COLOREND#：在任意时期都能获得稳定且不低的经验和金币！\n \n"	
	--msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#212#212#1 *01*镇魔殿(点击传送)>：\n"  
	--msg = msg .. "      通过#COLORCOLOR_GREENG#镇魔殿传送人#COLOREND#进入#COLORCOLOR_GREENG#镇魔殿#COLOREND#：需要组队进入，每天3次会获得海量经验！\n \n"	
	--msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#202#225#1 *01*藏宝阁之木人巷(点击传送)>：\n"  
	--msg = msg .. "      通过#COLORCOLOR_GREENG#藏宝阁守护者#COLOREND#进入#COLORCOLOR_GREENG#木人巷#COLOREND#：里面怪物经验不菲，大号木人掉落经验丹和超级经验丹！\n \n"			
	
	lualib:NPCTalk(player, msg)
	msg = nil

	return true
end


function achievement(player)
    local client_script = [[WndClick(nil,"GameMainInterface,LittleMap,Achieve")]]
    lualib:ShowFormWithContent(player, "脚本表单", client_script)
	on_accept(player)
	return ""
end


function on_accomplish(player, quest_id, select_index)
	local item_table = {
							{"审判", "蛮力冲锋"},
							{"囚龙", "流光护盾"},
							{"忘机", "回春咒"}
						}	

	local job = lualib:Job(player)
	local player_name = lualib:Name(player)
	local item_num = 2
	
	if lualib:Player_GetBagFree(player) < item_num then
		for i = 1 , 2 do		
		lualib:Mail("神途", player_name, "由于你的包裹已满，现已将<"..item_table[job][i]..">通过邮件发送给你", 0, 0, {item_table[job][i], 1, 1})
		end
		lualib:SysMsg_SendTriggerMsg(player, "背包空间不够，需要"..item_num.."个格子！道具已通过邮件发送给你，请注意查收")		
		
	else
		for i = 1, 2 do 
		lualib:AddItem(player, item_table[job][i], 1, true, "新手任务赠送", "新手任务赠送")
		lualib:SysMsg_SendTriggerMsg(player, "您获得了<"..item_table[job][i]..">请打开背包查看！！！")
		end
	end
	return true
end

--[[
function MapMoveXYA(player, map_key_name, x, y, r)
	local x = tonumber(x)
	local y = tonumber(y)
	local r = tonumber(r)
	lualib:Player_MapMoveXY(player,map_key_name, x, y, r)
	return on_accept(player, "")
end

function on_accomplish(player, quest_id, select_index)
	local item_table = {"审判", "囚龙", "忘机"}
	local job = lualib:Job(player)
	local player_name = lualib:Name(player)
	local item_num = 1
	
	if lualib:Player_GetBagFree(player) < item_num then
		lualib:Mail("神途", player_name, "由于你的包裹已满，现已将<"..item_table[job]..">通过邮件发送给你", 0, 0, {item_table[job], 1, 1})
		lualib:SysMsg_SendTriggerMsg(player, "背包空间不够，需要"..item_num.."个格子！道具已通过邮件发送给你，请注意查收")
		
	else
		lualib:AddItem(player, item_table[job], 1, true, "新手任务赠送", "新手任务赠送")
		lualib:SysMsg_SendTriggerMsg(player, "您获得了<"..item_table[job]..">请打开背包查看！！！")
	end
	return true
end
]]