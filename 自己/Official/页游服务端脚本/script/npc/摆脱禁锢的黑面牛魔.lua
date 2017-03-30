local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")



function main(npc)	
	return ""
end	


local str =
	{
		"可恶的人类，赶快放了我，否则等我牛魔大将军率领牛魔大军来到，定将你撕成碎片！",
		"什么？你们人类想与我们牛魔一族和平相处？哈哈哈哈……",
		"简直太可笑了！你们这些渺小的人类，白白胖胖，毫无力量，根本是蛆虫一样的东西，居然想和我们强大的牛魔相提并论？",
		"要不是因为隔着绝路谷和绝路岭，看在绝道白猿和巨蛇的面子上，我们牛魔一族早就杀了过来，将你们人类灭族了！你们居然还想和我们强大的牛魔一族谈条件，简直是做梦！",
		"渺小的人类，你们只不过是我们的食物而已，难道你们喜欢和自己的食物谈条件吗？",
		"哈哈哈哈……你的禁锢魔法时效终于过了，受死吧！",		
	}

local timerID     = {1,2,3,4,5,6,7}
local elapse      = 3000
local NpcName = ""	
	
function on_create(npc)
	for i=2,#timerID do
		lualib:AddTimer(npc, i, elapse*i, 1, "say")
	end
	lualib:SysMsg_SendRoleTalk(npc,str[1])
return ""
end

function say(npc, timer_id)
	if timer_id ~= 7 then
		lualib:SysMsg_SendRoleTalk(npc,str[timer_id])
	else 
		lualib:Npc_Remove(npc)
	end
return ""
end
