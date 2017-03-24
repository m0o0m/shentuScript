
function main(npc, player)
	local msg = [[
	#POS<Y:25>##COLORCOLOR_ORANGE#这里是一直被封锁的行会地图,你确定要进去吗?
	
	#COLORCOLOR_BROWN#行会争霸入口#COLORCOLOR_RED#19:00开通#COLOREND#于#COLORCOLOR_RED#19:30关闭#COLOREND#
	#COLORCOLOR_BROWN#地图封闭后,药迟早会被消耗光,胜负拒绝一切借口!
	#COLORCOLOR_RED#注意:#COLORCOLOR_BROWN#当入口关闭后!请不要提前离开此地图!直到胜利结果产生！#COLOREND#
	#COLORCOLOR_BROWN#当彻底击杀最后一名敌对行会成员后即可获得胜利!奖励由获胜行会会长领取（３万金币）!
	
	#IMAGE1902700018#<@jump *01*[进入行会战争地图]>		#IMAGE1902700032#<@award *01*[领取奖励]>
	]]
	return msg
	-- lualib:NPCTalkDetail(player, msg, 470, 200) --自定义长宽
	
end

function award(npc, player)
	local msg = ""
	local Guild = lualib:GuildGuid(player)
	if Guild == "" or Guild == nil then
		return "你没有行会！\n <@leave *01*离开>"
	end
	if not lualib:Player_IsGuildLeader(player) then
		return "对不起，你不是会长，无法领取！\n <@leave *01*离开>"
	end
	local Guild_award = lualib:GetDBStr("Guild_award")
	if Guild_award ~= Guild then
		return "你的行会未获得上次活动胜利！\n <@leave *01*离开>"
	end
	
	local Guild_name = lualib:Name(Guild_award)
	local player_name = lualib:Name(player)
	local yb = lualib:GetDBNum("Guild_yb")
	lualib:SysMsg_SendBroadcastMsg("[["..Guild_name.."]胜出, 会长"..player_name.."领取"..yb.."金币奖励！", "系统通知")
	
	if not lualib:Player_AddGold(player, yb, false, "行会争霸奖励", "") then
		return "添加金币失败，请联系GM！"
	else
		lualib:SetDBNum("Guild_yb", 0)
		lualib:SetDBStr("Guild_award", "")
		return "恭喜你获得了行会争霸的奖励！\n <@leave *01*离开>"
	end
end


function jump(npc, player)
	local map = lualib:Map_GetMapGuid("天怒之城")
    local dgn_guid = lualib:GetStr(map, "guild_map_guid")
	local open_hhzb_jinru = lualib:GetInt(map,"open_hhzb_jinru")
	
	if dgn_guid == "" or dgn_guid == nil then
		local msg = "[行会争霸]活动还未开始，无法进入！"
		-- lualib:NPCTalkDetail(player, msg, 200, 100) --自定义长宽
		return msg
	end
		
	
	
	if open_hhzb_jinru == 0  then

	end
	
	local Guild = lualib:GuildGuid(player)
	if Guild == "" or Guild == nil then
		local msg = "您没有行会，无法进入！"
		-- lualib:NPCTalkDetail(player, msg, 200, 100) --自定义长宽
		return msg
	end
	

	if not lualib:Map_IsDgnExist(dgn_guid) then
		return "副本不存在！请联系GM!"
	end
	
	lualib:Player_SetDgnTicket(player, dgn_guid)
	if lualib:Player_HasDgnTicket(player, "行会争霸地图") then
		lualib:Player_EnterDgn(player, "行会争霸地图", 80, 100, 10)
		-- lualib:SysMsg_SendBroadcastColor("行会争霸："..lualib:Name(player).."通过天怒之城争霸活动使者进入行会争霸地图！", "", 1, 12)	
	end
	return ""
end



function leave(npc, player)
	return ""
end
