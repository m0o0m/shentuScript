local Hair_t = {
					--��ʾ���� ���Է��ͱ�ţ� Ů�Է��ͱ��
					{"��豹���", {1, 1}},
					{"���Է���1", {2, 2}},
				}



function main(player, item)
	local msg = "��ѡ����Ҫ�ı�ķ��ͣ�\n\n"
	for i = 1, #Hair_t do
		msg = msg.."<@Hair_ex#"..i.." *01*"..Hair_t[i][1]..">"
		msg = msg.."    "
	end
	
	msg = msg.."\n<@leave *01*�뿪>"
	lualib:NPCTalk(player, msg)
	return true
end

function Hair_ex(player, index)
	local index = tonumber(index)
	local Hair = lualib:Hair(player)
	
	local gender = lualib:Gender(player)
	
	if Hair == Hair_t[index][2][gender] then
		return "�㵱ǰ�Ѿ��Ǵ˷��ͣ����軻���ͣ�"
	end
	
	
	if not lualib:DelItem(player, "���Է���", 1, 2, "", "") then
		return "��û�и��Է��͵��ߣ�"
	end
	lualib:SetHair(player, Hair_t[index][2][gender])
	return "�㻻�����·��ͣ�"
end


function leave()
	return ""
end