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
        gift =  {"���", "�������"},
        count = {1, 			1},
        bind =  {1,			1}
    },
    {
        time = 10,
        gift =  {"ѭ��ħ��",	"����"},
        count = {1,				1},
        bind =  {1,				1}
    },
    {
        time = 30,
        gift =  {"������",	"���ﾭ�鵤"},
        count = {1,				10},
        bind =  {1,				1}
    },
    {
        time = 60,
        gift =  {"����ӡ",	"1.5���������", "��ң��(10��)"},
        count = {1,			1,                  1},
        bind =  {1,			1,                  1}
    },
    {
        time = 120,
        gift =  {"ѭ��ħ��", "������", "С����", "��λʯ(2��)", "��Ԫ��"},
        count = {2,			1,			1,			1,       10},
        bind =  {1,			1,			1,			1,       1}
    },	
}

--��ҵ�¼ʱ�����
function online_gift_login(player)
    local cur_level = lualib:GetInt(player, "online_gift_level");

    -- �����������������
    if cur_level >= table.getn(online_gift) then
        return
    end

    local has_online_gift = lualib:GetInt(player, "has_online_gift");
    -- ����ϸ����δ�죬ֱ����ȡ
    if has_online_gift ~= 0 and has_online_gift < lualib:GetTime() then
        ShowTimeCount(player, 0, "1903800062", "�������")
        return
    end

    -- �����¸������ʱ
    cur_level = cur_level + 1
    lualib:SetInt(player, "has_online_gift", lualib:GetTime() + online_gift[cur_level].time * 60)
    ShowTimeCount(player, online_gift[cur_level].time * 60, "1903800062", "�������")
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

--�����ȡ��Ʒ
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
        ShowTimeCount(player, has_online_gift - lualib:GetTime(), "1903800062", "�������")        
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
        ShowTimeCount(player, 0, "1903800062", "�������")
        return false
    end

    lualib:SetInt(player, "online_gift_level", cur_level)
    lualib:SetInt(player, "has_online_gift", 0)

    cur_level = cur_level + 1
    if online_gift[cur_level] ~= nil then
        lualib:SetInt(player, "has_online_gift", lualib:GetTime() + online_gift[cur_level].time * 60)
        ShowTimeCount(player, online_gift[cur_level].time * 60, "1903800062", "�������")
    end
end

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

function show_online_gift_count(player)
    local has_online_gift = lualib:GetInt(player, "has_online_gift")
    -- ���û��������죬��δ����ȡʱ��
    if has_online_gift == 0 then
        return 
    elseif has_online_gift >= lualib:GetTime() then
        ShowTimeCount(player, has_online_gift - lualib:GetTime(), "1903800062", "�������")        
        return
    end
end