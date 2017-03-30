local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local item_array_jl_jinbi = {}
item_array_jl_jinbi[10] = {"level_10_gold", 100}
item_array_jl_jinbi[15] = {"level_15_gold", 200}
item_array_jl_jinbi[20] = {"level_20_gold", 300}
item_array_jl_jinbi[25] = {"level_25_gold", 400}
item_array_jl_jinbi[30] = {"level_30_gold", 500}
item_array_jl_jinbi[35] = {"level_35_gold", 600}
item_array_jl_jinbi[40] = {"level_40_gold", 1000}
item_array_jl_jinbi[45] = {"level_45_gold", 2000}
item_array_jl_jinbi[50] = {"level_50_gold", 3000}


local talk_t = {"每升五级，你都可以获得元宝奖励哦。", "你说我站在这儿是做什么的？我是发奖的。", "更高的等级是你获得奖励的唯一方式。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 260000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    local msg = "#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	msg = msg.."     #COLORCOLOR_GOLD#从10级后，你每升5级，都可以到我这里来领取大量绑定元宝，#COLOREND#\n \n"
	msg = msg.."     #COLORCOLOR_GOLD#等级越高，领取的奖励越多，加油！#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	--msg = msg.."#OFFSET<X:0,Y:2>##IMAGE<ID:1902700031>##OFFSET<X:0,Y:-1>#<@Shengjijiangli *01*[领取升级奖励]>\n \n"
        msg = msg.."                                                #OFFSET<X:0,Y:2>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@likai *01*「离开」>\n"



	return msg
end


function Shengjijiangli(npc, player)
	local msg = "#COLORCOLOR_RED#★#COLOREND##COLORCOLOR_GOLD#等级越高，领取的奖励就越多哦，速度加油！#COLOREND#\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.." <@jiangli#10 *01*「领取10级奖励」>   <@jiangli#15 *01*「领取15级奖励」>   <@jiangli#20 *01*「领取20级奖励」>\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.." <@jiangli#25 *01*「领取25级奖励」>   <@jiangli#30 *01*「领取30级奖励」>   <@jiangli#35 *01*「领取35级奖励」>\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.." <@jiangli#40 *01*「领取40级奖励」>   <@jiangli#45 *01*「领取45级奖励」>   <@jiangli#50 *01*「领取50级奖励」>\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."      　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
--	msg = msg.."#COLORCOLOR_BLUE#╔╦╗#COLOREND#　　#COLORCOLOR_RED#★#COLOREND##COLORCOLOR_GOLD#等级越高，领取的奖励就越多哦，速度加油！#COLOREND#\n"
--	msg = msg.."#COLORCOLOR_BLUE#╠#COLOREND##COLORCOLOR_RED#升#COLOREND##COLORCOLOR_BLUE#╣　╔━━━━━━╦━━━━━━╦━━━━━━╗#COLOREND#\n"
--	msg = msg.."#COLORCOLOR_BLUE#╠╬╣　┃#COLOREND#<@jiangli#10 *01*领取10级奖励>#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#┃#COLOREND#<@jiangli#15 *01*领取15级奖励>#COLORCOLOR_BLUE#┃#COLOREND#<@jiangli#20 *01*领取20级奖励>#COLORCOLOR_BLUE#┃#COLOREND#\n"
--	msg = msg.."#COLORCOLOR_BLUE#╠#COLOREND##COLORCOLOR_RED#级#COLOREND##COLORCOLOR_BLUE#╬═╬━━━━━━╬━━━━━━╬━━━━━━╣#COLOREND#\n"
--	msg = msg.."#COLORCOLOR_BLUE#╠╬╬═╬#COLOREND#<@jiangli#25 *01*领取25级奖励>#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#┃#COLOREND#<@jiangli#30 *01*领取30级奖励>#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#┃#COLOREND#<@jiangli#35 *01*领取35级奖励>#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#┃#COLOREND#\n"
--	msg = msg.."#COLORCOLOR_BLUE#╠#COLOREND##COLORCOLOR_RED#奖#COLOREND##COLORCOLOR_BLUE#╬═╬━━━━━━╬━━━━━━╬━━━━━━╣#COLOREND#\n"
--	msg = msg.."#COLORCOLOR_BLUE#╠╬╣　┃#COLOREND#<@jiangli#40 *01*领取40级奖励>#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#┃#COLOREND#<@jiangli#45 *01*领取45级奖励>#OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#┃#COLOREND#<@jiangli#50 *01*领取50级奖励>#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#┃#COLOREND#\n"
--	msg = msg.."#COLORCOLOR_BLUE#╠#COLOREND##COLORCOLOR_RED#励#COLOREND##COLORCOLOR_BLUE#╣　╚━━━━━━╩━━━━━━╩━━━━━━╝#COLOREND#\n"
--	msg = msg.."      　　　　　　　　　　　　　　　　　　　<@main *01*「返回」>\n"

	return msg
end

function jiangli(npc, player, level)
		local msg = ""
		if lualib:Player_GetCustomVarInt(player, item_array_jl_jinbi[tonumber(level)][1]) == 1 then
			lualib:SysMsg_SendWarnMsg(player, level.."级的奖励您已经领取过了！")
			msg = "很抱歉，"..level.."级的奖励您已经领取过了！\n \n \n \n \n \n \n \n"
	                msg = msg.."    　　　　　　　　　　　　　　　　　　　  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Shengjijiangli *01*「返回」>\n"
			return msg
		end

		local role_level = lualib:Player_GetIntProp(player, lua_role_level)  --获取等级
		if role_level >= tonumber(level) then
			if lualib:Player_AddIngot(player, item_array_jl_jinbi[tonumber(level)][2], true, "加元宝：升级奖励", player) then
				lualib:SysMsg_SendTriggerMsg(player, "恭喜！您获得奖励：绑定元宝增加"..item_array_jl_jinbi[tonumber(level)][2].."！")
				msg = "恭喜！您获得奖励：绑定元宝增加"..item_array_jl_jinbi[tonumber(level)][2].."！\n \n \n \n \n \n \n \n"
	                msg = msg.."    　　　　　　　　　　　　　　　　　　　  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Shengjijiangli *01*「返回」>\n"
				lualib:Player_SetCustomVarInt(player, item_array_jl_jinbi[tonumber(level)][1], 1)
			else
				msg = "很遗憾，奖励失败！\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
			end
		else
			lualib:SysMsg_SendTriggerMsg(player, "您的等级未达到奖励条件，请継续努力！")
			msg = "您的等级未达到奖励条件，请継续努力！\n \n \n \n \n \n \n \n"
	                msg = msg.."    　　　　　　　　　　　　　　　　　　　  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Shengjijiangli *01*「返回」>\n"
		end
		return msg
end

function likai(npc, player)
	return""
end
