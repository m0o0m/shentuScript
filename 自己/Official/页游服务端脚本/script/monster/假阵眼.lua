local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("map/千幻阵数据")

local jdt_time = 10000

function main(monster, player)
	local map = lualib:MapGuid(monster)
	local x = lualib:X(monster)
	local y = lualib:Y(monster)
	local keyname = lualib:KeyName(monster)

	lualib:NPCTalk(player, "#IMAGE<ID:1902700030>#<@jiezhen#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 开启阵眼>\n".."#IMAGE<ID:1902700016>#<@biaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 做标记>\n".."#IMAGE<ID:1902700018>#<@quxiaobiaoji#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.." *01* 取消标记>\n")


	return ""
end

function jiezhen(player, map, x, y, monster, keyname)
		if lualib:ProgressBarStart(player, jdt_time, "开启阵眼", "kaiqi", "shibai", map.."#"..x.."#"..y.."#"..monster.."#"..keyname) == false then
			lualib:SysPromptMsg(player, "无法开启进度条！")
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
	
	if keyname == jiazy_nametable[1] then
			lualib:RunClientScript(map, "mapeffect", "texiao", "100002061#"..x.."#"..y1.."#0#0")
			lualib:SysMsg_SendRoleTalk(monster, "哈哈，你上当了，我是假的！羽扇守卫者出来！消灭这些破阵者！")
			
			if not lualib:AddTimerEx(map, jia_timeid[1][1], jia_timeid[1][2], jia_timeid[1][3], jia_timeid[1][4], map.."#"..x.."#"..y.."#"..monster.."#"..keyname) then
					lualib:Error("定时器添加失败！")
				end 
			local jia_zy = lualib:GetInt(monster, "is_opened")
			if jia_zy == 0 then
				lualib:Map_GenMonster(map, tonumber(x), tonumber(y), 10, 8, ys_shmonster[lualib:GenRandom(1, 9)], lualib:GenRandom(1, 5), false)  --刷出守卫
				
				lualib:SetInt(monster, "is_opened", 1)
			end

	elseif keyname == jiazy_nametable[2] then
			lualib:RunClientScript(map, "mapeffect", "texiao", "100002061#"..x.."#"..y1.."#0#0")
			lualib:SysMsg_SendRoleTalk(monster, "哈哈，你上当了，我是假的！人阵守卫者出来！消灭这些破阵者！")
			
			if not lualib:AddTimerEx(map, jia_timeid[2][1], jia_timeid[2][2], jia_timeid[2][3], jia_timeid[2][4], map.."#"..x.."#"..y.."#"..monster.."#"..keyname) then
				lualib:Error("定时器添加失败！")
			end 
			local jia_zy = lualib:GetInt(monster, "is_opened")
			if jia_zy == 0 then
				lualib:Map_GenMonster(map, tonumber(x), tonumber(y), 10, 8, r_shmonster[lualib:GenRandom(1, 9)], lualib:GenRandom(1, 5), false)--刷出守卫
				
				lualib:SetInt(monster, "is_opened", 1)
			end

	elseif keyname == jiazy_nametable[3] then
			lualib:RunClientScript(map, "mapeffect", "texiao", "100002061#"..x.."#"..y1.."#0#0")
			lualib:SysMsg_SendRoleTalk(monster, "哈哈，你上当了，我是假的！天问守卫者出来！消灭这些破阵者！")
			
			if not lualib:AddTimerEx(map, jia_timeid[3][1], jia_timeid[3][2], jia_timeid[3][3], jia_timeid[3][4], map.."#"..x.."#"..y.."#"..monster.."#"..keyname) then
				lualib:Error("定时器添加失败！")
			end 
			local jia_zy = lualib:GetInt(monster, "is_opened")
			if jia_zy == 0 then
				lualib:Map_GenMonster(map, tonumber(x), tonumber(y), 10, 8, tw_shmonster[lualib:GenRandom(1, 9)], lualib:GenRandom(1, 5), false)--刷出守卫
				
				lualib:SetInt(monster, "is_opened", 1)
			end

	elseif keyname == jiazy_nametable[4] then
			lualib:RunClientScript(map, "mapeffect", "texiao", "100002061#"..x.."#"..y1.."#0#0")
			lualib:SysMsg_SendRoleTalk(monster, "哈哈，你上当了，我是假的！圆舞守卫者出来！消灭这些破阵者！")
			
			if not lualib:AddTimerEx(map, jia_timeid[4][1], jia_timeid[4][2], jia_timeid[4][3], jia_timeid[4][4], map.."#"..x.."#"..y.."#"..monster.."#"..keyname) then
				lualib:Error("定时器添加失败！")
			end 
			local jia_zy = lualib:GetInt(monster, "is_opened")
			if jia_zy == 0 then
				lualib:Map_GenMonster(map, tonumber(x), tonumber(y), 10, 8, yw_shmonster[lualib:GenRandom(1, 9)], lualib:GenRandom(1, 5), false)  --刷出守卫
				
				lualib:SetInt(monster, "is_opened", 1)
			end

	elseif keyname == jiazy_nametable[5] then
			lualib:RunClientScript(map, "mapeffect", "texiao", "100002061#"..x.."#"..y1.."#0#0")
			lualib:SysMsg_SendRoleTalk(monster, "哈哈，你上当了，我是假的！剑阵守卫者出来！消灭这些破阵者！")
			
			if not lualib:AddTimerEx(map, jia_timeid[5][1], jia_timeid[5][2], jia_timeid[5][3], jia_timeid[5][4], map.."#"..x.."#"..y.."#"..monster.."#"..keyname) then
				lualib:Error("定时器添加失败！")
			end 
			local jia_zy = lualib:GetInt(monster, "is_opened")
			if jia_zy == 0 then
				lualib:Map_GenMonster(map, tonumber(x), tonumber(y), 10, 8, jz_shmonster[lualib:GenRandom(1, 9)], lualib:GenRandom(1, 5), false)  --刷出守卫
				
				lualib:SetInt(monster, "is_opened", 1)
			end

	elseif keyname == jiazy_nametable[6] then
			lualib:RunClientScript(map, "mapeffect", "texiao", "100002061#"..x.."#"..y1.."#0#0")
			lualib:SysMsg_SendRoleTalk(monster, "哈哈，你上当了，我是假的！大蛇守卫者出来！消灭这些破阵者！")
			
			if not lualib:AddTimerEx(map, jia_timeid[6][1], jia_timeid[6][2], jia_timeid[6][3], jia_timeid[6][4], map.."#"..x.."#"..y.."#"..monster.."#"..keyname) then
				lualib:Error("定时器添加失败！")
			end 
			local jia_zy = lualib:GetInt(monster, "is_opened")
			if jia_zy == 0 then
				lualib:Map_GenMonster(map, tonumber(x), tonumber(y), 10, 8, ds_shmonster[lualib:GenRandom(1, 9)], lualib:GenRandom(1, 5), false)  --刷出守卫
				
				lualib:SetInt(monster, "is_opened", 1)
			end

	elseif keyname == jiazy_nametable[7] then
			lualib:RunClientScript(map, "mapeffect", "texiao", "100002061#"..x.."#"..y1.."#0#0")
			lualib:SysMsg_SendRoleTalk(monster, "哈哈，你上当了，我是假的！六芒星守卫者出来！消灭这些破阵者！")
			
			if not lualib:AddTimerEx(map, jia_timeid[7][1], jia_timeid[7][2], jia_timeid[7][3], jia_timeid[7][4], map.."#"..x.."#"..y.."#"..monster.."#"..keyname) then
				lualib:Error("定时器添加失败！")
			end 
			local jia_zy = lualib:GetInt(monster, "is_opened")
			if jia_zy == 0 then
				lualib:Map_GenMonster(map, tonumber(x), tonumber(y), 10, 8, lm_shmonster[lualib:GenRandom(1, 9)], lualib:GenRandom(1, 5), false)  --刷出守卫
				
				lualib:SetInt(monster, "is_opened", 1)
			end

	elseif keyname == jiazy_nametable[8] then
			lualib:RunClientScript(map, "mapeffect", "texiao", "100002061#"..x.."#"..y1.."#0#0")
			lualib:SysMsg_SendRoleTalk(monster, "哈哈，你上当了，我是假的！回龙守卫者出来！消灭这些破阵者！")
			
			if not lualib:AddTimerEx(map, jia_timeid[8][1], jia_timeid[8][2], jia_timeid[8][3], jia_timeid[8][4], map.."#"..x.."#"..y.."#"..monster.."#"..keyname) then
				lualib:Error("定时器添加失败！")
			end 
			local jia_zy = lualib:GetInt(monster, "is_opened")
			if jia_zy == 0 then
				lualib:Map_GenMonster(map, tonumber(x), tonumber(y), 10, 8, hl_shmonster[lualib:GenRandom(1, 9)], lualib:GenRandom(1, 5), false)  --刷出守卫
				
				lualib:SetInt(monster, "is_opened", 1)
			end

	elseif keyname == jiazy_nametable[9] then
			lualib:RunClientScript(map, "mapeffect", "texiao", "100002061#"..x.."#"..y1.."#0#0")
			lualib:SysMsg_SendRoleTalk(monster, "哈哈，你上当了，我是假的！阵法守卫者出来！消灭这些破阵者！")
			
			if not lualib:AddTimerEx(map, jia_timeid[9][1], jia_timeid[9][2], jia_timeid[9][3], jia_timeid[9][4], map.."#"..x.."#"..y.."#"..monster.."#"..keyname) then
				lualib:Error("定时器添加失败！")
			end 
			local jia_zy = lualib:GetInt(monster, "is_opened")
			if jia_zy == 0 then
				lualib:Map_GenMonster(map, tonumber(x), tonumber(y), 10, 8, bg_shmonster[lualib:GenRandom(1, 9)], lualib:GenRandom(1, 5), false)  --刷出守卫
				
				lualib:SetInt(monster, "is_opened", 1)
			end

	elseif keyname == jiazy_nametable[10] then
			lualib:RunClientScript(map, "mapeffect", "texiao", "100002061#"..x.."#"..y1.."#0#0")
			lualib:SysMsg_SendRoleTalk(monster, "哈哈，你上当了，我是假的！阵法守卫者出来！消灭这些破阵者！")
			
			if not lualib:AddTimerEx(map, jia_timeid[10][1], jia_timeid[10][2], jia_timeid[10][3], jia_timeid[10][4], map.."#"..x.."#"..y.."#"..monster.."#"..keyname) then
				lualib:Error("定时器添加失败！")
			end 
			local jia_zy = lualib:GetInt(monster, "is_opened")
			if jia_zy == 0 then
				lualib:Map_GenMonster(map, tonumber(x), tonumber(y), 10, 8, x_shmonster[lualib:GenRandom(1, 9)], lualib:GenRandom(1, 5), false)  --刷出守卫
				
				lualib:SetInt(monster, "is_opened", 1)
			end

	
	end
	return ""
end


function biaoji(player, map, x, y, monster)
	lualib: AddBuff(monster, "阵眼标记", 0)
	return ""
end

function quxiaobiaoji(player, map, x, y ,monster)
	if lualib: HasBuff(monster, "阵眼标记") then
		lualib: DelBuff(monster, "阵眼标记")
	end
	return ""
end

function shibai(player, params)   --进度条失败
    lualib:SysPromptMsg(player, "开启被打断！")
end

function del(player, tierid)   --自毁
	if keyname == jiazy_nametable[1] then
	
		if lualib:Map_ClearMonster(map, tonumber(x), tonumber(y), 0, ys_zjmonster[2], true, true) == false then
			lualib:SysPromptMsg(player, "没有删除成功")
		end
	elseif keyname == jiazy_nametable[2] then
		if lualib:Map_ClearMonster(map, tonumber(x), tonumber(y), 0, r_zjmonster[2], true, true) == false then
			lualib:SysPromptMsg(player, "没有删除成功")
		end
	elseif keyname == jiazy_nametable[3] then	
		if lualib:Map_ClearMonster(map, tonumber(x), tonumber(y), 0, tw_zjmonster[2], true, true) == false then
			lualib:SysPromptMsg(player, "没有删除成功")
		end
	elseif keyname == jiazy_nametable[4] then	
		if lualib:Map_ClearMonster(map, tonumber(x), tonumber(y), 0, yw_zjmonster[2], true, true) == false then
			lualib:SysPromptMsg(player, "没有删除成功")
		end
	
	elseif keyname == jiazy_nametable[5] then
		if lualib:Map_ClearMonster(map, tonumber(x), tonumber(y), 0, jz_zjmonster[2], true, true) == false then
			lualib:SysPromptMsg(player, "没有删除成功")
		end
	elseif keyname == jiazy_nametable[6] then
		if lualib:Map_ClearMonster(map, tonumber(x), tonumber(y), 0, ds_zjmonster[2], true, true) == false then
			lualib:SysPromptMsg(player, "没有删除成功")
		end
	elseif keyname == jiazy_nametable[7] then
		if lualib:Map_ClearMonster(map, tonumber(x), tonumber(y), 0, lm_zjmonster[2], true, true) == false then
			lualib:SysPromptMsg(player, "没有删除成功")
		end
	elseif keyname == jiazy_nametable[8] then
		if lualib:Map_ClearMonster(map, tonumber(x), tonumber(y), 0, hl_zjmonster[2], true, true) == false then
			lualib:SysPromptMsg(player, "没有删除成功")
		end	
	elseif keyname == jiazy_nametable[9] then
		if lualib:Map_ClearMonster(map, tonumber(x), tonumber(y), 0, bg_zjmonster[2], true, true) == false then
			lualib:SysPromptMsg(player, "没有删除成功")
		end	
	elseif keyname == jiazy_nametable[10] then
		if lualib:Map_ClearMonster(map, tonumber(x), tonumber(y), 0, x_zjmonster[2], true, true) == false then
			lualib:SysPromptMsg(player, "没有删除成功")
		end	
	end
end
