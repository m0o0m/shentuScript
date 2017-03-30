local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local cangku_rongliang = 12 --�����ֿ��С

--��������ʾ�����Ľ���
local item_xianshi = {
                    "������(��)", 
                    "̫��ͼ(��)", 
                    "�̹��(��)", 
                    "������(��)", 
                    "�����(��)", 
					
                    "������(��)", 
                    "̫��ͼ(��)", 
                    "�̹��(��)", 
                    "������(��)", 
                    "�����(��)", 
					
                    "������(��)", 
                    "̫��ͼ(��)", 
                    "�̹��(��)", 
                    "������(��)", 
                    "�����(��)", 
					
                    "������(��)", 
                    "̫��ͼ(��)", 
                    "�̹��(��)", 
                    "������(��)", 
                    "�����(��)", 
					
                    "������", 
                    "̫��ͼ", 
                    "�̹��", 
                    "������", 
                    "�����", 

                    "������", 
                    "��������", 
                    }

--ʵ���ܻ�õĽ���
local item1 = {
	 --��Ʒ������������������ռ������أ��Ƿ���ʾ�ڷ��������У�1Ϊ��ʾ��0����ʾ������Ʒͼ����
        {"��������", 1, 700, 0, 1990135002}, 
        {"������", 1, 54, 0, 1990120101}, 
        {"̫��ͼ", 1, 54, 0, 1990120077}, 
        {"�̹��", 1, 54, 0, 1990120100}, 
        {"������", 1, 54, 0, 1990120085}, 
        {"�����", 1, 54, 0, 1990120098}, 

        {"������(��)", 1, 27, 0, 1990120101}, 
        {"̫��ͼ(��)", 1, 27, 0, 1990120077}, 
        {"�̹��(��)", 1, 27, 0, 1990120100}, 
        {"������(��)", 1, 27, 0, 1990120085}, 
        {"�����(��)", 1, 27, 0, 1990120098}, 

        {"������(��)", 1, 9, 1, 1990120101}, 
        {"̫��ͼ(��)", 1, 9, 1, 1990120077}, 
        {"�̹��(��)", 1, 9, 1, 1990120100}, 
        {"������(��)", 1, 9, 1, 1990120085}, 
        {"�����(��)", 1, 9, 1, 1990120098}, 

        {"������(��)", 1, 3, 1, 1990120101}, 
        {"̫��ͼ(��)", 1, 3, 1, 1990120077}, 
        {"�̹��(��)", 1, 3, 1, 1990120100}, 
        {"������(��)", 1, 3, 1, 1990120085}, 
        {"�����(��)", 1, 3, 1, 1990120098}, 

        {"������(��)", 1, 1, 1, 1990120101}, 
        {"̫��ͼ(��)", 1, 1, 1, 1990120077}, 
        {"�̹��(��)", 1, 1, 1, 1990120100}, 
        {"������(��)", 1, 1, 1, 1990120085}, 
        {"�����(��)", 1, 1, 1, 1990120098}, 

        {"������", 1, 3, 1, 1990120077}, 
        {"������", 1, 3, 1, 1990120100}, 
        {"������", 1, 1, 1, 1990120098}, 

}
local item2 = {
	 --��Ʒ������������������ռ������أ��Ƿ���ʾ�ڷ��������У�1Ϊ��ʾ��0����ʾ������Ʒͼ����
        {"��������", 1, 600, 0, 1990135002}, 
        {"������", 1, 54, 0, 1990120101}, 
        {"̫��ͼ", 1, 54, 0, 1990120077}, 
        {"�̹��", 1, 54, 0, 1990120100}, 
        {"������", 1, 54, 0, 1990120085}, 
        {"�����", 1, 54, 0, 1990120098}, 

        {"������(��)", 1, 27, 0, 1990120101}, 
        {"̫��ͼ(��)", 1, 27, 0, 1990120077}, 
        {"�̹��(��)", 1, 27, 0, 1990120100}, 
        {"������(��)", 1, 27, 0, 1990120085}, 
        {"�����(��)", 1, 27, 0, 1990120098}, 

        {"������(��)", 1, 9, 1, 1990120101}, 
        {"̫��ͼ(��)", 1, 9, 1, 1990120077}, 
        {"�̹��(��)", 1, 9, 1, 1990120100}, 
        {"������(��)", 1, 9, 1, 1990120085}, 
        {"�����(��)", 1, 9, 1, 1990120098}, 

        {"������(��)", 1, 3, 1, 1990120101}, 
        {"̫��ͼ(��)", 1, 3, 1, 1990120077}, 
        {"�̹��(��)", 1, 3, 1, 1990120100}, 
        {"������(��)", 1, 3, 1, 1990120085}, 
        {"�����(��)", 1, 3, 1, 1990120098}, 

        {"������(��)", 1, 1, 1, 1990120101}, 
        {"̫��ͼ(��)", 1, 1, 1, 1990120077}, 
        {"�̹��(��)", 1, 1, 1, 1990120100}, 
        {"������(��)", 1, 1, 1, 1990120085}, 
        {"�����(��)", 1, 1, 1, 1990120098}, 

        {"������", 1, 3, 1, 1990120077}, 
        {"������", 1, 3, 1, 1990120100}, 
        {"������", 1, 1, 1, 1990120098}, 
}

local item3 = {
	 --��Ʒ������������������ռ������أ��Ƿ���ʾ�ڷ��������У�1Ϊ��ʾ��0����ʾ������Ʒͼ����
        {"��������", 1, 500, 0, 1990135002}, 
        {"������", 1, 27, 0, 1990120101}, 
        {"̫��ͼ", 1, 27, 0, 1990120077}, 
        {"�̹��", 1, 27, 0, 1990120100}, 
        {"������", 1, 27, 0, 1990120085}, 
        {"�����", 1, 27, 0, 1990120098}, 

        {"������(��)", 1, 54, 0, 1990120101}, 
        {"̫��ͼ(��)", 1, 54, 0, 1990120077}, 
        {"�̹��(��)", 1, 54, 0, 1990120100}, 
        {"������(��)", 1, 54, 0, 1990120085}, 
        {"�����(��)", 1, 54, 0, 1990120098}, 

        {"������(��)", 1, 9, 1, 1990120101}, 
        {"̫��ͼ(��)", 1, 9, 1, 1990120077}, 
        {"�̹��(��)", 1, 9, 1, 1990120100}, 
        {"������(��)", 1, 9, 1, 1990120085}, 
        {"�����(��)", 1, 9, 1, 1990120098}, 

        {"������(��)", 1, 3, 1, 1990120101}, 
        {"̫��ͼ(��)", 1, 3, 1, 1990120077}, 
        {"�̹��(��)", 1, 3, 1, 1990120100}, 
        {"������(��)", 1, 3, 1, 1990120085}, 
        {"�����(��)", 1, 3, 1, 1990120098}, 

        {"������(��)", 1, 1, 1, 1990120101}, 
        {"̫��ͼ(��)", 1, 1, 1, 1990120077}, 
        {"�̹��(��)", 1, 1, 1, 1990120100}, 
        {"������(��)", 1, 1, 1, 1990120085}, 
        {"�����(��)", 1, 1, 1, 1990120098}, 

        {"������", 1, 3, 1, 1990120077}, 
        {"������", 1, 3, 1, 1990120100}, 
        {"������", 1, 1, 1, 1990120098}, 
}

local item4 = {
	 --��Ʒ������������������ռ������أ��Ƿ���ʾ�ڷ��������У�1Ϊ��ʾ��0����ʾ������Ʒͼ����
        {"��������", 1, 400, 0, 1990135002}, 
        {"������", 1, 24, 1, 1990120101}, 
        {"̫��ͼ", 1, 24, 1, 1990120077}, 
        {"�̹��", 1, 24, 1, 1990120100}, 
        {"������", 1, 24, 1, 1990120085}, 
        {"�����", 1, 24, 1, 1990120098}, 

        {"������(��)", 1, 24, 1, 1990120101}, 
        {"̫��ͼ(��)", 1, 24, 1, 1990120077}, 
        {"�̹��(��)", 1, 24, 1, 1990120100}, 
        {"������(��)", 1, 24, 1, 1990120085}, 
        {"�����(��)", 1, 24, 1, 1990120098}, 

        {"������(��)", 1, 27, 1, 1990120101}, 
        {"̫��ͼ(��)", 1, 27, 1, 1990120077}, 
        {"�̹��(��)", 1, 27, 1, 1990120100}, 
        {"������(��)", 1, 27, 1, 1990120085}, 
        {"�����(��)", 1, 27, 1, 1990120098}, 

        {"������(��)", 1, 10, 1, 1990120101}, 
        {"̫��ͼ(��)", 1, 10, 1, 1990120077}, 
        {"�̹��(��)", 1, 10, 1, 1990120100}, 
        {"������(��)", 1, 10, 1, 1990120085}, 
        {"�����(��)", 1, 10, 1, 1990120098}, 

        {"������(��)", 1, 9, 1, 1990120101}, 
        {"̫��ͼ(��)", 1, 9, 1, 1990120077}, 
        {"�̹��(��)", 1, 9, 1, 1990120100}, 
        {"������(��)", 1, 9, 1, 1990120085}, 
        {"�����(��)", 1, 9, 1, 1990120098}, 

        {"������", 1, 3, 1, 1990120077}, 
        {"������", 1, 3, 1, 1990120100}, 
        {"������", 1, 1, 1, 1990120098}, 
}


local item5 = {
	 --��Ʒ������������������ռ������أ��Ƿ���ʾ�ڷ��������У�1Ϊ��ʾ��0����ʾ������Ʒͼ����
        {"��������", 1, 300, 0, 1990135002}, 
        {"������", 1, 18, 1, 1990120101}, 
        {"̫��ͼ", 1, 18, 1, 1990120077}, 
        {"�̹��", 1, 18, 1, 1990120100}, 
        {"������", 1, 18, 1, 1990120085}, 
        {"�����", 1, 18, 1, 1990120098}, 

        {"������(��)", 1, 18, 1, 1990120101}, 
        {"̫��ͼ(��)", 1, 18, 1, 1990120077}, 
        {"�̹��(��)", 1, 18, 1, 1990120100}, 
        {"������(��)", 1, 18, 1, 1990120085}, 
        {"�����(��)", 1, 18, 1, 1990120098}, 

        {"������(��)", 1, 24, 1, 1990120101}, 
        {"̫��ͼ(��)", 1, 24, 1, 1990120077}, 
        {"�̹��(��)", 1, 24, 1, 1990120100}, 
        {"������(��)", 1, 24, 1, 1990120085}, 
        {"�����(��)", 1, 24, 1, 1990120098}, 

        {"������(��)", 1, 18, 1, 1990120101}, 
        {"̫��ͼ(��)", 1, 18, 1, 1990120077}, 
        {"�̹��(��)", 1, 18, 1, 1990120100}, 
        {"������(��)", 1, 18, 1, 1990120085}, 
        {"�����(��)", 1, 18, 1, 1990120098}, 

        {"������(��)", 1, 16, 1, 1990120101}, 
        {"̫��ͼ(��)", 1, 16, 1, 1990120077}, 
        {"�̹��(��)", 1, 16, 1, 1990120100}, 
        {"������(��)", 1, 16, 1, 1990120085}, 
        {"�����(��)", 1, 16, 1, 1990120098}, 

        {"������", 1, 3, 1, 1990120077}, 
        {"������", 1, 3, 1, 1990120100}, 
        {"������", 1, 1, 1, 1990120098}, 
}

function main(npc, player)

	local cangku = {}
	if lualib:GetStr(player,"fabao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"fabao_cangku")) --ȡ�÷����ֿ�table
	end
	
	local msg = "#POS<X:380>##POS<Y:50>#��Ľ�ң�#COLORCOLOR_BLUE#"..lualib:GetGold(player).."#COLOREND#  <@web *01*���ٳ�ֵ>\n"

	msg = msg .. "#POS<X:380>##POS<Y:80>##IMAGE<ID:1902700031>#<@fabaocangku#1 *01*�鿴�����ֿ�> ����:"..#cangku.."/"..cangku_rongliang
		
	msg = msg .. "#POS<X:0>##POS<Y:0>#��֮����������֮�š��ϵ������֮ʼ���������Ƶ���ǧ�����������Ҹ��������ҿڴ�����һ���������㲻�����ţ����ý�ҵ��ַ���̽��ȡ��ҷ��������ƿط�����#COLORCOLOR_RED#������������#COLOREND#"
	msg = msg .. "#POS<X:0>##POS<Y:165>##IMAGE1902700037#<@tanqufabao1#1#1 *01*2����̽ȡ>/<@tanqufabao1#1#5 *01*̽5��>    #IMAGE1902700037#<@tanqufabao2#1#1 *01*4����̽ȡ>/<@tanqufabao2#1#5 *01*̽5��>    #IMAGE1902700037#<@tanqufabao3#1#1 *01*8����̽ȡ>/<@tanqufabao3#1#5 *01*̽5��>    #IMAGE1902700037#<@tanqufabao4#1#1 *01*16����̽ȡ>"	

	--��ʾ����������
--[[	msg = msg .. "#COLORCOLOR_BLUE#���������桿#COLOREND#\n"
	local gonggao = {}
	if lualib:GetStr("0","fabao_gonggao") ~= "" then
		gonggao = json.decode(lualib:GetStr("0","fabao_gonggao")) --ȡ�÷�������table
	end
	for k,v in pairs(gonggao) do
		msg = msg .. v .."\n"
	end]]

	--���������ʾ
	if huode ~= nil then
		msg = msg .. "#COLORCOLOR_ORANGE#��������á�#COLOREND#  "
		for k,v in pairs(huode) do
			msg = msg .. "#COLORCOLOR_GREENG#"..v.."#COLOREND#  "
		end
		lualib:RunClientScript(player, "ItemEffect", "choujiang", 0 .."#".. 200)
	end
	
	local str = [[<form default_parent="NpcTalk,Container">]]
	local x = 0
	local y = 40
	for i=1,#item_xianshi do
		str = str .. "<itemctrl id="..i.." x="..x.." y="..y.." w=35 h=35 init_item="..item_xianshi[i].." count=1 is_bound=false use_back=true />"
		x = x + 40
		if i == 9 then
			x = 0
			y = 80
			str = str .. "\n"
		elseif i == 18 then
			x = 0
			y = 120
			str = str .. "\n"
		elseif i == 27 then
			str = str .. "\n"
		end
	end
	msg = str .. "<text><![CDATA["..msg.."]]></text></form>"
	lualib:NPCTalkDetail(player, msg, 600, 220)
	return ""
end

function web(player)
    local name = lualib:Player_GetStrProp(player, lua_role_user_name)
    local userid = lualib:Player_GetAccountID(player)
    local grpid = lualib:GetGroupId()
    local msg = "http://pay.hzyotoy.com/index.do?mod=pay&groupid=" .. grpid
    lualib:SysMsg_SendWebPage(player, msg)
    return ""
end

--------------------̽�ҷ���1----------------------------
function tanqufabao1(player,types,cishu)
	local types = tonumber(types)
	local cishu = tonumber(cishu)
	local jiage = 20000 * cishu
			if lualib:Player_IsGoldEnough(player,jiage,false) == false then
				lualib:SysMsg_SendPromptMsg(player,"��Ľ�Ҳ���,�޷�Ѱ����")
				fabao(player)
				return ""
			end


	local cangku = {}
	if lualib:GetStr(player,"fabao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"fabao_cangku")) --ȡ�÷����ֿ�table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"fabao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"fabao_cangku_number")) --ȡ�÷����ֿ�����table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"fabao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"fabao_cangku_icon")) --ȡ�÷����ֿ�ͼ��table
	end
	
	local gonggao = {}
	if lualib:GetStr("0","fabao_gonggao") ~= "" then
		gonggao = json.decode(lualib:GetStr("0","fabao_gonggao")) --ȡ�÷�������table
	end

	local huode = {} --������ű��λ�ý�����Ϣ��table
	
	if cishu + #cangku > cangku_rongliang then
		lualib:SysMsg_SendMsgDlg(player,1,"�����ֿ��λ���㣬��ȡ���ֿ��еĵ��߻��߼���̽ȡ�����������ԡ�#BUTTON0#�رմ���#BUTTONEND#", 100, "guanbi", "")
		fabao(player)
		return ""
	end
	
	if types == 1 then
		if cishu == 1 and lualib:ItemCountByKey(player, "Ѱ��ͼ", true, false, false, 2) >= 1 then
			if not lualib:DelItem(player, "Ѱ��ͼ", 1, 2, "���淨��", player) then --ɾ����
				return "�۳�����ʧ��"
			end
		else
			if lualib:Player_SubGold(player,jiage,false,"���淨��",player) == false then --�۽��
				lualib:SysMsg_SendWarnMsg(player,"�۳����ʧ�ܣ�")
				return ""
			end
		end
	end
	
	local suiji_zongzhi = 0  --�����ֵ
	local suiji = 0 --���ֵ
	
	--���Ȼ�������ֵ
	for k,v in pairs(item1) do
		suiji_zongzhi = suiji_zongzhi + v[3]
	end
	
	--���ݷ�������ѭ�����
	for i=1,cishu do
		suiji = math.random(suiji_zongzhi) --������ֵ
		local suiji_1 = 0
		--��ʼ�������ֵ��Ӧ�ĸ���Ʒ
		for k,v in pairs(item1) do
			local suiji_2 = suiji_1 + v[3]
			if suiji >= suiji_1 and  suiji < suiji_2 then
				cangku[#cangku+1] = v[1] --������Ʒ�������ֿ�
				cangku_number[#cangku_number+1] = v[2] --��¼��Ʒ�����������ֿ�
				cangku_icon[#cangku_icon+1] = v[5] --��¼��Ʒͼ�굽�����ֿ�
				if v[4] == 1 then
					table.insert(gonggao,1,lualib:Time2Str("%Y-%m-%d %H:%M:%S",0).."  #COLORCOLOR_ORANGE#"..lualib:KeyName(player).."#COLOREND#�Ӻ�����洦ȡ�ã�#COLORCOLOR_GREENG#"..v[1] .. "*" .. v[2].."#COLOREND#") --��¼������������
					if #gonggao > 10 then
						table.remove(gonggao,11)
					end
				end
				huode[#huode+1] = "#COLORCOLOR_GREENG#".. v[1] .. "*" .. v[2] .. "#COLOREND#" --��¼���η�����ʾ��Ϣ
				break
			else
				suiji_1 = suiji_1 + v[3]
			end
		end
	end

	lualib:SetStr(player,"fabao_cangku",json.encode(cangku)) --�������ֿ�table�����ַ�������
	lualib:SetStr(player,"fabao_cangku_number",json.encode(cangku_number)) --�������ֿ�table�����ַ�������
	lualib:SetStr(player,"fabao_cangku_icon",json.encode(cangku_icon)) --�������ֿ�table�����ַ�������
	lualib:SetStr("0","fabao_gonggao",json.encode(gonggao)) --������table�����ַ�������
	local player_name = lualib:KeyName(player)
	lualib:SysMsg_SendCenterMsg(1,"��"..player_name.."��̽�� "..cishu.." �κ������ķ��������һ����ϧ������","") --��Ļ�м���ʾ
	fabao(player,huode) --���ص�����fabao��ʾ�����η��������Ʒ��Ϣ
	return ""
end

--------------------̽�ҷ���2----------------------------
function tanqufabao2(player,types,cishu)
	local types = tonumber(types)
	local cishu = tonumber(cishu)
	local jiage = 40000 * cishu
			if lualib:Player_IsGoldEnough(player,jiage,false) == false then
				lualib:SysMsg_SendPromptMsg(player,"��Ľ�Ҳ���,�޷�Ѱ����")
				fabao(player)
				return ""
			end


	local cangku = {}
	if lualib:GetStr(player,"fabao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"fabao_cangku")) --ȡ�÷����ֿ�table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"fabao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"fabao_cangku_number")) --ȡ�÷����ֿ�����table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"fabao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"fabao_cangku_icon")) --ȡ�÷����ֿ�ͼ��table
	end
	
	local gonggao = {}
	if lualib:GetStr("0","fabao_gonggao") ~= "" then
		gonggao = json.decode(lualib:GetStr("0","fabao_gonggao")) --ȡ�÷�������table
	end

	local huode = {} --������ű��λ�ý�����Ϣ��table
	
	if cishu + #cangku > cangku_rongliang then
		lualib:SysMsg_SendMsgDlg(player,1,"�����ֿ��λ���㣬��ȡ���ֿ��еĵ��߻��߼���̽ȡ�����������ԡ�#BUTTON0#�رմ���#BUTTONEND#", 100, "guanbi", "")
		fabao(player)
		return ""
	end
	
	if types == 1 then
		if cishu == 1 and lualib:ItemCountByKey(player, "Ѱ��ͼ", true, false, false, 2) >= 1 then
			if not lualib:DelItem(player, "Ѱ��ͼ", 1, 2, "���淨��", player) then --ɾ����
				return "�۳�����ʧ��"
			end
		else
			if lualib:Player_SubGold(player,jiage,false,"���淨��",player) == false then --�۽��
				lualib:SysMsg_SendWarnMsg(player,"�۳����ʧ�ܣ�")
				return ""
			end
		end
	end
	
	local suiji_zongzhi = 0  --�����ֵ
	local suiji = 0 --���ֵ
	
	--���Ȼ�������ֵ
	for k,v in pairs(item2) do
		suiji_zongzhi = suiji_zongzhi + v[3]
	end
	
	--���ݷ�������ѭ�����
	for i=1,cishu do
		suiji = math.random(suiji_zongzhi) --������ֵ
		local suiji_1 = 0
		--��ʼ�������ֵ��Ӧ�ĸ���Ʒ
		for k,v in pairs(item2) do
			local suiji_2 = suiji_1 + v[3]
			if suiji >= suiji_1 and  suiji < suiji_2 then
				cangku[#cangku+1] = v[1] --������Ʒ�������ֿ�
				cangku_number[#cangku_number+1] = v[2] --��¼��Ʒ�����������ֿ�
				cangku_icon[#cangku_icon+1] = v[5] --��¼��Ʒͼ�굽�����ֿ�
				if v[4] == 1 then
					table.insert(gonggao,1,lualib:Time2Str("%Y-%m-%d %H:%M:%S",0).."  #COLORCOLOR_ORANGE#"..lualib:KeyName(player).."#COLOREND#�Ӻ�����洦ȡ�ã�#COLORCOLOR_GREENG#"..v[1] .. "*" .. v[2].."#COLOREND#") --��¼������������
					if #gonggao > 10 then
						table.remove(gonggao,11)
					end
				end
				huode[#huode+1] = "#COLORCOLOR_GREENG#".. v[1] .. "*" .. v[2] .. "#COLOREND#" --��¼���η�����ʾ��Ϣ
				break
			else
				suiji_1 = suiji_1 + v[3]
			end
		end
	end

	lualib:SetStr(player,"fabao_cangku",json.encode(cangku)) --�������ֿ�table�����ַ�������
	lualib:SetStr(player,"fabao_cangku_number",json.encode(cangku_number)) --�������ֿ�table�����ַ�������
	lualib:SetStr(player,"fabao_cangku_icon",json.encode(cangku_icon)) --�������ֿ�table�����ַ�������
	lualib:SetStr("0","fabao_gonggao",json.encode(gonggao)) --������table�����ַ�������
	local player_name = lualib:KeyName(player)
	lualib:SysMsg_SendCenterMsg(1,"��"..player_name.."��̽�� "..cishu.." �κ������ķ��������һ����ϧ������","") --��Ļ�м���ʾ
	fabao(player,huode) --���ص�����fabao��ʾ�����η��������Ʒ��Ϣ
	return ""
end



--------------------̽�ҷ���3----------------------------
function tanqufabao3(player,types,cishu)
	local types = tonumber(types)
	local cishu = tonumber(cishu)
	local jiage = 80000 * cishu
			if lualib:Player_IsGoldEnough(player,jiage,false) == false then
				lualib:SysMsg_SendPromptMsg(player,"��Ľ�Ҳ���,�޷�Ѱ����")
				fabao(player)
				return ""
			end


	local cangku = {}
	if lualib:GetStr(player,"fabao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"fabao_cangku")) --ȡ�÷����ֿ�table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"fabao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"fabao_cangku_number")) --ȡ�÷����ֿ�����table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"fabao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"fabao_cangku_icon")) --ȡ�÷����ֿ�ͼ��table
	end
	
	local gonggao = {}
	if lualib:GetStr("0","fabao_gonggao") ~= "" then
		gonggao = json.decode(lualib:GetStr("0","fabao_gonggao")) --ȡ�÷�������table
	end

	local huode = {} --������ű��λ�ý�����Ϣ��table
	
	if cishu + #cangku > cangku_rongliang then
		lualib:SysMsg_SendMsgDlg(player,1,"�����ֿ��λ���㣬��ȡ���ֿ��еĵ��߻��߼���̽ȡ�����������ԡ�#BUTTON0#�رմ���#BUTTONEND#", 100, "guanbi", "")
		fabao(player)
		return ""
	end
	
	if types == 1 then
		if cishu == 1 and lualib:ItemCountByKey(player, "Ѱ��ͼ", true, false, false, 2) >= 1 then
			if not lualib:DelItem(player, "Ѱ��ͼ", 1, 2, "���淨��", player) then --ɾ����
				return "�۳�����ʧ��"
			end
		else
			if lualib:Player_SubGold(player,jiage,false,"���淨��",player) == false then --�۽��
				lualib:SysMsg_SendWarnMsg(player,"�۳����ʧ�ܣ�")
				return ""
			end
		end
	end
	
	local suiji_zongzhi = 0  --�����ֵ
	local suiji = 0 --���ֵ
	
	--���Ȼ�������ֵ
	for k,v in pairs(item3) do
		suiji_zongzhi = suiji_zongzhi + v[3]
	end
	
	--���ݷ�������ѭ�����
	for i=1,cishu do
		suiji = math.random(suiji_zongzhi) --������ֵ
		local suiji_1 = 0
		--��ʼ�������ֵ��Ӧ�ĸ���Ʒ
		for k,v in pairs(item3) do
			local suiji_2 = suiji_1 + v[3]
			if suiji >= suiji_1 and  suiji < suiji_2 then
				cangku[#cangku+1] = v[1] --������Ʒ�������ֿ�
				cangku_number[#cangku_number+1] = v[2] --��¼��Ʒ�����������ֿ�
				cangku_icon[#cangku_icon+1] = v[5] --��¼��Ʒͼ�굽�����ֿ�
				if v[4] == 1 then
					table.insert(gonggao,1,lualib:Time2Str("%Y-%m-%d %H:%M:%S",0).."  #COLORCOLOR_ORANGE#"..lualib:KeyName(player).."#COLOREND#�Ӻ�����洦ȡ�ã�#COLORCOLOR_GREENG#"..v[1] .. "*" .. v[2].."#COLOREND#") --��¼������������
					if #gonggao > 10 then
						table.remove(gonggao,11)
					end
				end
				huode[#huode+1] = "#COLORCOLOR_GREENG#".. v[1] .. "*" .. v[2] .. "#COLOREND#" --��¼���η�����ʾ��Ϣ
				break
			else
				suiji_1 = suiji_1 + v[3]
			end
		end
	end

	lualib:SetStr(player,"fabao_cangku",json.encode(cangku)) --�������ֿ�table�����ַ�������
	lualib:SetStr(player,"fabao_cangku_number",json.encode(cangku_number)) --�������ֿ�table�����ַ�������
	lualib:SetStr(player,"fabao_cangku_icon",json.encode(cangku_icon)) --�������ֿ�table�����ַ�������
	lualib:SetStr("0","fabao_gonggao",json.encode(gonggao)) --������table�����ַ�������
	local player_name = lualib:KeyName(player)
	lualib:SysMsg_SendCenterMsg(1,"��"..player_name.."��̽�� "..cishu.." �κ������ķ��������һ����ϧ������","") --��Ļ�м���ʾ
	fabao(player,huode) --���ص�����fabao��ʾ�����η��������Ʒ��Ϣ
	return ""
end


--------------------̽�ҷ���4----------------------------
function tanqufabao4(player,types,cishu)
	local types = tonumber(types)
	local cishu = tonumber(cishu)
	local jiage = 160000 * cishu
			if lualib:Player_IsGoldEnough(player,jiage,false) == false then
				lualib:SysMsg_SendPromptMsg(player,"��Ľ�Ҳ���,�޷�Ѱ����")
				fabao(player)
				return ""
			end


	local cangku = {}
	if lualib:GetStr(player,"fabao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"fabao_cangku")) --ȡ�÷����ֿ�table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"fabao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"fabao_cangku_number")) --ȡ�÷����ֿ�����table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"fabao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"fabao_cangku_icon")) --ȡ�÷����ֿ�ͼ��table
	end
	
	local gonggao = {}
	if lualib:GetStr("0","fabao_gonggao") ~= "" then
		gonggao = json.decode(lualib:GetStr("0","fabao_gonggao")) --ȡ�÷�������table
	end

	local huode = {} --������ű��λ�ý�����Ϣ��table
	
	if cishu + #cangku > cangku_rongliang then
		lualib:SysMsg_SendMsgDlg(player,1,"�����ֿ��λ���㣬��ȡ���ֿ��еĵ��߻��߼���̽ȡ�����������ԡ�#BUTTON0#�رմ���#BUTTONEND#", 100, "guanbi", "")
		fabao(player)
		return ""
	end
	
	if types == 1 then
		if cishu == 1 and lualib:ItemCountByKey(player, "Ѱ��ͼ", true, false, false, 2) >= 1 then
			if not lualib:DelItem(player, "Ѱ��ͼ", 1, 2, "���淨��", player) then --ɾ����
				return "�۳�����ʧ��"
			end
		else
			if lualib:Player_SubGold(player,jiage,false,"���淨��",player) == false then --�۽��
				lualib:SysMsg_SendWarnMsg(player,"�۳����ʧ�ܣ�")
				return ""
			end
		end
	end
	
	local suiji_zongzhi = 0  --�����ֵ
	local suiji = 0 --���ֵ
	
	--���Ȼ�������ֵ
	for k,v in pairs(item4) do
		suiji_zongzhi = suiji_zongzhi + v[3]
	end
	
	--���ݷ�������ѭ�����
	for i=1,cishu do
		suiji = math.random(suiji_zongzhi) --������ֵ
		local suiji_1 = 0
		--��ʼ�������ֵ��Ӧ�ĸ���Ʒ
		for k,v in pairs(item4) do
			local suiji_2 = suiji_1 + v[3]
			if suiji >= suiji_1 and  suiji < suiji_2 then
				cangku[#cangku+1] = v[1] --������Ʒ�������ֿ�
				cangku_number[#cangku_number+1] = v[2] --��¼��Ʒ�����������ֿ�
				cangku_icon[#cangku_icon+1] = v[5] --��¼��Ʒͼ�굽�����ֿ�
				if v[4] == 1 then
					table.insert(gonggao,1,lualib:Time2Str("%Y-%m-%d %H:%M:%S",0).."  #COLORCOLOR_ORANGE#"..lualib:KeyName(player).."#COLOREND#�Ӻ�����洦ȡ�ã�#COLORCOLOR_GREENG#"..v[1] .. "*" .. v[2].."#COLOREND#") --��¼������������
					if #gonggao > 10 then
						table.remove(gonggao,11)
					end
				end
				huode[#huode+1] = "#COLORCOLOR_GREENG#".. v[1] .. "*" .. v[2] .. "#COLOREND#" --��¼���η�����ʾ��Ϣ
				break
			else
				suiji_1 = suiji_1 + v[3]
			end
		end
	end

	lualib:SetStr(player,"fabao_cangku",json.encode(cangku)) --�������ֿ�table�����ַ�������
	lualib:SetStr(player,"fabao_cangku_number",json.encode(cangku_number)) --�������ֿ�table�����ַ�������
	lualib:SetStr(player,"fabao_cangku_icon",json.encode(cangku_icon)) --�������ֿ�table�����ַ�������
	lualib:SetStr("0","fabao_gonggao",json.encode(gonggao)) --������table�����ַ�������
	local player_name = lualib:KeyName(player)
	lualib:SysMsg_SendCenterMsg(1,"��"..player_name.."��̽�� "..cishu.." �κ������ķ��������һ����ϧ������","") --��Ļ�м���ʾ
	fabao(player,huode) --���ص�����fabao��ʾ�����η��������Ʒ��Ϣ
	return ""
end



--------------------̽�ҷ���5----------------------------
function tanqufabao5(player,types,cishu)
	local types = tonumber(types)
	local cishu = tonumber(cishu)
	local jiage = 320000 * cishu
			if lualib:Player_IsGoldEnough(player,jiage,false) == false then
				lualib:SysMsg_SendPromptMsg(player,"��Ľ�Ҳ���,�޷�Ѱ����")
				fabao(player)
				return ""
			end


	local cangku = {}
	if lualib:GetStr(player,"fabao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"fabao_cangku")) --ȡ�÷����ֿ�table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"fabao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"fabao_cangku_number")) --ȡ�÷����ֿ�����table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"fabao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"fabao_cangku_icon")) --ȡ�÷����ֿ�ͼ��table
	end
	
	local gonggao = {}
	if lualib:GetStr("0","fabao_gonggao") ~= "" then
		gonggao = json.decode(lualib:GetStr("0","fabao_gonggao")) --ȡ�÷�������table
	end

	local huode = {} --������ű��λ�ý�����Ϣ��table
	
	if cishu + #cangku > cangku_rongliang then
		lualib:SysMsg_SendMsgDlg(player,1,"�����ֿ��λ���㣬��ȡ���ֿ��еĵ��߻��߼���̽ȡ�����������ԡ�#BUTTON0#�رմ���#BUTTONEND#", 100, "guanbi", "")
		fabao(player)
		return ""
	end
	
	if types == 1 then
		if cishu == 1 and lualib:ItemCountByKey(player, "Ѱ��ͼ", true, false, false, 2) >= 1 then
			if not lualib:DelItem(player, "Ѱ��ͼ", 1, 2, "���淨��", player) then --ɾ����
				return "�۳�����ʧ��"
			end
		else
			if lualib:Player_SubGold(player,jiage,false,"���淨��",player) == false then --�۽��
				lualib:SysMsg_SendWarnMsg(player,"�۳����ʧ�ܣ�")
				return ""
			end
		end
	end
	
	local suiji_zongzhi = 0  --�����ֵ
	local suiji = 0 --���ֵ
	
	--���Ȼ�������ֵ
	for k,v in pairs(item5) do
		suiji_zongzhi = suiji_zongzhi + v[3]
	end
	
	--���ݷ�������ѭ�����
	for i=1,cishu do
		suiji = math.random(suiji_zongzhi) --������ֵ
		local suiji_1 = 0
		--��ʼ�������ֵ��Ӧ�ĸ���Ʒ
		for k,v in pairs(item5) do
			local suiji_2 = suiji_1 + v[3]
			if suiji >= suiji_1 and  suiji < suiji_2 then
				cangku[#cangku+1] = v[1] --������Ʒ�������ֿ�
				cangku_number[#cangku_number+1] = v[2] --��¼��Ʒ�����������ֿ�
				cangku_icon[#cangku_icon+1] = v[5] --��¼��Ʒͼ�굽�����ֿ�
				if v[4] == 1 then
					table.insert(gonggao,1,lualib:Time2Str("%Y-%m-%d %H:%M:%S",0).."  #COLORCOLOR_ORANGE#"..lualib:KeyName(player).."#COLOREND#�Ӻ�����洦ȡ�ã�#COLORCOLOR_GREENG#"..v[1] .. "*" .. v[2].."#COLOREND#") --��¼������������
					if #gonggao > 10 then
						table.remove(gonggao,11)
					end
				end
				huode[#huode+1] = "#COLORCOLOR_GREENG#".. v[1] .. "*" .. v[2] .. "#COLOREND#" --��¼���η�����ʾ��Ϣ
				break
			else
				suiji_1 = suiji_1 + v[3]
			end
		end
	end

	lualib:SetStr(player,"fabao_cangku",json.encode(cangku)) --�������ֿ�table�����ַ�������
	lualib:SetStr(player,"fabao_cangku_number",json.encode(cangku_number)) --�������ֿ�table�����ַ�������
	lualib:SetStr(player,"fabao_cangku_icon",json.encode(cangku_icon)) --�������ֿ�table�����ַ�������
	lualib:SetStr("0","fabao_gonggao",json.encode(gonggao)) --������table�����ַ�������
	local player_name = lualib:KeyName(player)
	lualib:SysMsg_SendCenterMsg(1,"��"..player_name.."��̽�� "..cishu.." �κ������ķ��������һ����ϧ������","") --��Ļ�м���ʾ
	fabao(player,huode) --���ص�����fabao��ʾ�����η��������Ʒ��Ϣ
	return ""
end



function chongzhiqueren(id,player,xuanzhe)
	if xuanzhe == 0 then
		web(player)
	end
end

function guanbi()
	return ""
end

--------------------------�����ֿ�-------------------------------
function fabaocangku(player,qizhiweizhi)
	qizhiweizhi = tonumber(qizhiweizhi)
	local cangku = {}
	if lualib:GetStr(player,"fabao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"fabao_cangku")) --ȡ�÷����ֿ�table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"fabao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"fabao_cangku_number")) --ȡ�÷����ֿ�����table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"fabao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"fabao_cangku_icon")) --ȡ�÷����ֿ�ͼ��table
	end

	if qizhiweizhi < 1 then
		qizhiweizhi = 1
	elseif qizhiweizhi > cangku_rongliang then
		qizhiweizhi = qizhiweizhi - 12
	end
	
	local yeshu = math.modf(qizhiweizhi/12) + 1 --��ǰҳ��
	
	--���ݲֿ���������ܹ�ҳ��
	local p1,p2 = math.modf(cangku_rongliang/12)
	if p2 > 0 then
		p1 = p1 + 1
	end
	
	local msg = "#COLORCOLOR_ORANGE#�������ֿ⡿#COLOREND# ����:"..#cangku.."/"..cangku_rongliang.."  #COLORCOLOR_BLUE#<@fabaocangku#"..qizhiweizhi-12 .." *01*����һҳ��> "..yeshu.."/"..p1.." <@fabaocangku#"..qizhiweizhi+12 .." *01*����һҳ��>#COLOREND#  <@fabaocangku_quanbuquchu#"..qizhiweizhi.." *01*��ȫ��ȡ����>  <@fabaocangku#"..qizhiweizhi .." *01*��ˢ�²鿴�ֿ⡿>\n\n"

	if cangku[qizhiweizhi] == nil then
		return msg
	end
	
	--��ʾ�ֿ���Ʒ��Ϣ
	local jieshuweizhi = qizhiweizhi+11
	
	if jieshuweizhi > #cangku then
		jieshuweizhi = #cangku
	end

	local p = 0 --��¼��Ʒ����Ϊ�ڼ���
	local str = [[<form default_parent="NpcTalk,Container">]]
	
	for i=qizhiweizhi,jieshuweizhi do
		p = p + 1
		--��ʾ��Ʒͼ��
		local yushu = p%4
		local x = 139 --���ȼ��
		local y = 50 --�߶ȼ��
		
		if yushu == 0 then
			yushu = 4
		end
		
		y = math.modf((p-1)/4) * y + 30
		if yushu == 1 then
			x = 0
		else
			x = (yushu-1) * x
		end
		msg = msg .. "#POS<X:".. x .. ">##POS<Y:"..y..">#"
		
		str = str .. "<itemctrl id="..i.." x="..x.." y="..y.." w=35 h=35 init_item="..cangku[i].." count="..cangku_number[i].." is_bound=false use_back=true />"
		
		msg = msg .. "#POS<X:".. x+40 .. ">##POS<Y:"..y+20 ..">#<@fabaocangku_quwu#"..i.." *01*ȡ����Ʒ>\n"
		
		--��ʾ����
		local yushu = p%4
		local x = 139 --���ȼ��
		local y = 50 --�߶ȼ��
		if yushu == 0 then
			yushu = 4
		end
		
		y = math.modf((p-1)/4) * y + 30
		
		if yushu == 1 then
			x = 34
		else
			x = (yushu-1) * x + 34
		end
		
		msg = msg .. "#POS<X:".. x .. ">##POS<Y:"..y..">##COLORCOLOR_GREENG#"..cangku[i].."*"..cangku_number[i].."#COLOREND#\n"
	end
	msg = msg .. "\n"
	msg = str .. "<text><![CDATA["..msg.."]]></text></form>"
	lualib:SetPanelSize(player, 600, 210)
	return msg
end

-----------------�����ֿ���Ʒȫ��ȡ��----------------------
function fabaocangku_quanbuquchu(player,weizhi)
	local msg = ""
	local cangku = {}
	if lualib:GetStr(player,"fabao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"fabao_cangku")) --ȡ�÷����ֿ�table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"fabao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"fabao_cangku_number")) --ȡ�÷����ֿ�����table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"fabao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"fabao_cangku_icon")) --ȡ�÷����ֿ�����table
	end
	
	if #cangku > 0 then
	else
		lualib:SysMsg_SendMsgDlg(player,1,"û����Ʒ����ȡ�����Ƿ���з�����ã�#BUTTON0#���з���#BUTTONEND##BUTTON0#�رմ���#BUTTONEND#", 100, "fabaocangku_quanbuquchu1", "")
		return ""
	end

	local qizhiweizhi =math.modf((weizhi-1)/12) * 12 + 1
	if qizhiweizhi < 1 or qizhiweizhi > cangku_rongliang then
		qizhiweizhi = 1
	end
	
	local shuliang = 0
	for k,v in pairs(cangku_number) do
		shuliang = shuliang + v
	end
	
	if lualib:Player_GetBagFree(player) < shuliang then
		return "������λ����"..shuliang.."���������Ժ�������\n\n<@fabaocangku#"..qizhiweizhi.." *01*����>\n"
	end
	
	for k,v in pairs(cangku) do
		lualib:AddItem(player,v,cangku_number[k],false,"����ȡ��Ʒ", player) --����Ʒ
		lualib:SysMsg_SendWarnMsg(player,"�ӷ����ֿ�ȡ����"..v.."*"..cangku_number[k])
		cangku[k] = nil
		cangku_number[k] = nil
		cangku_icon[k] = nil
	end
	lualib:SetStr(player,"fabao_cangku",json.encode(cangku)) --�������ֿ�table�����ַ�������
	lualib:SetStr(player,"fabao_cangku_number",json.encode(cangku_number)) --�������ֿ�table�����ַ�������
	lualib:SetStr(player,"fabao_cangku_icon",json.encode(cangku_icon)) --�������ֿ�table�����ַ�������
	fabaocangku(player,1)
	lualib:SetPanelSize(player, 600, 210)
	return msg
end

-----------------��ʾ�Ƿ���з���----------------------
function fabaocangku_quanbuquchu1(id,player,xuanzhe)

	if xuanzhe == 0 then
		fabao(player)
	end
	return ""
end

-----------------�����ֿ�ȡ��----------------------
function fabaocangku_quwu(player,weizhi)
	local msg = ""
	weizhi = tonumber(weizhi)
	local cangku = {}
	if lualib:GetStr(player,"fabao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"fabao_cangku")) --ȡ�÷����ֿ�table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"fabao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"fabao_cangku_number")) --ȡ�÷����ֿ�����table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"fabao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"fabao_cangku_icon")) --ȡ�÷����ֿ�ͼ��table
	end
	
	local qizhiweizhi =math.modf((weizhi-1)/12) * 12 + 1
	
	if qizhiweizhi < 1 or qizhiweizhi > cangku_rongliang then
		qizhiweizhi = 1
	end

	if lualib:Player_GetBagFree(player) < cangku_number[weizhi] then
		return "������λ����"..cangku_number[weizhi].."���������Ժ�������\n\n<@fabaocangku#"..qizhiweizhi.." *01*����>\n"
	end
	
	lualib:AddItem(player,cangku[weizhi],cangku_number[weizhi],false,"����ȡ��Ʒ", player) --����Ʒ
	lualib:SysMsg_SendWarnMsg(player,"�ӷ����ֿ�ȡ����"..cangku[weizhi].."*"..cangku_number[weizhi])
	table.remove(cangku,weizhi)
	table.remove(cangku_number,weizhi)
	table.remove(cangku_icon,weizhi)
	lualib:SetStr(player,"fabao_cangku",json.encode(cangku)) --�������ֿ�table�����ַ�������
	lualib:SetStr(player,"fabao_cangku_number",json.encode(cangku_number)) --�������ֿ�table�����ַ�������
	lualib:SetStr(player,"fabao_cangku_icon",json.encode(cangku_icon)) --�������ֿ�table�����ַ�������
	lualib:SetPanelSize(player, 600, 210)
	return 	fabaocangku(player,qizhiweizhi)
end