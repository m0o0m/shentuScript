

function main(npc, player)
	local Quest_Id = lualib:GetInt(player, "Quest_Shield")
	
	---------------------------------------��31�����ƿ����������
	if Quest_Id == 224 then		
		local msg = [[
		���·�ɢ�Ļ���Ԫ�񣬴����Ѿ���λ��
		Ӣ������Ҳ�պö����������Ϣ��
		���Ƕ��Ѿ���˵��������飬���ǳ�Ը�⴫������ѧ������ܡ�
		������ʱ������Щ�񼼳������귨��½�ˡ�			
		]]
		msg = msg.."\n"
		msg = msg.."<@TY_LQSY *01*��ȡ�������>����������<@CREATEHERO *01*����Ӣ��>\n\n"
		msg = msg.."<@TY_FHMF *01*�����귨��½>\n\n"
		return msg			
		
	end
	
	local msg = [[
	��㷵���귨��½�ɣ��Ǳ���Ҫ���ǣ�
	]]
	msg = msg.."\n"
	msg = msg.."<@TY_FHMF *01*�����귨��½>\n\n"
	return msg	
end

function leave()
	return ""
end

function CREATEHERO(npc, player)
	if lualib:GetInt(player, "227") == 1 then				------��ȡ����Ϊ0
		local msg = [[
		��ϲ�����Դ�������Ӣ��ȥ�����귨��½�ˣ�
		���������λӢ���أ�
		]]
		msg = msg.."\n"		
		
		msg = msg.."<@CH_EX#1 *01*��սʿ>����������<@CH_EX#3 *01*�з�ʦ>����������<@CH_EX#5 *01*�е�ʿ>\n\n"
		msg = msg.."<@CH_EX#2 *01*Ůսʿ>����������<@CH_EX#4 *01*Ů��ʦ>����������<@CH_EX#6 *01*Ů��ʿ>\n\n"
		msg = msg.."<@main *01*����>\n\n"		
		return msg
	else
		return "��û���ʸ���ȡӢ�ۣ������Ѿ����Ӣ�ۣ�"
	end
	
	return ""
end

function CH_EX(npc, player, int)
	lualib:InputDlg(player, 1, "�������Ӣ�۵�����", 60, 14, "CreateHeroInput", index)
    return ""
end


function CreateHeroInput(id, player, input, index)
	local index = tonumber(index)
	local hero_ = 
	{
		{"Ӣ�ۣ���սʿ��", 1, 1},
		{"Ӣ�ۣ�Ůսʿ��", 1, 2},
		{"Ӣ�ۣ��з�ʦ��", 2, 1},
		{"Ӣ�ۣ�Ů��ʦ��", 2, 2},
		{"Ӣ�ۣ��е�ʿ��", 3, 1},
		{"Ӣ�ۣ�Ů��ʿ��", 3, 2},
	}	
	lualib:CreateHeroForPlayer(player, string.trim(input), hero_[index][2], hero_[index][3],  "CreateHeroResult", string.trim(input))
	lualib:SetInt(player, "227", 0)
	return ""
end

function CreateHeroResult(player, err, name)
    if err == 0 then
        lualib:SysWarnMsg(player, "����Ӣ��"..name.."�ɹ�")
    else
        lualib:SysWarnMsg(player, "����Ӣ��"..name.."ʧ�ܣ���������"..err)
    end
end


function TY_LQSY(npc, player)	
	if lualib:GetInt(player, "IsReceive") == 1 then
		local msg = [[
		���Ѿ����һ�λ�������ˣ����������ˣ�
		]]
		msg = msg.."\n"
		msg = msg.."<@main *01*����>\n\n"
		return msg
	else
		if lualib:AddItem(player, "Ӣ�ۻ������", 1, true, "", "") then
			local p_name = lualib:Name(player)
			lualib:SysMsg_SendBroadcastMsg("��ϲ��"..p_name.."��ͨ�����������ɹ���ȳ�����Ԫ��,����Ϲ��񼼡�������ܡ���", "")
			lualib:SetInt(player, "IsReceive", 1)
			
			local msg = [[
			�������Ӣ�۶��ǰ�����������ľ�Ӣ��
			���Ƕ��������հ��������еĸ���ħ�����ܡ�
			�����ܶ�����ŵļ����鶼��һ�������б��ٵò��Ʋ�����
			����ֻʣ��һЩ��ɢ����ҳ��
			�������еĺܶ���ҳ�Ѿ���ɢ���귨�ĸ������Ѵ��롣
			ȥ�Ұ����ŵ����ˣ�
			��Ҳ���ܴӲ�������ҳ���ҵ�һЩ�����ؼ�
			]]
			msg = msg.."\n"
			msg = msg.."<@TY_FHMF *01*�õģ������ȥ����>\n\n"
			return msg			
		else
			return "��ȡʧ�ܣ����鱳�����㹻�Ŀռ䣡"
		end
	end
		
end

function TY_FHMF(npc, player)	
	local map_k = "����"
	local x, y = 248, 273
	lualib:Player_MapMoveXY(player, map_k, x, y, 5)			
	return ""

end


