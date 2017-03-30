local re_x = 35
local re_y = 57
local tombKey = "×ªÉúÉñµî°×ÉßÑýÄ¹±®"

function on_create( sMonsterID )
	lualib:AddTrigger( sMonsterID , lua_trigger_post_die , "on_post_monster_die" )
	--lualib:SysMsg_SendBroadcastMsg( "sMonsterID" , "Ï·Í°sMonsterID == " )
end

function on_post_monster_die( sMonsterID , sKillerID )
	local sMapID = lualib:MapGuid( sMonsterID )
	lualib:Map_GenMonster( sMapID , re_x , re_y , 0 , 4 , tombKey , 1 , false )
end