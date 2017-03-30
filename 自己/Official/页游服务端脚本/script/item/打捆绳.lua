
local item_table =
{
    {{"太阳水", 6}, {"太阳水包", 1}},
    {{"强效太阳水", 6}, {"强效太阳水包", 1}},
    {{"万年雪霜", 6}, {"万年雪霜包", 1}},
    {{"疗伤药", 6}, {"疗伤药包", 1}},
    {{"小特制疗伤药", 6}, {"小特制疗伤药包", 1}},
    {{"中特制疗伤药", 6}, {"中特制疗伤药包", 1}},
    {{"大特制疗伤药", 6}, {"大特制疗伤药包", 1}},
	{{"小特制金创药", 6}, {"小特制金创药包", 1}},
	{{"中特制金创药", 6}, {"中特制金创药包", 1}},
	{{"大特制金创药", 6}, {"大特制金创药包", 1}},
    {{"极品金创药", 6}, {"极品金创药包", 1}},
	{{"小特制魔法药", 6}, {"小特制魔法药包", 1}},	
	{{"中特制魔法药", 6}, {"中特制魔法药包", 1}},
	{{"大特制魔法药", 6}, {"大特制魔法药包", 1}},
    {{"极品魔法药", 6}, {"极品魔法药包", 1}},
}

local name_table =
{
    ["太阳水"] 	       = "回阳水        ",
    ["强效太阳水"]     = "强效回阳水    ",
    ["万年雪霜"]       = "万年玄参      ",
    ["疗伤药"]         = "疗伤药        ",
    ["小特制疗伤药"]   = "小特制疗伤药  ",
    ["中特制疗伤药"]   = "中特制疗伤药  ",
    ["大特制疗伤药"]   = "大特制疗伤药  ",
	["小特制金创药"]   = "小特制金创药  ",
	["中特制金创药"]   = "中特制金创药  ",
	["大特制金创药"]   = "大特制金创药  ",
    ["极品金创药"]     = "极品金创药    ",
	["小特制魔法药"]   = "小特制魔法药  ",
	["中特制魔法药"]   = "中特制魔法药  ",
	["大特制魔法药"]   = "大特制魔法药  ",
    ["极品魔法药"]     = "极品魔法药    ",

}

function main(player, item)
    local msg = "#COLORCOLOR_SKYBLUE#==========打捆==========#COLOREND#\n\n"
    msg = msg .."#COLORCOLOR_BROWN#  请选择要打捆的药品！#COLOREND#\n \n"
    for k, v in pairs(item_table) do
        msg = msg.."<@tie_up#"..k.."#"..item.." *01*  "..name_table[v[1][1]]..">\n"
    end
    msg = msg.."\n \n<@leave *01*  「离开」>"
    lualib:NPCTalkDetail(player, msg, 200, 400)
    return false
end


function ret(player, item)
	main(player, item)
	return ""
end


function leave(player, item)
    return ""
end

function tie_up(player, index, item)
    index = tonumber(index)

    local bind_count = lualib:Player_GetItemCountBind(player, item_table[index][1][1])
	local unbind_count = lualib:Player_GetItemCountUnbind(player, item_table[index][1][1])
	local count = lualib:Player_GetItemCount(player, item_table[index][1][1])
	
	local req = lualib:Item_GetSite(player, item)
	if tonumber(req) > 0 then
		if bind_count >= item_table[index][1][2] then
			if not lualib:Player_DestroyItemBind(player, item_table[index][1][1], item_table[index][1][2], "删物品：使用打捆绳", "打捆绳") then
				lualib:SysMsg_SendWarnMsg(player, "道具使用失败！")
				return "道具使用失败！"
			end
			if not lualib:Player_GiveItemBind(player, item_table[index][2][1], item_table[index][2][2], "给物品", "打捆绳") then
				lualib:SysMsg_SendWarnMsg(player, "道具使用失败！")
				return "道具使用失败！"
			end
		elseif unbind_count >= item_table[index][1][2] then
			if not lualib:Player_DestroyItemUnbind(player, item_table[index][1][1], item_table[index][1][2], "删物品：使用打捆绳", "打捆绳") then
				lualib:SysMsg_SendWarnMsg(player, "道具使用失败！")
				return "道具使用失败！"
			end
			if not lualib:Player_GiveItemUnbind(player, item_table[index][2][1], item_table[index][2][2], "给物品", "打捆绳") then
				lualib:SysMsg_SendWarnMsg(player, "道具使用失败！")
				return "道具使用失败！"
			end
		elseif count >= item_table[index][1][2] then
			if not lualib:Player_DestroyItem(player, item_table[index][1][1], item_table[index][1][2], "删物品：使用打捆绳", "打捆绳") then
				lualib:SysMsg_SendWarnMsg(player, "道具使用失败！")
				return "道具使用失败！"
			end
			if not lualib:Player_GiveItemBind(player, item_table[index][2][1], item_table[index][2][2], "给物品", "打捆绳") then
				lualib:SysMsg_SendWarnMsg(player, "道具使用失败！")
				return "道具使用失败！"
			end
		else
			lualib:SysMsg_SendWarnMsg(player, "打包材料不足！")
			return "打包材料不足！\n \n<@ret#"..item.." *01*「返回」>"
		end
	else
		lualib:SysMsg_SendPromptMsg(player, "打捆绳不存在！")
	end

    local item_count = lualib:Item_GetAmount(player, item)
    lualib:Item_SetAmount(player, item, item_count- 1)

    if (item_count-1) > 0 then
        return ret(player, item)
    else
        return ""
    end
end


function on_create(item)
	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
	
end

function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	
	if item_map_x < 20000 then
		if player_name == "" then
			local s = "【"..item_name.."】掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "【"..item_name.."】被→→→".."["..player_name.."]一个人品爆发打了出来，掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
            local s = "【"..item_name.."】掉落在"..item_map_name.."的["..item_map_x..":"..item_map_y.."]！！！"
			local s1 = "#COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#掉落在#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#的["..item_map_x..":"..item_map_y.."]！！！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end