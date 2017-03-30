local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")

local shuangdan_shuaguai_table = {
        ["������1"] = {{"ʥ��С��1", 25}, {"Ԫ��С��1", 25}, }, 
        ["������2"] = {{"ʥ��С��1", 15}, {"Ԫ��С��1", 15}, }, 
        ["������3"] = {{"ʥ��С��1", 25}, {"Ԫ��С��1", 25}, }, 
        ["������4"] = {{"ʥ��С��1", 25}, {"Ԫ��С��1", 25}, }, 
        ["������5"] = {{"ʥ��С��1", 25}, {"Ԫ��С��1", 25}, }, 
        ["����ڣ1"] = {{"ʥ��С��1", 25}, {"Ԫ��С��1", 25}, }, 
        ["����ڣ2"] = {{"ʥ��С��1", 25}, {"Ԫ��С��1", 25}, }, 
        ["����ڣ3"] = {{"ʥ��С��1", 25}, {"Ԫ��С��1", 25}, }, 
        ["��ɽ��Ѩ1"] = {{"ʥ��С��1", 25}, {"Ԫ��С��1", 25}, }, 
        ["��ɽ��Ѩ2"] = {{"ʥ��С��1", 25}, {"Ԫ��С��1", 25}, }, 
        ["��ɽ��Ѩ3"] = {{"ʥ��С��1", 25}, {"Ԫ��С��1", 25}, }, 
        ["��ɽ��Ѩ4"] = {{"ʥ��С��1", 25}, {"Ԫ��С��1", 25}, }, 
        ["��ɽ��Ѩ5"] = {{"ʥ��С��1", 25}, {"Ԫ��С��1", 25}, }, 
        ["��ɽ��Ѩ6"] = {{"ʥ��С��1", 5}, {"Ԫ��С��1", 5}, }, 
        ["��ɽ��Ѩ7"] = {{"ʥ��С��1", 5}, {"Ԫ��С��1", 5}, }, 
        ["��ɽ��Ѩ8"] = {{"ʥ��С��1", 5}, {"Ԫ��С��1", 5}, }, 
        ["а��1"] = {{"ʥ��С��2", 25}, {"Ԫ��С��2", 25}, }, 
        ["а��2"] = {{"ʥ��С��2", 25}, {"Ԫ��С��2", 25}, }, 
        ["а��3"] = {{"ʥ��С��2", 25}, {"Ԫ��С��2", 25}, }, 
        ["а��4"] = {{"ʥ��С��2", 25}, {"Ԫ��С��2", 25}, }, 
        ["а��5"] = {{"ʥ��С��2", 10}, {"Ԫ��С��2", 10}, }, 
        ["а��6-1"] = {{"ʥ��С��2", 1}, {"Ԫ��С��2", 2}, }, 
        ["а��6-2"] = {{"ʥ��С��2", 2}, {"Ԫ��С��2", 1}, }, 
        ["а��6-3"] = {{"ʥ��С��2", 1}, {"Ԫ��С��2", 2}, }, 
        ["а��6-4"] = {{"ʥ��С��2", 2}, {"Ԫ��С��2", 1}, }, 
        ["а��6-5"] = {{"ʥ��С��2", 1}, {"Ԫ��С��2", 2}, }, 
        ["а��6-6"] = {{"ʥ��С��2", 2}, {"Ԫ��С��2", 1}, }, 
        ["а��6-7"] = {{"ʥ��С��2", 1}, {"Ԫ��С��2", 2}, }, 
        ["а��6-8"] = {{"ʥ��С��2", 2}, {"Ԫ��С��2", 1}, }, 
        ["а��6-9"] = {{"ʥ��С��2", 1}, {"Ԫ��С��2", 2}, }, 
        ["а��6-10"] = {{"ʥ��С��2", 2}, {"Ԫ��С��2", 1}, }, 
        ["а��6-11"] = {{"ʥ��С��2", 1}, {"Ԫ��С��2", 2}, }, 
        ["а��6-12"] = {{"ʥ��С��2", 2}, {"Ԫ��С��2", 1}, }, 
        ["а��6-13"] = {{"ʥ��С��2", 1}, {"Ԫ��С��2", 2}, }, 
        ["а��6-14"] = {{"ʥ��С��2", 2}, {"Ԫ��С��2", 1}, }, 
        ["а��6-15"] = {{"ʥ��С��2", 1}, {"Ԫ��С��2", 2}, }, 
        ["а��6-16"] = {{"ʥ��С��2", 2}, {"Ԫ��С��2", 1}, }, 
        ["а��7-1"] = {{"ʥ��С��2", 10}, {"Ԫ��С��2", 10}, }, 
        ["а��7-2"] = {{"ʥ��С��2", 10}, {"Ԫ��С��2", 10}, }, 
        ["а��7-3"] = {{"ʥ��С��2", 10}, {"Ԫ��С��2", 10}, }, 
        ["�����1"] = {{"ʥ��С��2", 25}, {"Ԫ��С��2", 25}, }, 
        ["�����2"] = {{"ʥ��С��2", 25}, {"Ԫ��С��2", 25}, }, 
        ["�����3"] = {{"ʥ��С��2", 25}, {"Ԫ��С��2", 25}, }, 
        ["�����4"] = {{"ʥ��С��2", 25}, {"Ԫ��С��2", 25}, }, 
        ["�����5"] = {{"ʥ��С��2", 25}, {"Ԫ��С��2", 25}, }, 
        ["�����6"] = {{"ʥ��С��2", 25}, {"Ԫ��С��2", 25}, }, 
        ["�����7-1"] = {{"ʥ��С��2", 10}, {"Ԫ��С��2", 10}, }, 
        ["�����7-2"] = {{"ʥ��С��2", 10}, {"Ԫ��С��2", 10}, }, 
        ["�����7-3"] = {{"ʥ��С��2", 10}, {"Ԫ��С��2", 10}, }, 
        ["�����7-4"] = {{"ʥ��С��2", 10}, {"Ԫ��С��2", 10}, }, 
        ["�����7-5"] = {{"ʥ��С��2", 10}, {"Ԫ��С��2", 10}, }, 
        ["�����7-6"] = {{"ʥ��С��2", 10}, {"Ԫ��С��2", 10}, }, 
        ["�����7-7"] = {{"ʥ��С��2", 10}, {"Ԫ��С��2", 10}, }, 
        ["�����7-8"] = {{"ʥ��С��2", 10}, {"Ԫ��С��2", 10}, }, 
        ["�����7-9"] = {{"ʥ��С��2", 10}, {"Ԫ��С��2", 10}, }, 
        ["��·��1"] = {{"ʥ��С��1", 25}, {"Ԫ��С��1", 25}, }, 
        ["��·��2"] = {{"ʥ��С��1", 15}, {"Ԫ��С��1", 15}, }, 
        ["��·��3"] = {{"ʥ��С��1", 25}, {"Ԫ��С��1", 25}, }, 
        ["��ħʯ��1"] = {{"ʥ��С��2", 25}, {"Ԫ��С��2", 25}, }, 
        ["��ħʯ��2"] = {{"ʥ��С��2", 25}, {"Ԫ��С��2", 25}, }, 
        ["��ħʯ��3"] = {{"ʥ��С��2", 25}, {"Ԫ��С��2", 25}, }, 
        ["��ħʯ��4"] = {{"ʥ��С��2", 25}, {"Ԫ��С��2", 25}, }, 
        ["����1"] = {{"ʥ��С��2", 15}, {"Ԫ��С��2", 15}, }, 
        ["����2"] = {{"ʥ��С��2", 15}, {"Ԫ��С��2", 15}, }, 
        ["����3"] = {{"ʥ��С��2", 20}, {"Ԫ��С��2", 20}, }, 
        ["����3Ұ��"] = {{"ʥ��С��2", 10}, {"Ԫ��С��2", 10}, }, 
        ["����4"] = {{"ʥ��С��2", 15}, {"Ԫ��С��2", 15}, }, 
        ["����4Ұ��"] = {{"ʥ��С��2", 10}, {"Ԫ��С��2", 10}, }, 
        ["����5"] = {{"ʥ��С��2", 15}, {"Ԫ��С��2", 15}, }, 
        ["����1����1"] = {{"ʥ��С��2", 5}, {"Ԫ��С��2", 5}, }, 
        ["����1����2"] = {{"ʥ��С��2", 5}, {"Ԫ��С��2", 5}, }, 
        ["����1����3"] = {{"ʥ��С��2", 5}, {"Ԫ��С��2", 5}, }, 
        ["����1����4"] = {{"ʥ��С��2", 5}, {"Ԫ��С��2", 5}, }, 
        ["����1����5"] = {{"ʥ��С��2", 5}, {"Ԫ��С��2", 5}, }, 
        ["����1����6"] = {{"ʥ��С��2", 5}, {"Ԫ��С��2", 5}, }, 
        ["����1����7"] = {{"ʥ��С��2", 5}, {"Ԫ��С��2", 5}, }, 
        ["����2����1"] = {{"ʥ��С��2", 5}, {"Ԫ��С��2", 5}, }, 
        ["����2����2"] = {{"ʥ��С��2", 5}, {"Ԫ��С��2", 5}, }, 
        ["����2����3"] = {{"ʥ��С��2", 5}, {"Ԫ��С��2", 5}, }, 
        ["����2����4"] = {{"ʥ��С��2", 5}, {"Ԫ��С��2", 5}, }, 
        ["����2����5"] = {{"ʥ��С��2", 5}, {"Ԫ��С��2", 5}, }, 
        ["����2����6"] = {{"ʥ��С��2", 5}, {"Ԫ��С��2", 5}, }, 
        ["����3����1"] = {{"ʥ��С��2", 5}, {"Ԫ��С��2", 5}, }, 
        ["����4����1"] = {{"ʥ��С��2", 5}, {"Ԫ��С��2", 5}, }, 
        ["����4����2"] = {{"ʥ��С��2", 5}, {"Ԫ��С��2", 5}, }, 
            }
			
function huanlesong_shijianpanduan()
	local p1 = lualib:GetAllTime() --��ȡ��ǰʱ������
	local p2 = lualib:Str2Time("2012-12-24 0:0:0") --��ȡ���ʼʱ������
	local p3 = lualib:Str2Time("2013-01-06 23:59:59") --��ȡ�����ʱ������
	
	if p1 >= p2 and p1 <= p3 then
		return true
	else
		return false
	end
end

---------------------ÿ�ִ���------------------------------
function meifenchufa()	
	if huanlesong_shijianpanduan() == true and lualib:GetInt("","huanlesong_kaiqi") == 0 then
		lualib:SetInt("","huanlesong_kaiqi",1)
		local map = lualib:Map_GetMapGuid("����")
		lualib:Map_GenNpc(map,"˫������",245,225,0,4) --����npc
		--ˢ�»����
		for k,v in pairs(shuangdan_shuaguai_table) do
			local map = lualib:Map_GetMapGuid(k)
			lualib:Map_BatchGenMonster(map,v[1][1],v[1][2],true)
			lualib:Map_BatchGenMonster(map,v[2][1],v[2][2],true)
		end
	elseif huanlesong_shijianpanduan() == false and lualib:GetInt("","huanlesong_kaiqi") == 1 then
		lualib:SetInt("","huanlesong_kaiqi",0)
		local map = lualib:Map_GetMapGuid("����")
		lualib:Map_ClearNpc(map,245,225,0,"˫������") --ɾ��npc
		lualib:DisableTimer("",20000) --ɾ����ʱ��
		--ɾ�������
		for k,v in pairs(shuangdan_shuaguai_table) do
			local map = lualib:Map_GetMapGuid(k)
			lualib:Map_ClearMonster(map,0,0,999,v[1][1],false,true)
			lualib:Map_ClearMonster(map,0,0,999,v[2][1],false,true)
		end
		return
	end
	
	if huanlesong_shijianpanduan() == true then
		local shijian = shijianjiexi(lualib:Time2Str("%Y-%m-%d %H:%M:%S",0))
		if shijian["min"] == 0 then
			local url = "http://api.hzyotoy.com/api/getfill.do?act=fillperson&sid="..lualib:GetZoneId().."&starttime="..lualib:UrlEncode(lualib:Time2Str("%Y-%m-%d %H:%M:%S",lualib:GetAllTime()-3600)).."&endtime="..lualib:UrlEncode(lualib:Time2Str("%Y-%m-%d %H:%M:%S",0)).."&startmoney=100"
			lualib:GetURL(url,"chongzhirenshu","",30)
		end
		
		if math.random(10) == 1 then
			lualib:SysMsg_SendBroadcastMsg("Ԫ��ʥ������ڽ����У�����(224,225)��˫���������˴�����ȡ�౶����buff�Ͷһ�����", "ϵͳ֪ͨ")
			lualib:SysMsg_SendBoardMsg("0", "[ϵͳ֪ͨ]", "Ԫ��ʥ������ڽ����У�����(224,225)��˫���������˴�����ȡ�౶����buff�Ͷһ�����", 15000)
		end
	end
	
	if lualib:GetAllTime() > lualib:Str2Time("2013-01-06 23:59:59") then --�жϻ�Ƿ����
		return
	else
		lualib:AddTimer("", 20000, 60000, -1, "meifenchufa")
		return
	end
end

-----------------------ͼ����ʾ-----------------------------
function huanlesong_xianshi(player)
	if huanlesong_shijianpanduan() == false then
		return
	end
	
	ShowTimeCount2(player, 0, 1903800066, "˫��������",0,"") --��ʾĿ��ͼ��
end

-------------------ͼ�걻���-----------------------
function huanlesong(player)
	if huanlesong_shijianpanduan() == false then
		return "˫�������ͻ�ѽ�����\n\n<@guanbi *01*�ر�>"
	end
	
	huanlesong_xianshi(player)
	local url = "http://api.hzyotoy.com/api/getfill.do?act=fillmoney&accountid="..lualib:Player_GetAccountID(player).."&sid="..lualib:GetZoneId().."&starttime="..lualib:UrlEncode("2012-12-24 00:00:00").."&endtime="..lualib:UrlEncode("2013-01-06 23:59:59") ---����վ������ҳ�ֵ�������
	lualib:GetURL(url,"chongzhijine",player,30)
	lualib:AddTimer(player, 1, 1000, 1, "huanlesong1")
	lualib:NPCTalk(player,"�������ڼ�⡭��")
	return ""
end

function huanlesong1(player,id)
	if huanlesong_shijianpanduan() == false then
		return "˫�������ͻ�ѽ�����\n\n<@guanbi *01*�ر�>"
	end
	local msg = "#COLORCOLOR_BROWN#��������������������������������������#COLOREND##COLORCOLOR_SKYBLUE#˫��������#COLOREND##COLORCOLOR_BROWN#��������������������������������������#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_ORANGE#2012��12��24�ա���2013��1��6��#COLOREND#ʥ����Ԫ����ڼ䣬�ڻ�ڼ�ÿ��ֵ100Ԫ�������Ի��1������5000Ԫ���󽱵Ļ��ᡣϵͳ����ÿ������ų�����1�ݵ�5000Ԫ���󽱡�\n"
	msg = msg .."#COLORCOLOR_BROWN#��������������������������������������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_GREENG#���ڻ�ڼ��ܹ���ֵ��#COLOREND#"..lualib:GetInt(player, "shuangdan_chongzhi").." Ԫ    #COLORCOLOR_GREENG#ʣ��ά������#COLOREND#"..lualib:GetDBNum(lualib:Player_GetAccountID(player).."_shuangdan_kechoujiang") - lualib:GetDBNum(lualib:Player_GetAccountID(player).."_shuangdan_choujiang").."\n"
	msg = msg .. "#COLORCOLOR_GREENG#��ǰ5000Ԫ����ʣ�ࣺ#COLOREND#"..lualib:IO_GetCustomVarInt("shengyudajiang") .." ��\n \n"
	msg = msg .. "#IMAGE<ID:1902700032>#<@qiangdupdajiang *01*����5000Ԫ����>  #IMAGE<ID:1902700016>#<@qiangduomingdan *01*����󽱳ɹ�����>  #IMAGE<ID:1902700030>#<@huodongjieshao *01*ʥ��Ԫ�������>  #IMAGE<ID:1902700034>#<@guanbi *01*�ر�>"
	lualib:NPCTalk(player, msg)
	return ""
end


function huodongjieshao(player)
	local msg = "ʥ��Ԫ���ʱ�䣺#COLORCOLOR_ORANGE#2012��-12��24����2013��1��6��#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_GREENG#1��˫��֮��#COLOREND#\n"
	msg = msg .. "����ݣ�ȫ��ͼ��ʥ�����������ֻ���ߣ���Щ���߿����ڻ�ȡ����ʥ��Ԫ�����\n\n"
	msg = msg .. "#COLORCOLOR_GREENG#2��˫�����鷭��#COLOREND#\n"
	msg = msg .. "����ݣ����ÿ�춼����������ȡ1.5������buff��40�����¿���ȡ��2������buff��ÿ�������ȡ��ʱЧΪ24Сʱʱ�䣡\n\n"
	msg = msg .. "#COLORCOLOR_GREENG#3��˫��������#COLOREND#\n"
	msg = msg .. "����ݣ�ÿ��ֵ100Ԫ����ң������������ʱ����һ�λ����ȡ50ԪԪ���Ĵ󽱣�ÿ������ϵͳ���ų�1������Ԫ���󽱡�\n\n"
	msg = msg .. "<@huanlesong *01*����>"
	return msg
end

function guanbi()
	return ""
end

function shijianjiexi(s1)
	local shijian = {}
	local j1,j2,j3,j4

	j1,j2 = string.find(s1,"-",1)
	shijian["year"] = tonumber(string.sub(s1,1,j1-1))
	j3,j4 = string.find(s1,"-",j2+1)
	shijian["month"] = tonumber(string.sub(s1,j2+1,j3-1))
	j5 = string.find(s1," ",j4)
	shijian["day"] = tonumber(string.sub(s1,j4+1,j5-1))
	
	j1,j2 = string.find(s1,":",j5+1)
	shijian["hour"] = tonumber(string.sub(s1,j5+1,j1-1))
	j3,j4 = string.find(s1,":",j2+1)
	shijian["min"] = tonumber(string.sub(s1,j2+1,j3-1))
	shijian["sec"] = tonumber(string.sub(s1,j4+1,#s1))
	return shijian
end

------------------------��ֵ���ص�----------------------------
function chongzhijine(player,_,shu)
	shu = tonumber(shu)
	local player_id = lualib:Player_GetAccountID(player)	
	local fen = math.floor(shu/100)
	lualib:SetInt(player, "shuangdan_chongzhi", shu) --��ڼ�ĳ�ֵ���
	lualib:SetDBNumEx(player_id.."_shuangdan_kechoujiang",fen,4)
end

------------------------��ֵ�����ص�----------------------------
function chongzhirenshu(_,shu)
	shu = tonumber(shu)
	local fen = math.floor(shu/10)
	if fen < 1 then
		fen = 1
	end
	lualib:IO_SetCustomVarInt("shengyudajiang", fen) --ʣ������ӷݶ�
	lualib:SysMsg_SendBroadcastMsg("˫�������ͻ�ų���"..fen.."��5000Ԫ���󽱣�ͨ�������Ļ�Ϸ���ͼ����Խ������ᣡ", "ϵͳ֪ͨ")
end

------------------------�����----------------------------
function qiangdupdajiang(player)
	if huanlesong_shijianpanduan() == false then
		return "˫�������ͻ�ѽ�����\n\n<@guanbi *01*�ر�>"
	end
	
	if lualib:GetDBNum(lualib:Player_GetAccountID(player).."_shuangdan_kechoujiang") - lualib:GetDBNum(lualib:Player_GetAccountID(player).."_shuangdan_choujiang") > 0 then
	else
		return "��û������󽱵��ʸ�\n\n<@guanbi *01*�ر�>"
	end

	if lualib:IO_GetCustomVarInt("shengyudajiang") > 0 then
	else
		return "����û�п�����ȡ��5000Ԫ���󽱣�\n\n<@guanbi *01*�ر�>"
	end
	
	if lualib:BagSize(player,true,false,false) >= 1 then
		lualib:AddItem(player,"5000Ԫ��",1,false,"˫��������",player) --��Ԫ��
		lualib:SetDBNumEx(lualib:Player_GetAccountID(player).."_shuangdan_choujiang", lualib:GetDBNum(lualib:Player_GetAccountID(player).."_shuangdan_choujiang")+1,4) --���Ӷά����
		--��¼����󽱵��������
		local gonggao = {}
		if lualib:IO_GetCustomVarStr("shuangdanqiangyuanbao_gonggao") ~= "" then
			gonggao = json.decode(lualib:IO_GetCustomVarStr("shuangdanqiangyuanbao_gonggao")) --ȡ��˫�������Ͷά����table
		end
		local player_name = lualib:KeyName(player)
		table.insert(gonggao,1,lualib:Time2Str("%Y-%m-%d %H:%M:%S",0).." #COLORCOLOR_GREENG#"..player_name.."#COLOREND#������5000Ԫ���󽱣�")
		lualib:SysMsg_SendBroadcastMsg(player_name.."ͨ��˫�������ͻ���ᵽ��5000Ԫ���󽱣�������Ͻǡ�˫�������͡�ͼ�꼴�����ᣡ", "ϵͳ֪ͨ")
		lualib:IO_SetCustomVarStr("shuangdanqiangyuanbao_gonggao",json.encode(gonggao))
		lualib:IO_SetCustomVarInt("shengyudajiang", lualib:IO_GetCustomVarInt("shengyudajiang")-1) --���ٽ�Ʒ����
		return "��ϲ�㣡��������5000Ԫ���󽱣�\n\n<@guanbi *01*�ر�>"
	else
		return "������λ���㣡�������Ժ�����\n\n<@guanbi *01*�ر�>"
	end
end

------------------------��������----------------------------
function qiangduomingdan(player)
	local msg = "����5000Ԫ���󽱳ɹ�������������£�\n\n"
	local gonggao = {}
	if lualib:IO_GetCustomVarStr("shuangdanqiangyuanbao_gonggao") ~= "" then
		gonggao = json.decode(lualib:IO_GetCustomVarStr("shuangdanqiangyuanbao_gonggao")) --ȡ�����ṫ��table
	end
	
	for i=1,50 do
		if gonggao[i] ~= nil then
			msg = msg .. gonggao[i] .."\n"
		else
			break
		end
	end
	
	msg = msg .."\n<@guanbi *01*�ر�>"
	return msg
end