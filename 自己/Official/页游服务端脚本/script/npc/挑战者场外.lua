local cailiao = "ѭ��ħ��"
local num = 10


function main(npc, player)
	if lualib:GetAllDays(0) - lualib:GetInt(player,"fuben_chushihua") >= 1 then
		lualib:SetInt(player,"fuben_chushihua",lualib:GetAllDays(0)) --��¼������ʱ�ĵ�ǰ����
		lualib:SetInt(player,"fuben_cishu",0) --���ո���������ʼ��
	end
	
	local cishu = 1 --��ͨ���ÿ�մ���
	if lualib:GetVipLevel(player) > 0 then
		cishu = 3 --vip���ÿ�մ���
	end
	local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#��ս��#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	msg = msg .. "��ͨ���ÿ�տɽ���#COLORCOLOR_YELLOW#1#COLOREND#�Ρ��������ѽ��룺#COLORCOLOR_RED#"..	lualib:GetInt(player, "fuben_cishu").."/"..cishu.."#COLOREND#��\n"
	msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700018##OFFSET<X:0,Y:-2>#<@benfu#40#��ս��1#53#86 *01*������ս��[40���ɽ���]>\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE1902700018##OFFSET<X:0,Y:-2>#<@benfu#45#��ս��2#62#69 *01*������ս��[45���ɽ���]>\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE1902700018##OFFSET<X:0,Y:-2>#<@benfu#50#��ս��3#27#76 *01*������ս��[50���ɽ���]>\n"
	msg = msg .. "#COLORCOLOR_BROWN#������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:5>##COLORCOLOR_GREENG#С��ʾ������������й�����Զ�ˢ����һ������ܹ�ˢ��3�������沨���Ĺ�������������ǿ����;�˳�����������ʧ�ܣ�#COLOREND#\n"
	msg = msg .. "                                                   #OFFSET<X:0,Y:5>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*[�ر�]>\n"
	msg = msg .. ""
	return msg
end

function guanbi()
	return ""
end

function benfu(npc, player,lv,mapname,x,y)
	local msg = "����Ҫ������ʽ���룿\n\n"
	msg = msg .. "#OFFSET<X:0,Y:5>##IMAGE1902700018#<@benfu1#"..lv.."#"..mapname.."#"..x.."#"..y.." *01*[���˽���]>\n \n \n"
	msg = msg .. "#OFFSET<X:0,Y:5>##IMAGE1902700018#<@benfu2#"..lv.."#"..mapname.."#"..x.."#"..y.." *01*[��ӽ���]>\n \n \n"
--	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE1902700033##OFFSET<X:0,Y:-2>#<@qingchu *01*[���ø���]>\n"
	msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	return msg
end

function benfu1(npc, player,lv,mapname,x,y)
	local level = lualib:Level(player)
	if level < tonumber(lv) then
		return "�ȼ��������޷����룡\n \n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
	end

	if lualib:GetAllDays(0) - lualib:GetInt(player,"fuben_chushihua") >= 1 then
		lualib:SetInt(player,"fuben_chushihua",lualib:GetAllDays(0)) --��¼������ʱ�ĵ�ǰ����
		lualib:SetInt(player,"fuben_cishu",0) --���ո���������ʼ��
	end

	local cishu = 1 --��ͨ���ÿ�մ���
	if lualib:GetVipLevel(player) > 0 then
		cishu = 3 --vip���ÿ�մ���
	end
	
	if lualib:GetInt(player, "fuben_cishu") >= cishu then
		return "�����㲻���ٽ��븱�������������ɣ�\n\n<@guanbi *01*�ر�>"
	end

	x = tonumber(x)
	y = tonumber(y)
	
	local dgn = lualib:Map_CreateDgn(mapname, true, 3600)
	if dgn == "" then
		return "����������ʧ�ܣ�\n \n<@likai *01*�ر�>"
	end

	if lualib:Player_SetDgnTicket(player, dgn) == false then 
		return "��������ɽ����ͼ��\n \n<@likai *01*�ر�>" 
	end
		
	if lualib:Player_EnterDgn(player, mapname, x, y, 3) == false then
		return "���븱��ʧ�ܣ�\n \n<@likai *01*�ر�>"
	end
	if lualib:HasSkill(player, "Ǭ��һ��", false) == false then 
		if not lualib:AddSkill(player, "Ǭ��һ��") == true then
			lualib:Error("������ħ��ѧϰǬ��һ������ʧ�ܣ�")
		end
		if not lualib:AddItem(player, "����ʯ����", 1, true, "��һ�ν�����ħ�����ͼ���ʯ����", player) == true then
			lualib:Error("������ħ����輼��ʯ����ʧ�ܣ�")
		end
	end
	lualib:SetInt(player,"fuben_cishu",lualib:GetInt(player,"fuben_cishu")+1)
	return ""
end

function benfu2(npc, player,lv,mapname,x,y)
	lv = tonumber(lv)
	if not lualib:Player_IsTeamLeader(player) then
        return "�㲻�Ƕӳ���\n \n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
    end
	
	if not lualib:Player_IsTeamLeader(player) then
        return "�㲻�Ƕӳ���\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    end

	local members = lualib:Player_GetTeamList(player)
	if members == nil or #members == 0 then
        return "�����ԱΪ�գ�\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    end

	local require_distance = 20
	for _, v in pairs(members) do
		local distance = lualib:Distance(v, npc)
		if distance > require_distance then
			if player == v then
				return "���ľ����Զ��\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			else
				return "���ѡ�"..lualib:Name(v).."���ľ����Զ��\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			end
		end
	end

	local require_level = lv
	for _, v in pairs(members) do
		if lualib:Level(v) < require_level then
			if player == v then
				return "���ĵȼ����ͣ���"..require_level.."��������\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			else
				return "���ѡ�"..lualib:Name(v).."���ĵȼ�δ��"..require_level.."����\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			end
		end
	end

--[[	for _, v in pairs(members) do
        for _, _v in pairs(CMap.keys) do
		    if lualib:Player_HasDgnTicket(v, _v) then
                if player == v then
                    return "���Ѿ��������������ĸ�����\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
                else
			        return "���ѡ�"..lualib:Name(v).."���Ѿ��������������ĸ�����\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
                end
            end
        end
	end--]]

	for _, v in pairs(members) do
		if lualib:GetAllDays(0) - lualib:GetInt(v,"fuben_chushihua") >= 1 then
			lualib:SetInt(v,"fuben_chushihua",lualib:GetAllDays(0)) --��¼������ʱ�ĵ�ǰ����
			lualib:SetInt(v,"fuben_cishu",0) --���ո���������ʼ��
		end
		
		local cishu = 1 --��ͨ���ÿ�մ���
		if lualib:GetVipLevel(player) > 0 then
			cishu = 3 --vip���ÿ�մ���
		end
	
		if lualib:GetInt(v, "fuben_cishu") >= cishu then
			if v == player then
				return "����ղ����ٽ���ø��������������ɣ�\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			else
				return "���ѡ�"..lualib:Name(v).."�����ղ����ٽ���ø����ˣ�\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			end
		end
	end

	x = tonumber(x)
	y = tonumber(y)
	
	local dgn = lualib:Map_CreateDgn(mapname, true, 3600)
	if dgn == "" then
		return "����������ʧ�ܣ�\n \n<@likai *01*�ر�>"
	end
	
	for _, v in pairs(members) do
		if lualib:Player_SetDgnTicket(v, dgn) == false then 
			return "��������ɽ����ͼ��\n\n<@likai *01*�ر�>" 
		end
		if lualib:Player_EnterDgn(v, mapname, x, y, 3) == false then
			return "���븱��ʧ�ܣ�\n\n<@likai *01*�ر�>"
		end
		if lualib:HasSkill(v, "Ǭ��һ��", false) == false then 
			if not lualib:AddSkill(v, "Ǭ��һ��") == true then
				lualib:Error("������ħ��ѧϰǬ��һ������ʧ�ܣ�")
			end
			if not lualib:AddItem(v, "����ʯ����", 1, true, "��һ�ν�����ħ�����ͼ���ʯ����", v) == true then
				lualib:Error("������ħ����輼��ʯ����ʧ�ܣ�")
			end
		end
		lualib:SetInt(v,"fuben_cishu",lualib:GetInt(v,"fuben_cishu")+1)
    end
	
	return ""
end

function qingchu(npc, player)
	local msg = "���ø����󣬿����ٴν��븱�������ø�����Ҫ#COLORCOLOR_RED#"..num.."��["..cailiao.."]#COLOREND#����ȷ��������\n\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE1902700033##OFFSET<X:0,Y:-2>#<@chongzhi *01*[���ø���]>\n"
	
	
	return msg
end
function chongzhi(npc, player)
	
	local cailiao_num = lualib:ItemCountByKey(player, cailiao, true, false, false, 2)
	
	if cailiao_num >= num then
		if lualib:DelItem(player, cailiao, num, 2, "������ս��", player) == false then
				lualib:SysMsg_SendPromptMsg(player, "�۳�����ʧ��")
				return "�۳�"..cailiao.."ʧ�ܣ�"
			else
			lualib:SetInt(player, "fuben_cishu", 0)
		end
	

	else
		return cailiao.."����"..num.."�����޷����ã�"
	
	end
	
	local msg = "���óɹ�������ٽ���һ����ս���ˣ�\n \n"
	msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	
	
	return msg
end