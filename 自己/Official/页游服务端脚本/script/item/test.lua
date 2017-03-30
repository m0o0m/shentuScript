




function main( sPlayerID , sItemID )
    local map_code = lualib:MapGuid( sPlayerID )
	lualib:SysMsg_SendBroadcastMsg( "map_code="..map_code , "1" )
    local dest_map = lualib:Map_GetMapGuid( "巫山城" )
	lualib:SysMsg_SendBroadcastMsg( "dest_map="..dest_map , "2" )
	local fX = lualib:X( sPlayerID )
	lualib:SysMsg_SendBroadcastMsg( "fX="..fX , "3" )
	local fY = lualib:Y( sPlayerID )
	lualib:SysMsg_SendBroadcastMsg( "fY="..fY , "4" )
    if lualib:Map_AddJumpPoint( map_code , dest_map , 249 , 323 , 196, 259) then
		lualib:SysMsg_SendBroadcastMsg( "设置成功" , "5" )
        return true
    else
		lualib:SysMsg_SendBroadcastMsg( "设置失败" , "6" )
        return false
    end
end