
function main(npc, player)
	k1 = "��" 
	k2 = "��¹��"
	if lualib:HasQuest(player, 5115) == true then
	k1 = "����"
	k2 = "�켦��"
	end

	msg = "���ܼ��⡢¹�⡢ţ�⡢���⡢BOSS�⣬�����ﶼ�У����⡢����Ҳ���ҵ���͵͵�ظ����㣬�ҵĳ��ջ��ǳ�����������⿹������࣬��ζ������������\n \n"
	msg = msg.."#IMAGE1902700030# <@duihuan#1 *01*�һ�����>\n"
	msg = msg.."#IMAGE1902700030# <@tourou#1 *01*͵ȡ����>\n\n\n"
	msg = msg.."��ȡ�������󣬿��Դ�ɱ���л�ü��⣬��ɱ¹�л���⣬�˺���������һ���ʳ����Ȼ��Ҫ��ȡһ�����ã�"
	return msg
end


function duihuan(npc, player)
	
		if lualib:Player_IsGoldEnough(player, 2000, false) == false then return "����2000��ң��㸶�����Ǯ�����ܶһ���\n\n\n\n\n\n#IMAGE1902700030# <@main *01*����>\n" end
		
		local a = lualib:Player_GetItemCount(player, k1)
		if a == 0 then return "��û�иò��ϣ�\n\n\n\n\n\n#IMAGE1902700030# <@main *01*����>\n" end
		if a ~= 0  then 
			if lualib:DelItem(player, k1, 1, 2, "�һ�", player) == true then 
				if not lualib:Player_SubGold(player, 2000, false, "�һ�һֻ"..k2, player) then
					return "�۳����ʧ��\n\n\n\n\n\n#IMAGE1902700030# <@main *01*����>\n"
				end
			end 
			lualib:AddItem(player, k2, 1, true, "�һ�", player)	
			return "�ɹ��һ�һ"..k2.."������2000��ң�\n\n\n\n\n\n#IMAGE1902700030# <@main *01*����>\n"
		end
	
	return "�һ��ɹ���\n\n\n\n\n\n#IMAGE1902700030# <@main *01*����>\n"
end

function tourou(npc, player)

    --�жϾ���
	local catch_distance = 2
	local catch_wait_time = 2100    --������ʱ��   
	if lualib:Distance(npc, player) > catch_distance then
        lualib:SysPromptMsg(player, "��"..lualib:Name(npc).."̫Զ���޷�͵ȡ��")
        return ""
    end
    
    --����������
    if lualib:ProgressBarStart(player, catch_wait_time, "͵ȡ", "catch_complete", "catch_abort", npc) == false then
	    lualib:SysPromptMsg(player, "�޷�͵ȡ��")
        return ""
	end		
	return ""
end

function catch_complete(player)
		local x = lualib:X(player)
		local y = lualib:Y(player)
		local map = lualib:MapGuid(player) 
		local in_monster = {"��ͨ����", "��ͨ����", "��ͨ����", "��ͨ����", "��Ӣ����"}	
		local rand = lualib:GenRandom(1, 100)
		local catch_rand = 50 
		
			if rand <= catch_rand then		   
			   lualib:AddItem(player, k2, 1, true, "�һ�", player)
			   lualib:SysPromptMsg(player, "�ɹ�͵ȡһֻ"..k2.."	")
			   return ""

			else
				lualib:Map_GenSingleMonster(map, x, y, 2, 5, in_monster[lualib:GenRandom(1, #in_monster)], false)
				lualib:SysPromptMsg(player, "�������֣�Σ�գ����ʵ�����У����������Ӻ�������")
				return ""
			end
		
	return ""	

end

	
function catch_abort(player)   --������ʧ��
    lualib:SysPromptMsg(player, "���͵���ж�����ϣ�")
end