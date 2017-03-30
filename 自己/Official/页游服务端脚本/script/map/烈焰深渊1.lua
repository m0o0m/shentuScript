--[[第一层：真假怪物
通过怪物的喊话来判断真假，打死真怪后可以进入下一层
打死假怪物时，怪物爆炸，对周围的角色造成伤害

脚本功能:
怪物死亡后,触发一个指定技能
杀死指定的怪物后,角色可以通过NPC进入下一层地图]]

local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local def_table = 
{
    gen_monster = 
    {
        {"深渊奴仆假", 100},
        {"深渊奴仆真", 10},
    }
}

function on_map_create(map)
    lualib:Debug("烈焰深渊1副本开启！")

    for i = 1, #def_table.gen_monster do
        if not lualib:Map_BatchGenMonster(map, def_table.gen_monster[i][1], def_table.gen_monster[i][2], false) then
            lualib:Warn("烈焰深渊1副本刷怪没有达到指定的数量！")
        end
    end

    lualib:AddTrigger(map, lua_trigger_enter_map, "on_enter_map")
end

function on_map_destroy(map)
    lualib:ClearTrigger(map)
    lualib:Debug("烈焰深渊1副本销毁！")
end

function on_enter_map(player)
    lualib:SysMsg_SendTriggerMsg(player, "欢迎来到烈焰深渊一层，这个副本将在"..lualib:Time2Str("%Y-%m-%d", lualib:GetAllTime()).." 23:59:59后重置！")
	
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.烈焰深渊共3层，每层都有不同的玩法，最终BOSS在第三层\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.这里会产出高级技能的残页和一些好装备\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.打败最终BOSS后，可获得魔王的宝藏，可随机开出宝物^_^#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 310)
end
