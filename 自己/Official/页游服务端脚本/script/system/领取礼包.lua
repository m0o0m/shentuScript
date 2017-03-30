local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("npc/���������")

function libao_xianshi(player)
	ShowTimeCount2(player, 0, 1903800042, "��ȡ���",0,"��ȡ���") --��ʾĿ��ͼ��
end

function libao_dianji(player)
	libao_xianshi(player) --��ʾͼ��
	local msg = "\n#COLORCOLOR_YELLOW#��������������������������������������������ȡ���������������������������������������������#COLOREND#\n \n"
    msg = msg .."ͨ����վ�����ý��ȷ�ʽ����˵�����������룬����������ȡ�����������ִ�Сд���Ҹ���ʱ��Ҫ���Ƶ��ո�\n \n"
	msg = msg .."#OFFSET<X:30,Y:0>##IMAGE1902700031#<@jihuoma_lingqulibao *01*��������ȡ���>\n \n"
    --msg = msg .."#OFFSET<X:300,Y:0>##IMAGE1902700031#<@fengce *01*��ȡ������>\n"
    msg = msg .."#COLORCOLOR_YELLOW#����������������������������������������������������������������������������������������������#COLOREND#\n\n\n"
    msg = msg .."#OFFSET<X:520,Y:0>##IMAGE1902700034#<@guanbi *01*�ر�>"
	return lualib:NPCTalk(player,msg)
end

function guanbi(player)
    return ""
end

function fengce(player)
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)
	local times = lualib:GetAllTime()
	local timesStr = lualib:Time2Str( "%Y-%m-%d %H:%M:%S", times)

	if times < StartServerTime_int then
		return "�������ڴ��ڿ���ǰ������Խ׶��޷���ȡ��"
	end

	local account_Name = tostring(lualib:AccountName(player))
	
	if not lualib:IO_CheckTextInFile("fengcehuikui.txt", account_Name) then
		return "���ڷ����û�дﵽ40�����Ѿ���ȡ��������޷���ȡ��"
	end
	
	if lualib:Player_GetBagFree(player) < 1 then
		return "������һ������λ�ã�"
	end
	
	if not lualib:IO_TextFileDeleteLineStr("fengcehuikui.txt", account_Name) then
		return "У�鼤����ʧ�ܣ�"
	end
	
	if not lualib:AddItem(player, "���弶���35��", 1, true, "���弶���35��", player) then
		return "��ӷ��弶���ʧ�ܣ�"
	end

    return "��ȡ�ɹ���"
end

function jihuoma_lingqulibao(player)
    if lualib:SysMsg_SendInputDlg(player, 1, "��������վ����ȡ�ļ�������ƹ�ԱID��", 60, 19, "InputJhCallback", "") == false then
	    lualib:SysMsg_SendPromptMsg(player, "���롸ȡ�����У����Ժ����ԣ�")
    end
    return ""
end

function InputJhCallback(id, player, str, npc)
    local accountid = lualib:Player_GetAccountID(player)
    local serverid = lualib:GetZoneId()
    local groupid = lualib:GetGroupId()
    local code = str
    
    if q_group[code] == 1 then
        local jianyan = lualib:GetInt(player, "q_group")
        if jianyan ~=1 then
            give_gift(player, "q_group")
        else
            lualib:MsgBox(player,"���Ѿ�����������")
            return 
        end
    elseif q_sign[code] == 1 then
        local jianyan = lualib:GetInt(player, "q_sign")
        if jianyan ~=1 then
            give_gift(player, "q_sign")
        else
            lualib:MsgBox(player,"���Ѿ�����������")
            return 
        end
    elseif huiz_p[code] == 1 then
        local jianyan = lualib:GetInt(player, "huiz_p")
        if jianyan ~=1 then
            give_gift(player, "huiz_p")
        else
            lualib:MsgBox(player,"���Ѿ�����������")
            return 
        end
    elseif hangh_p[code] == 1 then
        local jianyan = lualib:GetInt(player, "hangh_p")
        if jianyan ~=1 then
            give_gift(player, "hangh_p")
        else
            lualib:MsgBox(player,"���Ѿ�����������")
            return 
        end
    elseif p_265g[code] == 1 then
        local jianyan = lualib:GetInt(player, "p_265g")
        if jianyan ~=1 then
            give_gift(player, "p_265g")
        else
            lualib:MsgBox(player,"���Ѿ�����������")
            return 
        end
    elseif p_07073[code] == 1 then
        local jianyan = lualib:GetInt(player, "p_07073")
        if jianyan ~=1 then
            give_gift(player, "p_07073")
        else
            lualib:MsgBox(player,"���Ѿ�����������")
            return 
        end
    elseif bfyx[code] == 1 then
        local jianyan = lualib:GetInt(player, "bfyx")
        if jianyan ~=1 then
            give_gift(player, "bfyx")
        else
            lualib:MsgBox(player,"���Ѿ�����������")
            return 
        end
    else
        lualib:MsgBox(player,"���������")
        return
    end
end

function give_gift(player, types)
    local gift_table = 
    {
    ["q_group"] = "QQȺ���", 
    ["q_sign"] = "QQǩ������", 
    ["huiz_p"] = "�᳤���", 
    ["hangh_p"] = "�л����", 
    ["p_265g"] = "265g���", 
    ["p_07073"] = "07073���", 
    ["bfyx"] = "������Ϸ�����", 
    }
	local msg = ""
    if gift_table[types] == nil or gift_table[types] == "" then
        msg = "ϵͳ�쳣��\n\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:1>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*�ر�>"
        return lualib:NPCTalk(player, msg)
    end
    
    local bagfree = lualib:BagFree(player, true, false, false)
    if bagfree < 1 then
        msg = "�����ռ䲻�㣬��Ҫ1������λ�ã�\n\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:1>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*�ر�>"
        return lualib:NPCTalk(player, msg)
    end
    if lualib:AddItem(player, gift_table[types], 1, true, "��������ȡ���", player) == true then
        lualib:SetInt(player, types, 1)
    else
        msg = "��ӵ���ʧ�ܣ�\n\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:1>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*�ر�>"
        return lualib:NPCTalk(player, msg)
    end
    
    msg = "��ϲ�㣬��ȡ"..gift_table[types].."�ɹ���\n\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:1>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*�ر�>"

    return lualib:NPCTalk(player,msg)
end