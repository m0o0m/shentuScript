-------------------------------------------��ɽ��Ѩ��������--------------------------------------------------------
function chumojiemian1(npc,player)

	if player == nil then
		player = npc
	end
--[[lualib:SetInt(player,"yaoshanzhengfu1",0)
lualib:SetInt(player,"yaoshanzhengfu2",0)
lualib:SetInt(player,"yaoshanzhengfu3",0)
lualib:SetInt(player,"yaoshanzhengfu4",0)
lualib:SetInt(player,"yaoshanzhengfu5",0)
lualib:SetInt(player,"yaoshanzhengfu6",0)
lualib:SetInt(player,"yaoshanzhengfu7",0)
lualib:SetInt(player,"yaoshanzhengfu8",0)
lualib:SetInt(player,"yaoshanzhengfu9",0)
lualib:SetInt(player,"yaoshanzhengfu10",0)
lualib:SetInt(player,"yaoshanzhengfu11",0)
lualib:SetInt(player,"yaoshanzhengfu12",0)
lualib:SetInt(player,"yaoshanzhengfu13",0)
lualib:SetInt(player,"yaoshanzhengfu14",0)
lualib:SetInt(player,"yaoshanzhengfudian",0)
lualib:SetInt(player,"chumolingqu110",0)
lualib:SetInt(player,"chumolingqu120",0)
lualib:SetInt(player,"chumolingqu130",0)
lualib:SetInt(player,"chumolingqu140",0)
lualib:SetInt(player,"chumolingqu150",0)
lualib:SetInt(player,"chumolingqu160",0)
lualib:SetInt(player,"chumolingqu170",0)
lualib:SetInt(player,"chumolingqu180",0)
lualib:SetInt(player,"chumolingqu190",0)
lualib:SetInt(player,"chumolingqu1100",1)--]]

	yaoshanzhengfudian = 4/30*lualib:GetInt(player,"yaoshanzhengfu1")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu2")
				+6/30*lualib:GetInt(player,"yaoshanzhengfu3")
				+7/30*lualib:GetInt(player,"yaoshanzhengfu4")
				+7/30*lualib:GetInt(player,"yaoshanzhengfu5")
				+7/30*lualib:GetInt(player,"yaoshanzhengfu6")
				+8/30*lualib:GetInt(player,"yaoshanzhengfu7")
				+8/30*lualib:GetInt(player,"yaoshanzhengfu8")
				+8/30*lualib:GetInt(player,"yaoshanzhengfu9")
				+10/3*lualib:GetInt(player,"yaoshanzhengfu10")
				+10/1*lualib:GetInt(player,"yaoshanzhengfu11")
				--+6/2*lualib:GetInt(player,"yaoshanzhengfu12")
				+10/10*lualib:GetInt(player,"yaoshanzhengfu13")
				+10/1*lualib:GetInt(player,"yaoshanzhengfu14")
				
	if yaoshanzhengfudian >= 10 and string.len(tostring(yaoshanzhengfudian)) > 5 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		yaoshanzhengfudxs = string.sub(yaoshanzhengfudian,1,5)
	elseif yaoshanzhengfudian < 10 and string.len(tostring(yaoshanzhengfudian)) > 4 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		yaoshanzhengfudxs = string.sub(yaoshanzhengfudian,1,4)
	else
		yaoshanzhengfudxs = yaoshanzhengfudian
	end

	local msg = "#COLORCOLOR_RED#������-��ɽ��Ѩ��#COLOREND#"
	msg = msg .. "       #COLORCOLOR_ORANGE#������ " .. yaoshanzhengfudxs .. "%#COLOREND#       #IMAGE<ID:1902700031>#<@chumolingqu1 *01*��ȡ���Ƚ���>\n \n"
	msg = msg .. "#COLORCOLOR_GREENG#����Ŀ��                      ״��                  ռ����#COLOREND#\n"
	if lualib:GetInt(player,"yaoshanzhengfu1") < 30 then
		msg = msg .. "����30ֻʬū                  " .. lualib:GetInt(player,"yaoshanzhengfu1") .. "/30                    4%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����30ֻʬū                  " .. lualib:GetInt(player,"yaoshanzhengfu1") .. "/30                    4%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"yaoshanzhengfu2") < 30 then
		msg = msg .. "����30ֻ����๤              " .. lualib:GetInt(player,"yaoshanzhengfu2") .. "/30                    5%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����30ֻ����๤              " .. lualib:GetInt(player,"yaoshanzhengfu2") .. "/30                    5%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"yaoshanzhengfu3") < 30 then
		msg = msg .. "����30ֻ����๤              " .. lualib:GetInt(player,"yaoshanzhengfu3") .. "/30                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����30ֻ����๤              " .. lualib:GetInt(player,"yaoshanzhengfu3") .. "/30                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"yaoshanzhengfu4") < 30 then
		msg = msg .. "����30ֻ��â                  " .. lualib:GetInt(player,"yaoshanzhengfu4") .. "/30                    7%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����30ֻ��â                  " .. lualib:GetInt(player,"yaoshanzhengfu4") .. "/30                    7%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"yaoshanzhengfu5") < 30 then
		msg = msg .. "����30ֻ��ө                  " .. lualib:GetInt(player,"yaoshanzhengfu5") .. "/30                    7%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����30ֻ��ө                  " .. lualib:GetInt(player,"yaoshanzhengfu5") .. "/30                    7%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"yaoshanzhengfu6") < 30 then
		msg = msg .. "����30ֻħө                  " .. lualib:GetInt(player,"yaoshanzhengfu6") .. "/30                    7%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����30ֻħө                  " .. lualib:GetInt(player,"yaoshanzhengfu6") .. "/30                    7%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"yaoshanzhengfu7") < 30 then
		msg = msg .. "����30ֻ���ʬū              " .. lualib:GetInt(player,"yaoshanzhengfu7") .. "/30                    8%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����30ֻ���ʬū              " .. lualib:GetInt(player,"yaoshanzhengfu7") .. "/30                    8%#COLOREND#\n"
	end
	
	
	if lualib:GetInt(player,"yaoshanzhengfu8") < 30 then
		msg = msg .. "����30ֻ����ʬū              " .. lualib:GetInt(player,"yaoshanzhengfu8") .. "/30                    8%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����30ֻ����ʬū              " .. lualib:GetInt(player,"yaoshanzhengfu8") .. "/30                    8%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"yaoshanzhengfu9") < 30 then
		msg = msg .. "����30ֻʬū��ͷ              " .. lualib:GetInt(player,"yaoshanzhengfu9") .. "/30                    8%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����30ֻʬū��ͷ              " .. lualib:GetInt(player,"yaoshanzhengfu9") .. "/30                    8%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"yaoshanzhengfu10") < 3 then
		msg = msg .. "����3ֻ��Ӣ����               " .. lualib:GetInt(player,"yaoshanzhengfu10") .. "/3                    10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����3ֻ��Ӣ����               " .. lualib:GetInt(player,"yaoshanzhengfu10") .. "/3                    10%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"yaoshanzhengfu11") < 1 then
		msg = msg .. "����1ֻǧ����ħ               " .. lualib:GetInt(player,"yaoshanzhengfu11") .. "/1                    10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����1ֻǧ����ħ               " .. lualib:GetInt(player,"yaoshanzhengfu11") .. "/1                    10%#COLOREND#\n"
	end
	
	--[[if lualib:GetInt(player,"yaoshanzhengfu12") < 2 then
		msg = msg .. "��2������                   " .. lualib:GetInt(player,"yaoshanzhengfu12") .. "/2                     6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#��2������                   " .. lualib:GetInt(player,"yaoshanzhengfu12") .. "/2                     6%#COLOREND#\n"
	end--]]
	
	if lualib:GetInt(player,"yaoshanzhengfu13") < 10 then
		msg = msg .. "�ռ�10����ɽ��ʯ              " .. lualib:GetInt(player,"yaoshanzhengfu13") .. "/10                   10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#�ռ�10����ɽ��ʯ              " .. lualib:GetInt(player,"yaoshanzhengfu13") .. "/10                   10%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"yaoshanzhengfu14") < 1 then
		msg = msg .. "�ռ�1���ڰ���ʯ               " .. lualib:GetInt(player,"yaoshanzhengfu14") .. "/1                    10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#�ռ�1���ڰ���ʯ               " .. lualib:GetInt(player,"yaoshanzhengfu14") .. "/1                    10%#COLOREND#\n"
	end
	lualib:NPCTalk(player,msg)
	return ""
end

-------------------------------------------��ɽ��Ѩ��ȡ����--------------------------------------------------------
function chumolingqu1(player)
	local msg = "#COLORCOLOR_RED#������-��ɽ��Ѩ��#COLOREND#"
	msg = msg .. "       #COLORCOLOR_ORANGE#������ " .. yaoshanzhengfudxs .. "%#COLOREND#       #IMAGE<ID:1902700042>#<@chumojiemian1 *01*�鿴��������>\n"
	msg = msg .. "#COLORCOLOR_GREENG#������10%#COLOREND#               ��Ǯ��(10��)            #COLOREND#"
	if lualib:GetInt(player,"chumolingqu110") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. yaoshanzhengfudian .. "#10#��Ǯ��(10��)#1#chumolingqu110#chumolingqu1 *01*��ȡ����>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������20%#COLOREND#               ����ˮ��*2              #COLOREND#"
	if lualib:GetInt(player,"chumolingqu120") == 0 then 
		msg = msg .. "#OFFSET<X:-3,Y:0>#<@chumogeiyu#" .. yaoshanzhengfudian .. "#20#̫��ˮ��#2#chumolingqu120#chumolingqu1 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������30%#COLOREND#               ������(С)*2            #COLOREND#"
	if lualib:GetInt(player,"chumolingqu130") == 0 then 
		msg = msg .. "#OFFSET<X:-2,Y:0>#<@chumogeiyu#" .. yaoshanzhengfudian .. "#30#������(С)#2#chumolingqu130#chumolingqu1 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������40%#COLOREND#               1.5���������*1         #COLOREND#"
	if lualib:GetInt(player,"chumolingqu140") == 0 then 
		msg = msg .. "#OFFSET<X:-4,Y:0>#<@chumogeiyu#" .. yaoshanzhengfudian .. "#40#1.5���������#1#chumolingqu140#chumolingqu1 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:-4,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������50%#COLOREND#               �������(10��)*1        #COLOREND#"
	if lualib:GetInt(player,"chumolingqu150") == 0 then 
		msg = msg .. "#OFFSET<X:-1,Y:0>#<@chumogeiyu#" .. yaoshanzhengfudian .. "#50#�������(10��)#1#chumolingqu150#chumolingqu1 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������60%#COLOREND#               ��ӡ������*3            #COLOREND#"
	if lualib:GetInt(player,"chumolingqu160") == 0 then 
		msg = msg .. "#OFFSET<X:-2,Y:0>#<@chumogeiyu#" .. yaoshanzhengfudian .. "#60#��ӡ������#3#chumolingqu160#chumolingqu1 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������70%#COLOREND#               ��Ԫ��*3                #COLOREND#"
	if lualib:GetInt(player,"chumolingqu170") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. yaoshanzhengfudian .. "#70#��Ԫ��#3#chumolingqu170#chumolingqu1 *01*��ȡ����>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������80%#COLOREND#               �ͼ�ת��ʯ              #COLOREND#"
	if lualib:GetInt(player,"chumolingqu180") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. yaoshanzhengfudian .. "#80#�ͼ�ת��ʯ#1#chumolingqu180#chumolingqu1 *01*��ȡ����>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������90%#COLOREND#               #COLORCOLOR_RED#�м��������*3#COLOREND#          #COLOREND#"
	if lualib:GetInt(player,"chumolingqu190") == 0 then 
		msg = msg .. "#OFFSET<X:-2,Y:0>#<@chumogeiyu#" .. yaoshanzhengfudian .. "#90#�м��������#3#chumolingqu190#chumolingqu1 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������100%#COLOREND#              #COLORCOLOR_RED#35����װ����#COLOREND#           #COLOREND#"
	if lualib:GetInt(player,"chumolingqu1100") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. yaoshanzhengfudian .. "#100#��ɽ��Ѩ����#1#chumolingqu1100#chumolingqu1 *01*��ȡ����>\n"
	else
		--msg = msg .. "<@chumochongling#100#��ɽ��Ѩ����#1 *01*�ٴ���ȡ>\n"
		msg = msg .."#OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "\n#COLORCOLOR_RED#��ʾ�����Դ����������й����������Ѽ����ߵ�Ŀ�ꡣ#COLOREND#"
	lualib:NPCTalk(player,msg)
	return ""
end


-------------------------------------------�������������--------------------------------------------------------
function chumojiemian2(npc,player)

	if player == nil then
		player = npc
	end
--[[lualib:SetInt(player,"tianhuangzhengfu1",0)
lualib:SetInt(player,"tianhuangzhengfu2",0)
lualib:SetInt(player,"tianhuangzhengfu3",0)
lualib:SetInt(player,"tianhuangzhengfu4",0)
lualib:SetInt(player,"tianhuangzhengfu5",0)
lualib:SetInt(player,"tianhuangzhengfu6",0)
lualib:SetInt(player,"tianhuangzhengfu7",0)
lualib:SetInt(player,"tianhuangzhengfu8",0)
lualib:SetInt(player,"tianhuangzhengfu9",0)
lualib:SetInt(player,"tianhuangzhengfu10",0)
lualib:SetInt(player,"tianhuangzhengfu11",0)
lualib:SetInt(player,"tianhuangzhengfu12",0)
lualib:SetInt(player,"tianhuangzhengfu13",0)
lualib:SetInt(player,"tianhuangzhengfu14",0)
lualib:SetInt(player,"tianhuangzhengfudian",0)
lualib:SetInt(player,"chumolingqu210",0)
lualib:SetInt(player,"chumolingqu220",0)
lualib:SetInt(player,"chumolingqu230",0)
lualib:SetInt(player,"chumolingqu240",0)
lualib:SetInt(player,"chumolingqu250",0)
lualib:SetInt(player,"chumolingqu260",0)
lualib:SetInt(player,"chumolingqu270",0)
lualib:SetInt(player,"chumolingqu280",0)
lualib:SetInt(player,"chumolingqu290",0)
lualib:SetInt(player,"chumolingqu2100",1)--]]

	tianhuangzhengfudian = 6/50*lualib:GetInt(player,"tianhuangzhengfu1")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu2")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu3")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu4")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu5")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu6")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu7")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu8")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu9")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu10")
				+10/6*lualib:GetInt(player,"tianhuangzhengfu11")
				+10/1*lualib:GetInt(player,"tianhuangzhengfu12")
				--+5/4*lualib:GetInt(player,"tianhuangzhengfu13")
				+10/20*lualib:GetInt(player,"tianhuangzhengfu14")
				+10/1*lualib:GetInt(player,"tianhuangzhengfu15")
				
	if tianhuangzhengfudian >= 10 and string.len(tostring(tianhuangzhengfudian)) > 5 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		tianhuangzhengfudxs = string.sub(tianhuangzhengfudian,1,5)
	elseif tianhuangzhengfudian < 10 and string.len(tostring(tianhuangzhengfudian)) > 4 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		tianhuangzhengfudxs = string.sub(tianhuangzhengfudian,1,4)
	else
		tianhuangzhengfudxs = tianhuangzhengfudian
	end

	local msg = "#COLORCOLOR_RED#������-�����#COLOREND#"
	msg = msg .. "       #COLORCOLOR_ORANGE#������ " .. tianhuangzhengfudxs .. "%#COLOREND#       #IMAGE<ID:1902700031>#<@chumolingqu2 *01*��ȡ���Ƚ���>\n \n"
	msg = msg .. "#COLORCOLOR_GREENG#����Ŀ��                      ״��                  ռ����#COLOREND#\n"
	if lualib:GetInt(player,"tianhuangzhengfu1") < 50 then
		msg = msg .. "����50ֻɳʯħ                " .. lualib:GetInt(player,"tianhuangzhengfu1") .. "/50                   6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����50ֻɳʯħ                " .. lualib:GetInt(player,"tianhuangzhengfu1") .. "/50                   6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu2") < 50 then
		msg = msg .. "����50ֻ����                  " .. lualib:GetInt(player,"tianhuangzhengfu2") .. "/50                   6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����50ֻ����                  " .. lualib:GetInt(player,"tianhuangzhengfu2") .. "/50                   6#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu3") < 50 then
		msg = msg .. "����50ֻ�޶�                  " .. lualib:GetInt(player,"tianhuangzhengfu3") .. "/50                   6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����50ֻ�޶�                  " .. lualib:GetInt(player,"tianhuangzhengfu3") .. "/50                   6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu4") < 50 then
		msg = msg .. "����50ֻɢ��                  " .. lualib:GetInt(player,"tianhuangzhengfu4") .. "/50                   6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����50ֻɢ��                  " .. lualib:GetInt(player,"tianhuangzhengfu4") .. "/50                   6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu5") < 50 then
		msg = msg .. "����50ֻħ��                  " .. lualib:GetInt(player,"tianhuangzhengfu5") .. "/50                   6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����50ֻħ��                  " .. lualib:GetInt(player,"tianhuangzhengfu5") .. "/50                   6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu6") < 50 then
		msg = msg .. "����50ֻ��ū                  " .. lualib:GetInt(player,"tianhuangzhengfu6") .. "/50                   6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����50ֻ��ū                  " .. lualib:GetInt(player,"tianhuangzhengfu6") .. "/50                   6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu7") < 50 then
		msg = msg .. "����50ֻ��ħ                  " .. lualib:GetInt(player,"tianhuangzhengfu7") .. "/50                   6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����50ֻ��ħ                  " .. lualib:GetInt(player,"tianhuangzhengfu7") .. "/50                   6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu8") < 50 then
		msg = msg .. "����50ֻ�Źֵ���              " .. lualib:GetInt(player,"tianhuangzhengfu8") .. "/50                   6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����50ֻ�Źֵ���              " .. lualib:GetInt(player,"tianhuangzhengfu8") .. "/50                   6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu9") < 50 then
		msg = msg .. "����50ֻ���浶��              " .. lualib:GetInt(player,"tianhuangzhengfu9") .. "/50                   6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����50ֻ���浶��              " .. lualib:GetInt(player,"tianhuangzhengfu9") .. "/50                   6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu10") < 50 then
		msg = msg .. "����50ֻ˫��������            " .. lualib:GetInt(player,"tianhuangzhengfu10") .. "/50                   6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����50ֻ˫��������            " .. lualib:GetInt(player,"tianhuangzhengfu10") .. "/50                   6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu11") < 6 then
		msg = msg .. "����6ֻ��Ӣ����               " .. lualib:GetInt(player,"tianhuangzhengfu11") .. "/6                    10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����6ֻ��Ӣ����               " .. lualib:GetInt(player,"tianhuangzhengfu11") .. "/6                    10%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu12") < 1 then
		msg = msg .. "����1ֻѪ��ʦ                 " .. lualib:GetInt(player,"tianhuangzhengfu12") .. "/1                    10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����1ֻѪ��ʦ                 " .. lualib:GetInt(player,"tianhuangzhengfu12") .. "/1                    10%#COLOREND#\n"
	end
	
	--[[if lualib:GetInt(player,"tianhuangzhengfu13") < 4 then
		msg = msg .. "��4������                   " .. lualib:GetInt(player,"tianhuangzhengfu13") .. "/4                     5%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#��4������                   " .. lualib:GetInt(player,"tianhuangzhengfu13") .. "/4                     5%#COLOREND#\n"
	end--]]
	
	if lualib:GetInt(player,"tianhuangzhengfu14") < 20 then
		msg = msg .. "�ռ�20������ָ��              " .. lualib:GetInt(player,"tianhuangzhengfu14") .. "/20                   10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#�ռ�20������ָ��              " .. lualib:GetInt(player,"tianhuangzhengfu14") .. "/20                   10%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu15") < 1 then
		msg = msg .. "�ռ�1����Ѫ����               " .. lualib:GetInt(player,"tianhuangzhengfu15") .. "/1                    10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#�ռ�1����Ѫ����               " .. lualib:GetInt(player,"tianhuangzhengfu15") .. "/1                    10%#COLOREND#\n"
	end
	msg = msg .. "\n#COLORCOLOR_RED#��ʾ�����Դ����������й����������Ѽ����ߵ�Ŀ�ꡣ#COLOREND#"
	lualib:NPCTalk(player,msg)
	return ""
end

-------------------------------------------�������ȡ����--------------------------------------------------------
function chumolingqu2(player)
	local msg = "#COLORCOLOR_RED#������-�����#COLOREND#"
	msg = msg .. "       #COLORCOLOR_ORANGE#������ " .. tianhuangzhengfudxs .. "%#COLOREND#       #IMAGE<ID:1902700042>#<@chumojiemian2 *01*�鿴��������>\n"
	msg = msg .. "#COLORCOLOR_GREENG#������10%#COLOREND#               ��Ǯ��(20��)             #COLOREND#"
	if lualib:GetInt(player,"chumolingqu210") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. tianhuangzhengfudian .. "#10#��Ǯ��(20��)#1#chumolingqu210#chumolingqu2 *01*��ȡ����>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������20%#COLOREND#               ǿЧ̫��ˮ��*2           #COLOREND#"
	if lualib:GetInt(player,"chumolingqu220") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. tianhuangzhengfudian .. "#20#ǿЧ̫��ˮ��#2#chumolingqu220#chumolingqu2 *01*��ȡ����>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������30%#COLOREND#               ������(��)*2             #COLOREND#"
	if lualib:GetInt(player,"chumolingqu230") == 0 then 
		msg = msg .. "#OFFSET<X:-1,Y:0>#<@chumogeiyu#" .. tianhuangzhengfudian .. "#30#������(��)#2#chumolingqu230#chumolingqu2 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������40%#COLOREND#               1.5���������*2          #COLOREND#"
	if lualib:GetInt(player,"chumolingqu240") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. tianhuangzhengfudian .. "#40#1.5���������#2#chumolingqu240#chumolingqu2 *01*��ȡ����>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������50%#COLOREND#               �������(10��)*2         #COLOREND#"
	if lualib:GetInt(player,"chumolingqu250") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. tianhuangzhengfudian .. "#50#�������(10��)#2#chumolingqu250#chumolingqu2 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������60%#COLOREND#               ��ӡ������*5             #COLOREND#"
	if lualib:GetInt(player,"chumolingqu260") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. tianhuangzhengfudian .. "#60#��ӡ������#5#chumolingqu260#chumolingqu2 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:2,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������70%#COLOREND#               ��Ԫ��*5                 #COLOREND#"
	if lualib:GetInt(player,"chumolingqu270") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. tianhuangzhengfudian .. "#70#��Ԫ��#5#chumolingqu270#chumolingqu2 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������80%#COLOREND#               �ͼ�ת��ʯ*3            #COLOREND#"
	if lualib:GetInt(player,"chumolingqu280") == 0 then 
		msg = msg .. "#OFFSET<X:3,Y:0>#<@chumogeiyu#" .. tianhuangzhengfudian .. "#80#�ͼ�ת��ʯ#3#chumolingqu280#chumolingqu2 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:3,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������90%#COLOREND#               #COLORCOLOR_RED#�߼��������*3#COLOREND#          #COLOREND#"
	if lualib:GetInt(player,"chumolingqu290") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. tianhuangzhengfudian .. "#90#�߼��������#3#chumolingqu290#chumolingqu2 *01*��ȡ����>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������100%#COLOREND#              #COLORCOLOR_RED#40����װ����#COLOREND#             #COLOREND#"
	if lualib:GetInt(player,"chumolingqu2100") == 0 then 
		msg = msg .. "#OFFSET<X:2,Y:0>#<@chumogeiyu#" .. tianhuangzhengfudian .. "#100#���������#1#chumolingqu2100#chumolingqu2 *01*��ȡ����>\n"
	else
		--msg = msg .. "#OFFSET<X:2,Y:0>#<@chumochongling#100#���������#1 *01*�ٴ���ȡ>\n"
		msg = msg .."#OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	lualib:NPCTalk(player,msg)
	return ""
end

-------------------------------------------���а����������--------------------------------------------------------
function chumojiemian3(npc,player)

	if player == nil then
		player = npc
	end
--[[lualib:SetInt(player,"xiemiaozhengfu1",0)
lualib:SetInt(player,"xiemiaozhengfu2",0)
lualib:SetInt(player,"xiemiaozhengfu3",0)
lualib:SetInt(player,"xiemiaozhengfu4",0)
lualib:SetInt(player,"xiemiaozhengfu5",0)
lualib:SetInt(player,"xiemiaozhengfu6",0)
lualib:SetInt(player,"xiemiaozhengfu7",0)
lualib:SetInt(player,"xiemiaozhengfu8",0)
lualib:SetInt(player,"xiemiaozhengfu9",0)
lualib:SetInt(player,"xiemiaozhengfu10",0)
lualib:SetInt(player,"xiemiaozhengfu11",0)
lualib:SetInt(player,"xiemiaozhengfu12",0)
lualib:SetInt(player,"xiemiaozhengfu13",0)
lualib:SetInt(player,"xiemiaozhengfu14",0)
lualib:SetInt(player,"xiemiaozhengfudian",0)
lualib:SetInt(player,"chumolingqu310",0)
lualib:SetInt(player,"chumolingqu320",0)
lualib:SetInt(player,"chumolingqu330",0)
lualib:SetInt(player,"chumolingqu340",0)
lualib:SetInt(player,"chumolingqu350",0)
lualib:SetInt(player,"chumolingqu360",0)
lualib:SetInt(player,"chumolingqu370",0)
lualib:SetInt(player,"chumolingqu380",0)
lualib:SetInt(player,"chumolingqu390",0)
lualib:SetInt(player,"chumolingqu3100",1)--]]

	xiemiaozhengfudian = 4/100*lualib:GetInt(player,"xiemiaozhengfu1")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu2")
				+6/100*lualib:GetInt(player,"xiemiaozhengfu3")
				+7/100*lualib:GetInt(player,"xiemiaozhengfu4")
				+7/100*lualib:GetInt(player,"xiemiaozhengfu5")
				+7/100*lualib:GetInt(player,"xiemiaozhengfu6")
				+8/100*lualib:GetInt(player,"xiemiaozhengfu7")
				+8/100*lualib:GetInt(player,"xiemiaozhengfu8")
				+8/12*lualib:GetInt(player,"xiemiaozhengfu9")
				+10/1*lualib:GetInt(player,"xiemiaozhengfu10")
				+10/1*lualib:GetInt(player,"xiemiaozhengfu11")
				--+5/8*lualib:GetInt(player,"xiemiaozhengfu12")
				+10/40*lualib:GetInt(player,"xiemiaozhengfu13")
				+10/1*lualib:GetInt(player,"xiemiaozhengfu14")
				
	if xiemiaozhengfudian >= 10 and string.len(tostring(xiemiaozhengfudian)) > 5 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		xiemiaozhengfudxs = string.sub(xiemiaozhengfudian,1,5)
	elseif xiemiaozhengfudian < 10 and string.len(tostring(xiemiaozhengfudian)) > 4 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		xiemiaozhengfudxs = string.sub(xiemiaozhengfudian,1,4)
	else
		xiemiaozhengfudxs = xiemiaozhengfudian
	end

	local msg = "#COLORCOLOR_RED#������-���а��#COLOREND#"
	msg = msg .. "       #COLORCOLOR_ORANGE#������ " .. xiemiaozhengfudxs .. "%#COLOREND#       #IMAGE<ID:1902700031>#<@chumolingqu3 *01*��ȡ���Ƚ���>\n \n"
	msg = msg .. "#COLORCOLOR_GREENG#����Ŀ��                      ״��                  ռ����#COLOREND#\n"
	if lualib:GetInt(player,"xiemiaozhengfu1") < 100 then
		msg = msg .. "����100ֻҹ��ɮ              " .. lualib:GetInt(player,"xiemiaozhengfu1") .. "/100                    4%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻҹ��ɮ              " .. lualib:GetInt(player,"xiemiaozhengfu1") .. "/100                    4%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu2") < 100 then
		msg = msg .. "����100ֻа��                " .. lualib:GetInt(player,"xiemiaozhengfu2") .. "/100                    5%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻа��                " .. lualib:GetInt(player,"xiemiaozhengfu2") .. "/100                    5%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu3") < 100 then
		msg = msg .. "����100ֻ��ԭ��ʿ            " .. lualib:GetInt(player,"xiemiaozhengfu3") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻ��ԭ��ʿ            " .. lualib:GetInt(player,"xiemiaozhengfu3") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu4") < 100 then
		msg = msg .. "����100ֻ��ԭ��ʿ            " .. lualib:GetInt(player,"xiemiaozhengfu4") .. "/100                    7%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻ��ԭ��ʿ            " .. lualib:GetInt(player,"xiemiaozhengfu4") .. "/100                    7%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu5") < 100 then
		msg = msg .. "����100ֻ��ԭ��ʿ            " .. lualib:GetInt(player,"xiemiaozhengfu5") .. "/100                    7%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻ��ԭ��ʿ            " .. lualib:GetInt(player,"xiemiaozhengfu5") .. "/100                    7%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu6") < 100 then
		msg = msg .. "����100ֻ��������            " .. lualib:GetInt(player,"xiemiaozhengfu6") .. "/100                    7%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻ��������            " .. lualib:GetInt(player,"xiemiaozhengfu6") .. "/100                    7%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu7") < 100 then
		msg = msg .. "����100ֻ�ڰ��̿�            " .. lualib:GetInt(player,"xiemiaozhengfu7") .. "/100                    8%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻ�ڰ��̿�            " .. lualib:GetInt(player,"xiemiaozhengfu7") .. "/100                    8%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu8") < 100 then
		msg = msg .. "����100ֻӰ��                " .. lualib:GetInt(player,"xiemiaozhengfu8") .. "/100                    8%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻӰ��                " .. lualib:GetInt(player,"xiemiaozhengfu8") .. "/100                    8%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu9") < 12 then
		msg = msg .. "����12ֻ��Ӣ����             " .. lualib:GetInt(player,"xiemiaozhengfu9") .. "/12                    8%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����12ֻ��Ӣ����             " .. lualib:GetInt(player,"xiemiaozhengfu9") .. "/12                    8%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu10") < 1 then
		msg = msg .. "����1ֻ��������              " .. lualib:GetInt(player,"xiemiaozhengfu10") .. "/1                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����1ֻ��������              " .. lualib:GetInt(player,"xiemiaozhengfu10") .. "/1                     10%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu11") < 1 then
		msg = msg .. "����1ֻ����ɮ                " .. lualib:GetInt(player,"xiemiaozhengfu11") .. "/1                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����1ֻ����ɮ                " .. lualib:GetInt(player,"xiemiaozhengfu11") .. "/1                     10%#COLOREND#\n"
	end
	
	--[[if lualib:GetInt(player,"xiemiaozhengfu12") < 8 then
		msg = msg .. "��8������                  " .. lualib:GetInt(player,"xiemiaozhengfu12") .. "/8                     5%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#��8������                  " .. lualib:GetInt(player,"xiemiaozhengfu12") .. "/8                     5%#COLOREND#\n"
	end--]]
	
	if lualib:GetInt(player,"xiemiaozhengfu13") < 40 then
		msg = msg .. "�ռ�40��а�̾���             " .. lualib:GetInt(player,"xiemiaozhengfu13") .. "/40                   10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#�ռ�40��а�̾���             " .. lualib:GetInt(player,"xiemiaozhengfu13") .. "/40                   10%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu14") < 1 then
		msg = msg .. "�ռ�1��а����                " .. lualib:GetInt(player,"xiemiaozhengfu14") .. "/1                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#�ռ�1��а����                " .. lualib:GetInt(player,"xiemiaozhengfu14") .. "/1                     10%#COLOREND#\n"
	end
	msg = msg .. "\n#COLORCOLOR_RED#��ʾ�����Դ����������й����������Ѽ����ߵ�Ŀ�ꡣ#COLOREND#"
	lualib:NPCTalk(player,msg)
	return ""
end

-------------------------------------------���а����ȡ����--------------------------------------------------------
function chumolingqu3(player)	
	local msg = "#COLORCOLOR_RED#������-���а��#COLOREND#"
	msg = msg .. "       #COLORCOLOR_ORANGE#������ " .. xiemiaozhengfudxs .. "%#COLOREND#       #IMAGE<ID:1902700042>#<@chumojiemian3 *01*�鿴��������>\n"
	msg = msg .. "#COLORCOLOR_GREENG#������10%#COLOREND#               ��Ǯ��(20��)*2           #COLOREND#"
	if lualib:GetInt(player,"chumolingqu310") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. xiemiaozhengfudian .. "#10#��Ǯ��(20��)#2#chumolingqu310#chumolingqu3 *01*��ȡ����>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������20%#COLOREND#               ����ѩ˪��               #COLOREND#"
	if lualib:GetInt(player,"chumolingqu320") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. xiemiaozhengfudian .. "#20#����ѩ˪��#1#chumolingqu320#chumolingqu3 *01*��ȡ����>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������30%#COLOREND#               ������(��)*2             #COLOREND#"
	if lualib:GetInt(player,"chumolingqu330") == 0 then 
		msg = msg .. "#OFFSET<X:-1,Y:0>#<@chumogeiyu#" .. xiemiaozhengfudian .. "#30#������(��)#2#chumolingqu330 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������40%#COLOREND#               ˫���������             #COLOREND#"
	if lualib:GetInt(player,"chumolingqu340") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. xiemiaozhengfudian .. "#40#˫���������#1#chumolingqu340 *01*��ȡ����>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������50%#COLOREND#               �������(50��)*1         #COLOREND#"
	if lualib:GetInt(player,"chumolingqu350") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. xiemiaozhengfudian .. "#50#�������(50��)#1#chumolingqu350#chumolingqu3 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������60%#COLOREND#               ��ӡ������*10            #COLOREND#"
	if lualib:GetInt(player,"chumolingqu360") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. xiemiaozhengfudian .. "#60#��ӡ������#10#chumolingqu360#chumolingqu3 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������70%#COLOREND#               ��Ԫ��*10                #COLOREND#"
	if lualib:GetInt(player,"chumolingqu370") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. xiemiaozhengfudian .. "#70#��Ԫ��#10#chumolingqu370#chumolingqu3 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������80%#COLOREND#               #COLORCOLOR_RED#�м�ת��ʯ#COLOREND#              #COLOREND#"
	if lualib:GetInt(player,"chumolingqu380") == 0 then 
		msg = msg .. "#OFFSET<X:3,Y:0>#<@chumogeiyu#" .. xiemiaozhengfudian .. "#80#�м�ת��ʯ#1#chumolingqu380#chumolingqu3 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:3,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������90%#COLOREND#               #COLORCOLOR_RED#���������(+10)*1#COLOREND#       #COLOREND#"
	if lualib:GetInt(player,"chumolingqu390") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. xiemiaozhengfudian .. "#90#���������(+10)#1#chumolingqu390#chumolingqu3 *01*��ȡ����>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������100%#COLOREND#              #COLORCOLOR_RED#45����װ����#COLOREND#            #COLOREND#"
	if lualib:GetInt(player,"chumolingqu3100") == 0 then 
		msg = msg .. "#OFFSET<X:2,Y:0>#<@chumogeiyu#" .. xiemiaozhengfudian .. "#100#���а������#1#chumolingqu3100#chumolingqu3 *01*��ȡ����>\n"
	else
		--msg = msg .. "#OFFSET<X:2,Y:0>#<@chumochongling#100#���а������#1 *01*�ٴ���ȡ>\n"
		msg = msg .."#OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	lualib:NPCTalk(player,msg)
	return ""
end


-------------------------------------------��ħʯ����������--------------------------------------------------------
function chumojiemian4(npc,player)

	if player == nil then
		player = npc
	end
--[[lualib:SetInt(player,"tianmozhengfu1",0)
lualib:SetInt(player,"tianmozhengfu2",0)
lualib:SetInt(player,"tianmozhengfu3",0)
lualib:SetInt(player,"tianmozhengfu4",0)
lualib:SetInt(player,"tianmozhengfu5",0)
lualib:SetInt(player,"tianmozhengfu6",0)
lualib:SetInt(player,"tianmozhengfu7",0)
lualib:SetInt(player,"tianmozhengfu8",0)
lualib:SetInt(player,"tianmozhengfu9",0)
lualib:SetInt(player,"tianmozhengfu10",0)
lualib:SetInt(player,"tianmozhengfu11",0)
lualib:SetInt(player,"tianmozhengfu12",0)
lualib:SetInt(player,"tianmozhengfu13",0)
lualib:SetInt(player,"tianmozhengfu14",0)
lualib:SetInt(player,"tianmozhengfudian",0)
lualib:SetInt(player,"chumolingqu410",0)
lualib:SetInt(player,"chumolingqu420",0)
lualib:SetInt(player,"chumolingqu430",0)
lualib:SetInt(player,"chumolingqu440",0)
lualib:SetInt(player,"chumolingqu450",0)
lualib:SetInt(player,"chumolingqu460",0)
lualib:SetInt(player,"chumolingqu470",0)
lualib:SetInt(player,"chumolingqu480",0)
lualib:SetInt(player,"chumolingqu490",0)
lualib:SetInt(player,"chumolingqu4100",1)--]]

	tianmozhengfudian = 6/100*lualib:GetInt(player,"tianmozhengfu1")
				+6/100*lualib:GetInt(player,"tianmozhengfu2")
				+6/100*lualib:GetInt(player,"tianmozhengfu3")
				+6/100*lualib:GetInt(player,"tianmozhengfu4")
				+6/100*lualib:GetInt(player,"tianmozhengfu5")
				+6/100*lualib:GetInt(player,"tianmozhengfu6")
				+6/100*lualib:GetInt(player,"tianmozhengfu7")
				+6/100*lualib:GetInt(player,"tianmozhengfu8")
				+6/100*lualib:GetInt(player,"tianmozhengfu9")
				+6/12*lualib:GetInt(player,"tianmozhengfu10")
				+10/1*lualib:GetInt(player,"tianmozhengfu11")
				+10/1*lualib:GetInt(player,"tianmozhengfu12")
				+10/40*lualib:GetInt(player,"tianmozhengfu13")
				+10/1*lualib:GetInt(player,"tianmozhengfu14")
				
	if tianmozhengfudian >= 10 and string.len(tostring(tianmozhengfudian)) > 5 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		tianmozhengfudxs = string.sub(tianmozhengfudian,1,5)
	elseif tianmozhengfudian < 10 and string.len(tostring(tianmozhengfudian)) > 4 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		tianmozhengfudxs = string.sub(tianmozhengfudian,1,4)
	else
		tianmozhengfudxs = tianmozhengfudian
	end

	local msg = "#COLORCOLOR_RED#������-��ħʯ�ߡ�#COLOREND#"
	msg = msg .. "       #COLORCOLOR_ORANGE#������ " .. tianmozhengfudxs .. "%#COLOREND#       #IMAGE<ID:1902700031>#<@chumolingqu4 *01*��ȡ���Ƚ���>\n \n"
	msg = msg .. "#COLORCOLOR_GREENG#����Ŀ��                      ״��                  ռ����#COLOREND#\n"
	if lualib:GetInt(player,"tianmozhengfu1") < 100 then
		msg = msg .. "����100ֻħ��Ы��            " .. lualib:GetInt(player,"tianmozhengfu1") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻħ��Ы��            " .. lualib:GetInt(player,"tianmozhengfu1") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu2") < 100 then
		msg = msg .. "����100ֻħ������            " .. lualib:GetInt(player,"tianmozhengfu2") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻħ������            " .. lualib:GetInt(player,"tianmozhengfu2") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu3") < 100 then
		msg = msg .. "����100ֻħ��ɳ��            " .. lualib:GetInt(player,"tianmozhengfu3") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻħ��ɳ��            " .. lualib:GetInt(player,"tianmozhengfu3") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu4") < 100 then
		msg = msg .. "����100ֻ��ħū��            " .. lualib:GetInt(player,"tianmozhengfu4") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻ��ħū��            " .. lualib:GetInt(player,"tianmozhengfu4") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu5") < 100 then
		msg = msg .. "����100ֻ��ħ����            " .. lualib:GetInt(player,"tianmozhengfu5") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻ��ħ����            " .. lualib:GetInt(player,"tianmozhengfu5") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu6") < 100 then
		msg = msg .. "����100ֻ��������            " .. lualib:GetInt(player,"tianmozhengfu6") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻ��������            " .. lualib:GetInt(player,"tianmozhengfu6") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu7") < 100 then
		msg = msg .. "����100ֻ��ħ����            " .. lualib:GetInt(player,"tianmozhengfu7") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻ��ħ����            " .. lualib:GetInt(player,"tianmozhengfu7") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu8") < 100 then
		msg = msg .. "����100ֻ��ħ�ȷ�            " .. lualib:GetInt(player,"tianmozhengfu8") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻ��ħ�ȷ�            " .. lualib:GetInt(player,"tianmozhengfu8") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu9") < 100 then
		msg = msg .. "����100ֻ��ħ����            " .. lualib:GetInt(player,"tianmozhengfu9") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻ��ħ����            " .. lualib:GetInt(player,"tianmozhengfu9") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu10") < 12 then
		msg = msg .. "����12ֻ��Ӣ����             " .. lualib:GetInt(player,"tianmozhengfu10") .. "/12                      6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����12ֻ��Ӣ����             " .. lualib:GetInt(player,"tianmozhengfu10") .. "/12                      6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu11") < 1 then
		msg = msg .. "����1ֻ��ħͳ��              " .. lualib:GetInt(player,"tianmozhengfu11") .. "/1                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����1ֻ��ħͳ��              " .. lualib:GetInt(player,"tianmozhengfu11") .. "/1                     10%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu12") < 1 then
		msg = msg .. "����1ֻ��ħ��                " .. lualib:GetInt(player,"tianmozhengfu12") .. "/1                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����1ֻ��ħ��                " .. lualib:GetInt(player,"tianmozhengfu12") .. "/1                     10%#COLOREND#\n"
	end
	
	
	if lualib:GetInt(player,"tianmozhengfu13") < 40 then
		msg = msg .. "�ռ�40��ħ��Ԫ��             " .. lualib:GetInt(player,"tianmozhengfu13") .. "/40                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#�ռ�40��ħ��Ԫ��             " .. lualib:GetInt(player,"tianmozhengfu13") .. "/40                     10%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu14") < 1 then
		msg = msg .. "�ռ�1����ħ�ܲ�              " .. lualib:GetInt(player,"tianmozhengfu14") .. "/1                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#�ռ�1����ħ�ܲ�              " .. lualib:GetInt(player,"tianmozhengfu14") .. "/1                     10%#COLOREND#\n"
	end
	msg = msg .. "\n#COLORCOLOR_RED#��ʾ�����Դ����������й����������Ѽ����ߵ�Ŀ�ꡣ#COLOREND#"
	lualib:NPCTalk(player,msg)
	return ""
end

-------------------------------------------��ħʯ����ȡ����--------------------------------------------------------
function chumolingqu4(player)	
	local msg = "#COLORCOLOR_RED#������-��ħʯ�ߡ�#COLOREND#"
	msg = msg .. "       #COLORCOLOR_ORANGE#������ " .. tianmozhengfudxs .. "%#COLOREND#       #IMAGE<ID:1902700042>#<@chumojiemian4 *01*�鿴��������>\n"
	msg = msg .. "#COLORCOLOR_GREENG#������10%#COLOREND#               ��Ǯ��(20��)*3           #COLOREND#"
	if lualib:GetInt(player,"chumolingqu410") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. tianmozhengfudian .. "#10#С��������ҩ��#2#chumolingqu410#chumolingqu4 *01*��ȡ����>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������20%#COLOREND#               ����ҩ��*2               #COLOREND#"
	if lualib:GetInt(player,"chumolingqu420") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. tianmozhengfudian .. "#20#����ҩ��#2#chumolingqu420#chumolingqu4 *01*��ȡ����>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������30%#COLOREND#               ����������*2             #COLOREND#"
	if lualib:GetInt(player,"chumolingqu430") == 0 then 
		msg = msg .. "#OFFSET<X:-1,Y:0>#<@chumogeiyu#" .. tianmozhengfudian .. "#30#����������#2#chumolingqu430 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������40%#COLOREND#               ˫���������*2           #COLOREND#"
	if lualib:GetInt(player,"chumolingqu440") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. tianmozhengfudian .. "#40#˫���������#2#chumolingqu440 *01*��ȡ����>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������50%#COLOREND#               �������(50��)*2         #COLOREND#"
	if lualib:GetInt(player,"chumolingqu450") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. tianmozhengfudian .. "#50#�������(50��)#2#chumolingqu450#chumolingqu4 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������60%#COLOREND#               ��ӡ������*15            #COLOREND#"
	if lualib:GetInt(player,"chumolingqu460") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. tianmozhengfudian .. "#60#��ӡ������#15#chumolingqu460#chumolingqu4 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������70%#COLOREND#               ��Ԫ��*15                #COLOREND#"
	if lualib:GetInt(player,"chumolingqu470") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. tianmozhengfudian .. "#70#��Ԫ��#15#chumolingqu470#chumolingqu4 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������80%#COLOREND#               #COLORCOLOR_RED#�м�ת��ʯ*3#COLOREND#             #COLOREND#"
	if lualib:GetInt(player,"chumolingqu480") == 0 then 
		msg = msg .. "#OFFSET<X:3,Y:0>#<@chumogeiyu#" .. tianmozhengfudian .. "#80#�м�ת��ʯ#3#chumolingqu480#chumolingqu4 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:3,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������90%#COLOREND#               #COLORCOLOR_RED#ħ��������(+10)*1#COLOREND#        #COLOREND#"
	if lualib:GetInt(player,"chumolingqu490") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. tianmozhengfudian .. "#90#ħ��������(+10)#1#chumolingqu490#chumolingqu4 *01*��ȡ����>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������100%#COLOREND#              #COLORCOLOR_RED#50����װ����#COLOREND#             #COLOREND#"
	if lualib:GetInt(player,"chumolingqu4100") == 0 then 
		msg = msg .. "#OFFSET<X:2,Y:0>#<@chumogeiyu#" .. tianmozhengfudian .. "#100#��ħʯ������#1#chumolingqu4100#chumolingqu4 *01*��ȡ����>\n"
	else
		--msg = msg .. "#OFFSET<X:2,Y:0>#<@chumochongling#100#��ħʯ������#1 *01*�ٴ���ȡ>\n"
		msg = msg .."#OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	lualib:NPCTalk(player,msg)
	return ""
end


-------------------------------------------�����ؾ���������--------------------------------------------------------
function chumojiemian5(npc,player)

	if player == nil then
		player = npc
	end
--[[lualib:SetInt(player,"haidizhengfu1",0)
lualib:SetInt(player,"haidizhengfu2",0)
lualib:SetInt(player,"haidizhengfu3",0)
lualib:SetInt(player,"haidizhengfu4",0)
lualib:SetInt(player,"haidizhengfu5",0)
lualib:SetInt(player,"haidizhengfu6",0)
lualib:SetInt(player,"haidizhengfu7",0)
lualib:SetInt(player,"haidizhengfu8",0)
lualib:SetInt(player,"haidizhengfu9",0)
lualib:SetInt(player,"haidizhengfu10",0)
lualib:SetInt(player,"haidizhengfu11",0)
lualib:SetInt(player,"haidizhengfu12",0)
lualib:SetInt(player,"haidizhengfu13",0)
lualib:SetInt(player,"haidizhengfu14",0)
lualib:SetInt(player,"haidizhengfudian",0)
lualib:SetInt(player,"chumolingqu510",0)
lualib:SetInt(player,"chumolingqu520",0)
lualib:SetInt(player,"chumolingqu530",0)
lualib:SetInt(player,"chumolingqu540",0)
lualib:SetInt(player,"chumolingqu550",0)
lualib:SetInt(player,"chumolingqu560",0)
lualib:SetInt(player,"chumolingqu570",0)
lualib:SetInt(player,"chumolingqu580",0)
lualib:SetInt(player,"chumolingqu590",0)
lualib:SetInt(player,"chumolingqu5100",1)--]]

	haidizhengfudian = 6/100*lualib:GetInt(player,"haidizhengfu1")
				+6/100*lualib:GetInt(player,"haidizhengfu2")
				+6/100*lualib:GetInt(player,"haidizhengfu3")
				+6/100*lualib:GetInt(player,"haidizhengfu4")
				+6/100*lualib:GetInt(player,"haidizhengfu5")
				+6/100*lualib:GetInt(player,"haidizhengfu6")
				+6/100*lualib:GetInt(player,"haidizhengfu7")
				+6/100*lualib:GetInt(player,"haidizhengfu8")
				+6/100*lualib:GetInt(player,"haidizhengfu9")
				+6/12*lualib:GetInt(player,"haidizhengfu10")
				+10/1*lualib:GetInt(player,"haidizhengfu11")
				+10/1*lualib:GetInt(player,"haidizhengfu12")
				+10/40*lualib:GetInt(player,"haidizhengfu13")
				+10/1*lualib:GetInt(player,"haidizhengfu14")
				
	if haidizhengfudian >= 10 and string.len(tostring(haidizhengfudian)) > 5 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		haidizhengfudxs = string.sub(haidizhengfudian,1,5)
	elseif haidizhengfudian < 10 and string.len(tostring(haidizhengfudian)) > 4 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		haidizhengfudxs = string.sub(haidizhengfudian,1,4)
	else
		haidizhengfudxs = haidizhengfudian
	end

	local msg = "#COLORCOLOR_RED#������-�����ؾ���#COLOREND#"
	msg = msg .. "       #COLORCOLOR_ORANGE#������ " .. haidizhengfudxs .. "%#COLOREND#       #IMAGE<ID:1902700031>#<@chumolingqu5 *01*��ȡ���Ƚ���>\n \n"
	msg = msg .. "#COLORCOLOR_GREENG#����Ŀ��                      ״��                  ռ����#COLOREND#\n"
	if lualib:GetInt(player,"haidizhengfu1") < 100 then
		msg = msg .. "����100ֻ������              " .. lualib:GetInt(player,"haidizhengfu1") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻ������              " .. lualib:GetInt(player,"haidizhengfu1") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu2") < 100 then
		msg = msg .. "����100ֻ������              " .. lualib:GetInt(player,"haidizhengfu2") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻ������              " .. lualib:GetInt(player,"haidizhengfu2") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu3") < 100 then
		msg = msg .. "����100ֻʯ����              " .. lualib:GetInt(player,"haidizhengfu3") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻʯ����              " .. lualib:GetInt(player,"haidizhengfu3") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu4") < 100 then
		msg = msg .. "����100ֻ��ǯз              " .. lualib:GetInt(player,"haidizhengfu4") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻ��ǯз              " .. lualib:GetInt(player,"haidizhengfu4") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu5") < 100 then
		msg = msg .. "����100ֻ�ؾ�����            " .. lualib:GetInt(player,"haidizhengfu5") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻ�ؾ�����            " .. lualib:GetInt(player,"haidizhengfu5") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu6") < 100 then
		msg = msg .. "����100ֻ�ؾ�����            " .. lualib:GetInt(player,"haidizhengfu6") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻ�ؾ�����            " .. lualib:GetInt(player,"haidizhengfu6") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu7") < 100 then
		msg = msg .. "����100ֻ��ħ�̴�            " .. lualib:GetInt(player,"haidizhengfu7") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻ��ħ�̴�            " .. lualib:GetInt(player,"haidizhengfu7") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu8") < 100 then
		msg = msg .. "����100ֻ��ħ����            " .. lualib:GetInt(player,"haidizhengfu8") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻ��ħ����            " .. lualib:GetInt(player,"haidizhengfu8") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu9") < 100 then
		msg = msg .. "����100ֻ��ħ����            " .. lualib:GetInt(player,"haidizhengfu9") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����100ֻ��ħ����            " .. lualib:GetInt(player,"haidizhengfu9") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu10") < 12 then
		msg = msg .. "����12ֻ��Ӣ����             " .. lualib:GetInt(player,"haidizhengfu10") .. "/12                      6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����12ֻ��Ӣ����             " .. lualib:GetInt(player,"haidizhengfu10") .. "/12                      6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu11") < 1 then
		msg = msg .. "����1ֻ�������            " .. lualib:GetInt(player,"haidizhengfu11") .. "/1                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����1ֻ�������            " .. lualib:GetInt(player,"haidizhengfu11") .. "/1                     10%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu12") < 1 then
		msg = msg .. "����1ֻ��ħ                  " .. lualib:GetInt(player,"haidizhengfu12") .. "/1                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#����1ֻ��ħ                  " .. lualib:GetInt(player,"haidizhengfu12") .. "/1                     10%#COLOREND#\n"
	end
	
	
	if lualib:GetInt(player,"haidizhengfu13") < 40 then
		msg = msg .. "�ռ�40���֮��             " .. lualib:GetInt(player,"haidizhengfu13") .. "/40                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#�ռ�40���֮��             " .. lualib:GetInt(player,"haidizhengfu13") .. "/40                     10%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu14") < 1 then
		msg = msg .. "�ռ�1������֮��              " .. lualib:GetInt(player,"haidizhengfu14") .. "/1                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#�ռ�1������֮��              " .. lualib:GetInt(player,"haidizhengfu14") .. "/1                     10%#COLOREND#\n"
	end
	msg = msg .. "\n#COLORCOLOR_RED#��ʾ�����Դ����������й����������Ѽ����ߵ�Ŀ�ꡣ#COLOREND#"
	lualib:NPCTalk(player,msg)
	return ""
end

-------------------------------------------�����ؾ���ȡ����--------------------------------------------------------
function chumolingqu5(player)	
	local msg = "#COLORCOLOR_RED#������-�����ؾ���#COLOREND#"
	msg = msg .. "       #COLORCOLOR_ORANGE#������ " .. haidizhengfudxs .. "%#COLOREND#       #IMAGE<ID:1902700042>#<@chumojiemian4 *01*�鿴��������>\n"
	msg = msg .. "#COLORCOLOR_GREENG#������10%#COLOREND#               ��Ǯ��(50��)*2          #COLOREND#"
	if lualib:GetInt(player,"chumolingqu510") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. haidizhengfudian .. "#10#��Ǯ��(50��)#2#chumolingqu510#chumolingqu5 *01*��ȡ����>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������20%#COLOREND#               С��������ҩ��*2        #COLOREND#"
	if lualib:GetInt(player,"chumolingqu520") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. haidizhengfudian .. "#20#С��������ҩ��#2#chumolingqu520#chumolingqu5 *01*��ȡ����>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������30%#COLOREND#               ���������(��)*2        #COLOREND#"
	if lualib:GetInt(player,"chumolingqu530") == 0 then 
		msg = msg .. "#OFFSET<X:-1,Y:0>#<@chumogeiyu#" .. haidizhengfudian .. "#30#���������(��)#2#chumolingqu530 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������40%#COLOREND#               ����*10                 #COLOREND#"
	if lualib:GetInt(player,"chumolingqu540") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. haidizhengfudian .. "#40#����#10#chumolingqu540 *01*��ȡ����>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������50%#COLOREND#               ѭ��ħ��*10             #COLOREND#"
	if lualib:GetInt(player,"chumolingqu550") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. haidizhengfudian .. "#50#ѭ��ħ��#10#chumolingqu550#chumolingqu5 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������60%#COLOREND#               ��ӡ������*20           #COLOREND#"
	if lualib:GetInt(player,"chumolingqu560") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. haidizhengfudian .. "#60#��ӡ������#20#chumolingqu560#chumolingqu5 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������70%#COLOREND#               ��Ԫ��*20               #COLOREND#"
	if lualib:GetInt(player,"chumolingqu570") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. haidizhengfudian .. "#70#��Ԫ��#20#chumolingqu570#chumolingqu5 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������80%#COLOREND#               #COLORCOLOR_RED#�߼�ת��ʯ*1#COLOREND#            #COLOREND#"
	if lualib:GetInt(player,"chumolingqu580") == 0 then 
		msg = msg .. "#OFFSET<X:3,Y:0>#<@chumogeiyu#" .. haidizhengfudian .. "#80#�߼�ת��ʯ#1#chumolingqu580#chumolingqu5 *01*��ȡ����>\n"
	else
		msg = msg .."#OFFSET<X:3,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������90%#COLOREND#               #COLORCOLOR_RED#HP������(+10)*1#COLOREND#         #COLOREND#"
	if lualib:GetInt(player,"chumolingqu590") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. haidizhengfudian .. "#90#HP������(+10)#1#chumolingqu590#chumolingqu5 *01*��ȡ����>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#������100%#COLOREND#              #COLORCOLOR_RED#55����װ����#COLOREND#            #COLOREND#"
	if lualib:GetInt(player,"chumolingqu5100") == 0 then 
		msg = msg .. "#OFFSET<X:2,Y:0>#<@chumogeiyu#" .. haidizhengfudian .. "#100#�����ؾ�����#1#chumolingqu5100#chumolingqu5 *01*��ȡ����>\n"
	else
		--msg = msg .. "#OFFSET<X:2,Y:0>#<@chumochongling#100#�����ؾ�����#1 *01*�ٴ���ȡ>\n"
		msg = msg .."#OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#����ȡ#COLOREND#\n"
	end
	lualib:NPCTalk(player,msg)
	return ""
end



-----------------------------------------------------��ȡ����-----------------------------------------------------------------------
function chumogeiyu(player,zhengfudian,dushu,jiangli,shuliang,lingqu,fanhui)
	zhengfudian = tonumber(zhengfudian)
	dushu = tonumber(dushu)
	shuliang = tonumber(shuliang)
	
	if lualib:GetInt(player,lingqu) ~= 0 then --����Ƿ���ȡ��
		return ""
	end
	
	if zhengfudian >= dushu then --����Ƿ��������Ƿ�
		if lualib:Player_GetBagFree(player) >= shuliang then --�������Ƿ��ܷ��뽱��
			local name_table = {jiangli}
			local count_table = {shuliang}
			local bind_table = {1}
			local opr_table = {0}
			if lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�ﵽ��������ȡ",player) == true then
				lualib:SetInt(player,lingqu,1) --��ȡ�ɹ��������¼
				lualib:NPCTalk(player,"����������".. jiangli .."����ȡ�ɹ���\n \n<@".. fanhui .." *01*����>")
			else
				lualib:NPCTalk(player,"��ȡʧ�ܣ������ԡ�\n \n<@".. fanhui .." *01*����>")
			end
		else
			lualib:NPCTalk(player,"������λ���㣡�뱣������" .. shuliang .."����λ��\n \n<@".. fanhui .." *01*����>")
		end
	else
		lualib:NPCTalk(player,"�����Ȳ�����ȡ���������\n \n<@".. fanhui .." *01*����>")
	end
	return ""
end

-----------------------------------------------------ѫ�¶����ȡȷ��-----------------------------------------------------------------------
function chumochongling(player,yuanbao,jiangli,shuliang)
	lualib:NPCTalk(player,"�ٴ���ȡ" .. jiangli .. "��Ҫ����" .. yuanbao .. "Ԫ��,��Ҫ��ȡ��\n \n<@bangorbuy#yuanbao#" .. yuanbao .."#" .. jiangli .."#" .. shuliang .. "#0#0#����ѫ���ظ�����#player#0 *01*����>\n<@main *01*����>")
	return ""
end