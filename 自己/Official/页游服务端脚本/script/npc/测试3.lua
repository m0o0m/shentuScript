function main(npc,player)
	lualib:SetPanelSize(npc,400,200)
	local msg = "���ʿ͹���Ҫȥ���\n\n\n"
	msg = msg .. "#IMAGE20150703131810# <@Deliver#1 *01*[���д���]> #COLORCOLOR_MAGENTA#\n\n\n"            
	msg = msg .. "#OFFSET<X:80,Y:-3>##IMAGE# <@Deliver#2 *01*[Σ�մ���]> #COLORCOLOR_MAGENTA#\n\n\n"
    msg = msg .. "#OFFSET<X:40,Y:-3>##IMAGE# <@web#2 *01*[����]> #COLORCOLOR_MAGENTA#\n\n\n"
          return msg
end

function Deliver(npc,player,type)
	local msg = "���ʿ͹���Ҫȥ���\n\n\n\n"
	type = tonumber(type)
	if type == 1 then


		msg = msg .. "#IMAGE1902700015# <@Deliver1#����#248#274 *01*[��  ��]> \n"

	elseif type == 2 then

		local str = "��ˢ��"
		
		local now = lualib:GetAllTime()

		lualib:SetPanelSize(npc,400,200)


	

		
		msg = msg .. "#IMAGE1902700015# <@Deliver4#0#ħ��Ͽ����#0#0#93#328 *01*[����ħ��]>\n\n\n"


                msg = msg .. "#IMAGE1902700015# <@Deliver4#0#��������1#0#0#76#80 *01*[�������]>\n\n"
		
	elseif type == 5 then
            lualib:SetPanelSize(npc,500,600)
			
		local str = "��ˢ��"
		
		local now = lualib:GetAllTime()
		
		msg = msg .. "#IMAGE1902700015# <@Deliver5#2#ʯ������#45#0#72#66 *01*[������]> #COLORCOLOR_MAGENTA#��������#COLOREND##COLORCOLOR_MAGENTA# 45������������װ��������#COLOREND#\n\n"
		
		if lualib:GetInt("0", "����ʯ���߲�") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "����ʯ���߲�") - now) / 60)
			str = "����"..times.."����ˢ��"
		else
			str = "��ˢ��"
		end
		
		msg = msg .. "#COLORCOLOR_GREENG#    ˢ��BOSS������                      ��ǰ״̬��"..str.."\n\n"
		
		msg = msg .. "#IMAGE1902700015# <@Deliver5#3#ɽ���ܵ�2#45#0#207#43 *01*[����ħѨ]> #COLORCOLOR_MAGENTA#��������#COLOREND##COLORCOLOR_MAGENTA# 45������������װ��������#COLOREND#\n\n"
		
		if lualib:GetInt("0", "�����Ϻ����ħѨ") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "�����Ϻ����ħѨ") - now) / 60)
			str = "����"..times.."����ˢ��"
		else
			str = "��ˢ��"
		end
		
		msg = msg .. "#COLORCOLOR_GREENG#    ˢ��BOSS�������Ϻ�                  ��ǰ״̬��"..str.."\n\n"
		
		msg = msg .. "#IMAGE1902700015# <@Deliver5#4#ɽ���ܵ�1#45#0#177#84 *01*[��ħ��̳]> #COLORCOLOR_MAGENTA#��������#COLOREND##COLORCOLOR_MAGENTA# 45������������װ��������#COLOREND#\n\n"
		
		if lualib:GetInt("0", "˫ͷѪħ��ħ��̳") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "˫ͷѪħ��ħ��̳") - now) / 60)
			str = "����"..times.."����ˢ��"
		else
			str = "��ˢ��"
		end
		
		msg = msg .. "#COLORCOLOR_GREENG#    ˢ��BOSS��˫ͷѪħ                  ��ǰ״̬��"..str.."\n"
		
		if lualib:GetInt("0", "˫ͷ��ն�ħ��̳") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "˫ͷ��ն�ħ��̳") - now) / 60)
			str = "����"..times.."����ˢ��"
		else
			str = "��ˢ��"
		end
		
		msg = msg .. "    ˢ��BOSS��˫ͷѪħ                  ��ǰ״̬��"..str.."\n\n"
		
		msg = msg .. "#IMAGE1902700015# <@Deliver5#6#��ԴѪ·#45#0#271#122 *01*[��ԴѪ·]> #COLORCOLOR_MAGENTA#��������#COLOREND##COLORCOLOR_MAGENTA# 45���������ռ�װ��������#COLOREND#\n\n"
		
		if lualib:GetInt("0", "��֮ħ������ħ�����") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "��֮ħ������ħ�����") - now) / 60)
			str = "����"..times.."����ˢ��"
		else
			str = "��ˢ��"
		end
		
		msg = msg .. "#COLORCOLOR_GREENG#    ˢ��BOSS����֮ħ������              ��ǰ״̬��"..str.."\n"
		
		if lualib:GetInt("0", "ħ������ħ�����") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "ħ������ħ�����") - now) / 60)
			str = "����"..times.."����ˢ��"
		else
			str = "��ˢ��"
		end
		
		msg = msg .. "#COLORCOLOR_GREENG#    ˢ��BOSS��ħ������                  ��ǰ״̬��"..str.."\n\n"
		
		msg = msg .. "#IMAGE1902700015# <@Deliver5#7#����һ��#48#100#36#78 *01*[���׳�Ѩ]> #COLORCOLOR_MAGENTA#��������#COLOREND##COLORCOLOR_MAGENTA# 48��+100Ԫ���������ռ�װ��������#COLOREND#\n\n"
		
		if lualib:GetInt("0", "�����������׳�Ѩ") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "�����������׳�Ѩ") - now) / 60)
			str = "����"..times.."����ˢ��"
		else
			str = "��ˢ��"
		end
		
		msg = msg .. "#COLORCOLOR_GREENG#    ˢ��BOSS����������                  ��ǰ״̬��"..str.."\n\n"
		
		
        msg = msg .. "#IMAGE1902700015# <@Deliver5#8#��������#48#100#58#51 *01*[��������]> #COLORCOLOR_MAGENTA#��������#COLOREND##COLORCOLOR_MAGENTA# 48��+100Ԫ���������ռ�װ��������#COLOREND#\n\n"
		
		if lualib:GetInt("0", "�����������Ѩ") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "�����������Ѩ") - now) / 60)
			str = "����"..times.."����ˢ��"
		else
			str = "��ˢ��"
		end
		
		msg = msg .. "#COLORCOLOR_GREENG#    ˢ��BOSS�������                  ��ǰ״̬��"..str.."\n\n"
					
					
		msg = msg .. "#IMAGE1902700015# <@Deliver5#5#������һ��#48#200#29#85 *01*[������Ѩ]> #COLORCOLOR_MAGENTA#��������#COLOREND##COLORCOLOR_MAGENTA# 48��+200Ԫ������������װ��������#COLOREND#\n\n"
		
		if lualib:GetInt("0", "��������������Ѩ") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "��������������Ѩ") - now) / 60)
			str = "����"..times.."����ˢ��"
		else
			str = "��ˢ��"
		end
		
		msg = msg .. "#COLORCOLOR_GREENG#    ˢ��BOSS����������                  ��ǰ״̬��"..str.."\n\n"
		
		msg = msg .. "#IMAGE1902700015# <@Deliver5#11#����һ��#48#200#59#115 *01*[����ѩԭ]> #COLORCOLOR_MAGENTA#��������#COLOREND##COLORCOLOR_MAGENTA# 48��+200Ԫ������������װ��������#COLOREND#\n\n"
		
		if lualib:GetInt("0", "���������ѩԭ") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "���������ѩԭ") - now) / 60)
			str = "����"..times.."����ˢ��"
		else
			str = "��ˢ��"
		end
		
		msg = msg .. "#COLORCOLOR_GREENG#    ˢ��BOSS��������                    ��ǰ״̬��"..str
	elseif type == 6 then
            lualib:SetPanelSize(npc,500,300)
		msg = msg .. "#IMAGE1902700015# <@Deliver5#9#������#30#0#48#285 *01*[30����ʦ�б�����ͼ]> #COLORCOLOR_RED##COLOREND##COLORCOLOR_BLUE##COLOREND#\n\n\n\n"
		msg = msg .. "#IMAGE1902700015# <@Deliver5#9#������#45#0#96#94 *01*[45����ʦ�б�����ͼ]> #COLORCOLOR_RED##COLOREND#\n\n\n\n"
		msg = msg .. "#IMAGE1902700015# <@Deliver5#9#������#50#0#450#494 *01*[50����ʦ�б�����ͼ]> #COLORCOLOR_RED##COLOREND#\n\n\n\n"
		msg = msg .. "#IMAGE1902700015# <@Deliver5#9#������#1#0#534#150 *01*[����������������ͼ]> #COLORCOLOR_RED#\n\n"
	elseif type == 7 then
        lualib:SetPanelSize(npc,500,300)

		msg = msg .. "\n#IMAGE1902700015# <@Deliver5#10#ɢ�˴�#30#0#368#426 *01*[ɢ�˴�]������������ͼBOSS��Сʱ���ˢ��һ�� С�ֱ�ҩ �ʺ�ɢ����Ҵ�> #COLORCOLOR_GREENG#\n\n"
		
		local str = "��ˢ��"
		
		local now = lualib:GetAllTime()
		
		if lualib:GetInt("0", "˫ͷѪħɢ�˴�") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "˫ͷѪħɢ�˴�") - now) / 60)
			str = "����"..times.."����ˢ��"
		else
			str = "��ˢ��"
		end
		
		msg = msg .. "ˢ��BOSS��˫ͷѪħ                        ��ǰ״̬��"..str.."\n"
		
		if lualib:GetInt("0", "˫ͷ���ɢ�˴�") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "˫ͷ���ɢ�˴�") - now) / 60)
			str = "����"..times.."����ˢ��"
		else
			str = "��ˢ��"
		end
		
		msg = msg .. "ˢ��BOSS��˫ͷ���                        ��ǰ״̬��"..str.."\n"
		
		if lualib:GetInt("0", "����ɢ�˴�") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "����ɢ�˴�") - now) / 60)
			str = "����"..times.."����ˢ��"
		else
			str = "��ˢ��"
		end
		
		msg = msg .. "ˢ��BOSS������                            ��ǰ״̬��"..str.."\n"
		
		if lualib:GetInt("0", "��֮ħ������ɢ�˴�") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "��֮ħ������ɢ�˴�") - now) / 60)
			str = "����"..times.."����ˢ��"
		else
			str = "��ˢ��"
		end
		
		msg = msg .. "ˢ��BOSS����֮ħ������                    ��ǰ״̬��"..str.."\n"
		
		if lualib:GetInt("0", "ħ������ɢ�˴�") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "ħ������ɢ�˴�") - now) / 60)
			str = "����"..times.."����ˢ��"
		else
			str = "��ˢ��"
		end
		
		msg = msg .. "ˢ��BOSS��ħ������                        ��ǰ״̬��"..str.."\n"
		
		if lualib:GetInt("0", "��ħ����ɢ�˴�") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "��ħ����ɢ�˴�") - now) / 60)
			str = "����"..times.."����ˢ��"
		else
			str = "��ˢ��"
		end
		
		msg = msg .. "ˢ��BOSS����ħ����                        ��ǰ״̬��"..str.."\n"

	end
	
	return msg
end

function Deliver1(npc,player,mapKeyname,x,y)
	x = tonumber(x)
	y = tonumber(y)
	local r = 0
	lualib:Player_MapMoveXY(player,mapKeyname,x,y,r)
	return ""
end

function Deliver3(npc,player,mapKeyname,x,y)
	x = tonumber(x)
	y = tonumber(y)
	local r = 0
	local playerLevel = lualib:Level(player)
	if playerLevel < 40 then
		return "��ĵȼ�δ�ﵽҪ����40�������ϲ�����ѽ���          #IMAGE<ID:1902700019>#<@main *01* [����]>"
	end
	lualib:Player_MapMoveXY(player,mapKeyname,x,y,r)
	return ""
end
function Deliver4(npc,player,type,mapKeyname,level,gold,x,y)
	type = tonumber(type)
	x = tonumber(x)
	y = tonumber(y)
	local r = 0
	level = tonumber(level)
	gold = tonumber(gold) * 10000
	local playerLevel = lualib:Level(player)
	if playerLevel < level then
		return "��ĵȼ�δ�ﵽҪ����"..level.."�������ϲ�����ѽ���          #IMAGE<ID:1902700019>#<@main *01* [����]>"
	end
	if not lualib:Player_SubGold(player,gold,false,"�۽�ң�����","���д���Ա") then
		return "��Ľ�Ҳ��㣬���ܴ��ͣ���Ҫ"..gold.."��ң���"
	end
	lualib:Player_MapMoveXY(player,mapKeyname,x,y,r)
	if mapKeyname == "��������1" then
	--	lualib:DelayCall(player, 100, "��ͼ��֤:verify_ex", mapKeyname.."#"..x.."#"..y)
	end
	if type == 1 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_BLUE#Ӣ�ۣ�"..lualib:Name(player).."���ҽ����ˣ�����������ӭ��ļ���","")
	elseif type == 2 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_BLUE#Ӣ�ۣ�"..lualib:Name(player).."�������ˣ�����ڣ���ӭ��ļ���","")
	elseif type == 3 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_BLUE#Ӣ�ۣ�"..lualib:Name(player).."�������ˣ���ħ��������ӭ��ļ���","")
	elseif type == 4 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_BLUE#Ӣ�ۣ�"..lualib:Name(player).."�������ˣ�����ħ�ߣ���ӭ��ļ���","")
	elseif type == 5 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_BLUE#Ӣ�ۣ�"..lualib:Name(player).."�������ˣ�ħ����ڣ���ӭ��ļ���","")
           end
	return ""
end
function Deliver5(npc,player,type,mapKeyname,level,ingot,x,y)
	type = tonumber(type)
	level = tonumber(level)
	ingot = tonumber(ingot)
	x = tonumber(x)
	y = tonumber(y)
	local r = 0
	
	local playerLevel = lualib:Level(player)
	if playerLevel < level then
		return "��ĵȼ�δ�ﵽҪ����"..level.."�������ϲ�����ѽ���          #IMAGE<ID:1902700019>#<@main *01* [����]>"
	end
	if not lualib:Player_SubIngot(player,ingot,false,"��Ԫ��������","���д���Ա") then
		return "��Ľ�Ҳ��㣬���ܴ��ͣ���Ҫ"..ingot.."Ԫ������"
	end
	lualib:Player_MapMoveXY(player,mapKeyname,x,y,r)
	if type == 1 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#Ӣ�ۣ�"..lualib:Name(player).."��������50Ԫ�������ˣ��������㣻��ӭ��ļ���","")
	elseif type == 2 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#Ӣ�ۣ�"..lualib:Name(player).."�������ˣ������㣻��ӭ��ļ���","")
	elseif type == 3 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#Ӣ�ۣ�"..lualib:Name(player).."�������ˣ�����ħѨ����ӭ��ļ���","")
	elseif type == 4 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#Ӣ�ۣ�"..lualib:Name(player).."�������ˣ���ħ��̳����ӭ��ļ���","")
	elseif type == 5 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#Ӣ�ۣ�"..lualib:Name(player).."��������200Ԫ�������ˣ�������һ�㣻��ӭ��ļ���","")
	elseif type == 6 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#Ӣ�ۣ�"..lualib:Name(player).."�������ˣ���ԴѪ·����ӭ��ļ���","")
           elseif type == 7 then
                     lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#Ӣ�ۣ�"..lualib:Name(player).."��������100Ԫ�������ˣ�����һ�㣻��ӭ��ļ���","")
          elseif type == 8 then
                     lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#Ӣ�ۣ�"..lualib:Name(player).."��������100Ԫ�������ˣ��������磻��ӭ��ļ���","")
          elseif type == 9 then
                     lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#Ӣ�ۣ�"..lualib:Name(player).."��ͨ�����д��ͽ����˷�ʦ�б�����ͼ����ӭ��ļ���","")
          elseif type == 10 then
                     lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#Ӣ�ۣ�"..lualib:Name(player).."�������� ɢ�˴򱦡�����ͼBOSS��Сʱ���ˢ��һ�� С�ֱ�ҩ �ʺ�ɢ����Ҵ򱦣���ӭ��ļ���","")
          elseif type == 11 then
                     lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#Ӣ�ۣ�"..lualib:Name(player).."��������200Ԫ�������ˣ�����һ�㣻��ӭ��ļ���","")
       end	
	return ""
end
function jump(npc,player)
	local ret = lualib:Player_MapMoveXY(player,"�Ŵ�ׯ԰",97,90,0)
	
	if ret ~= true then
		return "����ͼʧ��"
	end
	return ""
end
function web(npc, player)
    local name = lualib:Player_GetStrProp(player,  lua_role_user_name)
    local userid = lualib:Player_GetAccountID(player)
    local grpid = lualib:GetGroupId()
    local msg = lualib:WebBoxEx(player, "��������֤", "http://passport.173uu.com/verifygame/index.html?uid="..userid">http://passport.173uu.com/verifygame/index.html?uid="..userid, "")
	lualib:SysMsg_SendWebPage(player,msg)
    return ""
end