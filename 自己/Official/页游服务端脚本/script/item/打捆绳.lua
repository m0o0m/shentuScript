
local item_table =
{
    {{"̫��ˮ", 6}, {"̫��ˮ��", 1}},
    {{"ǿЧ̫��ˮ", 6}, {"ǿЧ̫��ˮ��", 1}},
    {{"����ѩ˪", 6}, {"����ѩ˪��", 1}},
    {{"����ҩ", 6}, {"����ҩ��", 1}},
    {{"С��������ҩ", 6}, {"С��������ҩ��", 1}},
    {{"����������ҩ", 6}, {"����������ҩ��", 1}},
    {{"����������ҩ", 6}, {"����������ҩ��", 1}},
	{{"С���ƽ�ҩ", 6}, {"С���ƽ�ҩ��", 1}},
	{{"�����ƽ�ҩ", 6}, {"�����ƽ�ҩ��", 1}},
	{{"�����ƽ�ҩ", 6}, {"�����ƽ�ҩ��", 1}},
    {{"��Ʒ��ҩ", 6}, {"��Ʒ��ҩ��", 1}},
	{{"С����ħ��ҩ", 6}, {"С����ħ��ҩ��", 1}},	
	{{"������ħ��ҩ", 6}, {"������ħ��ҩ��", 1}},
	{{"������ħ��ҩ", 6}, {"������ħ��ҩ��", 1}},
    {{"��Ʒħ��ҩ", 6}, {"��Ʒħ��ҩ��", 1}},
}

local name_table =
{
    ["̫��ˮ"] 	       = "����ˮ        ",
    ["ǿЧ̫��ˮ"]     = "ǿЧ����ˮ    ",
    ["����ѩ˪"]       = "��������      ",
    ["����ҩ"]         = "����ҩ        ",
    ["С��������ҩ"]   = "С��������ҩ  ",
    ["����������ҩ"]   = "����������ҩ  ",
    ["����������ҩ"]   = "����������ҩ  ",
	["С���ƽ�ҩ"]   = "С���ƽ�ҩ  ",
	["�����ƽ�ҩ"]   = "�����ƽ�ҩ  ",
	["�����ƽ�ҩ"]   = "�����ƽ�ҩ  ",
    ["��Ʒ��ҩ"]     = "��Ʒ��ҩ    ",
	["С����ħ��ҩ"]   = "С����ħ��ҩ  ",
	["������ħ��ҩ"]   = "������ħ��ҩ  ",
	["������ħ��ҩ"]   = "������ħ��ҩ  ",
    ["��Ʒħ��ҩ"]     = "��Ʒħ��ҩ    ",

}

function main(player, item)
    local msg = "#COLORCOLOR_SKYBLUE#==========����==========#COLOREND#\n\n"
    msg = msg .."#COLORCOLOR_BROWN#  ��ѡ��Ҫ������ҩƷ��#COLOREND#\n \n"
    for k, v in pairs(item_table) do
        msg = msg.."<@tie_up#"..k.."#"..item.." *01*  "..name_table[v[1][1]]..">\n"
    end
    msg = msg.."\n \n<@leave *01*  ���뿪��>"
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
			if not lualib:Player_DestroyItemBind(player, item_table[index][1][1], item_table[index][1][2], "ɾ��Ʒ��ʹ�ô�����", "������") then
				lualib:SysMsg_SendWarnMsg(player, "����ʹ��ʧ�ܣ�")
				return "����ʹ��ʧ�ܣ�"
			end
			if not lualib:Player_GiveItemBind(player, item_table[index][2][1], item_table[index][2][2], "����Ʒ", "������") then
				lualib:SysMsg_SendWarnMsg(player, "����ʹ��ʧ�ܣ�")
				return "����ʹ��ʧ�ܣ�"
			end
		elseif unbind_count >= item_table[index][1][2] then
			if not lualib:Player_DestroyItemUnbind(player, item_table[index][1][1], item_table[index][1][2], "ɾ��Ʒ��ʹ�ô�����", "������") then
				lualib:SysMsg_SendWarnMsg(player, "����ʹ��ʧ�ܣ�")
				return "����ʹ��ʧ�ܣ�"
			end
			if not lualib:Player_GiveItemUnbind(player, item_table[index][2][1], item_table[index][2][2], "����Ʒ", "������") then
				lualib:SysMsg_SendWarnMsg(player, "����ʹ��ʧ�ܣ�")
				return "����ʹ��ʧ�ܣ�"
			end
		elseif count >= item_table[index][1][2] then
			if not lualib:Player_DestroyItem(player, item_table[index][1][1], item_table[index][1][2], "ɾ��Ʒ��ʹ�ô�����", "������") then
				lualib:SysMsg_SendWarnMsg(player, "����ʹ��ʧ�ܣ�")
				return "����ʹ��ʧ�ܣ�"
			end
			if not lualib:Player_GiveItemBind(player, item_table[index][2][1], item_table[index][2][2], "����Ʒ", "������") then
				lualib:SysMsg_SendWarnMsg(player, "����ʹ��ʧ�ܣ�")
				return "����ʹ��ʧ�ܣ�"
			end
		else
			lualib:SysMsg_SendWarnMsg(player, "������ϲ��㣡")
			return "������ϲ��㣡\n \n<@ret#"..item.." *01*�����ء�>"
		end
	else
		lualib:SysMsg_SendPromptMsg(player, "�����������ڣ�")
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
			local s = "��"..item_name.."��������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "��"..item_name.."����������".."["..player_name.."]һ����Ʒ�������˳�����������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
            local s = "��"..item_name.."��������"..item_map_name.."��["..item_map_x..":"..item_map_y.."]������"
			local s1 = "#COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#������#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#��["..item_map_x..":"..item_map_y.."]������"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end