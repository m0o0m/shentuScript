function main(player, vipLevel)
	local a = lualib:GetAllDays(0)
	local b = lualib:GetInt(player, "vip_xiaoyao")
	local msg = ""
	if	b ~= a then
		msg = msg.."�����컹������ȡһ����ң����״̬����״̬��PK������PKֵ��\n\n"
		msg = msg.."<@lingqu *01*��ȡ>\n"
		msg = msg.."<@leave *01*�뿪>\n"
	else
		msg = msg.."�������Ѿ���ȡ����ң����״̬��������ȡ��"
	end
	lualib:NPCTalk(player, msg)
end

function lingqu(player, viplevel)
	lualib:AddBuff(player, "��ң����", 1800)
	local c = lualib:GetAllDays(0)
	lualib:SetInt(player, "vip_xiaoyao", c)
	msg = "��ȡ��ң����״̬�ɹ���"
	return msg
end


function leave(player)
	return ""
end