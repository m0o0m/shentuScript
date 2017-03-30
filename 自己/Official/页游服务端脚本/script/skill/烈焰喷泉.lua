local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local x_table = {}
local y_table = {}
local x
local y

local count = 0

function post_apply(actor,  skillid)
	local guaiwu_map = lualib:MapGuid(actor)
	local guaiwu_x = lualib:X(actor)
	local guaiwu_y = lualib:Y(actor)
	local guaiwu_table = lualib:Map_GetRegionPlayers(guaiwu_map, guaiwu_x, guaiwu_y, 10, true)
	local hp = lualib:Hp(actor, true)
	local dangqian_hp = lualib:Hp(actor, false)
	local timeid = lualib:GenRandom(1, 99999)
	local player = guaiwu_table[lualib:GenRandom(1, #guaiwu_table)]
	x = lualib:X(player)
	y = lualib:Y(player)
	print("执行次数："..count);count = count + 1
	lualib:RunClientScript(guaiwu_map, "mapeffect", "texiao", "100001560#"..x.."#"..y.."#0#99999000")
	print("x="..x)
	print("y="..y)
	x_table = {x-2, x-2, x-2, x-2, x-2, x-1, x-1, x-1, x-1, x-1, x,   x,   x, x,   x,   x+1, x+1, x+1, x+1, x+1, x+2, x+2, x+2, x+2, x+2}
	y_table = {y-2, y-1, y	, y+1, y+2, y-2, y-1, y	 , y+1, y+2, y-2, y-1, y, y+1, y+2, y-2, y-1, y,   y+1, y+2, y-2, y-1, y,   y+1, y+2}
	print("最大血量"..hp.."=当前血量"..dangqian_hp)
	if dangqian_hp == hp then
		if not lualib:AddTimerEx(actor,  timeid,  500, 1,  "zhixing",  actor.."#"..skillid.."#"..timeid) == true then
		lualib:Error("添加定时器失败！")
		end
	end
	if dangqian_hp >= hp * 0.8 and dangqian_hp < hp then
		if not lualib:AddTimerEx(actor,  timeid,  9000, 1,  "zhixing",  actor.."#"..skillid.."#"..timeid) == true then
		lualib:Error("添加定时器失败！")
		end
	end

	if dangqian_hp >= hp * 0.6 and dangqian_hp  < hp * 0.8 then
		if not lualib:AddTimerEx(actor,  timeid,  8000, 1,  "zhixing",  actor.."#"..skillid.."#"..timeid) == true then
		lualib:Error("添加定时器失败！")
		end
	end
	
	if dangqian_hp >= hp * 0.5 and dangqian_hp  < hp * 0.6 then
		if not lualib:AddTimerEx(actor,  timeid,  7000, 1,  "zhixing",  actor.."#"..skillid.."#"..timeid) == true then
		lualib:Error("添加定时器失败！")
		end
	end
	
	if dangqian_hp >= hp * 0.4 and dangqian_hp  < hp * 0.5 then
		if not lualib:AddTimerEx(actor,  timeid,  6000, 1,  "zhixing",  actor.."#"..skillid.."#"..timeid) == true then
		lualib:Error("添加定时器失败！")
		end
	end
	
	if dangqian_hp >= hp * 0.3 and dangqian_hp  < hp  * 0.4 then
		if not lualib:AddTimerEx(actor,  timeid,  5000, 1,  "zhixing",  actor.."#"..skillid.."#"..timeid) == true then
		lualib:Error("添加定时器失败！")
		end
	end
	
	if dangqian_hp >= hp * 0.2 and dangqian_hp  < hp * 0.3 then
		if not lualib:AddTimerEx(actor,  timeid,  4000, 1,  "zhixing",  actor.."#"..skillid.."#"..timeid) == true then
		lualib:Error("添加定时器失败！")
		end
	end
	
	if dangqian_hp >= hp * 0.1 and dangqian_hp  < hp * 0.2 then
		if not lualib:AddTimerEx(actor,  timeid,  3000, 1,  "zhixing",  actor.."#"..skillid.."#"..timeid) == true then
		lualib:Error("添加定时器失败！")
		end
	end
	
	if dangqian_hp > 0 and dangqian_hp  < hp * 0.1 then
		if not lualib:AddTimerEx(actor,  timeid,  2000, 1,  "zhixing",  actor.."#"..skillid.."#"..timeid) == true then
		lualib:Error("添加定时器失败！")
		end
	end
end
function zhixing(a1, a2,actor,skillid,timeid)
	print("执行")
	local map = lualib:MapGuid(actor)
		print("1")
	skillid = tonumber(skillid)
	time_id = tonumber(timeid)
		print("2")
	if skillid == 10118 then
		print("3")
		for a = 1, table.getn(x_table) do
			x2 = x_table[a]
			y2 = y_table[a]
			mubiao_table = lualib:Map_GetRegionPlayers(map, x2, y2, 0, true)
			for i = 1, #mubiao_table do
				local wufangshangxian = lualib:PhyDef(mubiao_table[i], true)
				local wufangxiaxian = lualib:PhyDef(mubiao_table[i], false)
				local wufang = lualib:GenRandom(wufangxiaxian, wufangshangxian)
				local job = lualib:Job(mubiao_table[i])
				if job == 1 or job == 3 then
					print("4")
					local CostHp = 120 - wufang
					local buff = lualib:AddBuff2(mubiao_table[i], actor, "脚本减血", "海魔鞭挞", 0, -CostHp )
						  lualib:DisableTimer(actor, time_id)
				elseif job == 2 then
						print("5")
					local buffmtable = {"减免盾1级", "减免盾2级", "减免盾3级", "减免盾4级",}
					local buffxiaoguo = {0.85, 0.7, 0.55, 0.4,}
					local buffxiaoguo1 = 0
					for i1 = 1,#buffmtable do
						if lualib:HasBuff(mubiao_table[i], buffmtable[i1]) == true then
							buffxiaoguo1 = buffxiaoguo[i1]
						end
					end
					if buffxiaoguo1 > 0 then
						local CostHp = (120 - wufang)* buffxiaoguo1
						local buff = lualib:AddBuff2(mubiao_table[i], actor, "脚本减血", "海魔鞭挞", 0, -CostHp )
						lualib:DisableTimer(actor, time_id)
					else
						local CostHp = 120 - wufang
						local buff = lualib:AddBuff2(mubiao_table[i], actor, "脚本减血", "海魔鞭挞", 0, -CostHp )
						lualib:DisableTimer(actor, time_id)
					end
				end
			end
		end
	end
end