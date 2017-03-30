local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(npc,player)
	local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#��С��#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	msg = msg.."#IMAGE1902700017#<@dongjie *01*������ᶳ��>\n \n"
	msg = msg.."#IMAGE1902700017#<@lingqu *01*��ȡ��ʧ���������>\n \n"
	msg = msg .. "                                                   #OFFSET<X:0,Y:5>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@likai *01*[�ر�]>\n"
	return msg
end

function lingqu(npc,player)
	local msg = ""
	msg = "�����Ӧ��������߽�����ȡ\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>#��C��\n"
	msg = msg.."#OFFSET<X:0,Y:0>#<@item#�þ������ߵıʼ� *01*��ȡ���ر����ػ��˵ıʼǡ�>\n"
	msg = msg.."#OFFSET<X:0,Y:0>#��H��\n"
	msg = msg.."#OFFSET<X:0,Y:0>#<@item#����֮�� *01*��ȡ������֮�顿>\n"
	msg = msg.."#OFFSET<X:0,Y:0>#��L��\n"
	msg = msg.."#OFFSET<X:0,Y:0>#<@item#��ɫ��ʯ *01*��ȡ����ɫ��ʯ��>\n"
	msg = msg.."#OFFSET<X:0,Y:0>#��M��\n"
	msg = msg.."#OFFSET<X:0,Y:0>#<@item#ĸ�׵�˼�� *01*��ȡ��ĸ�׵�˼�>\n"
	msg = msg.."#OFFSET<X:0,Y:0>#<@item#�������ߵıʼ� *01*��ȡ��ħ�����ߵıʼǡ�>\n"
	msg = msg.."#OFFSET<X:0,Y:0>#��X��\n"
	msg = msg.."#OFFSET<X:0,Y:0>#<@item#�ǹ���� *01*��ȡ���ǹ���á�>\n"
	msg = msg.."#OFFSET<X:0,Y:0>#<@item#ѱ��ʦ�Ļ���� *01*��ȡ��ѱ��ʦ�Ļ������>\n"
	msg = msg.."\n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	return msg
end



function item(npc,player, item_name)
	local bag_kg = lualib:Player_GetBagFree(player)
	local Item_num = lualib:ItemCountByKey(player, item_name, true, true, true, 2)
	
	if Item_num ~= 0 then return "���Ѿ�ӵ��������ߣ��޷��ٴ���ȡ\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@lingqu *01*�����ء�>"
	elseif  bag_kg	~= 0 then lualib:AddItem(player, item_name, 1, true, "��ȡ�������", "��ȡ�������")
		return "��ȡ������߳ɹ����´οɱ��ٶ���Ŷ\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@lingqu *01*�����ء�>"
	else
		local msg = "�㱳���ո���1���޷���ȡ\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@lingqu *01*�����ء�>"
		return msg
	end
end


function likai(npc,player)
	return ""
end

 local exp_time = {
					{"1.5������", 1, {"1.5������", "1.5������24Сʱ"}, "1.5_exp", 99},
					{"˫������", 2, {"˫������", "˫������24Сʱ"}, "2_exp", 198},
					{"��������", 3, {"��������", "��������24Сʱ"}, "3_exp", 396},
				}

function dongjie(npc, player)
	local msg = [["��ѡ��������Ҫ�Ĳ�����"
	#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#
	
	#IMAGE<ID:1902700017>#<@take_exp#%s *01*��ȡ1.5������>   #IMAGE<ID:1902700017>#<@take_exp#%s *01*��ȡ˫������>   #IMAGE<ID:1902700017>#<@take_exp#%s *01*��ȡ��������>
	
	#IMAGE<ID:1902700017>#<@save_exp#%s *01*�洢1.5������>   #IMAGE<ID:1902700017>#<@save_exp#%s *01*�洢˫������>   #IMAGE<ID:1902700017>#<@save_exp#%s *01*�洢��������>
	#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#        
	
	#IMAGE1902700034#<@likai *01*�뿪>
	]]
	msg = string.format(msg, 1, 2, 3, 1, 2, 3)
	return msg
end


function goumai(npc, player)
	local msg = "��ѡ����ı�����\n \n"
	msg = msg.."#IMAGE<ID:1902700017>#<@take_exp#1#1 *01*����1.5������>   #IMAGE<ID:1902700017>#<@take_exp#2#1 *01*����˫������>   #IMAGE<ID:1902700017>#<@take_exp#3#1 *01*����3������>\n \n"
	msg = msg.."#IMAGE<ID:1902700017>#<@likai *01*�Ժ���˵>\n"
	return msg
end



function save_exp(npc, player, types)
	local types = tonumber(types)
	local times = 0
	for i = 1, #exp_time[types][3] do
		if lualib:HasBuff(player, exp_time[types][3][i]) == true then
			local b_time = lualib:GetBuffTime(player, exp_time[types][3][i])
			if b_time >= 90 then  
				times = times + b_time - 10
				lualib:DelBuff(player, exp_time[types][3][i])
				break
			else
				return "�����ϵ�"..exp_time[types][1].."����90�룬���ܴ洢��"
			end
		end
	end
	
	if times == 0 then 
		return "�������û��"..exp_time[types][1].."״̬������洢!"
	end
	
	local save_time = lualib:GetInt(player, exp_time[types][4]) + times
	lualib:SetInt(player, exp_time[types][4], save_time)
	
	local strTime = timeCom(player, save_time)
	return "�洢"..exp_time[types][1].."�ɹ����㵱ǰ�洢��"..exp_time[types][1].."Ϊ"..strTime.."����Ҫ�Ŀ�����ʱ��ȡ��"
end
	
function take_exp(npc, player, types, subType)
	local msg = ""
	local types = tonumber(types)
	local subType = tonumber(subType)
	local a = lualib:GetInt(player, exp_time[types][4])
	if a < 60 or subType == 1 then 
		msg = msg.."�͹٣���û�д洢����ʱ��Ŷ��\n \n"
		msg = msg.."#IMAGE1902700034#<@likai *01*�뿪>"
	else
		msg = "����ǰ�洢��"..exp_time[types][1].."Ϊ"..timeCom(player, a)
		msg = msg.."\n \n<@tiqu#"..types.." *01*��Ҫ��ȡ>\n"
		msg = msg.."<@likai *01*�Ժ���˵>"
	end
	return msg
end


function tiqu(npc, player, types)
	lualib:SysMsg_SendInputDlg(player, 10, "��������ȡ��ʱ��(����)", 45, 14, "EnterHot", types)
	return ""
end


function EnterHot(id, player, time_gen, types)
	local types = tonumber(types) 
	local time_gen = tonumber(time_gen)
	if time_gen == nil or time_gen < 1 or time_gen%1 ~= 0 then
		msg = "��������ڵ���1������ʱ�䣡\n \n"
		msg = msg.."<@main *01*����>"
		return
	end
	
	local gen2 = time_gen * 60
	local ExpTime = lualib:GetInt(player, exp_time[types][4])
	local msg = ""
	local c = 0
	
	if gen2 > ExpTime then
		msg = "��Ĵ洢ʱ�䲻��"..time_gen.."���ӣ��޷���ȡ\n \n"
		msg = msg.."<@main *01*����>"
		return 
	else
		for i = 1, #exp_time do
			for j = 1, #exp_time[i][3] do
				if lualib:HasBuff(player, exp_time[i][3][j]) == true then
					if exp_time[types][2] < exp_time[i][2] then
						msg = "���������и��߱����ľ���״̬���޷���ȡ��\n \n"
						msg = msg.."<@main *01*����>"
						return
					elseif exp_time[types][2] > exp_time[i][2] then
						msg = "�������������������ľ���״̬����ȡ�󽫻��滻����ȷ����ȡ��\n \n"
						msg = msg.."<@tihuan#"..types.."#"..gen2.."#"..ExpTime.." *01*ȷ����ȡ>"
						return
					end
				end
			end
		end
	
		for i = 1, #exp_time[types][3] do
			local b_time = lualib:GetBuffTime(player, exp_time[types][3][i])
			c = c + b_time
			lualib:DelBuff(player, exp_time[types][3][i])
		end
		
		local d = c + gen2
		ExpTime = ExpTime - gen2 - 10
		lualib:SetInt(player, exp_time[types][4], ExpTime)
		lualib:AddBuff(player, exp_time[types][3][1], d)
		msg = "��ȡ"..exp_time[types][1].."�ɹ���"
	end
	return
end

function tihuan(npc, player, types, gen2, ExpTime)
	local types = tonumber(types)
	local gen2 = tonumber(gen2)
	local ExpTime = tonumber(ExpTime)
	local c = 0
	for i = 1, #exp_time[types][3] do
		local b_time = lualib:GetBuffTime(player, exp_time[types][3][i])
		local c = c + b_time
	end
	
	for i = 1, #exp_time do
		for j = 1, #exp_time[i][3] do
			lualib:DelBuff(player, exp_time[i][3][j])
		end
	end
	
	local d = c + gen2
	ExpTime = ExpTime - gen2 - 10
	lualib:SetInt(player, exp_time[types][4], ExpTime)
	lualib:AddBuff(player, exp_time[types][3][1], d)
	local msg = "��ȡ"..exp_time[types][1].."�ɹ���"
	return msg
end



function timeCom(player, save_time)
	local hour   = (save_time - (save_time % 3600)) / 3600
	local minute = (save_time - hour * 3600 - (save_time % 60)) / 60
	local strTime = hour .. "Сʱ" .. minute .. "����"
	return strTime
end

function buy(npc, player, types, buytime)
	local types = tonumber(types)
	local buytime = tonumber(buytime)
	local yb = exp_time[types][5] * buytime
	
	local msg = "������"..buytime.."Сʱ"..exp_time[types][1].."����Ҫ"..yb.."Ԫ������ȷ��������\n \n"
	msg = msg.."<@buy2#"..types.."#"..buytime.." *01*ȷ������>\n"
	msg = msg.."<@likai# *01*�Ժ���˵>"
	return msg
end

function buy2(npc, player, types, buytime)
	local types = tonumber(types)
	local buytime = tonumber(buytime)
	local yb = exp_time[types][5] * buytime
	
	if not lualib:Player_IsIngotEnough(player, yb, false) then return "���Ԫ������"..yb.."���޷�����" end
	if lualib:Player_SubIngot(player, yb, false, "����洢����ʱ��", "����洢����ʱ��") == false then
		return "�۳�Ԫ��ʧ��"
	end
	
	local times = lualib:GetInt(player, exp_time[types][4]) + 3600 * buytime
	local strTime = timeCom(player, times)
	lualib:SetInt(player, exp_time[types][4], times)
	local msg = "��������"..buytime.."Сʱ"..exp_time[types][1].."���뷵����ȡ�洢ʱ�䣡\n \n"
	msg = msg.."<@main *01*����>"
	return msg
end