--����ɹ���ɻص�
--quest_id ����id

function on_accomplish(player, quest_id)
    local item_table = {
                  "��Ѫ����(24Сʱ)",
                  "ѩ������(24Сʱ)",
                  "������(24Сʱ)",
                  "����(24Сʱ)",
                  "������(24Сʱ)",
                  "��������(24Сʱ)"
						}
    local index =item_table[lualib:GenRandom(1, 6)]
			lualib:SetInt(player, index, 1)
			local hanxue_shixiao = lualib:AddSingleItem(player, index, 1, 1, "�������Ʒ", player)
			if hanxue_shixiao =="" then
				lualib:SysMsg_SendPromptMsg(player, "����"..index.."ʧ��!")
			end
			local att_name = 109
			local att_value = lualib:GenRandom(50, 100)
			local setatt = lualib:Equip_SetExtProp(player, hanxue_shixiao, 0, att_name, att_value)
			lualib:Item_NotifyUpdate(player, hanxue_shixiao)
			lualib:SysMsg_SendPromptMsg(player, "������"..index.."�����������԰ɣ�!")
    return true
end