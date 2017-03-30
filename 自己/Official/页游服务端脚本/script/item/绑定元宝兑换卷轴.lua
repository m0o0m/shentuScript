--绑定元宝兑换卷轴
--绑定元宝兑换
--HZH
--2016-2-26
--500绑定元宝


function main( sPlayerID , sItemID )
	
	lualib:Player_AddIngot( sPlayerID , 500 , true , "加元宝：使用元宝道具", sPlayerID )
	return true
	
	--[[
	local item_K = lualib:KeyName( sItemID )
	if lualib:DelItem( sPlayerID , item_K , 1 , 2 , item_K , sPlayerID ) then
		lualib:Player_AddIngot( sPlayerID , 500 , true , "加元宝：使用元宝道具", sPlayerID )
		--lualib:SysMsg_SendBroadcastMsg( "获得绑定元宝500" , "提示" )
		return true
	else
		lualib:SysMsg_SendBroadcastMsg( "使用道具失败" , "" )
	end
	return false--]]
end
