--ÌìÉ½Ñ©Á«BUFF.lua


function main( sPlayerID )
end

function on_add_buff( sPlayerID , uBuffID , sHostID )
	lualib:AddTimer( sPlayerID , 1 , 1000 , -1 , "onknowthhp" )
end

function on_remove_buff( sPlayerID , uBuffID )
	lualib:DisableTimer( sPlayerID , 1 )
end

function onknowthhp( sPlayerID , iIndex )

	local cur_hp = lualib:Hp( sPlayerID , false)
	local max_hp = lualib:Hp( sPlayerID , true)
	local cur_mp = lualib:Mp( sPlayerID , false)
	local max_mp = lualib:Mp( sPlayerID , true)

	local cur_mp = cur_mp + 300
	lualib:SetMp( sPlayerID , cur_mp , false)
	local cur_hp = cur_hp + 100
	lualib:SetHp( sPlayerID , cur_hp , false)
	

end
