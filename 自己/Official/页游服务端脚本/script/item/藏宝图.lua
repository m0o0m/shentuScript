treasure_map =
{
    --�ر�ͼ�����Ŀ���ͼ({keyname, name})
    dest_map_table =
    {
        ["�����ر�ͼ"] =
        {
            {"��ɽ��", "��ɽ��"},
            {"����", "����"},
            {"��·��", "��·��"},
            {"��·��", "��·��"},
            {"����ڣ1", "����ڣ"},
        },
        ["�м��ر�ͼ"] =
        {
            {"������2", "������"},
            {"��ɽ��Ѩ1", "��ɽ��Ѩ"},
            {"�����1", "�����"},
            {"а��4", "���а��"},
            {"����", "����"},

        },
        ["�߼��ر�ͼ"] =
        {
            {"а��4", "���а��"},
            {"��ħʯ��4", "��ħʯ��"},
            {"����1", "�����ؾ�"},
            {"��ħ����2", "��ħ����"},
            {"���ײ���1", "���ײ���"},




        },
    },

    --�ر�ͼ�¼�����ϸ
    event_detail_table =
    {
    ----------------------------------------------------------------------------
        ["�����ر�ͼ"] =
        {
            --��þ���
            ["exp_evt"] =
            {
                --��þ������
                ["rate"] = {10000}, --������
                --��þ�����ֵ
                {
                    ["exp"] = 20000, --��Ӧ������Ķ���
                },
            },
            --------------------------------------------------------------------
            --��ý��
            ["gold_evt"] =
            {
                --��Ҹ���
                ["rate"] = {5000, 10000},
                {
                    --��ý������
                    ["bind"] = 100000,
                    ["unbind"] = 0,
                },
                {
                    ["bind"] = 0,
                    ["unbind"] = 50000,
                },
            },
            --------------------------------------------------------------------
            ["item_evt"] =
            {
                --[����] = {��Ʒ��} �� 1->20 21->40 41->60 61->80 81->100
                ["rate"] = {2000, 4000, 6000, 8000, 10000},
                {
                    --��Ʒ�� {��Ʒ��, ����, ������}
                    ["items"] =
                    {
                        {"���ĵ�", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"��ɽ�Ǵ���ʯ", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"���Ǵ���ʯ", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"�ͼ��﹥������", 1, 0},
                        {"�ͼ�ħ��������", 1, 0},
                        {"�ͼ�����������", 1, 0},
                        {"�ͼ����������", 1, 0},
                        {"�ͼ�ħ��������", 1, 0},
                        {"�ͼ�HP������", 1, 0},
                        {"�ͼ�MP������", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"�м��ر�ͼ��Ƭ", 1, 0},
                    },
                },
            },
            --------------------------------------------------------------------
            --ˢ��
            ["monster_evt"] =
            {
                --[����] ˢ����
                ["rate"] = {10000},
                {
                    ["monsters"] =
                    {
                        {"������", 2},
                        {"������", 1},
                        {"����������", 1},
                        {"͵���̰�", 1},
                    },
                },
            },
        },
        ------------------------------------------------------------------------
        ["�м��ر�ͼ"] =
        {
            --��þ���
            ["exp_evt"] =
            {
                --��þ������
                ["rate"] = {10000}, --������
                --��þ�����ֵ
                {
                    ["exp"] = 120000, --��Ӧ������Ķ���
                },
            },
            --------------------------------------------------------------------
            --��ý��
            ["gold_evt"] =
            {
                --��Ҹ���
                ["rate"] = {5000, 10000},
                {
                    --��ý������
                    ["bind"] = 200000,
                    ["unbind"] = 0,
                },
                {
                    ["bind"] = 0,
                    ["unbind"] = 100000,
                },
            },
            --------------------------------------------------------------------
            ["item_evt"] =
            {
                --[����] = {��Ʒ��} �� 1->20 21->40 41->60 61->80 81->100
                ["rate"] = {2800, 4800, 6800, 8800, 10000},
                {
                    --��Ʒ�� {��Ʒ��, ����, ������}
                    ["items"] =
                    {
                        {"���ĵ�", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"��λʯ", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"�������(50��)", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"�м��﹥������", 1, 0},
                        {"�м�ħ��������", 1, 0},
                        {"�м�����������", 1, 0},
                        {"�м����������", 1, 0},
                        {"�м�ħ��������", 1, 0},
                        {"�м�HP������", 1, 0},
                        {"�м�MP������", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"�߼��ر�ͼ��Ƭ", 1, 0},
                    },
                },
            },
            --------------------------------------------------------------------
            --ˢ��
            ["monster_evt"] =
            {
                --[����] ˢ����
                ["rate"] = {10000},
                {
                    ["monsters"] =
                    {
                        {"͵���̰�", 2},
                        {"ҹ�����", 1},
                        {"����Ҳ͵��", 1},
                        {"Ӳ�Ϲ��Ļ���", 1},
                    },
                },
            },
        },
        ["�߼��ر�ͼ"] =
        {
            --��þ���
            ["exp_evt"] =
            {
                --��þ������
                ["rate"] = {10000}, --������
                --��þ�����ֵ
                {
                    ["exp"] = 600000, --��Ӧ������Ķ���
                },
            },
            --------------------------------------------------------------------
            --��ý��
            ["gold_evt"] =
            {
                --��Ҹ���
                ["rate"] = {5000, 10000},
                {
                    --��ý������
                    ["bind"] = 500000,
                    ["unbind"] = 0,
                },
                {
                    ["bind"] = 0,
                    ["unbind"] = 200000,
                },
            },
            --------------------------------------------------------------------
            ["item_evt"] =
            {
                --[����] = {��Ʒ��} �� 1->20 21->40 41->60 61->80 81->100
                ["rate"] = {2500, 5000, 7500, 9875, 10000},
                {
                    --��Ʒ�� {��Ʒ��, ����, ������}
                    ["items"] =
                    {
                        {"ף����ˮ", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"��λʯ(100��)", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"�������(500��)", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"�߼��﹥������", 1, 0},
                        {"�߼�ħ��������", 1, 0},
                        {"�߼�����������", 1, 0},
                        {"�߼����������", 1, 0},
                        {"�߼�ħ��������", 1, 0},
                        {"�߼�HP������", 1, 0},
                        {"�߼�MP������", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"�߼�HP������", 1, 0},
                    },
                },
            },
            --------------------------------------------------------------------
            --ˢ��
            ["monster_evt"] =
            {
                --[����] ˢ����
                ["rate"] = {10000},
                {
                    ["monsters"] =
                    {
                        {"Ӳ�Ϲ��Ļ���", 2},
                        {"����͵���", 1},
                        {"����˧������", 1},
                        {"�����", 1},
                    },
                },
            },
        },
    },
    --�ر�ͼ�¼������(�¼����� = {��������(10000=100%), �ص�����})
    event_table =
    {
        ["exp_evt"] =
        {
            ["rate"] = 10000,
            ["func"] = function(player, item_key)
                treasure_map:do_exp_evt(player, item_key)
            end
        },
        ["gold_evt"] =
        {
            ["rate"] = 10000,
            ["func"] = function(player, item_key)
                treasure_map:do_gold_evt(player, item_key)
            end
        },
        ["item_evt"] =
        {
            ["rate"] = 10000,
            ["func"] = function(player, item_key)
                treasure_map:do_item_evt(player, item_key)
            end
        },
        ["monster_evt"] =
        {
            ["rate"] = 3000,
            ["func"] = function(player, item_key)
                treasure_map:do_monster_evt(player, item_key)
            end
        },
    },
}

--�ж���Ʒ�ǲ��ǲر�ͼ
function treasure_map:is_treasure_map(item)
    return treasure_map.dest_map_table[lualib:KeyName(item)] ~= nil
end

--���òر�ͼ��Ŀ����Ϣ
function treasure_map:set_dest_info(item)
    local keyname = lualib:KeyName(item)
    if treasure_map.dest_map_table[keyname] == nil then
        lualib:Error("�ر�ͼ��������ű���ƥ�䡣")
        return false
    end

    local dest_map = treasure_map.dest_map_table[keyname]
        [lualib:GenRandom(1, #treasure_map.dest_map_table[keyname])]

    local pos = lualib:MapRndPos(dest_map[1])
    if pos == nil then
        lualib:Error("�ر�ͼ����ͼ�����������ʧ�ܡ�")
        return false
    end

    lualib:SetStr(item, "dest_map_key", dest_map[1])
    lualib:SetStr(item, "dest_map", dest_map[2])
    lualib:SetInt(item, "dest_x", pos.x)
    lualib:SetInt(item, "dest_y", pos.y)
    return true
end

--ȡ�òر�ͼ��Ŀ����Ϣ
function treasure_map:get_dest_info(item)
    return lualib:GetStr(item, "dest_map_key"),
           lualib:GetStr(item, "dest_map"),
           lualib:GetInt(item, "dest_x"),
           lualib:GetInt(item, "dest_y")
end

--ʹ�òر�ͼ
function treasure_map:apply(player, itemkey)
    --������¼���
    local rnd_evt_table = {}
    for _, v in pairs(self.event_table) do
        local rnd = lualib:GenRandom(1, 10000)
        if rnd <= v.rate then
            table.insert(rnd_evt_table, v.func);
        end
    end

    if #rnd_evt_table == 0 then return false end

    --�ص���Ӧ���¼�����
    for i = 1, #rnd_evt_table do
        rnd_evt_table[i](player, itemkey)
    end

    return true
end

--ִ�о����¼�
function treasure_map:do_exp_evt(player, itemkey)
    local rnd = lualib:GenRandom(1, 10000)
    local exp_evt_t = self.event_detail_table[itemkey].exp_evt
    for i = 1, #exp_evt_t.rate do
        if rnd <= exp_evt_t.rate[i] then
            return lualib:Player_AddExp(player,exp_evt_t[i].exp,
                                        "�Ӿ��飺ʹ�òر�ͼ", "�ر�ͼ")
        end
    end
end

--ִ�н���¼�
function treasure_map:do_gold_evt(player, itemkey)
    local rnd = lualib:GenRandom(1, 10000)
    local gold_evt_t = self.event_detail_table[itemkey].gold_evt
    for i = 1, #gold_evt_t.rate do
        if rnd <= gold_evt_t.rate[i] then
            if not lualib:Player_AddGold(player, gold_evt_t[i].bind, true,
                                        "�ӽ�ң�ʹ�òر�ͼ", "�ر�ͼ") then return false end
            return lualib:Player_AddGold(player, gold_evt_t[i].unbind, false,
                                        "�ӽ�ң�ʹ�òر�ͼ", "�ر�ͼ")
        end
    end
end

--ִ����Ʒ�¼�
function treasure_map:do_item_evt(player, itemkey)
    local rnd = lualib:GenRandom(1, 10000)
    local item_evt_t = self.event_detail_table[itemkey].item_evt

    for i = 1, #item_evt_t.rate do
        if rnd <= item_evt_t.rate[i] then
            local cur_item = item_evt_t[i].items[lualib:GenRandom(1, #item_evt_t[i].items)]
            local bind_type = false
            if cur_item[3] ~= 0 then bind_type = true end
            return lualib:AddItem(player, cur_item[1], cur_item[2], bind_type,
                "����Ʒ��ʹ�òر�ͼ", "�ر�ͼ")
        end
    end

    return true
end

--ִ��ˢ���¼�
function treasure_map:do_monster_evt(player, itemkey)
    local rnd = lualib:GenRandom(1, 10000)
    local monster_evt_t = self.event_detail_table[itemkey].monster_evt
    for i = 1, #monster_evt_t.rate do
        if rnd <= monster_evt_t.rate[i] then
            local map, x, y = lualib:MapGuid(player), lualib:X(player), lualib:Y(player)
            for _, v in pairs(monster_evt_t[i].monsters) do
                if not lualib:Map_GenMonster(map, x, y, 5, lualib:GenRandom(0, 7),
                                      v[1], v[2], false) then return false end
                --return true
            end
        end
    end
	lualib:SysMsg_SendBroadcastColor("��ħ������"..lualib:Name(player).."��"..
                           lualib:Name(lualib:MapGuid(player))..
                           "ʹ���˲ر�ͼ����������ħ�ķ�ӡ��һ���������������", "", 1, 12)
    return true
end

--------------------------------------------------------------------------------

function on_create(item)
    if not treasure_map:set_dest_info(item) then
        lualib:Error("�ر�ͼ��on_create����ʧ�ܡ�")
    end
	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
end

function main(player, item)
    if not treasure_map:is_treasure_map(item) then
        lualib:NPCTalk(player, "�ر�ͼ��������ű���ƥ�䡣\n \n<@leave *01*�뿪>")
        return false
    end

    local map = lualib:MapGuid(player)
    local mapkey = lualib:KeyName(map)
    if mapkey == nil then
        lualib:NPCTalk(player, "��ȡ��ɫ������ͼ��Ϣʧ�ܡ�\n \n<@leave *01*�뿪>")
        return false
    end

    local x = lualib:X(player)
    local y = lualib:Y(player)
    local dest_map_key, dest_map, dest_x, dest_y = treasure_map:get_dest_info(item)
    if dest_map_key ~= mapkey or x ~= dest_x or y ~= dest_y then
        lualib:NPCTalk(player, "���ز���#COLORCOLOR_RED#"..
                       dest_map.."#COLOREND#��#COLORCOLOR_RED#��"..dest_x.."��"..
                       dest_y.."��#COLOREND#������Ҫ������ʹ�òر�ͼ���ܻ�ñ��ء�\n \n<@leave *01*�뿪>")
        return false
    end

    if not treasure_map:apply(player, lualib:KeyName(item)) then
        lualib:NPCTalk(player, "ʹ�òر�ͼʧ�ܡ�\n \n<@leave *01*�뿪>")
        return false
    end

    if not lualib:Item_Destroy(player, item, "ɾ���ߣ�ʹ�òر�ͼ", "�ر�ͼ") then
		lualib:NPCTalk(player, "�۳�����ʧ��")
		return false
	end
	
    return true
end

function leave(player, item)
    return ""
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