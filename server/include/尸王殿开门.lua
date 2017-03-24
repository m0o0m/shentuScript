--
--在源地图指定坐标地图处生成一个跳转点（跳转到目标地图指定坐标）
--
function GenDoor(strSourMap, strDestMap, sX, sY, dX, dY, strLiveKey, strDieKey, dwDura, strBuffKey)
	local strDieMonster = lualib:Map_GenSingleMonster(strSourMap, sX, sY, 0, 3, strDieKey, false);
	assert(strDieMonster ~= "", "系统错误:刷怪失败!");
	assert(lualib:Kill(strDieMonster), "系统错误:杀死怪物失败!");
	
	local strLiveMonster = lualib:Map_GenSingleMonster(strSourMap, sX, sY, 0, 3, strLiveKey, false);
	assert(strLiveMonster ~= "", "系统错误:刷怪失败!");
	
	assert(lualib:Map_AddJumpPoint(strSourMap, strDestMap, sX, sY, dX, dY), "系统错误:生成跳转点失败!");
	lualib:SetStr(strSourMap, "DelayDoor", json.encode({x = sX, y = sY, m = strDieMonster}));
	lualib:DelayCall(strSourMap, dwDura * 1000, "on_delay_del_door", "");
	
	lualib:DelayCall(strLiveMonster, 30000, "on_delay_del_buff", strBuffKey);
end

function on_delay_del_buff(strMonster, strBuffKey)
	if lualib:Monster_IsExist(strMonster) and not lualib:Monster_IsDie(strMonster) then
		lualib:DelBuff(strMonster, strBuffKey);
	end
end

function on_delay_del_door(strSourMap, ...)
	local pos = json.decode(lualib:GetStr(strSourMap, "DelayDoor"));
	assert(lualib:Monster_IsExist(pos.m), "系统错误:怪物已经不存在了!");
	assert(lualib:Monster_Remove(pos.m), "系统错误:怪物删除失败!");
	
	assert(lualib:Map_DelJumpPoint(strSourMap, pos.x, pos.y), "系统错误:删除跳转点失败!");
end