-------------------------------------------���ͺ���--------------------------------------------------------
function MapMove(npc, player, map_key_name, x, y, r,jinbi,leix)

	if player == "" then
		player = npc
	end
	
	local msg=""
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
	jinbi = tonumber(jinbi)

	if jinbi ~= nil then --�ж��Ƿ�ʹ�ð󶨽��
		if not lualib:Player_IsGoldEnough(player,jinbi,true) then
			if not lualib:Player_IsGoldEnough(player,jinbi,false) then
				msg = msg.."��Ҳ��㣬�Ҳ���Ϊ�����\n\n"
				msg = msg.."<@likai *01*���뿪��>\n"
				return msg
			else
				lualib:Player_SubGold(player,jinbi,false,"���ͷ�",npc) --���İ󶨽��
			end
		else
			lualib:Player_SubGold(player,jinbi,true,"���ͷ�",npc) --���Ľ��
		end
	end
	
	if not lualib:Player_MapMoveXY(player,map_key_name, x, y, r) then
		return "����ͼʧ��"
    end
	
	return ""
end

-------------------------------------------�رնԻ�����--------------------------------------------------------
function likai(npc,player)
	return ""
end

-------------------------------------------����������Ʒ���󶨣�--------------------------------------------------------
function buy(player,type,ingot,itemname,number,bind,opr,description,target,Repeat) --����3���������� ����4���������� ����5����Ʒ���� ����6����Ʒ���� ����7���Ƿ�� ����8����ӻ���ɾ�� ����9����ӵ���ԭ�� ����10�������� ����11���Ƿ���ʾ�ٴι���
	local backup = "#"..type.."#"..ingot .."#"..itemname.."#"..number.."#"..bind.."#"..opr.."#"..description.."#"..target.."#"..Repeat

	ingot = tonumber(ingot)
	number = tonumber(number)
	
	if lualib:Player_GetBagFree(player) < number then
		return "������λ���㣡����ʧ�ܣ�\n \n<@likai *01*�뿪>\n"
	end
	
	if type == "yuanbao" then
		if lualib:Player_IsIngotEnough(player,ingot,false) == true then
			lualib:Player_SubIngot(player,ingot,false,description,player)
		end
	elseif type == "jinbi" then
		if lualib:Player_IsGoldEnough(player,ingot,false) == true then
			lualib:Player_SubGold(player,ingot,false,description,player)
		end
	else
		if type == "yuanbao" then
			return "����ʧ�ܣ�û���㹻��Ԫ����\n \n <@likai *01*�뿪>\n"
		elseif type == "jinbi" then
			return "����ʧ�ܣ�û���㹻�Ľ�ң�\n \n <@likai *01*�뿪>\n"
		end
	end
	local name_table = {itemname}
	local count_table = {number}
	local bind_table = {tonumber(bind)}
	local opr_table = {tonumber(opr)}
	if target == "player" then
		target = player
	end
	
	if lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, description,target) == true then
		if Repeat == "0" then
			return itemname .. "����ɹ���\n \n<@likai *01*�뿪>\n"
		else
			lualib:NPCTalk(player,itemname .. "����ɹ���\n \n<@buy" .. backup .. " *01*��������>\n<@likai *01*�뿪>\n")
			return ""
		end
	else
		return itemname .. "����ʧ�ܣ�\n \n<@likai *01*�뿪>\n"
	end
end

-------------------------------------------����������Ʒ�󶨣�--------------------------------------------------------
function bangbuy(player,type,ingot,itemname,number,bind,opr,description,target,Repeat) --����3���������� ����4���������� ����5����Ʒ���� ����6����Ʒ���� ����7���Ƿ�� ����8����ӻ���ɾ�� ����9����ӵ���ԭ�� ����10�������� ����11���Ƿ���ʾ�ٴι���
	local backup = "#"..type.."#"..ingot .."#"..itemname.."#"..number.."#"..bind.."#"..opr.."#"..description.."#"..target.."#"..Repeat
	ingot = tonumber(ingot)
	number = tonumber(number)
	
	if lualib:Player_GetBagFree(player) < number then
		return "������λ���㣡����ʧ�ܣ�\n \n<@likai *01*�뿪>\n"
	end
	
	if type == "yuanbao" then
		if lualib:Player_IsIngotEnough(player,ingot,true) == true then
			lualib:Player_SubIngot(player,ingot,true,description,player)
		end
	elseif type == "jinbi" then
		if lualib:Player_IsGoldEnough(player,ingot,true) == true then
			lualib:Player_SubGold(player,ingot,true,description,player)
		end
	else
		if type == "yuanbao" then
			return "����ʧ�ܣ�û���㹻�İ�Ԫ����\n \n <@likai *01*�뿪>\n"
		elseif type == "jinbi" then
			return "����ʧ�ܣ�û���㹻�İ󶨽�ң�\n \n <@likai *01*�뿪>\n"
		end
	end
	local name_table = {itemname}
	local count_table = {number}
	local bind_table = {1}
	local opr_table = {tonumber(opr)}
	if target == "player" then
		target = player
	end
	
	if lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, description,target) == true then
		if Repeat == "0" then
			return itemname .. "����ɹ���\n \n<@likai *01*�뿪>\n"
		else
			lualib:NPCTalk(player,itemname .. "����ɹ���\n \n<@bangbuy" .. backup .. " *01*��������>\n<@likai *01*�뿪>\n")
			return ""
		end
	else
		return itemname .. "����ʧ�ܣ�\n \n<@likai *01*�뿪>\n"
	end
end

-------------------------------------------����������Ʒ�󶨺Ͳ��󶨣�--------------------------------------------------------
function bangorbuy(player,type,ingot,itemname,number,bind,opr,description,target,Repeat) --����3���������� ����4���������� ����5����Ʒ���� ����6����Ʒ���� ����7���Ƿ�� ����8����ӻ���ɾ�� ����9����ӵ���ԭ�� ����10�������� ����11���Ƿ���ʾ�ٴι���
	local backup = "#"..type.."#"..ingot .."#"..itemname.."#"..number.."#"..bind.."#"..opr.."#"..description.."#"..target.."#"..Repeat
	
	ingot = tonumber(ingot)
	number = tonumber(number)

	if lualib:Player_GetBagFree(player) < number then
		return "������λ���㣡����ʧ�ܣ�\n \n<@likai *01*�뿪>\n"
	end
	
	if type == "yuanbao" then
		if lualib:Player_IsIngotEnough(player,ingot,true) == true then
			lualib:Player_SubIngot(player,ingot,true,description,player)
		elseif lualib:Player_IsIngotEnough(player,ingot,false) == true then
			lualib:Player_SubIngot(player,ingot,false,description,player)
		end
	elseif type == "jinbi" then
		if lualib:Player_IsGoldEnough(player,ingot,true) == true then
			lualib:Player_SubGold(player,ingot,true,description,player)
		elseif lualib:Player_IsGoldEnough(player,ingot,false) == true then
			lualib:Player_SubGold(player,ingot,false,description,player)
		end
	else
		if type == "yuanbao" then
			return "����ʧ�ܣ�û���㹻��Ԫ����\n \n <@likai *01*�뿪>\n"
		elseif type == "jinbi" then
			return "����ʧ�ܣ�û���㹻�Ľ�ң�\n \n <@likai *01*�뿪>\n"
		end
	end
	local name_table = {itemname}
	local count_table = {number}
	local bind_table = {1}
	local opr_table = {tonumber(opr)}
	if target == "player" then
		target = player
	end
	
	if lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, description,target) == true then
		if Repeat == "0" then
			return itemname .. "����ɹ���\n \n<@likai *01*�뿪>\n"
		else
			lualib:NPCTalk(player,itemname .. "����ɹ���\n \n<@bangorbuy" .. backup .. " *01*��������>\n<@likai *01*�뿪>\n")
			return ""
		end
	else
		return itemname .. "����ʧ�ܣ�\n \n<@likai *01*�뿪>\n"
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

-------------------------------------------����ʱ��ʾ--------------------------------------------------------
function daojishixianshi(n1)
	local daojishi = {}
	daojishi["hour"] = math.modf(n1/3600)
	daojishi["min"] = math.modf(((n1 - daojishi["hour"]*3600))/60)
	daojishi["sec"] = n1 - (daojishi["hour"]*3600 + daojishi["min"]*60)
	return daojishi
end

-------------------------------------------��ҩ��Ч--------------------------------------------------------
function danyaoshengxiao(player)
	if lualib:Player_GetIntProp(player,lua_role_job) == 1 then
		if lualib:GetInt(player,"yongjiudanyaocishu1") > 0 then
			 lualib:Player_RunGMCmd(player,"sa","29 "..lualib:GetInt(player,"yongjiudanyaocishu1")*2)
		elseif lualib:GetInt(player,"yongjiudanyaocishu2") > 0 then
			 lualib:Player_RunGMCmd(player,"sa","30 "..lualib:GetInt(player,"yongjiudanyaocishu2")*12)
		elseif lualib:GetInt(player,"yongjiudanyaocishu3") > 0 then
			 lualib:Player_RunGMCmd(player,"sa","31 "..lualib:GetInt(player,"yongjiudanyaocishu3")*5)
		end
	elseif lualib:Player_GetIntProp(player,lua_role_job) == 2 then
		if lualib:GetInt(player,"yongjiudanyaocishu1") > 0 then
			 lualib:Player_RunGMCmd(player,"sa","29 "..lualib:GetInt(player,"yongjiudanyaocishu1")*10)
		elseif lualib:GetInt(player,"yongjiudanyaocishu2") > 0 then
			 lualib:Player_RunGMCmd(player,"sa","30 "..lualib:GetInt(player,"yongjiudanyaocishu2")*2)
		elseif lualib:GetInt(player,"yongjiudanyaocishu3") > 0 then
			 lualib:Player_RunGMCmd(player,"sa","31 "..lualib:GetInt(player,"yongjiudanyaocishu3")*5)
		end
	elseif lualib:Player_GetIntProp(player,lua_role_job) == 3 then
		if lualib:GetInt(player,"yongjiudanyaocishu1") > 0 then
			 lualib:Player_RunGMCmd(player,"sa","29 "..lualib:GetInt(player,"yongjiudanyaocishu1")*3)
		elseif lualib:GetInt(player,"yongjiudanyaocishu2") > 0 then
			 lualib:Player_RunGMCmd(player,"sa","30 "..lualib:GetInt(player,"yongjiudanyaocishu2")*3)
		elseif lualib:GetInt(player,"yongjiudanyaocishu3") > 0 then
			 lualib:Player_RunGMCmd(player,"sa","31 "..lualib:GetInt(player,"yongjiudanyaocishu3")*2)
		end
	end
end