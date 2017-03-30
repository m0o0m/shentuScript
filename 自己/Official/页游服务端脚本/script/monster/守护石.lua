local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("map/秘海封印数据")
require("map/秘海封印")
require("system/logic_def_lua")


local shouhushi_shengji =
{
		--["特殊"]	=	{{"群体减速守护者", 5, "群体减速"}, {"单体定身守护者", 5, "单体定身"}},
		--["群攻"]	=	{{"1级群攻守护者",  2, "1级群攻 "},  {"2级群攻守护者",  3, "2级群攻 "}, {"3级群攻守护者", 5, "3级群攻 "}, {"4级群攻守护者", 8, "4级群攻 "}},
		["单攻"]	=	{{"1级单攻守护者",  1, "1级单攻 "},  {"2级单攻守护者",  2, "2级单攻 "}, {"3级单攻守护者", 4, "3级单攻 "}, {"4级单攻守护者", 7, "4级单攻 "}},
		
		
	
}


local cailiao = "召唤石"




function main(monster, player)
	local msg = ""
	local map = lualib:MapGuid(monster)
	local x = lualib:X(monster)
	local y = lualib:Y(monster)
	local keyname = lualib:KeyName(monster)


	msg = msg .."#IMAGE<ID:1990340034>##COLORCOLOR_BROWN#请选择要召唤的守卫：#COLOREND#\n"
		for k, v in pairs(shouhushi_shengji) do
			msg = msg .."#IMAGE<ID:1902700042>##COLORCOLOR_RED#"..k.."#COLORCOLOR_END#\n"
			for k1, v1 in pairs(v) do
				msg = msg .."#OFFSET<X:15,Y:0>##COLORCOLOR_GREENG#"..v1[3].."#COLORCOLOR_END##COLORCOLOR_WHITE#("..v1[2].."个召唤石)#COLORCOLOR_END#"
				msg = msg .."#OFFSET<X:15,Y:0>##IMAGE<ID:1902700018>#".."<@shouhu_sj".."#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.."#"..v1[1].."#"..v1[2].. " *01*[召唤]>\n"
			end
		end
	lualib:NPCTalkDetail(player, msg, 265, 310)
	

	

	return ""
end

function on_create(monster)
	lualib:AddTrigger(monster,  lua_trigger_monster_born, "on_born")
end

function on_born(monster)
	lualib:AddBuff(monster, "无敌", 0)
end

function shouhu_sj(player, map, x, y, monster, keyname, xuanze, num)
	local playername = lualib:Name(player)
	local mapname = lualib:Name(map)
    local bangding_count = lualib:ItemCountByKey(player, cailiao, true, false, false, 1)
    local bubang_count = lualib:ItemCountByKey(player, cailiao, true, false, false, 0)
    local itemnum = bangding_count + bubang_count
	num = tonumber(num)
		if keyname == xuanze then
			lualib:SysMsg_SendPromptMsg(player, "该守卫已经是"..xuanze.."了！")
		else
			if itemnum < num then
				lualib:SysMsg_SendPromptMsg(player, "你的材料不足，无法召唤！")
				return ""
			else
				if	lualib:Monster_Remove(monster) == true then
                    if bangding_count >= num then
                        lualib:DelItem(player, cailiao, num, 1, "召唤守卫删除", player)
                    else					
                        if not lualib:DelItem(player, cailiao, num - bangding_count, 0, "召唤守卫删除", player) then
							lualib:SysMsg_SendPromptMsg(player, "扣除道具失败")
							return
						end
                    end
					lualib:Map_GenMonster(map, tonumber(x), tonumber(y), 0, 4, xuanze, 1, true)
					--设为阵营1，和进入地图的玩家一样
					local sw_guid = lualib:Map_GetRegionMonsters(map, xuanze, tonumber(x), tonumber(y), 0, false, false) 
					if  sw_guid[1] == nil then
						lualib:SysMsg_SendPromptMsg(player, "由于你站的位置正好是守卫出生的位置，所以召唤失败！")
						lualib:AddItem(player, cailiao, num, true, "守卫没有出生点，返还召唤石给玩家", player)
						return ""
					else
						lualib:SetCamp(sw_guid[1], 1)
						local zheny = lualib:Camp(sw_guid[1])
						lualib:SysMsg_SendPromptMsg(player, "召唤守卫成功")
					end
				end
			end
		end
	
	return ""
end
