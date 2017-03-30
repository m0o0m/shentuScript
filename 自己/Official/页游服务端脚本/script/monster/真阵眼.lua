local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("map/千幻阵数据")
require("map/千幻阵")

local jdt_time = 10000  --开启进度条时间
function main(monster, player)
	local map = lualib:MapGuid(monster)
	local x = lualib:X(monster)
	local y = lualib:Y(monster)
	local keyname = lualib:KeyName(monster)
	
	local has_opened = lualib:GetInt(monster, "is_opened")
	
	if keyname == realzy_nametable[1] and has_opened == 1 then
		local ys_z_s = lualib:GetInt(map, "ys_z_s")         --开启的真阵眼数量
		local ys_zzy = lualib:GetInt(map, "ys_zzy")         --羽扇阵真阵眼数量
		local jiamonster_num_lg = lualib:Map_GetRegionMonsters(map, ys_zjmonster[2], tonumber(x), tonumber(y), 2, true, true)  --获取2格范围内假阵眼的数量
		if jiamonster_num_lg == nil then 	
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内没有假阵眼，请放心!")
			else
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内有"..table.getn(jiamonster_num_lg).."个假阵眼，小心！")
		end
		lualib:NPCTalk(player, "已开启真阵眼：" .. tostring(ys_z_s).."还剩"..ys_zzy - ys_z_s.."个真阵眼，加油！\n".."#IMAGE<ID:1902700016>#<@biaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 做标记>\n".."#IMAGE<ID:1902700018>#<@quxiaobiaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 取消标记>\n")
	
	elseif keyname == realzy_nametable[2] and has_opened == 1 then
		local r_z_s = lualib:GetInt(map, "r_z_s")         --开启的真阵眼数量
		local r_zzy = lualib:GetInt(map, "r_zzy")         --人阵真阵眼数量
		local jiamonster_num_lg = lualib:Map_GetRegionMonsters(map, r_zjmonster[2], tonumber(x), tonumber(y), 2, true, true)  --获取2格范围内假阵眼的数量
		if jiamonster_num_lg == nil then 	
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内没有假阵眼，请放心!")
			else
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内有"..table.getn(jiamonster_num_lg).."个假阵眼，小心！")
		end
		lualib:NPCTalk(player, "已开启真阵眼：" .. tostring(r_z_s).."还剩"..r_zzy - r_z_s.."个真阵眼，加油！\n".."#IMAGE<ID:1902700016>#<@biaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 做标记>\n".."#IMAGE<ID:1902700018>#<@quxiaobiaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 取消标记>\n")
	
	elseif keyname == realzy_nametable[3] and has_opened == 1 then
		local tw_z_s = lualib:GetInt(map, "tw_z_s")         --开启的真阵眼数量
		local tw_zzy = lualib:GetInt(map, "tw_zzy")         --天问阵真阵眼数量
		local jiamonster_num_lg = lualib:Map_GetRegionMonsters(map, tw_zjmonster[2], tonumber(x), tonumber(y), 2, true, true)  --获取2格范围内假阵眼的数量
		if jiamonster_num_lg == nil then 	
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内没有假阵眼，请放心!")
			else
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内有"..table.getn(jiamonster_num_lg).."个假阵眼，小心！")
		end
		lualib:NPCTalk(player, "已开启真阵眼：" .. tostring(tw_z_s).."还剩"..tw_zzy - tw_z_s.."个真阵眼，加油！\n".."#IMAGE<ID:1902700016>#<@biaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 做标记>\n".."#IMAGE<ID:1902700018>#<@quxiaobiaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 取消标记>\n")
	
	elseif keyname == realzy_nametable[4] and has_opened == 1 then
		local yw_z_s = lualib:GetInt(map, "yw_z_s")         --开启的真阵眼数量
		local yw_zzy = lualib:GetInt(map, "yw_zzy")         --圆舞阵真阵眼数量
		local jiamonster_num_lg = lualib:Map_GetRegionMonsters(map, yw_zjmonster[2], tonumber(x), tonumber(y), 2, true, true)  --获取2格范围内假阵眼的数量
		if jiamonster_num_lg == nil then 	
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内没有假阵眼，请放心!")
			else
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内有"..table.getn(jiamonster_num_lg).."个假阵眼，小心！")
		end
		lualib:NPCTalk(player, "已开启真阵眼：" .. tostring(yw_z_s).."还剩"..yw_zzy - yw_z_s.."个真阵眼，加油！\n".."#IMAGE<ID:1902700016>#<@biaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 做标记>\n".."#IMAGE<ID:1902700018>#<@quxiaobiaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 取消标记>\n")
	
	elseif keyname == realzy_nametable[5] and has_opened == 1 then
		local jz_z_s = lualib:GetInt(map, "jz_z_s")         --开启的真阵眼数量
		local jz_zzy = lualib:GetInt(map, "jz_zzy")         --剑阵真阵眼数量
		local jiamonster_num_lg = lualib:Map_GetRegionMonsters(map, jz_zjmonster[2], tonumber(x), tonumber(y), 2, true, true)  --获取2格范围内假阵眼的数量
		if jiamonster_num_lg == nil then 	
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内没有假阵眼，请放心!")
			else
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内有"..table.getn(jiamonster_num_lg).."个假阵眼，小心！")
		end
		lualib:NPCTalk(player, "已开启真阵眼：" .. tostring(jz_z_s).."还剩"..jz_zzy - jz_z_s.."个真阵眼，加油！\n".."#IMAGE<ID:1902700016>#<@biaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 做标记>\n".."#IMAGE<ID:1902700018>#<@quxiaobiaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 取消标记>\n")
	
	elseif keyname == realzy_nametable[6] and has_opened == 1 then
		local ds_z_s = lualib:GetInt(map, "ds_z_s")         --开启的真阵眼数量
		local ds_zzy = lualib:GetInt(map, "ds_zzy")         --大蛇阵真阵眼数量
		local jiamonster_num_lg = lualib:Map_GetRegionMonsters(map, ds_zjmonster[2], tonumber(x), tonumber(y), 2, true, true)  --获取2格范围内假阵眼的数量
		if jiamonster_num_lg == nil then 	
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内没有假阵眼，请放心!")
			else
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内有"..table.getn(jiamonster_num_lg).."个假阵眼，小心！")
		end
		lualib:NPCTalk(player, "已开启真阵眼：" .. tostring(ds_z_s).."还剩"..ds_zzy - ds_z_s.."个真阵眼，加油！\n".."#IMAGE<ID:1902700016>#<@biaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 做标记>\n".."#IMAGE<ID:1902700018>#<@quxiaobiaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 取消标记>\n")
	
	elseif keyname == realzy_nametable[7] and has_opened == 1 then
		local lm_z_s = lualib:GetInt(map, "lm_z_s")         --开启的真阵眼数量
		local lm_zzy = lualib:GetInt(map, "lm_zzy")         --六芒星阵真阵眼数量
		local jiamonster_num_lg = lualib:Map_GetRegionMonsters(map, lm_zjmonster[2], tonumber(x), tonumber(y), 2, true, true)  --获取2格范围内假阵眼的数量
		if jiamonster_num_lg == nil then 	
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内没有假阵眼，请放心!")
			else
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内有"..table.getn(jiamonster_num_lg).."个假阵眼，小心！")
		end
		lualib:NPCTalk(player, "已开启真阵眼：" .. tostring(lm_z_s).."还剩"..lm_zzy - lm_z_s.."个真阵眼，加油！\n".."#IMAGE<ID:1902700016>#<@biaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 做标记>\n".."#IMAGE<ID:1902700018>#<@quxiaobiaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 取消标记>\n")
		
	elseif keyname == realzy_nametable[8] and has_opened == 1 then
		local hl_z_s = lualib:GetInt(map, "hl_z_s")         --开启的真阵眼数量
		local hl_zzy = lualib:GetInt(map, "hl_zzy")         --回龙阵真阵眼数量
		local jiamonster_num_lg = lualib:Map_GetRegionMonsters(map, hl_zjmonster[2], tonumber(x), tonumber(y), 2, true, true)  --获取2格范围内假阵眼的数量
		if jiamonster_num_lg == nil then 	
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内没有假阵眼，请放心!")
			else
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内有"..table.getn(jiamonster_num_lg).."个假阵眼，小心！")
		end
		lualib:NPCTalk(player, "已开启真阵眼：" .. tostring(hl_z_s).."还剩"..hl_zzy - hl_z_s.."个真阵眼，加油！\n".."#IMAGE<ID:1902700016>#<@biaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 做标记>\n".."#IMAGE<ID:1902700018>#<@quxiaobiaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 取消标记>\n")	
	
	elseif keyname == realzy_nametable[9] and has_opened == 1 then
		local bg_z_s = lualib:GetInt(map, "bg_z_s")         --开启的真阵眼数量
		local bg_zzy = lualib:GetInt(map, "bg_zzy")         --八卦阵真阵眼数量
		local jiamonster_num_lg = lualib:Map_GetRegionMonsters(map, bg_zjmonster[2], tonumber(x), tonumber(y), 2, true, true)  --获取2格范围内假阵眼的数量
		if jiamonster_num_lg == nil then 	
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内没有假阵眼，请放心!")
			else
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内有"..table.getn(jiamonster_num_lg).."个假阵眼，小心！")
		end
		lualib:NPCTalk(player, "已开启真阵眼：" .. tostring(bg_z_s).."还剩"..bg_zzy - bg_z_s.."个真阵眼，加油！\n".."#IMAGE<ID:1902700016>#<@biaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 做标记>\n".."#IMAGE<ID:1902700018>#<@quxiaobiaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 取消标记>\n")
	
	elseif keyname == realzy_nametable[10] and has_opened == 1 then
		local x_z_s = lualib:GetInt(map, "x_z_s")         --开启的真阵眼数量
		local x_zzy = lualib:GetInt(map, "x_zzy")         --心阵真阵眼数量
		local jiamonster_num_lg = lualib:Map_GetRegionMonsters(map, x_zjmonster[2], tonumber(x), tonumber(y), 2, true, true)  --获取2格范围内假阵眼的数量
		if jiamonster_num_lg == nil then 	
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内没有假阵眼，请放心!")
			else
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内有"..table.getn(jiamonster_num_lg).."个假阵眼，小心！")
		end
		lualib:NPCTalk(player, "已开启真阵眼：" .. tostring(x_z_s).."还剩"..x_zzy - x_z_s.."个真阵眼，加油！\n".."#IMAGE<ID:1902700016>#<@biaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 做标记>\n".."#IMAGE<ID:1902700018>#<@quxiaobiaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 取消标记>\n")
	
	else
		lualib:NPCTalk(player, "#IMAGE<ID:1902700030>#<@jiezhen#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 开启阵眼>\n".."#IMAGE<ID:1902700016>#<@biaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 做标记>\n".."#IMAGE<ID:1902700018>#<@quxiaobiaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 取消标记>\n")
	end
	return ""
end

function jiezhen(player, map, x, y, monster, keyname)
	    if lualib:ProgressBarStart(player, jdt_time, "开启阵眼", "kaiqi", "shibai", map.."#"..x.."#"..y.."#"..monster.."#"..keyname) == false then
	    lualib:SysPromptMsg(player, "无法开启进度条！")
        return ""
		end
		return ""
end

function kaiqi(player, params)
	params = lualib:StrSplit(params, "#")
	map = params[1]
	x = params[2]
	y = params[3]
	monster = params[4]
	keyname = params[5]
	y1 = y - 1
	
	if keyname == realzy_nametable[1] then
		local ys_z_s = lualib:GetInt(map, "ys_z_s")         --开启的真阵眼数量
		local ys_zzy = lualib:GetInt(map, "ys_zzy")         --羽扇阵真阵眼数量
		local has_opened = lualib:GetInt(monster, "is_opened")
		if has_opened == 0 then
			if	ys_z_s < ys_zzy then
				ys_z_s = ys_z_s + 1
			end

			lualib:SetInt(map, "ys_z_s", ys_z_s)
			
		lualib:SetInt(monster, "is_opened", 1)
		end
		
		lualib:RunClientScript(map, "mapeffect", "texiao", "100002060#"..x.."#"..y1.."#0#0")
		lualib:SysPromptMsg(player, "已开启真阵眼：" .. tostring(ys_z_s).."还剩"..ys_zzy - ys_z_s.."个真阵眼，加油！");
		
		local jiamonster_num_lg = lualib:Map_GetRegionMonsters(map, ys_zjmonster[2], tonumber(x), tonumber(y), 2, true, true)  --获取2格范围内假阵眼的数量
		if jiamonster_num_lg == nil then 	
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内没有假阵眼，请放心!")
			else
			lualib:SysMsg_SendRoleTalk(monster, "我身边两步内有"..table.getn(jiamonster_num_lg).."个假阵眼，小心！你若判断出哪个是假的，最好在它身上做个标记!")
		end
		if ys_z_s == ys_zzy then
			local player_number = lualib:Map_GetRegionPlayers(map, 63, 67, 100, true)
			
			for i = 1, #player_number do
			local rd = lualib:GenRandom(1,4)
				if rd == 1 then
					lualib:Map_JumpXY(map, player_number[i], zuobiao_table[1][1], zuobiao_table[1][2], zuobiao_table[1][3])      --传送玩家到随机四个点坐标
				elseif rd == 2 then
					lualib:Map_JumpXY(map, player_number[i], zuobiao_table[2][1], zuobiao_table[2][2], zuobiao_table[2][3])      --传送玩家到随机四个点坐标
				elseif rd == 3 then
					lualib:Map_JumpXY(map, player_number[i], zuobiao_table[3][1], zuobiao_table[3][2], zuobiao_table[3][3])      --传送玩家到随机四个点坐标
				elseif rd == 4 then
				lualib:Map_JumpXY(map, player_number[i], zuobiao_table[4][1], zuobiao_table[4][2], zuobiao_table[4][3])      --传送玩家到随机四个点坐标
				end
			end
			if lualib:Map_ClearMonster(map, tonumber(x), tonumber(y), 100, "", true, true) == true then            --清除副本内所有怪
				lualib:SysMsg_SendMapMsg(map, "羽扇阵——破阵！奖励诞生！拾取完奖励后，点击NPC阵心，开启下一阵！")
				lualib:Map_GenNpc(map, ys_pozhen_npc[1], ys_pozhen_npc[2], ys_pozhen_npc[3], ys_pozhen_npc[4], ys_pozhen_npc[5])  --刷出下一阵NPC
				lualib:RunClientScript(map, "mapeffect", "texiao", "100002062#63#66#0#15000")
				
				for i = 1, table.getn(ys_zhenx) do
					if "" == lualib:Map_GenItem(map, ys_zhenx[i][1], ys_zhenx[i][2], ys_pozhen_jl[lualib:GenRandom(1, 4)], 1, false, 0) then  --刷出破阵奖励
						lualib:Error("创建物品失败！")
					end
				end
				
			end
		end
	elseif keyname == realzy_nametable[2] then
			local r_z_s = lualib:GetInt(map, "r_z_s")         --开启的真阵眼数量
			local r_zzy = lualib:GetInt(map, "r_zzy")         --人阵真阵眼数量

			if lualib:GetInt(monster, "is_opened") == 0 then
				if	r_z_s < r_zzy then
					r_z_s = r_z_s + 1
				end

				lualib:SetInt(map, "r_z_s", r_z_s)
				
				lualib:SetInt(monster, "is_opened", 1)
			end
			
			lualib:RunClientScript(map, "mapeffect", "texiao", "100002060#"..x.."#"..y1.."#0#0")
			lualib:SysPromptMsg(player, "已开启真阵眼：" .. tostring(r_z_s).."还剩"..r_zzy - r_z_s.."个真阵眼，加油！");
			
			local jiamonster_num_lg = lualib:Map_GetRegionMonsters(map, r_zjmonster[2], tonumber(x), tonumber(y), 2, true, true)  --获取2格范围内假阵眼的数量
				if jiamonster_num_lg == nil then 	
					lualib:SysMsg_SendRoleTalk(monster, "我身边两步内没有假阵眼，请放心!")
				else
					lualib:SysMsg_SendRoleTalk(monster, "我身边两步内有"..table.getn(jiamonster_num_lg).."个假阵眼，小心！你若判断出哪个是假的，最好在它身上做个标记!")
				end
			if r_z_s == r_zzy then
				local player_number = lualib:Map_GetRegionPlayers(map, 63, 67, 100, true)
				
				for i = 1, #player_number do
				local rd = lualib:GenRandom(1,4)
					if rd == 1 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[1][1], zuobiao_table[1][2], zuobiao_table[1][3])      --传送玩家到随机四个点坐标
					elseif rd == 2 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[2][1], zuobiao_table[2][2], zuobiao_table[2][3])      --传送玩家到随机四个点坐标
					elseif rd == 3 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[3][1], zuobiao_table[3][2], zuobiao_table[3][3])      --传送玩家到随机四个点坐标
					elseif rd == 4 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[4][1], zuobiao_table[4][2], zuobiao_table[4][3])      --传送玩家到随机四个点坐标
					end
				end
				if lualib:Map_ClearMonster(map, tonumber(x), tonumber(y), 100, "", true, true) == true then            --清除副本内所有怪
					lualib:SysMsg_SendMapMsg(map, "人阵——破阵！奖励诞生！拾取完奖励后，点击NPC阵心，开启下一阵！")
					lualib:Map_GenNpc(map, r_pozhen_npc[1], r_pozhen_npc[2], r_pozhen_npc[3], r_pozhen_npc[4], r_pozhen_npc[5])  --刷出下一阵NPC
				
					for i = 1, table.getn(ren_zhenx) do
						if "" == lualib:Map_GenItem(map, ren_zhenx[i][1], ren_zhenx[i][2], r_pozhen_jl[lualib:GenRandom(1, 4)], 1, false, 0) then
							lualib:Error("创建物品失败！")
						end
					end
					
				end
			end	
	
	elseif keyname == realzy_nametable[3] then
			local tw_z_s = lualib:GetInt(map, "tw_z_s")         --开启的真阵眼数量
			local tw_zzy = lualib:GetInt(map, "tw_zzy")         --天问阵真阵眼数量

			if lualib:GetInt(monster, "is_opened") == 0 then
				if	tw_z_s < tw_zzy then
					tw_z_s = tw_z_s + 1
				end

				lualib:SetInt(map, "tw_z_s", tw_z_s)
				
				lualib:SetInt(monster, "is_opened", 1)
			end
			
			lualib:RunClientScript(map, "mapeffect", "texiao", "100002060#"..x.."#"..y1.."#0#0")
			lualib:SysPromptMsg(player, "已开启真阵眼：" .. tostring(tw_z_s).."还剩"..tw_zzy - tw_z_s.."个真阵眼，加油！");
			
			local jiamonster_num_lg = lualib:Map_GetRegionMonsters(map, tw_zjmonster[2], tonumber(x), tonumber(y), 2, true, true)  --获取2格范围内假阵眼的数量
			if jiamonster_num_lg == nil then 	
				lualib:SysMsg_SendRoleTalk(monster, "我身边两步内没有假阵眼，请放心!")
				else
				lualib:SysMsg_SendRoleTalk(monster, "我身边两步内有"..table.getn(jiamonster_num_lg).."个假阵眼，小心！你若判断出哪个是假的，最好在它身上做个标记!")
			end
			if tw_z_s == tw_zzy then
				local player_number = lualib:Map_GetRegionPlayers(map, 63, 67, 100, true)
				
				for i = 1, #player_number do
				local rd = lualib:GenRandom(1,4)
					if rd == 1 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[1][1], zuobiao_table[1][2], zuobiao_table[1][3])      --传送玩家到随机四个点坐标
					elseif rd == 2 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[2][1], zuobiao_table[2][2], zuobiao_table[2][3])      --传送玩家到随机四个点坐标
					elseif rd == 3 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[3][1], zuobiao_table[3][2], zuobiao_table[3][3])      --传送玩家到随机四个点坐标
					elseif rd == 4 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[4][1], zuobiao_table[4][2], zuobiao_table[4][3])      --传送玩家到随机四个点坐标
					end
				end
				if lualib:Map_ClearMonster(map, tonumber(x), tonumber(y), 100, "", true, true) == true then            --清除副本内所有怪
					lualib:SysMsg_SendMapMsg(map, "天问阵——破阵！奖励诞生！拾取完奖励后，点击NPC阵心，开启下一阵！")
					lualib:Map_GenNpc(map, tw_pozhen_npc[1], tw_pozhen_npc[2], tw_pozhen_npc[3], tw_pozhen_npc[4], tw_pozhen_npc[5])  --刷出下一阵NPC
				
					for i = 1, table.getn(tw_zhenx) do
						if "" == lualib:Map_GenItem(map, tw_zhenx[i][1], tw_zhenx[i][2], tw_pozhen_jl[lualib:GenRandom(1, 4)], 1, false, 0) then  --刷出破阵奖励
							lualib:Error("创建物品失败！")
						end
					end
					
				end
			end	
	elseif keyname == realzy_nametable[4] then
			local yw_z_s = lualib:GetInt(map, "yw_z_s")         --开启的真阵眼数量
			local yw_zzy = lualib:GetInt(map, "yw_zzy")         --圆舞阵真阵眼数量

			if lualib:GetInt(monster, "is_opened") == 0 then
				if	yw_z_s < yw_zzy then
					yw_z_s = yw_z_s + 1
				end

				lualib:SetInt(map, "yw_z_s", yw_z_s)
				
				lualib:SetInt(monster, "is_opened", 1)
			end
			
			lualib:RunClientScript(map, "mapeffect", "texiao", "100002060#"..x.."#"..y1.."#0#0")
			lualib:SysPromptMsg(player, "已开启真阵眼：" .. tostring(yw_z_s).."还剩"..yw_zzy - yw_z_s.."个真阵眼，加油！");
			
			local jiamonster_num_lg = lualib:Map_GetRegionMonsters(map, yw_zjmonster[2], tonumber(x), tonumber(y), 2, true, true)  --获取2格范围内假阵眼的数量
			if jiamonster_num_lg == nil then 	
				lualib:SysMsg_SendRoleTalk(monster, "我身边两步内没有假阵眼，请放心!")
				else
				lualib:SysMsg_SendRoleTalk(monster, "我身边两步内有"..table.getn(jiamonster_num_lg).."个假阵眼，小心！你若判断出哪个是假的，最好在它身上做个标记!")
			end
			if yw_z_s == yw_zzy then
				local player_number = lualib:Map_GetRegionPlayers(map, 63, 67, 100, true)
				
				for i = 1, #player_number do
				local rd = lualib:GenRandom(1,4)
					if rd == 1 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[1][1], zuobiao_table[1][2], zuobiao_table[1][3])      --传送玩家到随机四个点坐标
					elseif rd == 2 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[2][1], zuobiao_table[2][2], zuobiao_table[2][3])      --传送玩家到随机四个点坐标
					elseif rd == 3 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[3][1], zuobiao_table[3][2], zuobiao_table[3][3])      --传送玩家到随机四个点坐标
					elseif rd == 4 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[4][1], zuobiao_table[4][2], zuobiao_table[4][3])      --传送玩家到随机四个点坐标
					end
				end
				if lualib:Map_ClearMonster(map, tonumber(x), tonumber(y), 100, "", true, true) == true then            --清除副本内所有怪
					lualib:SysMsg_SendMapMsg(map, "圆舞阵——破阵！奖励诞生！拾取完奖励后，点击NPC阵心，开启下一阵！")
					lualib:Map_GenNpc(map, yw_pozhen_npc[1], yw_pozhen_npc[2], yw_pozhen_npc[3], yw_pozhen_npc[4], yw_pozhen_npc[5])  --刷出下一阵NPC
				
					for i = 1, table.getn(yw_zhenx) do
						if "" == lualib:Map_GenItem(map, yw_zhenx[i][1], yw_zhenx[i][2], yw_pozhen_jl[lualib:GenRandom(1, 4)], 1, false, 0) then  --刷出破阵奖励
							lualib:Error("创建物品失败！")
						end
					end
					
				end
			end	
	elseif keyname == realzy_nametable[5] then
			local jz_z_s = lualib:GetInt(map, "jz_z_s")         --开启的真阵眼数量
			local jz_zzy = lualib:GetInt(map, "jz_zzy")         --剑阵真阵眼数量

			if lualib:GetInt(monster, "is_opened") == 0 then
				if	jz_z_s < jz_zzy then
					jz_z_s = jz_z_s + 1
				end

				lualib:SetInt(map, "jz_z_s", jz_z_s)
				
				lualib:SetInt(monster, "is_opened", 1)
			end
			
			lualib:RunClientScript(map, "mapeffect", "texiao", "100002060#"..x.."#"..y1.."#0#0")
			lualib:SysPromptMsg(player, "已开启真阵眼：" .. tostring(jz_z_s).."还剩"..jz_zzy - jz_z_s.."个真阵眼，加油！");
			
			local jiamonster_num_lg = lualib:Map_GetRegionMonsters(map, jz_zjmonster[2], tonumber(x), tonumber(y), 2, true, true)  --获取2格范围内假阵眼的数量
			if jiamonster_num_lg == nil then 	
				lualib:SysMsg_SendRoleTalk(monster, "我身边两步内没有假阵眼，请放心!")
				else
				lualib:SysMsg_SendRoleTalk(monster, "我身边两步内有"..table.getn(jiamonster_num_lg).."个假阵眼，小心！你若判断出哪个是假的，最好在它身上做个标记!")
			end
			if jz_z_s == jz_zzy then
				local player_number = lualib:Map_GetRegionPlayers(map, 63, 67, 100, true)
				
				for i = 1, #player_number do
				local rd = lualib:GenRandom(1,4)
					if rd == 1 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[1][1], zuobiao_table[1][2], zuobiao_table[1][3])      --传送玩家到随机四个点坐标
					elseif rd == 2 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[2][1], zuobiao_table[2][2], zuobiao_table[2][3])      --传送玩家到随机四个点坐标
					elseif rd == 3 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[3][1], zuobiao_table[3][2], zuobiao_table[3][3])      --传送玩家到随机四个点坐标
					elseif rd == 4 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[4][1], zuobiao_table[4][2], zuobiao_table[4][3])      --传送玩家到随机四个点坐标
					end
				end
				if lualib:Map_ClearMonster(map, tonumber(x), tonumber(y), 100, "", true, true) == true then            --清除副本内所有怪
					lualib:SysMsg_SendMapMsg(map, "剑阵——破阵！奖励诞生！拾取完奖励后，点击NPC阵心，开启下一阵！")
					lualib:Map_GenNpc(map, jz_pozhen_npc[1], jz_pozhen_npc[2], jz_pozhen_npc[3], jz_pozhen_npc[4], jz_pozhen_npc[5])  --刷出下一阵NPC
				
					for i = 1, table.getn(jz_zhenx) do
						if "" == lualib:Map_GenItem(map, jz_zhenx[i][1], jz_zhenx[i][2], jz_pozhen_jl[lualib:GenRandom(1, 4)], 1, false, 0) then  --刷出破阵奖励
							lualib:Error("创建物品失败！")
						end
					end
					
				end
			end	
	elseif keyname == realzy_nametable[6] then
			local ds_z_s = lualib:GetInt(map, "ds_z_s")         --开启的真阵眼数量
			local ds_zzy = lualib:GetInt(map, "ds_zzy")         --大蛇阵真阵眼数量

			if lualib:GetInt(monster, "is_opened") == 0 then
				if	ds_z_s < ds_zzy then
					ds_z_s = ds_z_s + 1
				end

				lualib:SetInt(map, "ds_z_s", ds_z_s)
				
				lualib:SetInt(monster, "is_opened", 1)
			end
			
			lualib:RunClientScript(map, "mapeffect", "texiao", "100002060#"..x.."#"..y1.."#0#0")
			lualib:SysPromptMsg(player, "已开启真阵眼：" .. tostring(ds_z_s).."还剩"..ds_zzy - ds_z_s.."个真阵眼，加油！");
			
			local jiamonster_num_lg = lualib:Map_GetRegionMonsters(map, ds_zjmonster[2], tonumber(x), tonumber(y), 2, true, true)  --获取2格范围内假阵眼的数量
			if jiamonster_num_lg == nil then 	
				lualib:SysMsg_SendRoleTalk(monster, "我身边两步内没有假阵眼，请放心!")
				else
				lualib:SysMsg_SendRoleTalk(monster, "我身边两步内有"..table.getn(jiamonster_num_lg).."个假阵眼，小心！你若判断出哪个是假的，最好在它身上做个标记!")
			end
			if ds_z_s == ds_zzy then
				local player_number = lualib:Map_GetRegionPlayers(map, 63, 67, 100, true)
				
				for i = 1, #player_number do
				local rd = lualib:GenRandom(1,4)
					if rd == 1 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[1][1], zuobiao_table[1][2], zuobiao_table[1][3])      --传送玩家到随机四个点坐标
					elseif rd == 2 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[2][1], zuobiao_table[2][2], zuobiao_table[2][3])      --传送玩家到随机四个点坐标
					elseif rd == 3 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[3][1], zuobiao_table[3][2], zuobiao_table[3][3])      --传送玩家到随机四个点坐标
					elseif rd == 4 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[4][1], zuobiao_table[4][2], zuobiao_table[4][3])      --传送玩家到随机四个点坐标
					end
				end
				if lualib:Map_ClearMonster(map, tonumber(x), tonumber(y), 100, "", true, true) == true then            --清除副本内所有怪
					lualib:SysMsg_SendMapMsg(map, "大蛇阵——破阵！奖励诞生！拾取完奖励后，点击NPC阵心，开启下一阵！")
					lualib:Map_GenNpc(map, ds_pozhen_npc[1], ds_pozhen_npc[2], ds_pozhen_npc[3], ds_pozhen_npc[4], ds_pozhen_npc[5])  --刷出下一阵NPC
				
					for i = 1, table.getn(ds_zhenx) do
						if "" == lualib:Map_GenItem(map, ds_zhenx[i][1], ds_zhenx[i][2], ds_pozhen_jl[lualib:GenRandom(1, 4)], 1, false, 0) then  --刷出破阵奖励
							lualib:Error("创建物品失败！")
						end
					end
					
				end
			end	
	elseif keyname == realzy_nametable[7] then
			local lm_z_s = lualib:GetInt(map, "lm_z_s")         --开启的真阵眼数量
			local lm_zzy = lualib:GetInt(map, "lm_zzy")         --六芒星阵真阵眼数量

			if lualib:GetInt(monster, "is_opened") == 0 then
				if	lm_z_s < lm_zzy then
					lm_z_s = lm_z_s + 1
				end

				lualib:SetInt(map, "lm_z_s", lm_z_s)
				
				lualib:SetInt(monster, "is_opened", 1)
			end
			
			lualib:RunClientScript(map, "mapeffect", "texiao", "100002060#"..x.."#"..y1.."#0#0")
			lualib:SysPromptMsg(player, "已开启真阵眼：" .. tostring(lm_z_s).."还剩"..lm_zzy - lm_z_s.."个真阵眼，加油！");
			
			local jiamonster_num_lg = lualib:Map_GetRegionMonsters(map, lm_zjmonster[2], tonumber(x), tonumber(y), 2, true, true)  --获取2格范围内假阵眼的数量
			if jiamonster_num_lg == nil then 	
				lualib:SysMsg_SendRoleTalk(monster, "我身边两步内没有假阵眼，请放心!")
				else
				lualib:SysMsg_SendRoleTalk(monster, "我身边两步内有"..table.getn(jiamonster_num_lg).."个假阵眼，小心！你若判断出哪个是假的，最好在它身上做个标记!")
			end
			if lm_z_s == lm_zzy then
				local player_number = lualib:Map_GetRegionPlayers(map, 63, 67, 100, true)
				
				for i = 1, #player_number do
				local rd = lualib:GenRandom(1,4)
					if rd == 1 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[1][1], zuobiao_table[1][2], zuobiao_table[1][3])      --传送玩家到随机四个点坐标
					elseif rd == 2 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[2][1], zuobiao_table[2][2], zuobiao_table[2][3])      --传送玩家到随机四个点坐标
					elseif rd == 3 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[3][1], zuobiao_table[3][2], zuobiao_table[3][3])      --传送玩家到随机四个点坐标
					elseif rd == 4 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[4][1], zuobiao_table[4][2], zuobiao_table[4][3])      --传送玩家到随机四个点坐标
					end
				end
				if lualib:Map_ClearMonster(map, tonumber(x), tonumber(y), 100, "", true, true) == true then            --清除副本内所有怪
					lualib:SysMsg_SendMapMsg(map, "六芒星阵——破阵！奖励诞生！拾取完奖励后，点击NPC阵心，开启下一阵！")
					lualib:Map_GenNpc(map, lm_pozhen_npc[1], lm_pozhen_npc[2], lm_pozhen_npc[3], lm_pozhen_npc[4], lm_pozhen_npc[5])  --刷出下一阵NPC
				
					for i = 1, table.getn(lm_zhenx) do
						if "" == lualib:Map_GenItem(map, lm_zhenx[i][1], lm_zhenx[i][2], lm_pozhen_jl[lualib:GenRandom(1, 4)], 1, false, 0) then  --刷出破阵奖励
							lualib:Error("创建物品失败！")
						end
					end
					
				end
			end	
	elseif keyname == realzy_nametable[8] then
			local hl_z_s = lualib:GetInt(map, "hl_z_s")         --开启的真阵眼数量
			local hl_zzy = lualib:GetInt(map, "hl_zzy")         --回龙阵真阵眼数量

			if lualib:GetInt(monster, "is_opened") == 0 then
				if	hl_z_s < hl_zzy then
					hl_z_s = hl_z_s + 1
				end

				lualib:SetInt(map, "hl_z_s", hl_z_s)
				
				lualib:SetInt(monster, "is_opened", 1)
			end
			
			lualib:RunClientScript(map, "mapeffect", "texiao", "100002060#"..x.."#"..y1.."#0#0")
			lualib:SysPromptMsg(player, "已开启真阵眼：" .. tostring(hl_z_s).."还剩"..hl_zzy - hl_z_s.."个真阵眼，加油！");
			
			local jiamonster_num_lg = lualib:Map_GetRegionMonsters(map, hl_zjmonster[2], tonumber(x), tonumber(y), 2, true, true)  --获取2格范围内假阵眼的数量
			if jiamonster_num_lg == nil then 	
				lualib:SysMsg_SendRoleTalk(monster, "我身边两步内没有假阵眼，请放心!")
				else
				lualib:SysMsg_SendRoleTalk(monster, "我身边两步内有"..table.getn(jiamonster_num_lg).."个假阵眼，小心！你若判断出哪个是假的，最好在它身上做个标记!")
			end
			if hl_z_s == hl_zzy then
				local player_number = lualib:Map_GetRegionPlayers(map, 63, 67, 100, true)
				
				for i = 1, #player_number do
				local rd = lualib:GenRandom(1,4)
					if rd == 1 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[1][1], zuobiao_table[1][2], zuobiao_table[1][3])      --传送玩家到随机四个点坐标
					elseif rd == 2 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[2][1], zuobiao_table[2][2], zuobiao_table[2][3])      --传送玩家到随机四个点坐标
					elseif rd == 3 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[3][1], zuobiao_table[3][2], zuobiao_table[3][3])      --传送玩家到随机四个点坐标
					elseif rd == 4 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[4][1], zuobiao_table[4][2], zuobiao_table[4][3])      --传送玩家到随机四个点坐标
					end
				end
				if lualib:Map_ClearMonster(map, tonumber(x), tonumber(y), 100, "", true, true) == true then            --清除副本内所有怪
					lualib:SysMsg_SendMapMsg(map, "回龙阵——破阵！奖励诞生！拾取完奖励后，点击NPC阵心，开启下一阵！")
					lualib:Map_GenNpc(map, hl_pozhen_npc[1], hl_pozhen_npc[2], hl_pozhen_npc[3], hl_pozhen_npc[4], hl_pozhen_npc[5])  --刷出下一阵NPC
				
					for i = 1, table.getn(hl_zhenx) do
						if "" == lualib:Map_GenItem(map, hl_zhenx[i][1], hl_zhenx[i][2], hl_pozhen_jl[lualib:GenRandom(1, 4)], 1, false, 0) then  --刷出破阵奖励
							lualib:Error("创建物品失败！")
						end
					end
					
				end
			end	
	elseif keyname == realzy_nametable[9] then
			local bg_z_s = lualib:GetInt(map, "bg_z_s")         --开启的真阵眼数量
			local bg_zzy = lualib:GetInt(map, "bg_zzy")         --八卦阵真阵眼数量

			if lualib:GetInt(monster, "is_opened") == 0 then
				if	bg_z_s < bg_zzy then
					bg_z_s = bg_z_s + 1
				end

				lualib:SetInt(map, "bg_z_s", bg_z_s)
				
				lualib:SetInt(monster, "is_opened", 1)
			end
			
			lualib:RunClientScript(map, "mapeffect", "texiao", "100002060#"..x.."#"..y1.."#0#0")
			lualib:SysPromptMsg(player, "已开启真阵眼：" .. tostring(bg_z_s).."还剩"..bg_zzy - bg_z_s.."个真阵眼，加油！");
			
			local jiamonster_num_lg = lualib:Map_GetRegionMonsters(map, bg_zjmonster[2], tonumber(x), tonumber(y), 2, true, true)  --获取2格范围内假阵眼的数量
			if jiamonster_num_lg == nil then 	
				lualib:SysMsg_SendRoleTalk(monster, "我身边两步内没有假阵眼，请放心!")
				else
				lualib:SysMsg_SendRoleTalk(monster, "我身边两步内有"..table.getn(jiamonster_num_lg).."个假阵眼，小心！你若判断出哪个是假的，最好在它身上做个标记!")
			end
			if bg_z_s == bg_zzy then
				local player_number = lualib:Map_GetRegionPlayers(map, 63, 67, 100, true)
				
				for i = 1, #player_number do
				local rd = lualib:GenRandom(1,4)
					if rd == 1 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[1][1], zuobiao_table[1][2], zuobiao_table[1][3])      --传送玩家到随机四个点坐标
					elseif rd == 2 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[2][1], zuobiao_table[2][2], zuobiao_table[2][3])      --传送玩家到随机四个点坐标
					elseif rd == 3 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[3][1], zuobiao_table[3][2], zuobiao_table[3][3])      --传送玩家到随机四个点坐标
					elseif rd == 4 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[4][1], zuobiao_table[4][2], zuobiao_table[4][3])      --传送玩家到随机四个点坐标
					end
				end
				if lualib:Map_ClearMonster(map, tonumber(x), tonumber(y), 100, "", true, true) == true then            --清除副本内所有怪
					lualib:SysMsg_SendMapMsg(map, "八卦阵——破阵！奖励诞生！拾取完奖励后，点击NPC阵心，开启下一阵！")
					lualib:Map_GenNpc(map, bg_pozhen_npc[1], bg_pozhen_npc[2], bg_pozhen_npc[3], bg_pozhen_npc[4], bg_pozhen_npc[5])  --刷出下一阵NPC
				
					for i = 1, table.getn(bg_zhenx) do
						if "" == lualib:Map_GenItem(map, bg_zhenx[i][1], bg_zhenx[i][2], bg_pozhen_jl[lualib:GenRandom(1, 4)], 1, false, 0) then  --刷出破阵奖励
							lualib:Error("创建物品失败！")
						end
					end
					
				end
			end	
	elseif keyname == realzy_nametable[10] then
			local x_z_s = lualib:GetInt(map, "x_z_s")         --开启的真阵眼数量
			local x_zzy = lualib:GetInt(map, "x_zzy")         --心阵真阵眼数量

			if lualib:GetInt(monster, "is_opened") == 0 then
				if	x_z_s < x_zzy then
					x_z_s = x_z_s + 1
				end

				lualib:SetInt(map, "x_z_s", x_z_s)
				
				lualib:SetInt(monster, "is_opened", 1)
			end
			
			lualib:RunClientScript(map, "mapeffect", "texiao", "100002060#"..x.."#"..y1.."#0#0")
			lualib:SysPromptMsg(player, "已开启真阵眼：" .. tostring(x_z_s).."还剩"..x_zzy - x_z_s.."个真阵眼，加油！");
			
			local jiamonster_num_lg = lualib:Map_GetRegionMonsters(map, x_zjmonster[2], tonumber(x), tonumber(y), 2, true, true)  --获取2格范围内假阵眼的数量
			if jiamonster_num_lg == nil then 	
				lualib:SysMsg_SendRoleTalk(monster, "我身边两步内没有假阵眼，请放心!")
				else
				lualib:SysMsg_SendRoleTalk(monster, "我身边两步内有"..table.getn(jiamonster_num_lg).."个假阵眼，小心！你若判断出哪个是假的，最好在它身上做个标记!")
			end
			if x_z_s == x_zzy then
				local player_number = lualib:Map_GetRegionPlayers(map, 63, 67, 100, true)
				
				for i = 1, #player_number do
				local rd = lualib:GenRandom(1,4)
					if rd == 1 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[1][1], zuobiao_table[1][2], zuobiao_table[1][3])      --传送玩家到随机四个点坐标
					elseif rd == 2 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[2][1], zuobiao_table[2][2], zuobiao_table[2][3])      --传送玩家到随机四个点坐标
					elseif rd == 3 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[3][1], zuobiao_table[3][2], zuobiao_table[3][3])      --传送玩家到随机四个点坐标
					elseif rd == 4 then
						lualib:Map_JumpXY(map, player_number[i], zuobiao_table[4][1], zuobiao_table[4][2], zuobiao_table[4][3])      --传送玩家到随机四个点坐标
					end
				end
				if lualib:Map_ClearMonster(map, tonumber(x), tonumber(y), 100, "", true, true) == true then            --清除副本内所有怪
					lualib:SysMsg_SendMapMsg(map, "心阵——破阵！奖励诞生！拾取完奖励后，点击NPC阵心，开启下一阵！")
					lualib:Map_GenNpc(map, x_pozhen_npc[1], x_pozhen_npc[2], x_pozhen_npc[3], x_pozhen_npc[4], x_pozhen_npc[5])  --刷出下一阵NPC
				
					for i = 1, table.getn(x_zhenx) do
						if "" == lualib:Map_GenItem(map, x_zhenx[i][1], x_zhenx[i][2], x_pozhen_jl[lualib:GenRandom(1, 4)], 1, false, 0) then  --刷出破阵奖励
							lualib:Error("创建物品失败！")
						end
					end
					
				end
			end	
	
	end
	
	return ""
end


function biaoji(player, map, x, y, monster)
	lualib:AddBuff(monster, "阵眼标记", 0)
	return ""
end

function quxiaobiaoji(player, map, x, y, monster)
	if lualib:HasBuff(monster, "阵眼标记") then
		lualib:DelBuff(monster, "阵眼标记")
	end
	return ""
end


function shibai(player, params)   --进度条失败
    lualib:SysPromptMsg(player, "开启被打断！")
end