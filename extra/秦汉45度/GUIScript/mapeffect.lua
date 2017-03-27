

function texiao(magicid,posx,posy,speed,life)
	local x = tonumber(posx)*64 + 32
	local y = tonumber(posy)*32 + 16
	UI:Lua_AddMagicToPoint(tonumber(magicid),x,y,tonumber(speed),tonumber(life))
end

function del_texiao(magicid,posx,posy)
	local x = tonumber(posx)*64 + 32
	local y = tonumber(posy)*32 + 16
	UI:Lua_DelMagicFromPoint(tonumber(magicid),x,y)
end
