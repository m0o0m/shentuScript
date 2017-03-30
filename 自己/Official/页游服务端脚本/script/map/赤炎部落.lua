local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/level_gold_exp")



function on_map_create(map)
	lualib:AddTrigger(map,  lua_trigger_enter_map, "on_trigger_enter_map")
	lualib:AddTrigger(map,  lua_trigger_pre_die, "on_trigger_pre_die")
end

function on_trigger_enter_map(player)
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.该地图爆终极装备和各种超级道具\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.该地图高回报但有高风险，死亡会掉1%的经验\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.包裹里若有辟火符，死亡不会掉经验\n \n#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 310)
	
	local mapKeyname = lualib:KeyName(lualib:MapGuid(player))
	if 	mapKeyname == "赤炎部落1" then
		lualib:SysMsg_SendBoardMsg(player, "温馨小贴士",  "\n#COLORCOLOR_GREENG##UILINK<WND:提交表单,PARAM:小贴士;cybl_ts;player,STR:爱瑶：请点我→[温馨小贴士]##COLOREND#", 10000)   
	end
    return true
end



function on_trigger_pre_die(dieer, killer)
    if lualib:Player_IsPlayer(dieer) == false then
        lualib:Kill(dieer)
        return true
    end
	local sizhename = lualib:Name(dieer)
	local killername = lualib:Name(killer)
	local now_exp = lualib:GetExp(dieer)
	local sub_exp = math.ceil(now_exp / 100)
	local item = "辟火丹"
	
	local bihuo_num = lualib:ItemCountByKey(dieer, item, true, false, false, 2)
	
	if bihuo_num >= 1 then
		if not lualib:DelItem(dieer, item, 1, 2, "赤炎部落替玩家挡死", dieer) then
			lualib:SysMsg_SendPromptMsg(dieer, "扣除道具失败")
			return
		end
			lualib:SysMsg_SendPromptMsg(dieer, "由于你身上有["..item.."]的存在，它替你抵挡了邪火诅咒的入侵，死亡不会掉经验！")
			return true
	else
		if not lualib:Player_SubExp(dieer, sub_exp, "特殊地图死亡扣除经验", dieer) then
			lualib:SysMsg_SendPromptMsg(dieer, "经验扣除失败!")
		else
			lualib:SysMsg_SendPromptMsg(dieer, "#COLORCOLOR_RED#由于该地图受到了恶魔的邪火诅咒，死亡必掉经验！你被[#COLORCOLOR_END##COLORCOLOR_YELLOW#"..killername.."#COLOREND##COLORCOLOR_RED#]打败，经验损失1%！从"..now_exp.."中损失了"..sub_exp.."#COLOREND#\n")
			lualib:SysMsg_SendBoardMsg(dieer, "邪火诅咒",  "#COLORCOLOR_RED#由于该地图受到了恶魔的邪火诅咒，死亡必掉经验！你被[#COLORCOLOR_END##COLORCOLOR_YELLOW#"..killername.."#COLOREND##COLORCOLOR_RED#]打败，经验损失1%！从"..now_exp.."中损失了"..sub_exp.."#COLOREND#", 10000)   
		end
	end
    return true
end


function on_map_destroy(map)
    lualib:ClearTrigger(map)
end
