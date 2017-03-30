local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/marry")
require("system/serializer")
local talk_t = {"结婚是一件神圣而幸福的事情，如果你有心仪之人，可以向他（她）求婚哦。", "结婚需要结婚戒指和一些金币，你可以去灵山获得结婚戒指和玫瑰花。", "结婚可以获得勋章和情比金坚状态，夫妻之间越亲密，勋章和状态的效果越好哦。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 300000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)

		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end
function main(npc, player)

	--lualib:ShowFormWithContent(player,"form文件表单","TaskDlg")
	lualib:ShowFormWithContent(player,"form文件表单","AutoLevelUpResultWnd")
	--lualib:ShowFormWithContent(player,"form文件表单","HandBook")

	
	
	
	
	local msg = "    有一种情绪自亘古而来，奔涌于灵魂深处，无人不战栗！有一种欲望山不断，水不能隔，雷击不灭，无人可逃避！辗转反侧，长夜难眠，只等戒指戴上你的无名指！带着你的伴侣，拿上结婚戒指和10W金币，就可以在我这里结成连理\n"
	msg = msg.."#OFFSET<X:2,Y:-4>##COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."#OFFSET<X:2,Y:2>##IMAGE1902700041##OFFSET<X:0,Y:-2>#<@propose *01*[我要向心仪的人求婚]>\n"
	msg = msg.."#OFFSET<X:2,Y:2>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@reward *01*[领取夫妻奖励]>\n"
	msg = msg.."#OFFSET<X:2,Y:2>##IMAGE1902700015##OFFSET<X:0,Y:-2>#<@jump *01*[前往灵山]（专有情缘地图）>\n"
	msg = msg.."#OFFSET<X:2,Y:2>##IMAGE1902700030##OFFSET<X:0,Y:-2>#<@divorce *01*[协议离婚]>\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE1902700017##OFFSET<X:0,Y:-2>#<@force_divorce *01*[强制离婚]>\n"
	msg = msg.."                                                      #OFFSET<X:0,Y:-6>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@likai *01*[离开]>\n\n"
	--if 5 <= lualib:GMLevel(player) then
		--msg = msg.."<@main2 *01*[测试功能]>\n"
	--end
	lualib:NotifyVar(player, "dsadasdsadsadw22222")
	return msg
end

function propose(npc, player)
    -- 判断性别，求婚的总该是男的
    local gender = lualib:Player_GetIntProp(player,  lua_role_gender)
    if gender ~=  lua_gender_male then
        return "求婚这事儿，女孩儿还是矜持点好。\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    -- 判断婚否
    if lualib:Player_GetCustomVarStr(player, "配偶GUID") ~= "" then
        return "重婚可是犯法的。\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    -- 判断是否有车有房
    if not lualib:Player_IsGoldEnough(player, 100000, false) then
        return "结婚需要一枚结婚戒指和100000金币！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    if lualib:Player_GetItemCount(player, "结婚戒指") < 1 then
       return "结婚戒指都没准备好就想求婚？\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    -- 条件符合，询问结婚对象
    lualib:ShowForm(player, "求婚表单")
    return ""
end

function divorce(npc, player)
    local spouse = lualib:Player_GetCustomVarStr(player, "配偶姓名")
    if spouse == "" then
        return "你还没结婚呢。\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    -- 判断对方是否在线
    local spouse_guid = lualib:Player_GetGuid(spouse)
    if spouse_guid == "" or lualib:Map_GetDistance(lualib:Npc_GetPosX(npc), lualib:Npc_GetPosY(npc), lualib:Player_GetPosX(spouse_guid), lualib:Player_GetPosY(spouse_guid)) > 10 then
        return "咦，我没看到"..spouse.."在这里啊。\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    local player_name = lualib:Player_GetStrProp(player,  lua_role_user_name)

    if lualib:SysMsg_SendMsgDlg(spouse_guid, 1, "你确定要和"..player_name.."离婚吗？#BUTTON0#确定#BUTTONEND##BUTTON1#取消#BUTTONEND#", 30, "on_divorce_ack", player_name) == false then
        return "忙着呢，你过会儿再来吧\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

	return "您向对方发出了协议离婚请求，请等待对方回应！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
end

function force_divorce(npc, player)
    local spouse = lualib:Player_GetCustomVarStr(player, "配偶姓名")
    if spouse == "" then
        return "你还没结婚呢。\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    -- 强制离婚需要手续费
    if not lualib:Player_IsGoldEnough(player, 1000000, false) then
        return "强制离婚需要1000000金币和一张好人卡！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    -- 需要道具
    if lualib:Player_GetItemCount(player, "好人卡") < 1 then
       return "你没有好人卡。\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    lualib:SysMsg_SendMsgDlg(player, 1, "你确定要和"..spouse.."离婚吗？#BUTTON0#确定#BUTTONEND##BUTTON1#取消#BUTTONEND#", 30, "on_force_divorce_ack", spouse)
end

function on_divorce_ack(dlg_id, player, button_id, spouse)
	local button_id = tonumber(button_id)
	local spouse_guid = lualib:Name2Guid(spouse)
    if button_id ~= 0 then
		lualib:SysMsg_SendTriggerMsg(spouse_guid, "对方拒绝离婚。")
		lualib:SysMsg_SendTriggerMsg(player, "你拒绝了离婚！")
        return "对方拒绝离婚。"
    end
    lualib:Player_SetCustomVarStr(player, "配偶姓名", "")
    lualib:Player_SetCustomVarStr(player, "配偶GUID", "")
    marry_unload(player)

    lualib:SysMsg_SendPromptMsg(player, "你和"..spouse.."离婚了。")
    lualib:Player_NotifyCustomParam(player, "配偶姓名")
    lualib:ScriptFuncToPlayer(spouse, "结婚", "on_divorce", "")

    return ""
end

function on_force_divorce_ack(dlg_id, player, button_id, spouse)
    if button_id ~= 0 then
        return ""
    end

    -- 强制离婚需要手续费
    if not lualib:Player_IsGoldEnough(player, 1000000, false) then
        return "你的金币不足。\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    -- 需要道具
    if lualib:Player_GetItemCount(player, "好人卡") < 1 then
       return "你没有好人卡。\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    --扣除物品
    lualib:Player_SubGold(player, 1000000, false, "扣金币：离婚手续费", spouse)
    lualib:Player_DestroyItem(player, "好人卡", 1, "删物品：离婚用道具", spouse)

    lualib:Player_SetCustomVarStr(player, "配偶姓名", "")
    lualib:Player_SetCustomVarStr(player, "配偶GUID", "")
    marry_unload(player)

    lualib:SysMsg_SendPromptMsg(player, "你和"..spouse.."离婚了。")
    lualib:Player_NotifyCustomParam(player, "配偶姓名")
    lualib:ScriptFuncToPlayer(spouse, "结婚", "on_divorce", "")

    return ""
end

function on_divorce(player)
    local spouse = lualib:Player_GetCustomVarStr(player, "配偶姓名")
    lualib:Player_SetCustomVarStr(player, "配偶姓名", "")
    lualib:Player_SetCustomVarStr(player, "配偶GUID", "")
    marry_unload(player)

    lualib:SysMsg_SendPromptMsg(player, spouse.."和你离婚了。")
    lualib:Player_NotifyCustomParam(player, "配偶姓名")
end

function reward(npc, player)
	msg = "#COLORCOLOR_SKYBLUE#选择你要领取的奖励#COLOREND#\n"
	msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n \n"
    msg = msg.."#OFFSET<X:2,Y:2>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@medal_award *01*[领取同心勋章]>\n"
	msg = msg.."#OFFSET<X:2,Y:2>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@buff_award *01*[领取情比金坚状态]>\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE1902700017##OFFSET<X:0,Y:-2>#<@reward_info *01*[奖励介绍]>\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE1902700017##OFFSET<X:0,Y:-2>#<@intimacy_info *01*[亲密度介绍]>\n \n \n"
		msg = msg.."                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
	return msg
end

function reward_info(npc, player)
	local msg = "#COLORCOLOR_GOLD#奖励一：同心勋章（需要相应的亲密度才可以佩带）#COLOREND# "
			msg = msg.." \n #COLORCOLOR_RED#亲密度1～999：#COLOREND#    #OFFSET<X:3,Y:0>#同心勋章一级（全属性0-1）"
			msg = msg.." \n #COLORCOLOR_RED#亲密度1000～1999：#COLOREND##OFFSET<X:4,Y:0>#同心勋章二级（全属性0-2）"
			msg = msg.." \n #COLORCOLOR_RED#亲密度2000～2999：#COLOREND##OFFSET<X:2,Y:0>#同心勋章三级（全属性0-3）"
			msg = msg.." \n #COLORCOLOR_RED#亲密度3000～4499：#COLOREND#同心勋章四级（全属性0-4命中+1,暴击+1）"
			msg = msg.." \n #COLORCOLOR_RED#亲密度4500～5999：#COLOREND##OFFSET<X:1,Y:0>#同心勋章五级（全属性0-5命中+1,闪避+1,暴\n                     #COLOREND##OFFSET<X:-4,Y:0>#击+1）"
			msg = msg.." \n #COLORCOLOR_RED#亲密度6000以上：#COLOREND#   #COLOREND##OFFSET<X:-4,Y:0>#同心勋章六级（全属性1-6,命中+2,闪避+2,暴\n                     #OFFSET<X:-4,Y:0>#击+2）\n"
			msg = msg.." \n #COLORCOLOR_GOLD#奖励二：情比金坚状态（亲密度越高，情比金坚效果越大）#COLOREND#"
			msg = msg.." \n #COLORCOLOR_RED#亲密度1～999：#COLOREND#    #OFFSET<X:2,Y:0>#打怪经验增加1%"
			msg = msg.." \n #COLORCOLOR_RED#亲密度1000～1999：#COLOREND# #OFFSET<X:-2,Y:0>#打怪经验增加5%"
			msg = msg.." \n #COLORCOLOR_RED#亲密度2000～2999：#COLOREND##OFFSET<X:2,Y:0>#打怪经验增加10%"
			msg = msg.." \n #COLORCOLOR_RED#亲密度3000～4499：#COLOREND#打怪经验增加15%"
			msg = msg.." \n #COLORCOLOR_RED#亲密度4500～5999：#COLOREND##OFFSET<X:1,Y:0>#打怪经验增加20%"
			msg = msg.." \n #COLORCOLOR_RED#亲密度6000以上：#COLOREND#  #OFFSET<X:1,Y:0>#打怪经验增加30% \n\n"
		msg = msg.."                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@reward *01*「返回」>\n \n"
	return msg
end

function intimacy_info(npc, player)
	local msg = "#COLORCOLOR_GOLD#亲密度开启:#COLOREND# "
			msg = msg.." \n 男女双方结为夫妻后,亲密度自动开启"
			msg = msg.." \n #COLORCOLOR_GOLD#亲密度增加:#COLOREND#"
			msg = msg.." \n 1.夫妻双方在同一队伍时,每分钟双方自动增加#COLORCOLOR_SKYBLUE#1点#COLOREND#亲密度"
			msg = msg.." \n 2.夫妻一方对另一方成功使用#COLORCOLOR_RED#玫瑰花#COLOREND#,根据玫瑰花的种类增加相应的亲密度"
			msg = msg.." \n #COLORCOLOR_GOLD#其他说明:#COLOREND#"
			msg = msg.." \n 1.夫妻双方如果成功#COLORCOLOR_RED#离婚#COLOREND#,则双方的亲密度全部清除"
			msg = msg.." \n 2.亲密度如果#COLORCOLOR_GOLD#高于2000#COLOREND#,则每天00:00:00时将#COLORCOLOR_RED#扣除#COLOREND#一定比例的亲密度"
		msg = msg.."                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@reward *01*「返回」>\n \n"
	return msg
end

function medal_award(npc, player)

	local spouse = lualib:Player_GetCustomVarStr(player, "配偶GUID")

	if spouse == "" then
		return "你还没有结婚，无法领取！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	end

	local free_slot = lualib:BagFree(player, true, false, false)--判断包裹是否有领勋章的空格
	if free_slot < 1 then
		return "背包已满，无法领取！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	end

	local t_medal = {"同心勋章一级", "同心勋章二级", "同心勋章三级", "同心勋章四级", "同心勋章五级", "同心勋章六级"}--判断是否已经领取过勋章
	for _, v in pairs(t_medal) do
		local medal_count = lualib:ItemCountByKey(player, v, true, true, true, 2)
			if medal_count > 0 then
				return "你已经领取过【同心勋章】，请丢弃你现在的【同心勋章】后再领取！\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
			end
	end


    local intimacy = lualib:Player_GetCustomVarInt(player, "intimacy")--根据亲密度领取对应的勋章
	if intimacy > 0 and intimacy<= 999 then
		lualib:AddSingleItem(player, "同心勋章一级", 1, 1, "亲密度达到1～999", "")
		return "一级同心勋章领取成功。\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	elseif intimacy > 999 and intimacy <= 1999 then
		lualib:AddSingleItem(player, "同心勋章二级", 1, 1, "亲密度达到1000～1999", "")
		return "二级同心勋章领取成功。\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	elseif intimacy > 1999 and intimacy <= 2999 then
		lualib:AddSingleItem(player, "同心勋章三级", 1, 1, "亲密度达到2000～2999", "")
		return "三级同心勋章领取成功。\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	elseif intimacy > 2999 and intimacy <= 4499 then
		lualib:AddSingleItem(player, "同心勋章四级", 1, 1, "亲密度达到3000～4499", "")
		return "四级同心勋章领取成功。\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	elseif intimacy > 4499 and intimacy <= 5999 then
		lualib:AddSingleItem(player, "同心勋章五级", 1, 1, "亲密度达到4500～5999", "")
		return "五级同心勋章领取成功。\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	elseif intimacy > 5999 then
		lualib:AddSingleItem(player, "同心勋章六级", 1, 1, "亲密度达到6000以上", "")
		return "六级同心勋章领取成功。\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	else
		return "你的亲密度为0，无法领取【同心勋章】！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	end

end

function buff_award(npc, player)--根据亲密度领取经验加成BUFF

	local spouse = lualib:Player_GetCustomVarStr(player, "配偶GUID")

	if spouse == "" then
		return "你还没有结婚，无法领取！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	end

	local buff_name = "情比金坚"
	local buff_check = lualib:HasBuff(player, buff_name)

	if buff_check == true then
		return "你已经拥有了“情比金坚”的效果，请等该效果消失后再来领取！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	end

    local intimacy = lualib:Player_GetCustomVarInt(player, "intimacy")
	if intimacy > 0 and intimacy<= 999 then
		lualib:AddBuffEx(player, "情比金坚", 6000, 1)
		return "情比金坚状态领取成功。\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	elseif intimacy > 999 and intimacy <= 1999 then
		lualib:AddBuffEx(player, "情比金坚", 6000, 5)
		return "情比金坚状态领取成功。\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	elseif intimacy > 1999 and intimacy <= 2999 then
		lualib:AddBuffEx(player, "情比金坚", 6000, 10)
		return "情比金坚状态领取成功。\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	elseif intimacy > 2999 and intimacy <= 4499 then
		lualib:AddBuffEx(player, "情比金坚", 6000, 15)
		return "情比金坚状态领取成功。\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	elseif intimacy > 4499 and intimacy <= 5999 then
		lualib:AddBuffEx(player, "情比金坚", 6000, 20)
		return "情比金坚状态领取成功。\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	elseif intimacy > 5999 then
		lualib:AddBuffEx(player, "情比金坚", 6000, 30)
		return "情比金坚状态领取成功。\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	else
		return "你的亲密度为0，无法领取情比金坚的效果！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	end
end

function jump(npc,player)
	local 	msg = "进入#COLORCOLOR_SKYBLUE#灵山#COLOREND#能打到各种只有夫妻才可以使用的#COLORCOLOR_RED#疗伤药#COLOREND#、#COLORCOLOR_RED#传送卷轴#COLOREND#，如果运气好，还可以打到#COLORCOLOR_RED#结婚戒指#COLOREND#和增加亲密度的#COLORCOLOR_RED#玫瑰花#COLOREND#！\n"
			msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n \n"
			msg = msg.."#OFFSET<X:0,Y:1>#     #IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#灵山#55#77#4 *01*【进入灵山】>               #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"

	return msg
end

function MapMoveXYA(npc, player, map_key_name, x, y, r)
	local msg=""
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
    end
	return msg
end

function likai(npc, player)
	return ""
end

local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/marry")
require("system/serializer")


function main2(npc, player)
	local msg = "\n    什么妖魔我没见过！什么鬼怪我没杀过！魔物来吧！我的大刀早已寂寞难耐！\n\n"
	
	msg = msg.."<@ForTest_clearBag *01*【清空背包】>#COLOREND#\n\n"
	msg = msg.."<@ForTest_setVip *01*【设置VIP等级】>#COLOREND#\n\n"
	msg = msg.."<@ForTest_clearValue *01*【设置变量】>#COLOREND#\n\n"
	msg = msg.."<@ForTest_setCCY *01*【金币元宝】>#COLOREND#\n\n"
	msg = msg.."<@ForTest_equip *01*【装备属性】>#COLOREND#\n\n"
	msg = msg.."<@ForTest_as *01*【牛逼技能】>#COLOREND#\n\n"
	return msg
end

function ForTest_clearBag(npc, player)
	if lualib:ClearBag(player,false,true,false,false,"测试",player) then
		return "清空背包成功。"
	else
		return "清空背包失败。"
	end
end


function ForTest_setVip(npc, player, level)
	if nil ~= level and "" ~= level then
		lualib:SetVipLevel(player, tonumber(level))
		return "成功"
	else
		local msg = "<@ForTest_setVip#1 *01*【设置为VIP1】>\n\n"
		msg = msg.."<@ForTest_setVip#2 *01*【设置为VIP2】>\n\n"
		msg = msg.."<@ForTest_setVip#3 *01*【设置为VIP3】>\n\n"
		msg = msg.."<@ForTest_setVip#4 *01*【设置为VIP4】>\n\n"
		msg = msg.."<@ForTest_setVip#5 *01*【设置为VIP5】>\n\n"
		msg = msg.."<@ForTest_setVip#6 *01*【设置为VIP6】>\n\n"
		msg = msg.."<@ForTest_setVip#7 *01*【设置为VIP7】>\n\n"
		msg = msg.."<@ForTest_setVip#8 *01*【设置为VIP8】>\n\n"
		msg = msg.."<@ForTest_setVip#9 *01*【设置为VIP9】>\n\n"
		msg = msg.."<@ForTest_setVip#10 *01*【设置为VIP10】>\n\n"
		return msg
	end
end

function ForTest_clearValue(npc, player, flag)
	if nil ~= flag and "" ~= flag then
		flag = tonumber(flag)
		if 1 == flag then
			lualib:SetDayInt(player,"sign_today", 0)
			for i = 1, 5 do
				lualib:SetInt(player,"Is_Get"..i, 0)
			end
			local Sign_t = {}
			for i = 1 , 31 do 
				Sign_t[i] = 0 
			end
			for i = 1 , 22 do 
				Sign_t[i] = 1
			end
			for i = 1 , 4 do 
				lualib:SetDayInt(player,"Online_Is_Get"..i,0)
			end
			for i = 1 , 7 do 
				lualib:SetInt(player,"Login_Is_Get"..i,0)
			end
			local month_now = lualib:GetMonth(0)
			lualib:SetStr(player,"sign_table"..month_now, json.encode(Sign_t))
			lualib:SetInt(player, 'isGetAll7DayRWD',0)
			lualib:SetInt(player,"logout_hour",99)
			lualib:SetInt(player,"lastRewardIndex",1)
		elseif 2 == flag then
			lualib:SetDayInt(player, "totalActivityDegree",0)
			local missionState = {0, 0, 0, 0}
			lualib:SetDayStr(player, "ActivityDegree_flag", json.encode(missionState))
			lualib:SetDayInt(player,"activityDgr_cm",0)
			lualib:SetDayInt(player,"activityDgr_fb",0)
			lualib:SetDayInt(player,"activityDgr_zx",0)
			lualib:SetDayInt(player,"activityDgr_jl",0)
			lualib:SetDayInt(player,"activityDgr_BOSS",0)
			lualib:SetDayInt(player,"activityDgr_yxwsc",0)
			lualib:SetDayInt(player,"activityDgr_tb",0)
			lualib:SetDayInt(player,"activityDgr_fm",0)
		elseif 3 == flag then
			lualib:SetDayInt(player,"经验buff",0)
			local str = tostring(lualib:Player_GetAccountID(player))
			for i = 1, 10 do
				local str1 = str.."vipReward"..i
				lualib:SetDBNum(str1,0)
			end
		elseif 4 == flag then
			local dayIntNameTb = {"62级经验副本","63级羽毛副本","64级盾牌副本","65级经验副本","65级宝珠副本"}
			if lualib:GetDayInt(player, "dailyFbDayFlag") == 0 then
				for i = 1, #dayIntNameTb do
					lualib:SetInt(player, dayIntNameTb[i], 0)
					lualib:NotifyVar(player, dayIntNameTb[i])
				end
				lualib:SetDayInt(player, "dailyFbDayFlag", 1)
			end	
		elseif 5 == flag then
			if lualib:GetDayInt(player,"resetDayNum") == 0 then  --每日重置任务次数
				local vl = lualib:GetVipLevel(player)
				if vl < 3 then
					lualib:SetInt(player,"cmDayNum",12)
				elseif vl >= 3 and vl < 6 then
					lualib:SetInt(player,"cmDayNum",14)
				else
					lualib:SetInt(player,"cmDayNum",16)
				end
				lualib:SetDayInt(player,"resetDayNum",1)
			end
		elseif 6 == flag then
			lualib:SetInt(player, "fengmo_count", 0)
		elseif 7 == flag then
			lualib:SetDayInt(player,"挖矿次数",0)
		elseif 8 == flag then
			lualib:SetDayInt(player,"天荒BOSS",0)
			lualib:SetDayInt(player,"邪庙BOSS",0)
			lualib:SetDayInt(player,"蜘蛛巢穴",0)
			lualib:SetDayInt(player,"牛魔王BOSS",0)
			lualib:SetDayInt(player,"蛮荒城BOSS",0)
			lualib:SetDayInt(player,"火龙BOSS",0)
		elseif 9 == flag then
			lualib:SetInt(player,"Ach_jifen", 95000000)
		elseif 10 == flag then
			lualib:SetInt(player,"boss_points", 9000000)
		elseif 11 == flag then
			lualib:SetInt(player,"xuefu_chip", 1000000)
		elseif 12 == flag then
			lualib:SetInt(player,"hudun_chip", 1000000)
		elseif 13 == flag then
			lualib:SetInt(player,"baoshi_chip", 1000000)
		elseif 14 == flag then
			lualib:SetInt(player,"hunzhu_chip", 1000000)
		elseif 15 == flag then
			lualib:SetInt(player,"ach_score", 90000000)
		elseif 16 == flag then
			lualib:SetInt(player, "reinLevel", 12)
		end
		return ForTest_clearValue(npc, player, nil)
	else
		local msg = "<@ForTest_clearValue#1 *01*【重置奖励大厅变量】>\n\n"
		msg = msg.."<@ForTest_clearValue#2 *01*【重置活跃度变量】>\n\n"
		msg = msg.."<@ForTest_clearValue#3 *01*【重置VIP礼包与BUFF】>\n\n"
		msg = msg.."<@ForTest_clearValue#4 *01*【重置每日副本变量】>\n\n"
		msg = msg.."<@ForTest_clearValue#5 *01*【重置功勋除魔变量】>\n\n"
		msg = msg.."<@ForTest_clearValue#6 *01*【重置封魔副本变量】>\n\n"
		msg = msg.."<@ForTest_clearValue#7 *01*【重置挖矿任务变量】>\n\n"
		msg = msg.."<@ForTest_clearValue#8 *01*【重置个人BOSS变量】>\n\n"
		msg = msg.."<@ForTest_clearValue#9 *01*【设置9500万成就积分】>\n\n"
		msg = msg.."<@ForTest_clearValue#10 *01*【设置900万BOSS积分】>\n\n"
		msg = msg.."<@ForTest_clearValue#11 *01*【设置100万护符印记】>\n\n"
		msg = msg.."<@ForTest_clearValue#12 *01*【设置100万盾牌残片】>\n\n"
		msg = msg.."<@ForTest_clearValue#13 *01*【设置100万宝珠碎片】>\n\n"
		msg = msg.."<@ForTest_clearValue#14 *01*【设置100万狂暴之灵】>\n\n"
		msg = msg.."<@ForTest_clearValue#15 *01*【设置9000万功勋值】>\n\n"
		msg = msg.."<@ForTest_clearValue#16 *01*【设置为12转】>\n\n"
		return msg
	end
end

function ForTest_setCCY(npc, player, flag)
	if nil ~= flag and "" ~= flag then
		flag = tonumber(flag)
		if 1 == flag then
			lualib:SubGold(player, lualib:GetGold(player), "测试", player)
			lualib:SubBindGold(player, lualib:GetBindGold(player), "测试", player)
			lualib:SubBindIngot(player, lualib:GetBindIngot(player), "测试", player)
			lualib:SubIngot(player, lualib:GetIngot(player), "测试", player)
		elseif 2 == flag then
			lualib:Player_AddGold(player, 100000000, true, "测试", player)
		elseif 3 == flag then
			lualib:Player_AddGold(player, 100000000, false, "测试", player)
		elseif 4 == flag then
			lualib:AddBindIngot(player, 1000000, "测试", player)
		elseif 5 == flag then
			lualib:AddIngot(player, 1000000, "测试", player)
		end
		return ForTest_setCCY(npc, player, nil)
	else
		local msg = "<@ForTest_setCCY#1 *01*【清空所有金钱】>\n\n"
		msg = msg.."<@ForTest_setCCY#2 *01*【增加1亿绑定金币】>\n\n"
		msg = msg.."<@ForTest_setCCY#3 *01*【增加1亿金币】>\n\n"
		msg = msg.."<@ForTest_setCCY#4 *01*【增加100万绑定元宝】>\n\n"
		msg = msg.."<@ForTest_setCCY#5 *01*【增加100万元宝】>\n\n"
		return msg
	end
end
----武器1，护腕3，戒指9，项链8，攻击(根据职业三选一)
local shux1 = {
	{{11,10},{13,12},{15,14}},
	{{1,7},{2,9},{3,11},{5,13},{6,17},{8,21},{10,25},{11,30},{13,34},{16,39},{19,43},{25,48}}
}
----衣服4，腰带7，鞋子6，头盔2，攻击,物防，魔防
local shux2 = {
	{
		{
			{11,10},{13,12},{15,14}
		},
		{7,6},
		{9,8}
	},
	{
		{
			{1,1},{1,6},{1,6}
		},
		{
			{2,2},{2,8},{2,8}
		},
		{
			{3,3},{4,10},{3,11}
		},
		{
			{3,4},{5,12},{4,14}
		},
		{
			{4,6},{7,16},{6,17}
		},
		{
			{4,7},{9,21},{7,21}
		},
		{
			{5,10},{11,26},{9,26}
		},
		{
			{5,13},{13,32},{9,31}
		},
		{
			{6,17},{14,38},{11,36}
		},
		{
			{8,22},{16,44},{13,43}
		},
		{
			{9,27},{18,51},{15,49}
		},
		{
			{10,33},{22,60},{17,54}
		}
	}
}
----护盾 15    物防，魔防
local shux3 = {
	{{7,6},{9,8}},
	{{{1,3},{1,2}},{{2,6},{2,4}},{{2,9},{3,6}},{{3,12},{4,9}},{{4,15},{5,11}},{{4,18},{5,14}},
	{{5,21},{6,18}},{{7,25},{7,25}},{{9,29},{9,30}},{{11,33},{11,38}},{{14,38},{13,48}},{{18,41},{15,60}}}
}
----宝石11，魂珠13 ,吊坠18  攻击
local shux4 = {
	{{11,10},{13,12},{15,14}},
	{{1,7},{2,9},{3,11},{5,13},{6,17},{8,21},{10,25},{11,30},{13,34},{16,39},{19,43},{25,48}}
}
----勋章10     攻击
local shux5 =
{
	{
		{11,10},{13,12},{15,14}
	},
	{
		{1,7},{2,9},{3,10},{5,11},{6,14},{8,17},{8,20},{10,24},{11,28},{13,33},{16,39},{20,45}
	}
}

function ForTest_equip(npc, player, flag)
	if nil ~= flag and "" ~= flag then
		flag = tonumber(flag)
		if 1 == flag then
			ForTest_qh(player, 6)
		elseif 2 == flag then
			ForTest_qh(player, 12)
		elseif 3 == flag then
			ForTest_yh(player, 6)
		elseif 4 == flag then
			ForTest_yh(player, 12)
		elseif 5 == flag then
			ForTest_qh(player, 0)
			ForTest_yh(player, 0)
		elseif 6 == flag then
			ForTest_bs(player, 6)
		elseif 7 == flag then
			ForTest_bs(player, 12)
		elseif 8 == flag then
			ForTest_clbs(player, 0)
		elseif 9 == flag then
			return ForTest_getEquip(npc, player)
		end
		return ForTest_equip(npc, player, nil)
	else
		local msg = "<@ForTest_equip#1 *01*【身上装备强化+6】>\n\n"
		msg = msg.."<@ForTest_equip#2 *01*【身上装备强化+12】>\n\n"
		msg = msg.."<@ForTest_equip#3 *01*【身上装备蕴魂+6】>\n\n"
		msg = msg.."<@ForTest_equip#4 *01*【身上装备蕴魂+12】>\n\n"
		msg = msg.."<@ForTest_equip#5 *01*【身上装备精炼清零】>\n\n"
		msg = msg.."<@ForTest_equip#6 *01*【身上装备6级宝石】>\n\n"
		msg = msg.."<@ForTest_equip#7 *01*【身上装备12级宝石】>\n\n"
		msg = msg.."<@ForTest_equip#8 *01*【身上装备宝石清零】>\n\n"
		msg = msg.."<@ForTest_equip#9 *01*【获得装备】>\n\n"
		return msg
	end
end
local equip_table = {
					{
						{
							{"至尊傲天战甲","至尊傲天头盔","至尊傲天项链","至尊傲天靴子","至尊傲天腰带","至尊傲天戒指","至尊傲天手镯","至尊傲天战刃"},
							{1,				1,				1,				1,				1,				2,			2,				1},
							{1,				1,				1,				1,				1,				1,			1,				1},
							{0,				0,				0,				0,				0,				0,			0,				0}
						},
						{
							{"至尊傲天战袍","至尊傲天头盔","至尊傲天项链","至尊傲天靴子","至尊傲天腰带","至尊傲天戒指","至尊傲天手镯","至尊傲天战刃"},
							{1,				1,				1,				1,				1,				2,			2,				1},
							{1,				1,				1,				1,				1,				1,			1,				1},
							{0,				0,				0,				0,				0,				0,			0,				0}
						}
					},
					{
						{
							{"天狂玄傲法袍","天狂玄傲头盔","天狂玄傲项链","天狂玄傲靴子","天狂玄傲腰带","天狂玄傲戒指","天狂玄傲手镯","天狂玄傲法杖"},
							{1,				1,				1,				1,				1,				2,			2,				1},
							{1,				1,				1,				1,				1,				1,			1,				1},
							{0,				0,				0,				0,				0,				0,			0,				0}
						},
						{
							{"天狂玄傲羽衣","天狂玄傲头盔","天狂玄傲项链","天狂玄傲靴子","天狂玄傲腰带","天狂玄傲戒指","天狂玄傲手镯","天狂玄傲法杖"},
							{1,				1,				1,				1,				1,				2,			2,				1},
							{1,				1,				1,				1,				1,				1,			1,				1},
							{0,				0,				0,				0,				0,				0,			0,				0}
						}
					},
					{
						{
							{"傲天元法道袍","傲天元法头盔","傲天元法项链","傲天元法靴子","傲天元法腰带","傲天元法戒指","傲天元法手镯","傲天元法道剑"},
							{1,				1,				1,				1,				1,				2,			2,				1},
							{1,				1,				1,				1,				1,				1,			1,				1},
							{0,				0,				0,				0,				0,				0,			0,				0}
						},
						{
							{"傲天元法道衣","傲天元法头盔","傲天元法项链","傲天元法靴子","傲天元法腰带","傲天元法戒指","傲天元法手镯","傲天元法道剑"},
							{1,				1,				1,				1,				1,				2,			2,				1},
							{1,				1,				1,				1,				1,				1,			1,				1},
							{0,				0,				0,				0,				0,				0,			0,				0}
						}
					}
}
function ForTest_getEquip(npc, player, flag)
	if nil ~= flag and "" ~= flag then
		flag = tonumber(flag)
		if 1 == flag then
			local job = lualib:Job(player)
			local gender = lualib:Gender(player)
			return tostring(lualib:Player_ItemRequest(player, equip_table[job][gender][1], equip_table[job][gender][2], equip_table[job][gender][3], equip_table[job][gender][4], "测试", player))
		end
		return ForTest_getEquip(npc, player, nil)
	else
		local msg = "<@ForTest_getEquip#1 *01*【一套12转装备】>\n\n"
		return msg
	end
end




function ForTest_as(npc, player)
	lualib:Player_AddSkill(player, "超级冰报漩涡")
	return "成功"
end

local equip_table = {
				lua_site_weapon,
				lua_site_helmet,
				lua_site_wrist_0,
				lua_site_wrist_1,
				lua_site_armor,
				lua_site_shoes,
				lua_site_shoulder,
				lua_site_necklace,
				lua_site_ring_0,
				lua_site_ring_1,
				lua_site_gem,
				lua_site_medal,
				lua_site_gloves,
				lua_site_shield,
				lua_site_amulet
}
function ForTest_qh(player, refineLevel)
	for i = 1, #equip_table do
		local item = ""
		item = lualib:Player_GetEquipGuid(player, equip_table[i])
		--lualib:SysPromptMsg(player, item)
		if "" ~= item and nil ~= item then
			lualib:Equip_SetRefineLevel(player, item, refineLevel)
			local job = lualib:Job(player)
			local itemlevel = lualib:Item_GetLevel(item)
			local subType = lualib:Item_GetSubType(player, item)
			local prop1 = 0
			local prop2 = 0
			if subType == 1 or subType == 9 or subType == 8 or subType == 3 then
				if itemlevel >= 100 then
					local a = 4 
					for i = 1 , 3 do 
						prop1 = 0
						prop2 = 0
						for j = 1, refineLevel do
							prop1 = prop1 + shux1[2][j][1]
							prop2 = prop2 + shux1[2][j][2]
						end
						lualib:Equip_SetExtProp(player, item, a, shux1[1][i][1], prop1)
						a = a + 1
						lualib:Equip_SetExtProp(player, item, a, shux1[1][i][2], prop1)
						a = a + 1
					end
				else
					prop1 = 0
					prop2 = 0
					for i = 1, refineLevel do
						prop1 = prop1 + shux1[2][i][1]
						prop2 = prop2 + shux1[2][i][2]
					end
					lualib:Equip_SetExtProp(player, item, 8, shux1[1][job][1], prop1)
					lualib:Equip_SetExtProp(player, item, 9, shux1[1][job][2], prop2)
				end
			elseif subType == 2 or subType == 4 or subType == 6 or subType == 7 then
				local a = 4
				for i = 1 , 3 do
					if i == 1 then
						if itemlevel >= 100 then
							a = 0
							for j = 1 , 3 do 
								prop1 = 0
								prop2 = 0
								for k = 1, refineLevel do
									prop1 = prop1 + shux2[2][k][i][1]
									prop1 = prop2 + shux2[2][k][i][2]
								end
								lualib:Equip_SetExtProp(player, item, a, shux2[1][i][j][1], prop1)
								a = a + 1
								lualib:Equip_SetExtProp(player, item, a, shux2[1][i][j][2], prop2)
								a = a + 1
							end
						else
							prop1 = 0
							prop2 = 0
							for k = 1, refineLevel do
								prop1 = prop1 + shux2[2][k][i][1]
								prop2 = prop2 + shux2[2][k][i][2]
							end
							lualib:Equip_SetExtProp(player, item, a, shux2[1][i][job][1], prop1)
							a = a + 1
							lualib:Equip_SetExtProp(player, item, a, shux2[1][i][job][2], prop2)
							a = a + 1
						end
					else
						prop1 = 0
						prop2 = 0
						for k = 1, refineLevel do
							prop1 = prop1 + shux2[2][k][i][1]
							prop2 = prop2 + shux2[2][k][i][2]
						end
						lualib:Equip_SetExtProp(player, item, a, shux2[1][i][1], prop1)
						a = a + 1
						lualib:Equip_SetExtProp(player, item, a, shux2[1][i][2], prop2)
						a = a + 1
					end
				end
			elseif subType == 15 then
				local a = 6
				for i = 1 , 2 do
					prop1 = 0
					prop2 = 0
					for k = 1, refineLevel do
						prop1 = prop1 + shux3[2][k][i][1]
						prop2 = prop2 + shux3[2][k][i][2]
					end
					lualib:Equip_SetExtProp(player, item, a, shux3[1][i][1], prop1)
					a = a + 1
					lualib:Equip_SetExtProp(player, item, a, shux3[1][i][2], prop2)
					a = a + 1
				end
			elseif subType == 11 or subType == 13 or subType == 18 then
				local a = 4
				for i = 1 , 3 do
					prop1 = 0
					prop2 = 0
					for k = 1, refineLevel do
						prop1 = prop1 + shux4[2][k][1]
						prop2 = prop2 + shux4[2][k][2]
					end
					lualib:Equip_SetExtProp(player, item, a, shux4[1][i][1], prop1)
					a = a + 1
					lualib:Equip_SetExtProp(player, item, a, shux4[1][i][2], prop2)
					a = a + 1
				end
			elseif subType == 10 then
				local a = 4
				for i = 1 , 3 do
					prop1 = 0
					prop2 = 0
					for k = 1, refineLevel do
						prop1 = prop1 + shux5[2][k][1]
						prop2 = prop2 + shux5[2][k][2]
					end
					lualib:Equip_SetExtProp(player, item, a, shux5[1][i][1], prop1)
					a = a + 1
					lualib:Equip_SetExtProp(player, item, a, shux5[1][i][2], prop2)
					a = a + 1
				end
			end
			lualib:Item_NotifyUpdate(player, item)
		end
	end
end



----武器1，护腕3，戒指9，项链8，攻击(根据职业三选一)
local yhshux1 = {
	{{11,10},{13,12},{15,14}},
	{{2,1},{4,3},{6,5},{8,6},{10,8},{13,9},{16,11},{19,13},{23,15},{27,17},{31,20},{40,27}},
} 
----衣服4，腰带7，鞋子6，头盔2，攻击,物防，魔防
local yhshux2 = {
	{{{11,10},{13,12},{15,14}},{7,6},{9,8}},
	{{{2,1},{2,2},{2,2}},{{3,1},{5,4},{4,4}},{{4,1},{7,6},{6,6}},{{4,2},{10,9},{8,8}},{{5,2},{12,11},{10,10}},{{6,3},{16,12},{13,12}},{{7,4},{19,14},{16,15}},
	{{9,6},{23,17},{19,18}},{{11,7},{27,20},{21,20}},{{13,10},{31,24},{25,23}},{{15,12},{38,28},{29,27}},{{18,15},{44,32},{34,30}}},
}
----护盾 15    物防，魔防
local yhshux3 = {
	{{7,6},{9,8}},
	{{{2,2},{2,2}},{{3,3},{3,3}},{{4,4},{5,5}},{{5,5},{7,7}},{{7,7},{9,8}},{{9,9},{11,10}},{{11,11},{12,11}},{{14,14},{16,13}},{{17,17},{19,17}},
	{{21,20},{21,21}},{{27,22},{24,23}},{{34,24},{27,26}}},	
}
----宝石11， 魂珠13, 吊坠18     攻击
local yhshux4 = {
	{{11,10},{13,12},{15,14}},
	{{2,1},{4,3},{6,5},{8,6},{10,8},{13,9},{16,11},{19,13},{23,15},{27,17},{31,20},{40,27}},
}
----勋章10     攻击
local yhshux5 = {   
	{{11,10},{13,12},{15,14}},
	{{2,1},{4,3},{6,4},{8,5},{10,6},{12,8},{14,9},{16,11},{19,13},{23,15},{27,18},{33,23}},
}

function ForTest_yh(player, refineLevel)
	local temp = refineLevel
	for i = 1, #equip_table do
		refineLevel = temp
		local item = ""
		item = lualib:Player_GetEquipGuid(player, equip_table[i])
		if "" ~= item and nil ~= item then
			local itemlevel = lualib:Item_GetLevel(item)
			local subType = lualib:Item_GetSubType(player, item)
			local job = lualib:Job(player)
			local prop1 = 0
			local prop2 = 0
			local site = 10
			if subType == 1 or subType == 3 or subType == 8 or subType == 9 then
				if 80 > itemlevel and 10 < refineLevel then
					refineLevel = 10
				end
				if itemlevel >= 100 then
					for i = 1, 3 do
						prop1 = 0
						prop2 = 0
						for j = 1, refineLevel do
							prop1 = prop1 + yhshux1[2][j][1]
							prop2 = prop2 + yhshux1[2][j][2]
						end
						lualib:SetInt(item,"_da"..site, yhshux1[1][i][1])
						lualib:SetInt(item,"_dv"..site, prop1)
						site = site + 1
						lualib:SetInt(item,"_da"..site, yhshux1[1][i][2])
						lualib:SetInt(item,"_dv"..site, prop2)
						site = site + 1
					end
				else
					prop1 = 0
					prop2 = 0
					for j = 1, refineLevel do
						prop1 = prop1 + yhshux1[2][j][1]
						prop2 = prop2 + yhshux1[2][j][2]
					end
					lualib:SetInt(item,"_da"..site, yhshux1[1][job][1])
					lualib:SetInt(item,"_dv"..site, prop1)
					site = site + 1
					lualib:SetInt(item,"_da"..site, yhshux1[1][job][2])
					lualib:SetInt(item,"_dv"..site, prop2)
					site = site + 1
				end
			----衣服4，腰带7，鞋子6，头盔2，---攻击, 物防, 魔防
			elseif subType == 2 or subType == 4 or subType == 6 or subType == 7 then
				if 80 > itemlevel and 10 < refineLevel then
					refineLevel = 10
				end
				for i = 1 , 3 do
					if i == 1 then
						if itemlevel >= 100 then
							for j = 1 , 3 do
								prop1 = 0
								prop2 = 0
								for k = 1, refineLevel do
									prop1 = prop1 + yhshux2[2][k][1][1]
									prop2 = prop2 + yhshux2[2][k][1][2]
								end
								lualib:SetInt(item,"_da"..site, yhshux2[1][1][j][1])
								lualib:SetInt(item,"_dv"..site, prop1)
								site = site + 1
								lualib:SetInt(item,"_da"..site, yhshux2[1][1][j][2])
								lualib:SetInt(item,"_dv"..site, prop2)
								site = site + 1
							end
						else
							prop1 = 0
							prop2 = 0
							for j = 1, refineLevel do
								prop1 = prop1 + yhshux2[2][j][1][1]
								prop2 = prop2 + yhshux2[2][j][1][2]
							end
							lualib:SetInt(item,"_da"..site, yhshux2[1][1][job][1])
							lualib:SetInt(item,"_dv"..site, prop1)
							site = site + 1
							lualib:SetInt(item,"_da"..site, yhshux2[1][1][job][2])
							lualib:SetInt(item,"_dv"..site, prop2)
							site = site + 1
						end
					else
						prop1 = 0
						prop2 = 0
						for j = 1, refineLevel do
							prop1 = prop1 + yhshux2[2][j][i][1]
							prop2 = prop2 + yhshux2[2][j][i][2]
						end
						lualib:SetInt(item,"_da"..site, yhshux2[1][i][1])
						lualib:SetInt(item,"_dv"..site, prop1)
						site = site + 1
						lualib:SetInt(item,"_da"..site, yhshux2[1][i][2])
						lualib:SetInt(item,"_dv"..site, prop2)
						site = site + 1
						
					end
				end
			----护盾 15    物防，魔防
			elseif subType == 15 then
				for i = 1, 2 do
					prop1 = 0
					prop2 = 0
					for j = 1, refineLevel do
						prop1 = prop1 + yhshux3[2][j][i][1]
						prop2 = prop2 + yhshux3[2][j][i][2]
					end
					lualib:SetInt(item,"_da"..site, yhshux3[1][i][1])
					lualib:SetInt(item,"_dv"..site, prop1)
					site = site + 1
					lualib:SetInt(item,"_da"..site, yhshux3[1][i][2])
					lualib:SetInt(item,"_dv"..site, prop2)
					site = site + 1
				end
			----宝石  11  , 魂珠 13 , 吊坠18  攻击
			elseif subType == 11 or subType == 13 or subType == 18 then
				for i = 1, 3 do
					prop1 = 0
					prop2 = 0
					for j = 1, refineLevel do
						prop1 = prop1 + yhshux4[2][j][1]
						prop2 = prop2 + yhshux4[2][j][2]
					end
					lualib:SetInt(item,"_da"..site, yhshux4[1][i][1])
					lualib:SetInt(item,"_dv"..site, prop1)
					site = site + 1
					lualib:SetInt(item,"_da"..site, yhshux4[1][i][2])
					lualib:SetInt(item,"_dv"..site, prop2)
					site = site + 1
				end
			----勋章10     攻击
			elseif subType == 10 then
				for i = 1, 3 do
					prop1 = 0
					prop2 = 0
					for j = 1, refineLevel do
						prop1 = prop1 + yhshux5[2][j][1]
						prop2 = prop2 + yhshux5[2][j][2]
					end
					lualib:SetInt(item,"_da"..site, yhshux5[1][i][1])
					lualib:SetInt(item,"_dv"..site, prop1)
					site = site + 1
					lualib:SetInt(item,"_da"..site, yhshux5[1][i][2])
					lualib:SetInt(item,"_dv"..site, prop2)
					site = site + 1
				end
			end
			for i = 10, 19 do
				lualib:NotifyVar(item, "_da"..i)
				lualib:NotifyVar(item, "_dv"..i)
			end
			lualib:SetInt(item, "zhul_level", refineLevel)
			lualib:Item_NotifyUpdate(player, item)
		end
	end
end



local crystal_tab = 
{
	--橙宝石 物攻 
	{
		{5,10},
		{10,30},
		{15,50},
		{20,80},
		{25,110},
		{30,150},
		{35,200},
		{40,260},
		{45,330},
		{50,420},
		{55,500},
		{60,600}
	},
	--紫宝石 法攻 
	{
		{5,10},
		{10,30},
		{15,50},
		{20,80},
		{25,110},
		{30,150},
		{35,200},
		{40,260},
		{45,330},
		{50,420},
		{55,500},
		{60,600}
	},
	--绿宝石 道攻 
	{
		{5,10},
		{10,30},
		{15,50},
		{20,80},
		{25,110},
		{30,150},
		{35,200},
		{40,260},
		{45,330},
		{50,420},
		{55,500},
		{60,600}
	},
	--蓝宝石 物防
	{
		{4,8},
		{8,24},
		{12,40},
		{16,64},
		{20,88},
		{24,120},
		{28,160},
		{32,208},
		{36,264},
		{40,336},
		{44,400},
		{48,480}
	},
	--蓝宝石 魔防
	{
		{3,6},
		{6,18},
		{9,30},
		{12,48},
		{15,66},
		{18,90},
		{21,120},
		{24,156},
		{27,198},
		{30,252},
		{33,300},
		{36,360}
	},
	--红宝石 生命
	{
		25,75,125,200,275,375,500,650,825,1050,1250,1500
	},
}

function ForTest_bs(player, level)
	for i = 1, #equip_table do
		local item = ""
		item = lualib:Player_GetEquipGuid(player, equip_table[i])
		if "" ~= item and nil ~= item then
			--lualib:SysPromptMsg(player, item)
			local job = lualib:Job(player)
			local tb1 = {{"物攻","物防","魔防","生命"},{"魔攻","物防","魔防","生命"},{"道攻","物防","魔防","生命"}}
			local tb2 = {{"物攻","生命"},{"魔攻","生命"},{"道攻","生命"}}
			local temp = {{},{},{}}
			if 80 > lualib:Item_GetLevel(item) then
				temp = tb2
			else
				temp = tb1
			end
			for i = 1, #temp[1] do
				lualib:SetStr(item, "EquipHole" .. i, "2")
				local stoneType = temp[job][i]
				local a = 0
				local propertyTb = {}
				local propertyType = {}
				--lualib:SysPromptMsg(player, stoneType)
				if stoneType == "物攻" then
					a = 30
					propertyTb = crystal_tab[1][level]
					propertyType[1] = 11
					propertyType[2] = 10
				elseif stoneType == "魔攻" then
					a = 32
					propertyTb = crystal_tab[2][level]
					propertyType[1] = 13
					propertyType[2] = 12
				elseif stoneType == "道攻" then
					a = 34
					propertyTb = crystal_tab[3][level]
					propertyType[1] = 15
					propertyType[2] = 14
				elseif stoneType == "物防" then
					a = 36
					propertyTb = crystal_tab[4][level]
					propertyType[1] = 7
					propertyType[2] = 6
				elseif stoneType == "魔防" then
					a = 38
					propertyTb = crystal_tab[5][level]
					propertyType[1] = 9
					propertyType[2] = 8
				elseif stoneType == "生命" then
					a = 40
					propertyTb = crystal_tab[6][level]
					propertyType[1] = 3
				end
				if a ~= 40 then
					lualib:SetDynamicAttr(item, a, propertyType[1], propertyTb[1])
					lualib:SetDynamicAttr(item, a + 1, propertyType[2], propertyTb[2])
				else
					lualib:SetDynamicAttr(item, a, propertyType[1], propertyTb)
				end
				lualib:SetStr(item, "EquipHole" ..i, level.."级"..stoneType.."宝石")
				lualib:Item_NotifyUpdate(player, item)
			end
		end
	end
end
function ForTest_clbs(player, level)
	for i = 1, #equip_table do
		local item = ""
		item = lualib:Player_GetEquipGuid(player, equip_table[i])
		if "" ~= item and nil ~= item then
			local job = lualib:Job(player)
			local tb1 = {{"物攻","物防","魔防","生命"},{"魔攻","物防","魔防","生命"},{"道攻","物防","魔防","生命"}}
			local tb2 = {{"物攻","生命"},{"魔攻","生命"},{"道攻","生命"}}
			local temp = {{},{},{}}
			if 80 > lualib:Item_GetLevel(item) then
				temp = tb2
			else
				temp = tb1
			end
			for i = 1, #temp[1] do
				local keyName = lualib:GetStr(item, "EquipHole" .. i)
				if keyName ~= "0" and keyName ~= "1" and keyName ~= "2" and keyName ~= "" and keyName ~= nil then
					local index = string.find(keyName, "级")
					local stoneType = string.sub(keyName, index + 2, index + 5)
					local a = 0
					local propertyType = {}
					if stoneType == "物攻" then
						a = 30
						propertyType[1] = 11
						propertyType[2] = 10
					elseif stoneType == "魔攻" then
						a = 32
						propertyType[1] = 13
						propertyType[2] = 12
					elseif stoneType == "道攻" then
						a = 34
						propertyType[1] = 15
						propertyType[2] = 14
					elseif stoneType == "物防" then
						a = 36
						propertyType[1] = 7
						propertyType[2] = 6
					elseif stoneType == "魔防" then
						a = 38
						propertyType[1] = 9
						propertyType[2] = 8
					elseif stoneType == "生命" then
						a = 40
						propertyType[1] = 3
					end
					lualib:SetDynamicAttr(item, a, propertyType[1], 0)
					if a ~= 40 then
						lualib:SetDynamicAttr(item, a + 1, propertyType[2], 0)
					end
					lualib:SetStr(item, "EquipHole" ..i, "2")
					lualib:Item_NotifyUpdate(player, item)
				end
			end
		end
	end
end

