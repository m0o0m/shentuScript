function main(player, vipLevel)
	local msg = "����������ȫ���㲥���ܣ�\n"
	msg = msg.."<@shezhi#1 *01*����Ϊ���߹���>       <@shezhi#2 *01*����Ϊ���߲�����>\n"
	msg = msg.."<@leave *01*�뿪>"
	lualib:NPCTalk(player, msg)
end

function shezhi(player, types)
	types = tonumber(types)
	--print(types)
	lualib:SetInt(player, "shangxiangonggao", types)
	if types == 1 then
		lualib:NPCTalk(player, "�������߹���ɹ���\n")
		return ""
	elseif types == 2 then
		lualib:NPCTalk(player, "�������߲�����ɹ���\n")
		return ""
	end
	return ""
end

function leave(player)
	return true
end