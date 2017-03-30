local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("campaign/��Ӣ�������������淨")
require("npc/��ҫװ���һ�")

function main(npc,player)
	if lualib:GetAllDays(0) - lualib:GetInt(player,"jyjjc_chushihua") >= 1 then
		lualib:SetInt(player,"jyjjc_chushihua",lualib:GetAllDays(0)) --��¼������ʱ�ĵ�ǰ����
		lualib:SetInt(player,"jyjjc_zuduicanjiacishu",0) --������ӲμӴ�����ʼ��
	end
	
	local map = lualib:MapGuid(player)
	lualib:RunClientScript(map, "ItemEffect", "texiao", "100000490#228#220#0#0")
    
	local msg = "#COLORCOLOR_BROWN#��������������������������#COLOREND##COLORCOLOR_SKYBLUE#������#COLOREND##COLORCOLOR_BROWN#��������������������������#COLOREND#\n"
	msg = msg .. "����ǿ���ջ���ҫ���Գ�������Ӣ������ʵ�������ã�����˵���������㽫����ʹ��ؽ����ֲ��ڽ��£��㣬�����Լ���ʵ����\n"
	msg = msg .. "#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#����������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:30,Y:5>##IMAGE1902700018##OFFSET<X:0,Y:-2>#<@zuduilei *01*��Ӿ�����>"
--	msg = msg .. "#OFFSET<X:100,Y:2>##IMAGE1902700018##OFFSET<X:0,Y:-1>#<@gerenlei *01*���˾�����>\n"
	msg = msg .. "#OFFSET<X:100,Y:1>##IMAGE1902700017##OFFSET<X:0,Y:-1>#<@cansaixinxi *01*�鿴�ҵĲ�����Ϣ>\n"
	msg = msg .. "#OFFSET<X:30,Y:5>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@main1 *01*��ҫ�һ�>"
--	msg = msg .. "#OFFSET<X:60,Y:2>##IMAGE1902700017##OFFSET<X:0,Y:-1>#<@leitaijieshao *01*����������>\n"
	msg = msg .. "#OFFSET<X:114,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:-1>#<@leitaijieshao *01*����������>\n"
	msg = msg .. "#OFFSET<X:30,Y:5>##IMAGE1902700034#<@guanbi *01*�뿪>\n"
	return msg
end

function guanbi()
	return ""
end

---------------------����������---------------------
function leitaijieshao(npc,player)	
	local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#��������#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n\n"
	msg = msg .. "#COLORCOLOR_BROWN#1.��������Ϊ���˾���������Ӿ�������#COLOREND#\n"
	--msg = msg .. "#COLORCOLOR_BROWN#2.���˾����������ɻ��һЩ#COLOREND##COLORCOLOR_RED#ϡ�е��ߣ�#COLOREND#\n"
    msg = msg .. "#COLORCOLOR_BROWN#2.#COLORCOLOR_BROWN#��Ӿ������ɻ��#COLOREND##COLORCOLOR_RED#��ҫֵ#COLOREND##COLORCOLOR_BROWN#����ҫֵ�ﵽһ���׶ο���NPC��������ҫװ����#COLOREND#\n\n"
	--msg = msg .. "#OFFSET<X:0,Y:5>##IMAGE1902700017##OFFSET<X:0,Y:-1>#<@gerenguize *01* ���˾�������ϸ����>"
	msg = msg .. "#OFFSET<X:90,Y:2>##IMAGE1902700017##OFFSET<X:0,Y:-1>#<@zuduiguize *01* ��Ӿ�������ϸ����>\n\n"
	msg = msg .. "#IMAGE1902700019##OFFSET<X:0,Y:-1>#<@main *01* ����>"
	return msg
end

---------------------���˱�����ϸ����------------------------
function gerenguize(npc,player)
	local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#���˾�����#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
    msg = msg .. "#COLORCOLOR_ORANGE#1.����ʱ�䣺#COLOREND#19:00~20:00\n"
    msg = msg .. "#COLORCOLOR_ORANGE#2.(20:00~20:10)�ж������Լ�ƥ�䣺#COLOREND#\n������������Ҫ16�˲ſɿ���������\n"
	msg = msg .. "#COLORCOLOR_ORANGE#3.(20:10~20:25)Ⱥ����¹ս:#COLOREND#\n���б������ƽ�����䵽8������,ÿ��������ҿɹ������Լ�����κ����,ÿսʤһ����ҵ�10����,ÿս��һ�ο�5��,����ʱÿ�����ػ�����ߵ�ǰ2����ҽ���16ǿ��\n"
	msg = msg .. "#COLORCOLOR_ORANGE#4.(20:30~20:58)8ǿ��4ǿ����ս�Ͱ����:#COLOREND#\n16ǿ���ƽ�����䵽8�����ؽ��жԿ�,���ֹ�����Ⱥ����¹��ͬ,����ʱÿ�����صĻ��ָ��߻�ʤ,��Ϊ8ǿ��ͬ���ģ����ν���4ǿ����ս(20:40~20:48)�Լ������(20:50~20:58)\n"
	msg = msg .. "#COLORCOLOR_ORANGE#5.(21:00~21:10)������#COLOREND#\n������л�ʤ����λ����������յĹھ���������л�ܵ�������ҽ��м������ᣬ���ջ�ʤ��Ϊ������\n"
	msg = msg .. "#COLORCOLOR_ORANGE#6.(21:20~21:30)�佱ʱ�䣡#COLOREND#\n"
	msg = msg .. "#OFFSET<X:340,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-1>#<@leitaijieshao *01*����>"
	return msg
end

---------------------��ӱ�����ϸ����------------------------
function zuduiguize(npc,player)
	local msg = "                         #COLORCOLOR_GREENG#��Ӿ�����#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_ORANGE#1.����ʱ��:#COLOREND#12:00~14:00��20:00~22:00\n"
    msg = msg .. "#COLORCOLOR_ORANGE#2.�������ƣ�#COLOREND#��ҵȼ�����ﵽ40�����ϡ�\n"
	msg = msg .. "#COLORCOLOR_ORANGE#3.������ʽ��#COLOREND#��ҿ���ѡ����˱�������ӱ������ַ�ʽ��ϵͳ���ݱ����������Զ��������ƥ����֣�\n"
	msg = msg .. "#COLORCOLOR_ORANGE#4.ÿ����������15���ӣ��������յ������ֽ������֣�#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_ORANGE#5.������ҫֵ��#COLOREND#���ݵ�������������ҵ���ҫֵ����ҫֵ�ﵽһ���׶κ����ȥNPC����ҫװ���һ��ٴ�������ҫװ����\n"
	msg = msg .. "#OFFSET<X:340,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-1>#<@leitaijieshao *01*����>"
	return msg
end

---------------------��Ӿ�����------------------------
function zuduilei(npc,player)
	local msg = ""
	if lualib:GetStr(player,"jyjjc_zuduiditu") ~= "" then
		local map = lualib:GetStr(player,"jyjjc_zuduiditu")
		if lualib:Map_IsDgnExist(map) == true then
			for i=1,2 do
				local mingdan = lualib:GetStr(map,"jyjjc_duiwuxinxi"..i)
				local p1 = string.find(mingdan,player)
				if p1 ~= nil then
					if lualib:GetAllTime() - lualib:GetInt(map,"jyjjc_chuangjian") < 300 then
						msg = msg .. "��ı����Ѿ���ʼ���Ƿ���룿<@zuduiruchang *01*�������>\n"
						break
					else
						lualib:SetStr(player,"jyjjc_zuduiditu","") --�����ͼ��ʶ��
						return "���ϴα����μӵı����Ѿ���ʼ����ڣ�����Ҫ���������μ���\n\n<@zuduilei *01*�ٴα���>\n<@guanbi *01*�ر�>"
					end
				end
			end
		else
			lualib:SetStr(player,"jyjjc_zuduiditu","") --�����ͼ��ʶ��
			return "���ϴα����μӵı����Ѿ���ʼ����ڣ�����Ҫ���������μ���\n\n<@zuduilei *01*�ٴα���>\n<@guanbi *01*�ر�>"
		end
	end
	msg = msg .. "\n\n---------------------------------------------------------------\n"
	msg = msg .. "#OFFSET<X:50,Y:5>##IMAGE1902700018##OFFSET<X:0,Y:-2>#<@zuduibaoming *01*��ӱ���>"
	msg = msg .. "#OFFSET<X:100,Y:2>##IMAGE1902700018##OFFSET<X:0,Y:-2>#<@zuduigerenbaoming *01*���˱���>\n"
    msg = msg .. "---------------------------------------------------------------\n"
	msg = msg .. "#OFFSET<X:150,Y:5>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@zuduiquxiao *01*ȡ������>\n"
    msg = msg .. "---------------------------------------------------------------\n"
	msg = msg .. "#OFFSET<X:340,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-1>#<@main *01*����>"
	return msg
end

---------------------��ӱ���------------------------
function zuduibaoming(npc,player)
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	local shijian = shijianjiexi(lualib:Time2Str("%Y-%m-%d %H:%M:%S",lualib:GetAllTime()))
	if (shijian["hour"] >= 10 and shijian["hour"] < 16) or (shijian["hour"] >= 19 and shijian["hour"] < 23) then
	else
		return "���ڻ����Ǳ���ʱ�䣬����ʱ��Ϊÿ��10:00~16:00��19:00~23:00��\n\n<@guanbi *01*�ر�>"
	end
	
	if string.find(lualib:GetStr("0", "jyjjc_dijibaoming"),"\""..player.."\"") ~= nil or string.find(lualib:GetStr("0", "jyjjc_gaojibaoming"),"\""..player.."\"") ~= nil then
		return "���Ѿ��������ˣ�\n\n#IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*�ر�>"
	end
	
	if lualib:Player_HasTeam(player) == true and lualib:Player_IsTeamLeader(player) == true then
	else
		return "�㲻�Ƕӳ���û����ӱ�����Ȩ�ޡ�\n\n<@guanbi *01*�ر�>"
	end
	
	local duiwu = lualib:Player_GetTeamList(player)
	
	if #duiwu > 0 and #duiwu <= 5 then
	else
		return "�˱����������5�˲μӣ������ڳ�Ա���ö���5�ˡ�\n\n<@guanbi *01*�ر�>"
	end

	local p1 = 0
	local p2 = 0
	local p3 = 0 --��������
	
	for k,v in pairs(duiwu) do	--����Ƿ����ж�Ա��û�б�����
		if string.find(lualib:GetStr("0", "jyjjc_dijibaoming"),"\""..v.."\"") ~= nil or string.find(lualib:GetStr("0", "jyjjc_gaojibaoming"),"\""..v.."\"") ~= nil then
			return "����ʧ�ܣ�������еĶ�Ա��"..lualib:KeyName(v).."���Ѿ��������ˡ����������ظ�������\n\n<@guanbi *01*�ر�>"
		end
	end
	
	for k,v in pairs(duiwu) do	--����Ƿ����ж�Ա����40������
	--[[	if lualib:Player_GetIntProp(v,  lua_role_level) >= 35 and lualib:Player_GetIntProp(v,  lua_role_level) <= 44 then
			p1 = p1 + 1
		elseif lualib:Player_GetIntProp(v,  lua_role_level) >= 45 then
			p2 = p2 + 1
		end]]
		if  lualib:Player_GetIntProp(v,  lua_role_level) >= 40 then
			p2 = p2 + 1
		end
	end
	
	local msg = ""
	local msg1 = "" --�������Ϣ
	if p1 == #duiwu then
		msg = "diji"
		p3 = #duiwu
	elseif p2 == #duiwu then
		msg = "gaoji"
		p3 = #duiwu
	else
		return "��Ķ��������˵ȼ��������������ж�Ա�ȼ�40�����ϲ��С�\n\n<@guanbi *01*�ر�>"
	end
	
	for k,v in pairs(duiwu) do	--���ж�Աִ��
		if lualib:GetInt(v, "jyjjc_zuduicanjiacishu") >= 3 then
			return "�����Ա��"..lualib:KeyName(v).."�������Ѳμ���3��������������ٽ��б����ˣ�\n\n<@guanbi *01*�ر�>"
		end
	end
		
	for k,v in pairs(duiwu) do	--���ж�Աִ��		
		if lualib:GetStr("0", "jyjjc_"..msg.."baoming") == "" then
			local t1_table = {v}
			lualib:SetStr("0", "jyjjc_"..msg.."baoming", json.encode(t1_table))
		else
			local t1_table = json.decode(lualib:GetStr("0", "jyjjc_"..msg.."baoming"))
			t1_table[#t1_table+1] = v
			lualib:SetStr("0", "jyjjc_"..msg.."baoming", json.encode(t1_table))
		end
	end

	local t1_table = {}
	local i = 0
	for k,v in pairs(duiwu) do	--���ж�Աִ��
		i = i + 1
		if i == 1 then
			if lualib:GetStr("0", "jyjjc_"..msg..p3.."baoming") == "" then
			else
				t1_table = json.decode(lualib:GetStr("0", "jyjjc_"..msg..p3.."baoming"))
			end
			t1_table[#t1_table+1] = {}
		end
		t1_table[#t1_table][i] = v
		lualib:SetStr("0", "jyjjc_"..msg..p3.."baoming", json.encode(t1_table))
	end
	
	zuduisaipipei(msg) --���������ƥ��
	return "�����ɹ���ϵͳ����Ϊ���Զ�ƥ����飬�����ĵȴ�������ʼ֪ͨ\n\n<@guanbi *01*�ر�>"
end

---------------------���˱���------------------------
function zuduigerenbaoming(npc,player)
	local shijian = shijianjiexi(lualib:Time2Str("%Y-%m-%d %H:%M:%S",lualib:GetAllTime()))
	if (shijian["hour"] >= 10 and shijian["hour"] < 16) or (shijian["hour"] >= 19 and shijian["hour"] < 23) then
	else
		return "���ڻ����Ǳ���ʱ�䣬����ʱ��Ϊÿ��10:00~16:00��19:00~23:00��\n\n<@guanbi *01*�ر�>"
	end
	
	if string.find(lualib:GetStr("0", "jyjjc_dijibaoming"),"\""..player.."\"") ~= nil or string.find(lualib:GetStr("0", "jyjjc_gaojibaoming"),"\""..player.."\"") ~= nil then
		return "���Ѿ��������ˣ�\n\n<@guanbi *01*�ر�>"
	end
	
	if lualib:Player_GetIntProp(player,  lua_role_level) < 40 then
		return "40��������Ҳſ��ԲμӴ˻�����˴�ܣ�С����Ҫ���ң�\n\n<@guanbi *01*�ر�>"
	end
	
	if lualib:GetInt(player, "jyjjc_zuduicanjiacishu") >= 3 then
		return "ÿ��ֻ�ɲμ�3������������մ��������꣬������������\n\n<@guanbi *01*�ر�>"
	end
	
--[[	if lualib:Player_GetIntProp(player,  lua_role_level) >= 35 and lualib:Player_GetIntProp(player,  lua_role_level) <= 44 then
		return zuduigerenbaoming1(player,"diji")
	elseif lualib:Player_GetIntProp(player,  lua_role_level) >= 45 then
		return zuduigerenbaoming1(player,"gaoji")
	end]]
	return zuduigerenbaoming1(player,"gaoji")
end

function zuduigerenbaoming1(player,msg)
	if string.find(lualib:GetStr("0", "jyjjc_"..msg.."baoming"),"\""..player.."\"") ~= nil then
		return "���Ѿ��������ˣ�\n\n<@guanbi *01*�ر�>"
	end
	
	if lualib:GetStr("0", "jyjjc_"..msg.."baoming") == "" then
		local t1_table = {player}
		lualib:SetStr("0", "jyjjc_"..msg.."baoming", json.encode(t1_table))
	else
		local t1_table = json.decode(lualib:GetStr("0", "jyjjc_"..msg.."baoming"))
		t1_table[#t1_table+1] = player
		lualib:SetStr("0", "jyjjc_"..msg.."baoming", json.encode(t1_table))
	end
	
	
	if lualib:GetStr("0", "jyjjc_"..msg.."1baoming") == "" then
		local t1_table = {player}
		lualib:SetStr("0", "jyjjc_"..msg.."1baoming", json.encode(t1_table))
	else
		local t1_table = json.decode(lualib:GetStr("0", "jyjjc_"..msg.."1baoming"))
		t1_table[#t1_table+1] = player
		lualib:SetStr("0", "jyjjc_"..msg.."1baoming", json.encode(t1_table))
	end
	
	zuduisaipipei(msg) --���������ƥ��
	return "�����ɹ���ϵͳ����Ϊ���Զ�ƥ����飬�����ĵȴ�������ʼ֪ͨ\n\n<@guanbi *01*�ر�>"
end

---------------------�����ȡ������------------------------
function zuduiquxiao(npc,player)
	local msg = ""
	if string.find(lualib:GetStr("0", "jyjjc_dijibaoming"),"\""..player.."\"") ~= nil then
		msg = "diji"
	elseif string.find(lualib:GetStr("0", "jyjjc_gaojibaoming"),"\""..player.."\"") ~= nil then
		msg = "gaoji"
	else
		return "�㻹û�б�������\n\n<@guanbi *01*�ر�>"
	end
	
	for i=1,5 do
		if lualib:GetStr("0", "jyjjc_"..msg..i.."baoming") ~= "" then			
			if string.find(lualib:GetStr("0", "jyjjc_"..msg..i.."baoming"),"\""..player.."\"") ~= nil then
				if i == 1 then
					return "��ȷ��Ҫȡ��������\n\n<@zuduiquxiao1 *01*ȷ��>  <@guanbi *01*ȡ��>"
				end
				if string.find(lualib:GetStr("0", "jyjjc_"..msg..i.."baoming"),"%[\""..player.."\"") ~= nil then
					return "���Ƕӳ������˳��������������齫���˳��������Ƿ�ȷ����\n\n<@zuduiquxiao1 *01*ȷ��>  <@guanbi *01*ȡ��>"
				else
					return "��μ���һ�����飬�Ƿ�ȷ���˳���\n\n<@zuduiquxiao1 *01*ȷ��>  <@guanbi *01*ȡ��>"
				end
			end
		end
	end
	return "�㻹û�б�������\n\n<@guanbi *01*�ر�>"
end
		
function zuduiquxiao1(npc,player)
	local msg = ""
	if string.find(lualib:GetStr("0", "jyjjc_dijibaoming"),"\""..player.."\"") ~= nil then
		msg = "diji"
	elseif string.find(lualib:GetStr("0", "jyjjc_gaojibaoming"),"\""..player.."\"") ~= nil then
		msg = "gaoji"
	else
		return "�㻹û�б�������\n\n<@guanbi *01*�ر�>"
	end

	for i=1,5 do
		local baomingzifu = lualib:GetStr("0", "jyjjc_"..msg..i.."baoming")
		if baomingzifu ~= "" then			
			if string.find(baomingzifu,"\""..player.."\"") ~= nil then
				if i == 1 then
					local s,p = string.gsub(baomingzifu,"\""..player.."\",","")
					if p == 0 then
						s,p = string.gsub(baomingzifu,",\""..player.."\"","")
						if p == 0 then
							s = ""
						end
					end
					lualib:SetStr("0", "jyjjc_"..msg..i.."baoming",s)
					shanchubaoming(msg,player)
					return "ȡ�������ɹ���\n\n<@guanbi *01*ȡ��>"
				end
				
				local p1 = string.find(baomingzifu,"%[\""..player.."\"")
				if p1 ~= nil and p1 >= 0 then
					local p2table = {0}
					while true do
						local p = string.find(baomingzifu,"%[",p2table[#p2table]+1)
						
						if p == nil or p > p1 then
							break
						else
							p2table[#p2table+1] = p
						end
					end
					local duiwutable = json.decode(lualib:GetStr("0", "jyjjc_"..msg..i.."baoming"))
					for k,v in pairs(duiwutable[#p2table-2]) do --���ж�Աִ�б���ȡ������
						shanchubaoming(msg,v)
					end
					
					table.remove(duiwutable,#p2table-2)
					lualib:SetStr("0", "jyjjc_"..msg..i.."baoming", json.encode(duiwutable))
					if lualib:GetStr("0", "jyjjc_"..msg..i.."baoming") == "{}" then
						lualib:SetStr("0", "jyjjc_"..msg..i.."baoming", "")
					end
					return "����ȡ�������ɹ���\n\n<@guanbi *01*ȡ��>"
				else
					shanchubaoming(msg,player)
					
					local p1 = string.find(baomingzifu,"%\""..player.."\"")
					
					if p1 ~= nil and p1 >= 0 then
						local p2table = {0}
						while true do
							local p = string.find(baomingzifu,"%[",p2table[#p2table]+1)
							
							if p == nil or p > p1 then
								break
							else
								p2table[#p2table+1] = p
							end
						end
						local duiwutable = json.decode(lualib:GetStr("0", "jyjjc_"..msg..i.."baoming"))
						local duiwutable1
						local duiwutable2 = duiwutable[#p2table-2]
						
						for k,v in pairs(duiwutable2) do
							if v == player then
								table.remove(duiwutable2,k)
								break
							end
						end
						
						if lualib:GetStr("0", "jyjjc_"..msg..i-1 .."baoming") == "" then
							duiwutable1 = duiwutable2
						else
							duiwutable1 = json.decode(lualib:GetStr("0", "jyjjc_"..msg..i-1 .."baoming"))
							duiwutable1[#duiwutable1+1] = duiwutable2
						end
						lualib:SetStr("0", "jyjjc_"..msg..i-1 .."baoming", json.encode(duiwutable1))
						
						table.remove(duiwutable,#p2table-2)
						lualib:SetStr("0", "jyjjc_"..msg..i.."baoming", json.encode(duiwutable))
						if lualib:GetStr("0", "jyjjc_"..msg..i.."baoming") == "{}" then
							lualib:SetStr("0", "jyjjc_"..msg..i.."baoming", "")
						end
						return "ȡ�������ɹ���\n\n<@guanbi *01*ȡ��>"
					end
				end
			end
		end
	end
	return "�㻹û�б�������\n\n<@guanbi *01*�ر�>"
end


function shanchubaoming(msg,player)
	local baomingzifu = lualib:GetStr("0", "jyjjc_"..msg.."baoming")
	if string.find(baomingzifu,"\""..player.."\"") ~= nil then
		local s,p = string.gsub(baomingzifu,"\""..player.."\",","")
		if p == 0 then
			s,p = string.gsub(baomingzifu,",\""..player.."\"","")
			if p == 0 then
				s = ""
			end
		end
		lualib:SetStr("0", "jyjjc_"..msg.."baoming",s)
	end
end

---------------------�����ƥ��------------------------
function zuduisaipipei(msg)
	while true do --ƥ���5�˶�
		if zuduisaipipei1(msg) == false then
			break
		end
	end
	
	while true do
		if lualib:GetStr("0","jyjjc_"..msg.."5baoming") == "" then
			return
		end
		
		local mingdan = json.decode(lualib:GetStr("0","jyjjc_"..msg.."5baoming"))
		
		if #mingdan >= 2 then
			local dgn = lualib:Map_CreateDgn("��Ӣ������-�����", true, 930)
			if dgn == "" then
				lualib:Error("��������Ӣ������-���������ʧ�ܣ�")
				return
			end
			lualib:SetStr(dgn,"jyjjc_dengji",msg)--��¼�����ȼ�
			
			for i=1,2 do
				for k,v in pairs(mingdan[i]) do
					lualib:SetStr(v,"jyjjc_zuduiditu",dgn) --����Ҽ�¼�������صĵ�ͼ��ʶ��
					lualib:Player_SetDgnTicket(v,dgn) --��ý���������ص��ʸ�
					shanchubaoming(msg,v) --ɾ�����˱�����Ϣ
					lualib:SysMsg_SendMsgDlg(v, 1, "�㱨������Ӿ������Ѿ�ƥ����ϣ����ھͿ����볡�����ȷ�������볡��#BUTTON0#ȷ���볡#BUTTONEND##BUTTON0#ȡ��#BUTTONEND#", 100, "tanzuduiruchang", "guanbi")
					lualib:SetStr(dgn,"jyjjc_duiwuxinxi"..i,lualib:GetStr(dgn,"jyjjc_duiwuxinxi"..i)..v..",") --��¼�����Ķ�����Ϣ
				end
			end
			table.remove(mingdan,1) --ɾ�����鱨����Ϣ
			table.remove(mingdan,1) --ɾ�����鱨����Ϣ
			lualib:SetStr("0","jyjjc_"..msg.."5baoming",json.encode(mingdan))
			if lualib:GetStr("0","jyjjc_"..msg.."5baoming") == "" then
				lualib:SetStr("0","jyjjc_"..msg.."5baoming","")
			end
			return
		end
		return
	end
end

---------------------������ʾ�볡ѡ����----------------------------
function tanzuduiruchang(dlg_id, player, button_id, param)
	if button_id == 0 then
		zuduiruchang("",player)
	end
end

function zuduisaipipei1(msg)
	local pipei,mingdan1,mingdan2 = {},{},{}
	--��1��ƥ�䣬4�˶�+1�˶����һ��5�˶�
	mingdan1 = lualib:GetStr("0","jyjjc_"..msg.."4baoming")
	mingdan2 = lualib:GetStr("0","jyjjc_"..msg.."1baoming")
	if #mingdan1 > 2 and #mingdan2  > 2 then
		mingdan1 = json.decode(mingdan1)
		mingdan2 = json.decode(mingdan2)
		for k,v in pairs(mingdan1[1]) do
			pipei[#pipei+1] = v 
		end
		pipei[#pipei+1] = mingdan2[1]
		
		table.remove(mingdan1,1)
		table.remove(mingdan2,1)
		lualib:SetStr("0", "jyjjc_"..msg.."4baoming", json.encode(mingdan1))
		if lualib:GetStr("0","jyjjc_"..msg.."4baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."4baoming", "")
		end
		
		lualib:SetStr("0", "jyjjc_"..msg.."1baoming", json.encode(mingdan2))
		if lualib:GetStr("0","jyjjc_"..msg.."1baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."1baoming", "")
		end
	
		jiaru5rendui(msg,pipei) --ƥ����Ķ������5�˶�
		return true
	end

	
	--��2��ƥ�䣬3�˶�+2�˶����һ��5�˶�
	mingdan1 = lualib:GetStr("0","jyjjc_"..msg.."3baoming")
	mingdan2 = lualib:GetStr("0","jyjjc_"..msg.."2baoming")
	if #mingdan1  > 2 and #mingdan2  > 2 then
		mingdan1 = json.decode(mingdan1)
		mingdan2 = json.decode(mingdan2)
		for k,v in pairs(mingdan1[1]) do
			pipei[#pipei+1] = v 
		end
		
		for k,v in pairs(mingdan2[1]) do
			pipei[#pipei+1] = v 
		end
	
		table.remove(mingdan1,1)
		table.remove(mingdan2,1)
		lualib:SetStr("0", "jyjjc_"..msg.."3baoming", json.encode(mingdan1))
		if lualib:GetStr("0","jyjjc_"..msg.."3baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."3baoming", "")
		end
		
		lualib:SetStr("0", "jyjjc_"..msg.."2baoming", json.encode(mingdan2))
		if lualib:GetStr("0","jyjjc_"..msg.."2baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."2baoming", "")
		end
	
		jiaru5rendui(msg,pipei) --ƥ����Ķ������5�˶�
		return true
	end
	
	--��3��ƥ�䣬3�˶�+1�˶�+1�˶����һ��5�˶�
	mingdan1 = lualib:GetStr("0","jyjjc_"..msg.."3baoming")
	mingdan2 = lualib:GetStr("0","jyjjc_"..msg.."1baoming")
	if #mingdan2  > 2 then
		mingdan2 = json.decode(mingdan2)
	end
	
	if #mingdan1  > 2 and type(mingdan2) == "table" and #mingdan2 >= 2 then
		mingdan1 = json.decode(mingdan1)
		for k,v in pairs(mingdan1[1]) do
			pipei[#pipei+1] = v 
		end
		
		pipei[#pipei+1] = mingdan2[1]
		pipei[#pipei+1] = mingdan2[2]
	
		table.remove(mingdan1,1)
		table.remove(mingdan2,1)
		table.remove(mingdan2,1)
		lualib:SetStr("0", "jyjjc_"..msg.."3baoming", json.encode(mingdan1))
		if lualib:GetStr("0","jyjjc_"..msg.."3baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."3baoming", "")
		end
		
		lualib:SetStr("0", "jyjjc_"..msg.."1baoming", json.encode(mingdan2))
		if lualib:GetStr("0","jyjjc_"..msg.."1baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."1baoming", "")
		end
	
		jiaru5rendui(msg,pipei) --ƥ����Ķ������5�˶�
		return true
	end
				
	--��4��ƥ�䣬2�˶�+2�˶�+1�˶����һ��5�˶�
	mingdan1 = lualib:GetStr("0","jyjjc_"..msg.."1baoming")
	mingdan2 = lualib:GetStr("0","jyjjc_"..msg.."2baoming")
	
	if #mingdan2  > 2 then
		mingdan2 = json.decode(mingdan2)
	end
	if #mingdan1  > 2 and type(mingdan2) == "table" and #mingdan2 >= 2 then
		mingdan1 = json.decode(mingdan1)
		
		pipei[#pipei+1] = mingdan1[1]
		for i=1,2 do
			for k,v in pairs(mingdan2[i]) do
				pipei[#pipei+1] = v
			end
		end
	
		table.remove(mingdan1,1)
		table.remove(mingdan2,1)
		table.remove(mingdan2,1)
		lualib:SetStr("0", "jyjjc_"..msg.."1baoming", json.encode(mingdan1))
		if lualib:GetStr("0","jyjjc_"..msg.."1baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."1baoming", "")
		end
		
		lualib:SetStr("0", "jyjjc_"..msg.."2baoming", json.encode(mingdan2))
		if lualib:GetStr("0","jyjjc_"..msg.."2baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."2baoming", "")
		end
	
		jiaru5rendui(msg,pipei) --ƥ����Ķ������5�˶�
		return true
	end
		
	--��5��ƥ�䣬2�˶�+1�˶�+1�˶�+1�˶����һ��5�˶�
	mingdan1 = lualib:GetStr("0","jyjjc_"..msg.."2baoming")
	mingdan2 = lualib:GetStr("0","jyjjc_"..msg.."1baoming")
	if #mingdan2  > 2 then
		mingdan2 = json.decode(mingdan2)
	end
	
	if #mingdan1  > 2 and type(mingdan2) == "table" and #mingdan2 >= 3 then
		mingdan1 = json.decode(mingdan1)
		for k,v in pairs(mingdan1[1]) do
			pipei[#pipei+1] = v 
		end
		
		pipei[#pipei+1] = mingdan2[1]
		pipei[#pipei+1] = mingdan2[2]
		pipei[#pipei+1] = mingdan2[3]
	
		table.remove(mingdan1,1)
		table.remove(mingdan2,1)
		table.remove(mingdan2,1)
		table.remove(mingdan2,1)
		lualib:SetStr("0", "jyjjc_"..msg.."2baoming", json.encode(mingdan1))
		if lualib:GetStr("0","jyjjc_"..msg.."2baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."2baoming", "")
		end
		
		lualib:SetStr("0", "jyjjc_"..msg.."1baoming", json.encode(mingdan2))
		if lualib:GetStr("0","jyjjc_"..msg.."1baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."1baoming", "")
		end
	
		jiaru5rendui(msg,pipei) --ƥ����Ķ������5�˶�
		return true
	end
		
	--��6��ƥ�䣬1�˶�+1�˶�+1�˶�+1�˶�+1�˶����һ��5�˶�
	mingdan1 = lualib:GetStr("0","jyjjc_"..msg.."1baoming")
	if #mingdan1 > 2 then
		mingdan1 = json.decode(mingdan1)
	end
	
	if type(mingdan2) == "table" and #mingdan1 >= 5 then
		for i=1,5 do
			pipei[#pipei+1] = mingdan1[i]
		end
	
		table.remove(mingdan1,1)
		table.remove(mingdan1,1)
		table.remove(mingdan1,1)
		table.remove(mingdan1,1)
		table.remove(mingdan1,1)

		lualib:SetStr("0", "jyjjc_"..msg.."1baoming", json.encode(mingdan1))
		if lualib:GetStr("0","jyjjc_"..msg.."1baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."1baoming", "")
		end
	
		jiaru5rendui(msg,pipei) --ƥ����Ķ������5�˶�
		return true
	end

	return false
end

function jiaru5rendui(msg,pipei)
	if lualib:GetStr("0", "jyjjc_"..msg.."5baoming") == "" then
		local mingdan = {pipei}
		lualib:SetStr("0", "jyjjc_"..msg.."5baoming", json.encode(mingdan))
	else
		local mingdan = json.decode(lualib:GetStr("0", "jyjjc_"..msg.."5baoming"))
		mingdan[#mingdan+1] = pipei
		lualib:SetStr("0", "jyjjc_"..msg.."5baoming", json.encode(mingdan))
	end
end

---------------------������볡------------------------
function zuduiruchang(npc,player)
	local msg = ""
	if lualib:GetStr(player,"jyjjc_zuduiditu") ~= "" then
		local map = lualib:GetStr(player,"jyjjc_zuduiditu")
		if lualib:Map_IsDgnExist(map) == true then
			for i=1,2 do
				local mingdan = lualib:GetStr(map,"jyjjc_duiwuxinxi"..i)
				local p1 = string.find(mingdan,player)
				if p1 ~= nil then
					if lualib:Player_HasDgnTicket(player, "��Ӣ������-�����") == false then
						msg = "��û�н����Ȩ����������ı�����û�п�ʼ��\n\n<@zuduilei *01*���±���><@guanbi *01*�ر�>"
					end
					
					if lualib:GetAllTime() - lualib:GetInt(map,"jyjjc_chuangjian") < 300 then
						msg = "�����Ѿ���ʼ����5���ӣ����ɽ����ˣ�\n\n<@zuduilei *01*���±���><@guanbi *01*�ر�>"
					end
					
					if string.find(lualib:GetStr(map,"jyjjc_duiwuxinxi1"),player) ~= nil then
						if lualib:Player_EnterDgn(player, "��Ӣ������-�����", 45, 31, 3) == true then
							return ""
						else
							msg = "�����������ʧ�ܣ�\n\n<@zuduilei *01*���±���><@guanbi *01*�ر�>"
						end
					elseif string.find(lualib:GetStr(map,"jyjjc_duiwuxinxi2"),player) ~= nil then
						if lualib:Player_EnterDgn(player, "��Ӣ������-�����", 17, 64, 3) == true then
							return ""
						else
							msg = "�����������ʧ�ܣ�\n\n<@zuduilei *01*���±���><@guanbi *01*�ر�>"
						end
					end
				end
			end
		else
			lualib:SetStr(player,"jyjjc_zuduiditu","") --�����ͼ��ʶ��
			return "���ϴα����μӵı����Ѿ���ʼ����ڣ�����Ҫ���������μ���\n\n<@zuduilei *01*�ٴα���>\n<@guanbi *01*�ر�>"
		end
	else
		return "��ı�����δ��ʼ�������ĵȴ���\n\n<@guanbi *01*�ر�>"
	end
	
	lualib:SetStr(player,"jyjjc_zuduiditu","") --�����ͼ��ʶ��
	return msg
end

---------------------���˾�����------------------------
function gerenlei(npc,player)
	gerensaixianshi(player,1)
	return ""
end

---------------------��ʾ��������Ϣ���------------------------
function gerensaixianshi(player,yeshu)
	local p1 = 0 --����Լ��Ƿ���
	local p2 = 0 --��������к�
	local s = {"","","","","","","","","",""} --����и�����Ϣ
	local mingdan = {}
	if lualib:GetStr("0", "jyjjc_gerenjinji") == "" then
	else
		mingdan = json.decode(lualib:GetStr("0","jyjjc_gerenjinji"))
	end
	local zaixianmingdan = {}
	local i1 = 0

	if string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..player.."\"") ~= nil  then
		zaixianmingdan[1] = player
		p1 = 1
	end
	
	for k,v in pairs(mingdan) do
		if lualib:Player_IsOnline(v) == true and v ~= player then--�ж��Ƿ�����
			zaixianmingdan[#zaixianmingdan+1] = v
		end
	end
	
	local zuidaye = math.ceil(#zaixianmingdan/10)
	if zuidaye == 0 then
		zuidaye = 1
	end

	for i=yeshu*10-9,yeshu*10 do
		i1 = i1 + 1
		if zaixianmingdan[i] == nil then
			break
		end

		if lualib:Player_IsOnline(zaixianmingdan[i]) == true then--�ж��Ƿ�����
			s[i1] = lualib:KeyName(zaixianmingdan[i]) --��ȡ�������
			s[i1] = s[i1]..","..lualib:Player_GetIntProp(zaixianmingdan[i], lua_role_level) --��ȡ��ҵȼ�
			s[i1] = s[i1]..","..lualib:Player_GetIntProp(zaixianmingdan[i],lua_role_job) --��ȡ���ְҵ
			local map = lualib:MapGuid(zaixianmingdan[i])
			if string.find(lualib:KeyName(map),"��Ӣ������") ~= nil and string.find(lualib:KeyName(map),"�����") == nil and string.find(lualib:KeyName(map),"��Ϣ��") == nil then
				s[i1] = s[i1]..",".."1"
			else
				s[i1] = s[i1]..",".."0"
			end
		end
	end
	lualib:ShowFormWithContent(player, "���˾�������","#"..yeshu.."#"..zuidaye.."#"..p1.."#"..s[1].."#"..s[2].."#"..s[3].."#"..s[4].."#"..s[5].."#"..s[6].."#"..s[7].."#"..s[8].."#"..s[9].."#"..s[10])
end

job = {}
job[1] = "սʿ"
job[2] = "��ʦ"
job[3] = "��ʿ"

---------------------�鿴�ҵĲ�����Ϣ------------------------
function cansaixinxi(npc,player)
	local msg = ""
	if string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..player.."\"") ~= nil or string.find(lualib:GetStr("0", "jyjjc_dijibaoming"),"\""..player.."\"") ~= nil or string.find(lualib:GetStr("0", "jyjjc_gaojibaoming"),"\""..player.."\"") ~= nil then
	else
		return "\n\n��ǰû����Ĳ�����Ϣ��\n\n\n\n#OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-1>#<@main *01*����>"
	end

	if string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..player.."\"") ~= nil then
		lualib:ShowForm(player, "���˾�������Ϣ��")
		return ""
	end
	
	if string.find(lualib:GetStr("0", "jyjjc_dijibaoming"),"\""..player.."\"") ~= nil or string.find(lualib:GetStr("0", "jyjjc_gaojibaoming"),"\""..player.."\"") ~= nil then
		msg = msg .. "������Ϣ��"..lualib:KeyName(player).."    "..lualib:Player_GetIntProp(player,lua_role_level).."��"..job[lualib:Player_GetIntProp(player,lua_role_job)].."\n"
		msg = msg .. "�㱨������Ӿ����������֣��ȴ�ƥ����...\n\n<@zuduiruchang *01*���ͱ�������>"
	end
	
	return msg
end

---------------------ǰ����Ϣ��------------------------
function xiuxijian(npc,player,i)
	i = tonumber(i)
	if i == 0 then
		lualib:Player_SetDgnTicket(player,lualib:GetStr("0","jyjjc_xiuxijian")) --���������Ϣ��
		local Name = lualib:KeyName(lualib:GetStr("0","jyjjc_xiuxijian")) --�����Ϣ�������
		
		if lualib:Player_HasDgnTicket(player, Name) == false then
			return "��û�н����Ȩ����\n\n<@guanbi *01*�ر�>"
		end
			
		if lualib:Player_EnterDgn(player, Name, 0, 0, 0) == true then
			return ""
		else
			return "������Ϣ��ʧ�ܣ�\n\n<@guanbi *01*�ر�>"
		end
	end
end

-------------------------------------------ʱ�����--------------------------------------------------------
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