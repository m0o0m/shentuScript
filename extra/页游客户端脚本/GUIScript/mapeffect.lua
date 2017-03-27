function texiao(magicid,posx,posy,speed,life)
	local x = tonumber(as3.tolua(posx))
	local y = tonumber(as3.tolua(posy))
	UI:Lua_AddMagicToPoint(tonumber(as3.tolua(magicid)),x,y,tonumber(as3.tolua(speed)),tonumber(as3.tolua(life)))
end

function del_texiao(magicid,posx,posy)
	local x = tonumber(as3.tolua(posx))
	local y = tonumber(as3.tolua(posy))
	UI:Lua_DelMagicFromPoint(tonumber(as3.tolua(magicid)),x,y)
end