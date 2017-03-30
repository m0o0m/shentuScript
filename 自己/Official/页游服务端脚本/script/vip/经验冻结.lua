 local exp_time = {
					{"1.5������", 1, {"1.5������", "1.5������24Сʱ"}, "1.5_exp", 99},
					{"˫������", 2, {"˫������", "˫������24Сʱ"}, "2_exp", 198},
					{"��������", 3, {"��������", "��������24Сʱ"}, "3_exp", 396},
				}

function main(player, vipLevel)
	local msg = [["�𾴵�VIP��ң���ѡ��������Ҫ�Ĳ�����"
	#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#
	
	#IMAGE<ID:1902700017>#<@take_exp#%s *01*��ȡ1.5������>            #IMAGE<ID:1902700017>#<@take_exp#%s *01*��ȡ˫������>            #IMAGE<ID:1902700017>#<@take_exp#%s *01*��ȡ��������>
	
	#IMAGE<ID:1902700017>#<@save_exp#%s *01*�洢1.5������>            #IMAGE<ID:1902700017>#<@save_exp#%s *01*�洢˫������>            #IMAGE<ID:1902700017>#<@save_exp#%s *01*�洢��������>
	#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#
	
	#IMAGE<ID:1902700017>#<@goumai *01*�����鱶��ʱ��>            
	                                                                    #IMAGE<ID:1902700017>#<@leave *01*�Ժ���˵>
	]]
	msg = string.format(msg, 1, 2, 3, 1, 2, 3)
	lualib:NPCTalk(player, msg)
	return ""
end



function leave(palyer)
	return ""
end

function goumai(player)
	local msg = "��ѡ����ı�����\n \n"
	msg = msg.."#IMAGE<ID:1902700017>#<@take_exp#1#1 *01*����1.5������>            #IMAGE<ID:1902700017>#<@take_exp#2#1 *01*����˫������>            #IMAGE<ID:1902700017>#<@take_exp#3#1 *01*����3������>\n \n"
	msg = msg.."#IMAGE<ID:1902700017>#<@leave *01*�Ժ���˵>\n"
	return msg
end



function save_exp(player, types)
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
	
function take_exp(player, types, subType)
	local msg = ""
	local types = tonumber(types)
	local subType = tonumber(subType)
	local a = lualib:GetInt(player, exp_time[types][4])
	if a < 60 or subType == 1 then 
		msg = [[��ѡ����Ҫ����ľ��鱶�ʣ�
		
		<@buy#%s#%s *01* ����1Сʱ%s>          <@buy#%s#%s *01* ����2Сʱ%s>          <@buy#%s#%s *01* ����5Сʱ%s>
		
		<@leave *01* �Ժ���˵>
		]]
		msg = string.format(msg, types, 1, exp_time[types][1], types, 2, exp_time[types][1], types, 5, exp_time[types][1])
	else
		msg = "����ǰ�洢��"..exp_time[types][1].."Ϊ"..timeCom(player, a)
		msg = msg.."\n \n<@tiqu#"..types.." *01*��Ҫ��ȡ>\n"
		msg = msg.."<@leave *01*�Ժ���˵>"
	end
	return msg
end


function tiqu(player, types)
	lualib:SysMsg_SendInputDlg(player, 10, "��������ȡ��ʱ��(����)", 45, 14, "EnterHot", types)
	return ""
end


function EnterHot(id, player, time_gen, types)
	local types = tonumber(types) 
	local time_gen = tonumber(time_gen)
	if time_gen == nil or time_gen < 1 or time_gen%1 ~= 0 then
		msg = "��������ڵ���1������ʱ�䣡\n \n"
		msg = msg.."<@main *01*����>"
		lualib:NPCTalk(player, msg)
		return
	end
	
	local gen2 = time_gen * 60
	local ExpTime = lualib:GetInt(player, exp_time[types][4])
	local msg = ""
	local c = 0
	
	if gen2 > ExpTime then
		msg = "��Ĵ洢ʱ�䲻��"..time_gen.."���ӣ��޷���ȡ\n \n"
		msg = msg.."<@main *01*����>"
		lualib:NPCTalk(player, msg)
		return 
	else
		for i = 1, #exp_time do
			for j = 1, #exp_time[i][3] do
				if lualib:HasBuff(player, exp_time[i][3][j]) == true then
					if exp_time[types][2] < exp_time[i][2] then
						msg = "���������и��߱����ľ���״̬���޷���ȡ��\n \n"
						msg = msg.."<@main *01*����>"
						lualib:NPCTalk(player, msg)
						return
					elseif exp_time[types][2] > exp_time[i][2] then
						msg = "�������������������ľ���״̬����ȡ�󽫻��滻����ȷ����ȡ��\n \n"
						msg = msg.."<@tihuan#"..types.."#"..gen2.."#"..ExpTime.." *01*ȷ����ȡ>"
						lualib:NPCTalk(player, msg)
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
		lualib:NPCTalk(player, msg)
	end
	return
end

function tihuan(player, types, gen2, ExpTime)
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

function buy(player, types, buytime)
	local types = tonumber(types)
	local buytime = tonumber(buytime)
	local yb = exp_time[types][5] * buytime
	
	local msg = "������"..buytime.."Сʱ"..exp_time[types][1].."����Ҫ"..yb.."Ԫ������ȷ��������\n \n"
	msg = msg.."<@buy2#"..types.."#"..buytime.." *01*ȷ������>\n"
	msg = msg.."<@leave# *01*�Ժ���˵>"
	return msg
end

function buy2(player, types, buytime)
	local types = tonumber(types)
	local buytime = tonumber(buytime)
	local yb = exp_time[types][5] * buytime
	
	if not lualib:Player_IsIngotEnough(player, yb, false) then return "���Ԫ������"..yb.."���޷�����" end
	if lualib:Player_SubIngot(player, yb, false, "����洢����ʱ��", "����洢����ʱ��") == false then
		return "Ԫ���۳�ʧ��"
	end
	
	local times = lualib:GetInt(player, exp_time[types][4]) + 3600 * buytime
	local strTime = timeCom(player, times)
	lualib:SetInt(player, exp_time[types][4], times)
	local msg = "��������"..buytime.."Сʱ"..exp_time[types][1].."���뷵����ȡ�洢ʱ�䣡\n \n"
	msg = msg.."<@main *01*����>"
	return msg
end
