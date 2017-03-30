local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("map/秘海封印数据")



	
function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#────────────#COLOREND##COLORCOLOR_SKYBLUE#秘海封印#COLOREND##COLORCOLOR_BROWN#───────────#COLOREND#\n"
	msg = msg..
	[[秘海封印妖魔正准备冲击封印，阻止这些妖魔的行动可获得不少金币！#COLORCOLOR_GREENG#30级#COLOREND#以后的#COLORCOLOR_YELLOW#金币#COLOREND#将海量产出！#COLOREND#
	#COLORCOLOR_BROWN#────────────────────────────#COLOREND#
#COLORCOLOR_GREENG#小提示1：进入地图后使用#COLOREND##COLORCOLOR_RED#召唤石#COLOREND##COLORCOLOR_GREENG#召唤守护者，可阻止妖魔！#COLOREND#
	#COLORCOLOR_GREENG#小提示2：召唤石在所有地宫的怪物身上可以获得！#COLOREND#
	#COLORCOLOR_BROWN#────────────────────────────#COLOREND#
	#OFFSET<X:0,Y:5>##IMAGE<ID:1902700018>#<@enter *01*进入秘海封印>]]
	return msg
end

function enter(npc, player)
	day = lualib:GetAllDays(0)
	today = lualib:GetInt(player, "td_daybl")
	lv = lualib:Level(player)
	lualib:SetInt(player, "L_V", lv)
	lualib:SetCamp(player, 1)
    if lv >= 35 then
        if today ~= day then
            lualib:SetInt(player, "td_daybl", day)
            lualib:SetInt(player, "td_cs", 0)
			td_enter_cs = lualib:GetInt(player, "td_cs")
			local dgn = lualib:Map_CreateDgn("秘海封印", false, 3600)
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
            if lualib:Player_EnterDgn(player, "秘海封印", 29, 84, 1) == false then
                    return 
                    [[
                    进入地图失败！
                    <@leave *01*「离开」>
                    ]]
            end
            lualib:SetInt(player, "td_cs", td_enter_cs + 1)
        else
            td_enter_cs = lualib:GetInt(player, "td_cs")
            if  	td_enter_cs >= 1 then
                    return 
                    [[#COLORCOLOR_RED#你今天已经免费进入过]]..td_enter_cs..[[次了！#COLOREND#
#COLORCOLOR_BROWN#──────────———————────————————#COLOREND#
不过看你这么有诚意，只要你再给我#COLORCOLOR_RED#100元宝#COLOREND#,我就让你再进一次
#COLORCOLOR_BROWN#──────────———————────————————#COLOREND#
#COLORCOLOR_BROWN#注：等级低于30级的玩家可以在我这里每天进入三次低级秘海封印，等级高于30级的玩家可以每天免费进入一次高级秘海封印。#COLOREND#
#IMAGE1902700037#<@huaqian *01*「施舍」>]]
            else
				td_enter_cs = lualib:GetInt(player, "td_cs")
                local dgn = lualib:Map_CreateDgn("秘海封印", false, 3600)
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
                
                if lualib:Player_EnterDgn(player, "秘海封印", 29, 84, 1) == false then
                    return 
                    [[
                    进入地图失败！
                    <@leave *01*「离开」>
                    ]]
                end
                lualib:SetInt(player, "td_cs", td_enter_cs + 1)
            end
        end
        return ""
    elseif lv <35 and lv >=20 then
        local bagfree = lualib:BagFree(player, true, false, false)
        if bagfree < 1 then
                        return "包裹空间不足！至少需要一个格子！"
        else
            if today ~= day then
				lualib:SetInt(player, "td_daybl", day)
				lualib:SetInt(player, "td_cs_small", 0)
				td_enter_cs_small = lualib:GetInt(player, "td_cs_small")
				local dgn = lualib:Map_CreateDgn("秘海封印", false, 3600)
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
				if lualib:Player_EnterDgn(player, "秘海封印", 29, 84, 1) == false then
					return 
					[[
					进入地图失败！
					<@leave *01*「离开」>
					]]
				end
				lualib:SetInt(player, "td_cs_small", td_enter_cs_small + 1)
            else
				td_enter_cs_small = lualib:GetInt(player, "td_cs_small")
			    if  	td_enter_cs_small >= 3 then
                        return 
                        [[#COLORCOLOR_RED#你今天已经免费进入过]]..td_enter_cs_small..[[次了！#COLOREND#
#COLORCOLOR_BROWN#──────────———————────————————#COLOREND#
						
#COLORCOLOR_BROWN#──────────———————────————————#COLOREND#
#COLORCOLOR_BROWN#注：等级低于35级的玩家可以在我这里每天进入三次低级秘海封印，等级高于35级的玩家可以每天免费进入一次高级秘海封印。#COLOREND#
                                                       <@leave *01*「离开」>]]
                else
					td_enter_cs_small = lualib:GetInt(player, "td_cs_small")
                    local dgn = lualib:Map_CreateDgn("秘海封印", false, 3600)
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
                    if lualib:Player_EnterDgn(player, "秘海封印", 29, 84, 1) == false then
                        return 
                        [[
                        进入地图失败！
                        <@leave *01*「离开」>
                        ]]
                    end
                    lualib:SetInt(player, "td_cs_small", td_enter_cs_small + 1)
                end
            end
            return ""
        end
    else 
            return
            [[您不被许可进入地图！




#COLORCOLOR_BROWN#注：等级低于35级的玩家可以在我这里每天进入三次低级秘海封印，等级高于35级的玩家可以每天免费进入一次高级秘海封印。#COLOREND#

                                                       <@leave *01*「离开」>]]
    end
end

function huaqian(npc, player)
	lv = lualib:Level(player)
	lualib:SetInt(player, "L_V", lv)
	lualib:SetCamp(player, 1)
	
	if lualib:Player_IsIngotEnough(player, 100, false) == true then
		if lualib:Player_SubIngot(player, 100, false, "花钱进入秘海封印", npc) == false then
			return "扣除元宝失败"
		end
		
		local dgn = lualib:Map_CreateDgn("秘海封印", false, 3600000)
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
		
		
		if lualib:Player_EnterDgn(player, "秘海封印", 29, 84, 1) == false then
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
