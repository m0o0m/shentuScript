--[[第三层BOSS房：杀BOSS
BOSS一开始无敌，需要将BOSS引到指定的逻辑格上，消除无敌状态，然后攻击
BOSS有两种无敌，需要用两种不同的BUFF去抵消无敌状态
两个抵消点固定，需要来回将BOSS移动到抵消点
BOSS定时生成无敌BUFF，两种BUFF交替生成

脚本功能:
1.BOSS怪生成时获得一个无敌BUFF(A),1分钟后,BOSS怪身上的BUFF(A)被替换为无敌BUFF(B),再过1分钟,BUFF(B)被替换为BUFF(A),依次循环
2.BOSS房的指定坐标的两个逻辑格上A和B,当BOSS怪走到逻辑格A上时,会将BOSS怪身上的BUFF(A)消除;当BOSS怪走到逻辑格B上时,会将BOSS怪身上的BUFF(B)消除
]]

local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local def_table = 
{
    gen_monster = 
    {
        {"深渊魔王", 1},
    },
}

function on_map_create(map)
    lualib:Debug("烈焰深渊3副本开启！")

	
	
    for i = 1, #def_table.gen_monster do
        if not lualib:Map_GenMonster(map, 72, 72, 6, lualib:GenRandom(0, 7), def_table.gen_monster[i][1], def_table.gen_monster[i][2], false) then
            lualib:Error("烈焰深渊3副本刷BOSS失败！")
        end
    end
    lualib:Debug("烈焰深渊3副本刷BOSS成功！")

    lualib:AddTrigger(map, lua_trigger_enter_map, "on_enter_map")
end

function on_map_destroy(map)
    lualib:ClearTrigger(map)
    lualib:Debug("烈焰深渊3副本销毁！")
end

function on_enter_map(player)
    lualib:SysMsg_SendTriggerMsg(player, "欢迎来到烈焰深渊三层，这个副本将在"..lualib:Time2Str("%Y-%m-%d", lualib:GetAllTime()).." 23:59:59后重置！")
	lualib:RunClientScript(player, "mapeffect", "texiao", "100001560#79#70#0#99999000")
	lualib:RunClientScript(player, "mapeffect", "texiao", "100001570#63#83#0#99999000")
end

