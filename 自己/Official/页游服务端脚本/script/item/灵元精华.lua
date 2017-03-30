local he_table = {
					{"�ͼ���Ԫ����", 10},
					{"�м���Ԫ����", 30},
					{"�߼���Ԫ����", 100},
                    {"�ؼ���Ԫ����", 500},
				}
local reqItem = "��Ԫ����"
				
function main(player, item)
	local msg = "��ѡ����Ҫ�ϳɵ���Ԫ���⣡\n"
	for i = 1, #he_table do
		msg = msg.."<@hc#"..item.."#"..i.." *01*�ϳ�"..he_table[i][1]..">"
		msg = msg.."     "
	end
	msg = msg.."\n<@leave *01*�뿪>\n"
	lualib:NPCTalk(player, msg)
	return true
end

function leave()
	return""
end

function hc(player, item, types)
	local types = tonumber(types)
	local msg = "�ϳ�"..he_table[types][1].."��Ҫ"..he_table[types][2].."��"..reqItem.."����ȷ���ϳ���\n \n"
	msg = msg.."<@queren#"..item.."#"..types.." *01*��ʼ�ϳ�>\n"
	msg = msg.."<@leave *01*�뿪>\n"
	return msg
end

function queren(player, item, types)
	local types = tonumber(types)
	local item_num = lualib:ItemCountByKey(player,reqItem,true, false, false,2)
	if item_num < he_table[types][2] then
		return "�����Ԫ��������"..he_table[types][2].."�����޷��ϳ�"..he_table[types][1].."��"
	end
	
	if not lualib:DelItem(player, reqItem, he_table[types][2], 2, "����ϳ�", player) then return "��Ԫ����ϳ�ʧ�ܣ�" end
	
	if not lualib:AddItem(player, he_table[types][1], 1, false, "����ϳ�", player) then return "����"..he_table[types][1].."ʧ�ܣ�" end
	
	return "�ϳ�"..he_table[types][1].."�ɹ���"
end
	