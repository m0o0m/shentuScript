

function main(npc, player)
	local msg = [[\n这里是一直被封锁的行会地图,你确定要进去吗?
行会争霸入口#COLORCOLOR_RED#19:00开通#COLOREND#于#COLORCOLOR_RED#19:30关闭#COLOREND#
地图封闭后,药迟早会被消耗光,胜负拒绝一切借口!
#COLORCOLOR_RED#注意:当入口关闭后!请不要提前离开此地图!直到胜利结果产生！#COLOREND#
当彻底击杀最后一名敌对行会成员后即可获得胜利!奖励由获胜行会会长领取!
胜利后会长可领相应金币奖励]]
	msg = msg.."\n\n"
	msg = msg.."	#IMAGE1902700018#进入<@jump *01*行会战争地图>"
	msg = msg.."						#IMAGE1902700032#<@award *01*领取奖励>\n"
	lualib:NPCTalkDetail(player, msg, 470, 200) --自定义长宽
	return ""
end

function award(npc, player)
	local msg = ""
	local Guild = lualib:GuildGuid(player)
	if Guild == "" or Guild == nil then
		return "你没有行会！\n <@leave *01*离开>"
	end
	
	local Guild_award = lualib:GetDBStr("Guild_award")
	
	if Guild_award ~= Guild then
		return "你的行会未获得上次活动胜利！\n <@leave *01*离开>"
	end
	
	if not lualib:Player_IsGuildLeader(player) then
		return "对不起，你不是会长，无法领取！\n <@leave *01*离开>"
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
	local map = lualib:Map_GetMapGuid("龙城")
    local dgn_guid = lualib:GetStr(map, "guild_map_guid")
	local open_hhzb_jinru = lualib:GetInt(map,"open_hhzb_jinru")
	
	if dgn_guid == "" or dgn_guid == nil then
		msg = "对不起!您确定现在举行行会争霸活动吗?新区第三天本活动!\n日常区每周五举行本活动!\n"
		msg = msg.."<@leave *01*离开>"
		return msg
	end
	
	
		if open_hhzb_jinru == 0  then
		return "对不起，行会争霸入口已关闭!\n <@leave *01*离开>"
		end
		
	
	local Guild = lualib:GuildGuid(player)
	if Guild == "" or Guild == nil then
		return "你没有行会，无法进入!\n <@leave *01*离开>"
	end
	

	if not lualib:Map_IsDgnExist(dgn_guid) then
		return "副本不存在！请联系GM!"
	end
	
		lualib:Player_SetDgnTicket(player, dgn_guid)
		if lualib:Player_HasDgnTicket(player, "行会战争地图") then
		lualib:Player_EnterDgn(player, "行会战争地图", 0, 0, 0)
		lualib:SysMsg_SendBroadcastColor("行会争霸："..lualib:Name(player).."通过盟重行会争霸NPC进入行会战地图！", "", 1, 12)	
	end
	return ""
end



function leave(npc, player)
	return ""
end
