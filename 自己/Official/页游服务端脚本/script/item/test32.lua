local mailReward = 0


function main( sPlayerID , sItemID )
lualib:SetVipLevel( sPlayerID , lualib:GetVipLevel( sPlayerID ) + 1 )
--[[
	local msg = ""
	local msg = msg..mailReward.."\n"
	local msg = msg.."<@getItems *01*单倍>\n"
	local msg = msg.."<@getDoubleItems *01*双倍>"
	lualib:NPCTalk( sPlayerID , msg )
	return true
]]--
end

function getItems( sPlayerID , param )
	local sMapID = lualib:MapGuid(sPlayerID)
	if lualib:KeyName(sMapID) == "副本沃玛寺庙" then
		lualib:Player_MapMoveXY( sPlayerID , "巫山城" , 190 , 258 , 3 )
		lualib:DisableTimer( sMapID , 2 )
		lualib:Map_DestroyDgn( sMapID )
	end
	if mailReward == 0 then
		lualib:MailToPlayer( "天荒古阵", sPlayerID , "您选择单倍副本奖励，请注意查收" , 0 , 0 , { "魂珠碎片小" , 2 , 1 } )
		lualib:Player_AddExp( sPlayerID , 1500000 , "天荒古阵" , sPlayerID )
		mailReward = mailReward + 1
	end
	return ""
end

function getDoubleItems( sPlayerID , param )
	local sMapID = lualib:MapGuid(sPlayerID)
	if lualib:Player_SubIngot( sPlayerID , 198 , false , "扣元宝:副本", sPlayerID ) then
		if lualib:KeyName(sMapID) == "副本沃玛寺庙" then
			lualib:Player_MapMoveXY( sPlayerID , "巫山城" , 190 , 258 , 3 )
			lualib:DisableTimer( sMapID , 2 )
			lualib:Map_DestroyDgn( sMapID )
		end
		if mailReward == 0 then	
			lualib:MailToPlayer( "天荒古阵", sPlayerID , "您选择单倍副本奖励，请注意查收" , 0 , 0 , { "魂珠碎片小" , 4 , 1 } )
			lualib:Player_AddExp( sPlayerID , 3000000 , "天荒古阵" , sPlayerID )
			mailReward = mailReward + 1
		elseif mailReward == 1 then
			lualib:MailToPlayer( "天荒古阵", sPlayerID , "因为您长时间未做出选择，系统已经发了您单倍奖励。由于您又选择了双倍奖励，这是双倍补偿奖励，请注意查收" , 0 , 0 , { "魂珠碎片小" , 2 , 1 } )
			lualib:Player_AddExp( sPlayerID , 1500000 , "天荒古阵" , sPlayerID )
		end
	else
		local msg = ""
		local msg = msg.."扣除元宝失败，您可以点右侧#COLORCOLOR_GOLD#『返回』#COLOREND#键重新选择→    #COLORCOLOR_RED##IMAGE1900100002#<@jllist *01*『返回』>\n"
		return msg
	end
	return ""
end