local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("map/千幻阵数据")

local jdt_time = 100  --开启进度条时间
function main(npc, player)
	local map = lualib:MapGuid(npc)
	local x = lualib:X(npc)
	local y = lualib:Y(npc)
	local keyname = lualib:KeyName(npc)
	local msg = "#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		for i = 1, #next_zhen_hs do
			if keyname == npc_nametable[i] then
			msg = msg.."#IMAGE<ID:1902700018>#".."<@"..next_zhen_hs[i].."#"..map.."#"..x.."#"..y.."#"..npc.." *01*「进入下一阵」>\n"
			end
		end
	msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	return msg
end



function next_r_zhen(npc, player, map, x, y)
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
	
	--人阵阵型
		for i = 1, #ren_zhenx do
			lualib:Map_GenMonster(map, ren_zhenx[i][1], ren_zhenx[i][2], ren_zhenx[i][3], 4, r_zjmonster[lualib:GenRandom(1, 2)], ren_zhenx[i][4], true)
			lualib:SysMsg_SendMapMsg(map, "【千幻阵——[人阵]】开启！闯阵的勇士们，请尽快找到阵眼，通往下一阵！")
		end  

		
		r_zzy_num = lualib:Map_GetMonsterCount(map, r_zjmonster[1], true, true)--获取整个地图真阵眼的数量
		if not lualib:SetInt(map, "r_zzy", r_zzy_num) then
			lualib:SysMsg_SendMapMsg(map, "变量没有设进去，请联系客服！")
		end
		
		local r_zzy = lualib:GetInt(map, "r_zzy")    --人阵真阵眼数量
		lualib:Map_ClearNpc(map, 63, 67, 100, "")
	return ""
end


function next_tw_zhen(npc, player, map, x, y)
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
	
	--天问阵型
		for i = 1, #tw_zhenx do
			lualib:Map_GenMonster(map, tw_zhenx[i][1], tw_zhenx[i][2], tw_zhenx[i][3], 4, tw_zjmonster[lualib:GenRandom(1, 2)], tw_zhenx[i][4], true)
			lualib:SysMsg_SendMapMsg(map, "【千幻阵——[天问阵]】开启！闯阵的勇士们，请尽快找到阵眼，通往下一阵！")
		end  

		
		tw_zzy_num = lualib:Map_GetMonsterCount(map, tw_zjmonster[1], true, true)--获取整个地图真阵眼的数量
		if not lualib:SetInt(map, "tw_zzy", tw_zzy_num) then
			lualib:SysMsg_SendMapMsg(map, "变量没有设进去，请联系客服！")
		end
		
		local tw_zzy = lualib:GetInt(map, "tw_zzy")    --天问阵真阵眼数量
		lualib:Map_ClearNpc(map, 63, 67, 100, "")
	return ""
end

function next_yw_zhen(npc, player, map, x, y)
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
	
	--圆舞阵型
		for i = 1, #yw_zhenx do
		lualib:Map_GenMonster(map, yw_zhenx[i][1], yw_zhenx[i][2], yw_zhenx[i][3], 4, yw_zjmonster[lualib:GenRandom(1, 2)], yw_zhenx[i][4], true)
		lualib:SysMsg_SendMapMsg(map, "【千幻阵——[圆舞阵]】开启！闯阵的勇士们，请尽快找到阵眼，通往下一阵！")
		end  

		
		yw_zzy_num = lualib:Map_GetMonsterCount(map, yw_zjmonster[1], true, true)--获取整个地图真阵眼的数量
		if not lualib:SetInt(map, "yw_zzy", yw_zzy_num) then
			lualib:SysMsg_SendMapMsg(map, "变量没有设进去，请联系客服！")
		end
		
		local yw_zzy = lualib:GetInt(map, "yw_zzy")    --圆舞阵真阵眼数量
		lualib:Map_ClearNpc(map, 63, 67, 100, "")
	return ""
end

function next_jz_zhen(npc, player, map, x, y)
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
	
	--剑阵阵型
		for i = 1, #jz_zhenx do
		lualib:Map_GenMonster(map, jz_zhenx[i][1], jz_zhenx[i][2], jz_zhenx[i][3], 4, jz_zjmonster[lualib:GenRandom(1, 2)], jz_zhenx[i][4], true)
		lualib:SysMsg_SendMapMsg(map, "【千幻阵——[剑阵]】开启！闯阵的勇士们，请尽快找到阵眼，通往下一阵！")
		end  

		
		jz_zzy_num = lualib:Map_GetMonsterCount(map, jz_zjmonster[1], true, true)--获取整个地图真阵眼的数量
		if not lualib:SetInt(map, "jz_zzy", jz_zzy_num) then
			lualib:SysMsg_SendMapMsg(map, "变量没有设进去，请联系客服！")
		end
		
		local jz_zzy = lualib:GetInt(map, "jz_zzy")    --剑阵真阵眼数量
		lualib:Map_ClearNpc(map, 63, 67, 100, "")
	return ""
end

function next_ds_zhen(npc, player, map, x, y)
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
	
	--大蛇阵型
		for i = 1, #ds_zhenx do
		lualib:Map_GenMonster(map, ds_zhenx[i][1], ds_zhenx[i][2], ds_zhenx[i][3], 4, ds_zjmonster[lualib:GenRandom(1, 2)], ds_zhenx[i][4], true)
		lualib:SysMsg_SendMapMsg(map, "【千幻阵——[大蛇阵]】开启！闯阵的勇士们，请尽快找到阵眼，通往下一阵！")
		end  

		
		ds_zzy_num = lualib:Map_GetMonsterCount(map, ds_zjmonster[1], true, true)--获取整个地图真阵眼的数量
		if not lualib:SetInt(map, "ds_zzy", ds_zzy_num) then
			lualib:SysMsg_SendMapMsg(map, "变量没有设进去，请联系客服！")
		end
		
		local ds_zzy = lualib:GetInt(map, "ds_zzy")    --大蛇阵真阵眼数量
		lualib:Map_ClearNpc(map, 63, 67, 100, "")
	return ""
end

function next_lm_zhen(npc, player, map, x, y)
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
	
	--六芒星阵型
		for i = 1, #lm_zhenx do
		lualib:Map_GenMonster(map, lm_zhenx[i][1], lm_zhenx[i][2], lm_zhenx[i][3], 4, lm_zjmonster[lualib:GenRandom(1, 2)], lm_zhenx[i][4], true)
		lualib:SysMsg_SendMapMsg(map, "【千幻阵——[六芒星阵]】开启！闯阵的勇士们，请尽快找到阵眼，通往下一阵！")
		end  

		
		lm_zzy_num = lualib:Map_GetMonsterCount(map, lm_zjmonster[1], true, true)--获取整个地图真阵眼的数量
		if not lualib:SetInt(map, "lm_zzy", lm_zzy_num) then
			lualib:SysMsg_SendMapMsg(map, "变量没有设进去，请联系客服！")
		end
		
		local lm_zzy = lualib:GetInt(map, "lm_zzy")    --六芒星阵真阵眼数量
		lualib:Map_ClearNpc(map, 63, 67, 100, "")
	return ""
end

function next_hl_zhen(npc, player, map, x, y)
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
	
	--回龙阵型
		for i = 1, #hl_zhenx do
		lualib:Map_GenMonster(map, hl_zhenx[i][1], hl_zhenx[i][2], hl_zhenx[i][3], 4, hl_zjmonster[lualib:GenRandom(1, 2)], hl_zhenx[i][4], true)
		lualib:SysMsg_SendMapMsg(map, "【千幻阵——[回龙阵]】开启！闯阵的勇士们，请尽快找到阵眼，通往下一阵！")
		end  

		
		hl_zzy_num = lualib:Map_GetMonsterCount(map, hl_zjmonster[1], true, true)--获取整个地图真阵眼的数量
		if not lualib:SetInt(map, "hl_zzy", hl_zzy_num) then
			lualib:SysMsg_SendMapMsg(map, "变量没有设进去，请联系客服！")
		end
		
		local hl_zzy = lualib:GetInt(map, "hl_zzy")    --回龙星阵真阵眼数量
		lualib:Map_ClearNpc(map, 63, 67, 100, "")

	return ""
end


function next_bg_zhen(npc, player, map, x, y)
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
	
	--八卦阵型
		for i = 1, #bg_zhenx do
		lualib:Map_GenMonster(map, bg_zhenx[i][1], bg_zhenx[i][2], bg_zhenx[i][3], 4, bg_zjmonster[lualib:GenRandom(1, 2)], bg_zhenx[i][4], true)
		lualib:SysMsg_SendMapMsg(map, "【千幻阵——[八卦阵]】开启！闯阵的勇士们，请尽快找到阵眼，通往下一阵！")
		end  

		
		bg_zzy_num = lualib:Map_GetMonsterCount(map, bg_zjmonster[1], true, true)--获取整个地图真阵眼的数量
		if not lualib:SetInt(map, "bg_zzy", bg_zzy_num) then
			lualib:SysMsg_SendMapMsg(map, "变量没有设进去，请联系客服！")
		end
		
		local bg_zzy = lualib:GetInt(map, "bg_zzy")    --八卦阵真阵眼数量
		lualib:Map_ClearNpc(map, 63, 67, 100, "")
	return ""
end


function next_x_zhen(npc, player, map, x, y)
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
	
	--心阵型
		for i = 1, #x_zhenx do
		lualib:Map_GenMonster(map, x_zhenx[i][1], x_zhenx[i][2], x_zhenx[i][3], 4, x_zjmonster[lualib:GenRandom(1, 2)], x_zhenx[i][4], true)
		lualib:SysMsg_SendMapMsg(map, "【千幻阵——[心阵]】开启！闯阵的勇士们，请尽快找到阵眼，通往下一阵！")
		end  

		
		x_zzy_num = lualib:Map_GetMonsterCount(map, x_zjmonster[1], true, true)--获取整个地图真阵眼的数量
		if not lualib:SetInt(map, "x_zzy", x_zzy_num) then
			lualib:SysMsg_SendMapMsg(map, "变量没有设进去，请联系客服！")
		end
		
		local x_zzy = lualib:GetInt(map, "x_zzy")    --心阵真阵眼数量
		lualib:Map_ClearNpc(map, 63, 67, 100, "")
	
	return ""
end


function next_end_zhen(npc, player, map, x, y)
	local msg = 
[[	#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#
	由于你破阵速度太快，妖魔来不及布置下一阵,恭喜你成功破阵！
	#OFFSET<X:0,Y:-2>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#
	#IMAGE<ID:1902700018>#<@jump#%s#%s *01*返回东临城>
]]
	msg = string.format(msg, npc, player)
	return msg;
end

function jump(npc, player)
	lualib:Player_MapMoveXY(player, "东临城", 330, 300, 1)
	return ""
end