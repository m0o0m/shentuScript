local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("map/千幻阵数据")


	
function main(npc, player)
	

	
	local msg = 
	[[#COLORCOLOR_GREENG#大隐于深海，我隐藏得如此隐蔽，竟然都被你找到了！#COLOREND#
	#COLORCOLOR_BROWN#──────────────────────────────────────#COLOREND#
	你找到我亦是缘分，我乃通往#COLORCOLOR_YELLOW#[新世界]#COLOREND#的关键！但是我的灵魂被困在了千幻阵的阵心当中！
	谁能将我的灵魂从千幻阵中拯救出来，谁就有机会通往一个与众不同的全新世界！
	#COLORCOLOR_BROWN#──────────────────────────────────────#COLOREND#
	#COLORCOLOR_RED#进入千幻阵后，每30秒会扣除1颗秘海精元！进入前请准备好大量秘海精元！#COLOREND#
	#COLORCOLOR_BROWN#──────────────────────────────────────#COLOREND#
	#OFFSET<X:0,Y:5>##IMAGE<ID:1902700018>#<@enter *01*进入千幻阵>
	]]
	
	return msg
end

function enter(npc, player)
day = lualib:GetAllDays(0)
	today = lualib:GetInt(player, "qhz_daybl")
	lv = lualib:Level(player)
    if lv >= 40 then
        if today ~= day then
            lualib:SetInt(player, "qhz_daybl", day)
            lualib:SetInt(player, "qhz_cs", 0)
			qhz_enter_cs = lualib:GetInt(player, "qhz_cs")
			local dgn = lualib:Map_CreateDgn("千幻阵", false, 3600)
            if dgn == "" then
                    return 
                    [[
                    副本：创建失败！
                    <@leave *01*「离开」>
                    ]]
            end
            if lualib:Player_SetDgnTicket(player, dgn) == false then
                    return 
                    [[
                    您不被许可进入地图！
                    <@leave *01*「离开」>
                    ]]
            end
            if lualib:Player_EnterDgn(player, "千幻阵", 0, 0, 1) == false then
                    return 
                    [[
                    进入地图失败！
                    <@leave *01*「离开」>
                    ]]
            end
            lualib:SetInt(player, "qhz_cs", qhz_enter_cs + 1)
        else
            qhz_enter_cs = lualib:GetInt(player, "qhz_cs")
            if  	qhz_enter_cs >= 1 then
                    return 
                    [[#COLORCOLOR_RED#你今天已经免费进入过]]..qhz_enter_cs..[[次了！#COLOREND#
#COLORCOLOR_BROWN#──────────———————────————————#COLOREND#
不过看你这么有诚意，只要你再给我#COLORCOLOR_RED#100元宝#COLOREND#,我就让你再进一次
#COLORCOLOR_BROWN#──────────———————────————————#COLOREND#
#COLORCOLOR_BROWN#注：等级低于40级的玩家可以在我这里每天进入三次低级千幻阵，等级高于40级的玩家可以每天免费进入一次高级千幻阵。#COLOREND#
#IMAGE1902700037#<@huaqian *01*「施舍」>]]
            else
				qhz_enter_cs = lualib:GetInt(player, "qhz_cs")
                local dgn = lualib:Map_CreateDgn("千幻阵", false, 3600)
                if dgn == "" then
                    return 
                    [[
                    副本：创建失败！
                    <@leave *01*「离开」>
                    ]]
                end
                
                if lualib:Player_SetDgnTicket(player, dgn) == false then
                    return 
                    [[
                    您不被许可进入地图！
                    <@leave *01*「离开」>
                    ]]
                end
                
                if lualib:Player_EnterDgn(player, "千幻阵", 0, 0, 1) == false then
                    return 
                    [[
                    进入地图失败！
                    <@leave *01*「离开」>
                    ]]
                end
                lualib:SetInt(player, "qhz_cs", qhz_enter_cs + 1)
            end
        end
        return ""
    elseif lv <40 and lv >=35 then
        local bagfree = lualib:BagFree(player, true, false, false)
        if bagfree < 1 then
                        return "包裹空间不足！至少需要一个格子！"
        else
            if today ~= day then
				lualib:SetInt(player, "qhz_daybl", day)
				lualib:SetInt(player, "qhz_cs_small", 0)
				qhz_enter_cs_small = lualib:GetInt(player, "qhz_cs_small")
				local dgn = lualib:Map_CreateDgn("千幻阵", false, 3600)
				if dgn == "" then
					return 
					[[
					副本：创建失败！
					<@leave *01*「离开」>
					]]
				end
				if lualib:Player_SetDgnTicket(player, dgn) == false then
					return 
					[[
					您不被许可进入地图！
					<@leave *01*「离开」>
					]]
				end
				if lualib:Player_EnterDgn(player, "千幻阵", 0, 0, 1) == false then
					return 
					[[
					进入地图失败！
					<@leave *01*「离开」>
					]]
				end
				lualib:SetInt(player, "qhz_cs_small", qhz_enter_cs_small + 1)
				lualib:AddItem(player, "秘海精元", 12, true, "进入初级千幻阵加秘海精元", "初级千幻阵")
            else
				qhz_enter_cs_small = lualib:GetInt(player, "qhz_cs_small")
			    if  	qhz_enter_cs_small >= 3 then
                        return 
                        [[#COLORCOLOR_RED#你今天已经免费进入过]]..qhz_enter_cs_small..[[次了！#COLOREND#
#COLORCOLOR_BROWN#──────────———————────————————#COLOREND#
						
#COLORCOLOR_BROWN#──────────———————────————————#COLOREND#
#COLORCOLOR_BROWN#注：等级低于40级的玩家可以在我这里每天进入三次低级千幻阵，等级高于40级的玩家可以每天免费进入一次高级千幻阵。#COLOREND#
                                                       <@leave *01*「离开」>]]
                else
					qhz_enter_cs_small = lualib:GetInt(player, "qhz_cs_small")
                    local dgn = lualib:Map_CreateDgn("千幻阵", false, 3600)
                    if dgn == "" then
                        return 
                        [[
                        副本：创建失败！
                        <@leave *01*「离开」>
                        ]]
                    end
                    if lualib:Player_SetDgnTicket(player, dgn) == false then
                        return 
                        [[
                        您不被许可进入地图！
                        <@leave *01*「离开」>
                        ]]
                    end
                    if lualib:Player_EnterDgn(player, "千幻阵", 0, 0, 1) == false then
                        return 
                        [[
                        进入地图失败！
                        <@leave *01*「离开」>
                        ]]
                    end
                    lualib:SetInt(player, "qhz_cs_small", qhz_enter_cs_small + 1)
                    lualib:AddItem(player, "秘海精元", 12, true, "进入千幻阵加秘海精元", "千幻阵")
                end
            end
            return ""
        end
    else 
            return
            [[您不被许可进入地图！




#COLORCOLOR_BROWN#注：等级低于40级的玩家可以在我这里每天进入三次低级千幻阵，等级高于40级的玩家可以每天免费进入一次高级千幻阵。#COLOREND#

                                                       <@leave *01*「离开」>]]
    end
end

function huaqian(npc, player)
	
	
	if lualib:Player_IsIngotEnough(player, 100, false) == true then
		if lualib:Player_SubIngot(player, 100, false, "花钱进入千幻阵", npc) == false then
			return "扣除元宝失败"
		end
		
		local dgn = lualib:Map_CreateDgn("千幻阵", false, 3600000)
		if dgn == "" then
			return 
			[[
			副本：创建失败！
			<@leave *01*「离开」>
			]]
		end
		if lualib:Player_SetDgnTicket(player, dgn) == false then
			return 
			[[
			您不被许可进入地图！
			<@leave *01*「离开」>
			]]
		end
		
		
		if lualib:Player_EnterDgn(player, "千幻阵", 0, 0, 1) == false then
			return 
			[[
			进入地图失败！
			<@leave *01*「离开」>
			]]
		end
	else
		return
		[[#COLORCOLOR_YELLOW#你的元宝不足100！#COLOREND#]]
	end
	
	return ""
end




function leave(player)
    return ""
end
