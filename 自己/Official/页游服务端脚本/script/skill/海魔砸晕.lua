local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")



function post_apply(actor,skillid)
	local map = lualib:MapGuid(actor)
	local x = lualib:X(actor)
	local y = lualib:Y(actor)
	local monsterguid = lualib:Map_GetRegionMonsters(map, "", x, y, 0, true, true)
	for e =1, #monsterguid do
		local mubiaoguid = lualib:Monster_GetAttackTarget(monsterguid[e])
		local skill_id = skillid
		local x1 = lualib:X(mubiaoguid)
		local y1 = lualib:Y(mubiaoguid)
		local x_table ={x1, x1-1, x1-2, x1-3, x1-4}
		local y_table ={y1, y1+1, y1+2, y1+3, y1+4}
		for a = 1, table.getn(x_table) do
			x2 = x_table[a]
			y2 = y_table[a]
			local mubiao_table = lualib:Map_GetRegionPlayers(map, x2, y2, 0, true)
			if skill_id == 33007 then
				for i = 1, #mubiao_table do
					local wufangshangxian = lualib:MagDef(mubiao_table[i], true)
					local wufangxiaxian = lualib:MagDef(mubiao_table[i], false)
					local wufang = lualib:GenRandom(wufangxiaxian, wufangshangxian)
					local job = lualib:Job(mubiao_table[i])
					if job == 1 or job == 3 then
						local CostHp = 80 - wufang
						local buff = lualib:AddBuff2(mubiao_table[i], actor, "½Å±¾¼õÑª", "º£Ä§ÔÒÔÎ", 0, -CostHp )
						local buff1 = lualib:AddBuff(mubiao_table[i], "½Å±¾Âé±Ô", 5)
					elseif job == 2 then
						local buffmtable = {"¼õÃâ¶Ü1¼¶", "¼õÃâ¶Ü2¼¶", "¼õÃâ¶Ü3¼¶", "¼õÃâ¶Ü4¼¶",}
						local buffxiaoguo = {0.85, 0.7, 0.55, 0.4,}
						local buffxiaoguo1 = 0
						for i1 = 1,#buffmtable do
							if lualib:HasBuff(mubiao_table[i], buffmtable[i1]) == true then
								buffxiaoguo1 = buffxiaoguo[i1]
							end
						end
						if buffxiaoguo1 > 0 then
							local CostHp = (80 - wufang)* buffxiaoguo1
							local buff = lualib:AddBuff2(mubiao_table[i], actor, "½Å±¾¼õÑª", "º£Ä§ÔÒÔÎ", 0, -CostHp )
							local buff1 = lualib:AddBuff(mubiao_table[i], "½Å±¾Âé±Ô", 5)
						else
							local CostHp = 80 - wufang
							local buff = lualib:AddBuff2(mubiao_table[i], actor, "½Å±¾¼õÑª", "º£Ä§ÔÒÔÎ", 0, -CostHp )
							local buff1 = lualib:AddBuff(mubiao_table[i], "½Å±¾Âé±Ô", 5)
						end
					end
				end
			end
		end
	end
end
