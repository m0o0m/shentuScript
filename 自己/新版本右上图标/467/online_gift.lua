local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")

local online_gift = 
{
    {
        time = 1,
        gift =  {"��Ԫ��"},
        count = {1},
        bind =  {1}
    },
    {
        time = 3,
        gift =  {"��Ԫ��", "��Ԫ��"},
        count = {1, 			1},
        bind =  {1,			1}
    },
    {
        time = 10,
        gift =  {"ѭ��ħ��",	"��Ԫ��"},
        count = {1,				1},
        bind =  {1,				1}
    },
    {
        time = 30,
        gift =  {"��Ԫ��",	"��Ԫ��"},
        count = {1,				10},
        bind =  {1,				1}
    },
    {
        time = 60,
        gift =  {"����ӡ",	"˫���������", "���Ǵ���ʯ"},
        count = {1,			1,                  1},
        bind =  {1,			1,                  1}
    },
    {
        time = 120,
        gift =  {"ѭ��ħ��", "��Ԫ��", "С����", "���Ǵ���ʯ", "��Ԫ��"},
        count = {2,			1,			1,			1,       10},
        bind =  {1,			1,			1,			1,       1}
    },	
}

--------------------��ҵ�¼ʱ�����
function online_gift_login(player)
    local cur_level = lualib:GetInt(player, "online_gift_level");

    -- �����������������
    if cur_level >= table.getn(online_gift) then
        return
    end

    local has_online_gift = lualib:GetInt(player, "has_online_gift");
    -- ����ϸ����δ�죬ֱ����ȡ
    if has_online_gift ~= 0 and has_online_gift < lualib:GetTime() then
		AddSEIcon(player, 1, -1, "�������", 1903800062, "����ʱ", "main", "�������", "�������")  --ע��ͼ����Դ�����ǲ�������ĵ���ʱ��
		AddIconMagic(player, "�������", 1094200000, -6, -6, 150)
        return
    end

    -- �����¸������ʱ
    cur_level = cur_level + 1
    lualib:SetInt(player, "has_online_gift", lualib:GetTime() + online_gift[cur_level].time * 60)
	AddSETimeIcon(player, 1, -1, "�������", 1903800062, "����ʱ", "main", online_gift[cur_level].time * 60, "�������", "�������")
	AddIconMagic(player, "�������", 1094200000, -6, -6, 150)
end

-----------------------��ʾ����ʱʱ��
function show_online_gift_count(player)
    local has_online_gift = lualib:GetInt(player, "has_online_gift")
    -- ���û��������죬��δ����ȡʱ��
    if has_online_gift == 0 then
        return 
    elseif has_online_gift >= lualib:GetTime() then
        AddSETimeIcon(player, 1, -1, "�������", 1903800062, "����ʱ", "main", has_online_gift - lualib:GetTime(), "�������", "�������")
        AddIconMagic(player, "�������", 1094200000, -6, -6, 150)        
        return
    end
end



---------------------ͼ�걻���---------------------------------------------
function show_my_online_gift(player)
    local cur_level = lualib:GetInt(player, "online_gift_level")

    -- �����������������
    if cur_level >= table.getn(online_gift) then
        return
    end

    cur_level = cur_level + 1
    local content = ""
    local max = table.getn(online_gift[cur_level].gift)
    for j = 1, max do
        content = content..online_gift[cur_level].gift[j].."["..online_gift[cur_level].count[j].."]"..online_gift[cur_level].bind[j]..","
    end

    lualib:Print("�������������");
    lualib:ShowFormWithContent(player, "���������", content)
end


---------------------��ȡ��ť�����------------------------------------------
function get_online_gift(player)
    local cur_level = lualib:GetInt(player, "online_gift_level")

    -- �����������������
    if cur_level >= table.getn(online_gift) then
        return
    end

    local has_online_gift = lualib:GetInt(player, "has_online_gift")
    -- ���û��������죬��δ����ȡʱ��
    if has_online_gift == 0 then
        return 
    elseif has_online_gift > lualib:GetTime() then
        lualib:SysMsg_SendWarnMsg(player, "δ����ȡʱ�䣡")
        AddSETimeIcon(player, 1, -1, "�������", 1903800062, "����ʱ", "main", has_online_gift - lualib:GetTime(), "�������", "�������")
        AddIconMagic(player, "�������", 1094200000, -6, -6, 150)     
        return
    end

    cur_level = cur_level + 1
    local opr_table = {}
    for i = 1, table.getn(online_gift[cur_level].gift) do
        opr_table[i] = 0
    end
    if not lualib:Player_ItemRequest(player, online_gift[cur_level].gift,
                                      online_gift[cur_level].count, online_gift[cur_level].bind, opr_table, "����������������", player) then
        lualib:SysMsg_SendWarnMsg(player, "����������")
        AddSEIcon(player, 1, -1, "�������", 1903800062, "����ʱ", "main", "�������", "�������")
        AddIconMagic(player, "�������", 1094200000, -6, -6, 150)
        return false
    end

    lualib:SetInt(player, "online_gift_level", cur_level)
    lualib:SetInt(player, "has_online_gift", 0)

    cur_level = cur_level + 1
    if online_gift[cur_level] ~= nil then
        lualib:SetInt(player, "has_online_gift", lualib:GetTime() + online_gift[cur_level].time * 60)
        AddSETimeIcon(player, 1, -1, "�������", 1903800062, "����ʱ", "main", online_gift[cur_level].time * 60, "�������", "�������")
        AddIconMagic(player, "�������", 1094200000, -6, -6, 150)
    end
end


--����˳�ʱ�����
function online_gift_logout(player)
    local has_online_gift = lualib:GetInt(player, "has_online_gift");
    -- ���δ����ȡʱ�䣬����ñ���
    if has_online_gift > lualib:GetTime() then
        lualib:SetInt(player, "has_online_gift", 0);
        return
    end
end



