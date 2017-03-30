local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/ÿ��ǩ����Ʒ")
require("system/timecount_def")
require("system/logic_def_lua")

local buqianjiage = 20000 --ÿ©һ��ǩ����Ҫ���ٽ�Ҳ�ǩ
local zuidabuqianjiage = 100000 --�����Ҫ֧�����ٽ�Ҳ�ǩ�����©ǩ�������࣬����ʮ����û��ǩ������ô���Ҳ֮��Ҫ����100000��ҾͿ��Բ�ǩ��

-----------------------ͼ����ʾ-----------------------------
function meiriqiandao_xianshi(player)	
	if lualib:Player_GetIntProp(player, lua_role_level) < 30 then
		return
	end
	
	meirqiandaochongzhi(player) --ÿ��ǩ������

	local p1 = 0 --��ҿ�ת��ת�̵Ĵ���
	if lualib:GetInt(player, "qiandaotianshu") == 1 or lualib:GetInt(player, "qiandaotianshu") == 2 then
		p1 = 1
	elseif lualib:GetInt(player, "qiandaotianshu") >= 3 and lualib:GetInt(player, "qiandaotianshu") <= 6 then
		p1 = 2
	elseif lualib:GetInt(player, "qiandaotianshu") >= 7 then
		p1 = 3
	end
	
	if lualib:GetInt(player, "vipshijian") - lualib:GetAllTime() >= 0 then
		p1 = p1 + 1
	end
	
	local p2 = p1 - lualib:GetInt(player, "ÿ��ǩ��_cishu") --ʣ��齱����
	
	if p2 >= 1 then
		ShowTimeCount(player, 0, 1903800034, "ÿ��ǩ��") --��ʾÿ��ǩ��ͼ��
		meiriqiandao(player)
	else
		ShowTimeCount(player, -1, 1903800034, "ÿ��ǩ��")
	end
end

function meirqiandaochongzhi(player)
    local cur_days = lualib:GetAllDays(0)
    local days = lualib:GetInt(player,"qiandaojishi")
	if cur_days - days == 1 and lualib:GetInt(player, "qiandaojishi") ~= lualib:GetAllDays(0) then
		lualib:SetInt(player,"qiandaotianshu",lualib:GetInt(player,"qiandaotianshu")+1)
		lualib:SetInt(player,"qiandaojishi",lualib:GetAllDays(0))
		lualib:SetInt(player,"ÿ��ǩ��_cishu",0)
		lualib:SetInt(player,"ÿ��ǩ��_©ǩ����",0)
	elseif days == 0 then --��һ��ǩ��
		lualib:SetInt(player,"qiandaotianshu",1)
		lualib:SetInt(player,"qiandaojishi",lualib:GetAllDays(0))
		lualib:SetInt(player,"ÿ��ǩ��_cishu",0)
		lualib:SetInt(player,"ÿ��ǩ��_©ǩ����",0)
	elseif (cur_days - days) >= 2 then
		lualib:SetInt(player,"qiandaotianshu",1)
		lualib:SetInt(player,"qiandaojishi",lualib:GetAllDays(0))
		lualib:SetInt(player,"ÿ��ǩ��_cishu",0)
		lualib:SetInt(player,"ÿ��ǩ��_©ǩ����",cur_days - days) --��¼�ϴε������ж�����û��ǩ��
	end
end
-------------------ͼ�걻���-----------------------
function meiriqiandao(player)
	meirqiandaochongzhi(player) --ÿ��ǩ������
	ShowTimeCount(player, 0, 1903800034, "ÿ��ǩ��") --��ʾÿ��ǩ��ͼ��
			
	if lualib:GetInt(player,"ÿ��ǩ��_©ǩ����") > 0 and lualib:GetInt(player,"ÿ��ǩ��_©ǩ����") < 7 then  --©ǩ����С��7����Բ�ǩ
		local jinbi = lualib:GetInt(player,"ÿ��ǩ��_©ǩ����") * buqianjiage
		if jinbi > zuidabuqianjiage then
			jinbi = zuidabuqianjiage
		end
		local msg = "������#COLORCOLOR_GREENG#"..lualib:GetInt(player,"ÿ��ǩ��_©ǩ����").."#COLOREND#��û�е�½����ǩ�������ḻ����ǩ#COLORCOLOR_GREENG#"..lualib:GetInt(player,"ÿ��ǩ��_©ǩ����").."#COLOREND#����Ҫ����#COLORCOLOR_GREENG#"..jinbi.."���#COLOREND#��\n\n"
		msg = msg .. "<@buqian#1 *01*��Ҫ��ǩ>    <@buqian#0 *01*���ò�ǩ>\n"
		lualib:NPCTalk(player, msg)
		return
	end
	
	local p1 = 0 --��ҿ�ת��ת�̵Ĵ���
	if lualib:GetInt(player, "qiandaotianshu") == 1 or lualib:GetInt(player, "qiandaotianshu") == 2 then
		p1 = 1
	elseif lualib:GetInt(player, "qiandaotianshu") >= 3 and lualib:GetInt(player, "qiandaotianshu") <= 6 then
		p1 = 2
	elseif lualib:GetInt(player, "qiandaotianshu") >= 7 then
		p1 = 3
	end
	
	if lualib:GetInt(player, "vipshijian") - lualib:GetAllTime() >= 0 then
		p1 = p1 + 1
	end
	
	local p2 = p1 - lualib:GetInt(player, "ÿ��ǩ��_cishu") --ʣ��齱����
	
	if p2 >= 1 then
		local msg = "            ����������½ #COLORCOLOR_ORANGE#"..lualib:GetInt(player,"qiandaotianshu").."#COLOREND# �죬ʣ��齱���� #COLORCOLOR_ORANGE#"..p2.."#COLOREND# �Ρ�"
--[[		if lualib:GetInt(player, "vipshijian") - lualib:GetAllTime() >= 0 then
			msg = msg .. "����ǰ�ǻ�Ա��ÿ�ճ齱����+1\n"
		else
			msg = msg .. "������ǻ�Ա��ÿ�ճ齱����+1\n"
		end]]
		msg = msg .. "\n                                       <@meiriqiandaochoujiang *01*����ʼ�齱��>\n\n"
		msg = msg .. "                          #COLORCOLOR_GREENG#������¼#COLOREND#     #COLORCOLOR_BLUE#1-2��    3-6��    7������#COLOREND#\n"
		msg = msg .. "                          #COLORCOLOR_GREENG#�齱����#COLOREND#       #COLORCOLOR_BLUE#1        2         3#COLOREND#\n"
		lualib:NPCTalk(player, msg)
	else
		ShowTimeCount(player, -1, 1903800034, "ÿ��ǩ��")
	end
end

function meiriqiandaochoujiang(player_guid)
	if lualib:BagFree(player_guid, true, false, false) < 1 then
		lualib:SysMsg_SendWarnMsg(player_guid, "������λ���㣡�������Ժ����ԣ�")
		return "������λ���㣡�������Ժ����ԣ�"
	end
	
	lualib:SetStr(player_guid,"zhuanpanleixing","ÿ��ǩ��")
	if lualib:Player_GetCustomVarInt(player_guid, "ÿ��ǩ��_HasAward") == 1 then
        notify_award1(player_guid, 0)
        return "���ϴγ��еĽ�Ʒ��δ��ȡ��������ȡ��"
    end
	
	local player_count = lualib:Player_GetCustomVarInt(player_guid, "ÿ��ǩ��_cishu")
	
	local p1 = 0 --��ҿ�ת��ת�̵Ĵ���
	if lualib:GetInt(player_guid, "qiandaotianshu") == 1 or lualib:GetInt(player_guid, "qiandaotianshu") == 2 then
		p1 = 1
	elseif lualib:GetInt(player_guid, "qiandaotianshu") >= 3 and lualib:GetInt(player_guid, "qiandaotianshu") <= 6 then
		p1 = 2
	elseif lualib:GetInt(player_guid, "qiandaotianshu") >= 7 then
		p1 = 3
	end
	if lualib:GetInt(player_guid, "vipshijian") - lualib:GetAllTime() >= 0 then
		p1 = p1 + 1
	end
	local p2 = p1 - lualib:GetInt(player_guid, "ÿ��ǩ��_cishu") --ʣ��齱����
	if p1 - player_count >= 1 then
	else
		return "��ĳ齱���������꣬���������ɣ�"
	end
			
	--��ʼ�齱
	lualib:Player_SetCustomVarInt(player_guid, "ÿ��ǩ��_times", 0)
	if lualib:GetInt(player_guid, "vipshijian") - lualib:GetAllTime() >= 0 then
		lualib:Player_SetCustomVarInt(player_guid, "ÿ��ǩ��_CurGroupID", 2)
	else
		lualib:Player_SetCustomVarInt(player_guid, "ÿ��ǩ��_CurGroupID", 1)
	end
    local sel = GetRandomAward1(player_guid)
    
    lualib:Player_SetCustomVarInt(player_guid, "ÿ��ǩ��_Sel_1", sel)
    lualib:Player_SetCustomVarInt(player_guid, "ÿ��ǩ��_HasAward", 1)
    lualib:Player_SetCustomVarInt(player_guid, "ÿ��ǩ��_times",1)
    for n = 2, settings1["ת�̴���"] do
        lualib:Player_SetCustomVarInt(player_guid, "ÿ��ǩ��_Sel_"..n, 0)
    end
    notify_award1(player_guid, 1)
	lualib:SetInt(player_guid,"ÿ��ǩ��_cishu",lualib:GetInt(player_guid, "ÿ��ǩ��_cishu")+1)
	meiriqiandao_xianshi(player_guid) --�ж�ÿ��ǩ��ͼ���Ƿ���ʧ
	return ""
end

------------------��ǩ��-------------------------
function buqian(player,leixing)
	if leixing == "1" then
		local jinbi = lualib:GetInt(player,"ÿ��ǩ��_©ǩ����") * buqianjiage
		if jinbi > zuidabuqianjiage then
			jinbi = zuidabuqianjiage
		end
		
		if lualib:Player_IsGoldEnough(player,jinbi,true) == true then
			if not lualib:Player_SubGold(player,jinbi,true,"��ǩ��",player) then
				return "�۳����ʧ��"
			end
		elseif lualib:Player_IsGoldEnough(player,jinbi,false) == true then
			if not lualib:Player_SubGold(player,jinbi,false,"��ǩ��",player) then
				return "�۳����ʧ��"
			end
		else
			return "��Ҳ��㹻����ǩʧ�ܣ�"
		end
		
		lualib:SetInt(player,"qiandaojishi",lualib:GetAllDays(0)-1)
		lualib:SetInt(player,"qiandaotianshu",lualib:GetInt(player,"ÿ��ǩ��_©ǩ����"))
		meiriqiandao(player)
		return "��ǩ�ɹ���"
	else
		lualib:SetInt(player,"ÿ��ǩ��_©ǩ����",0)
		meiriqiandao(player)
		return ""
	end
end