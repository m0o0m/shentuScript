
function main(npc, player)
	for i = 1, 25 do
		lualib:AddShop(npc, i)
	end
	msg = "�����ˣ������������Ѳ⣬����㶫�������ϰɣ�Ҳ�������Ծ���һ������\n \n"
	msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE1902700037#<@OpenShop#22 *01*���̵�꡹ >\n"--     #OFFSET<X:0,Y:2>##IMAGE1902700037#<@OpenShop#5 *01*��ҩ�꡹ >\n"
	msg = msg.."#IMAGE1902700036#<@SellItem#1 *01*�����ۡ� >#IMAGE1902700035#<@txdf *01*���������� >#IMAGE1902700035#<@ShowRepireEx#1 *01*������ѫ�¡�>\n"
	msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."��������������������������������������������#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���뿪��>\n"

return msg
end


function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
end

function ShowRepire(npc, player)
    lualib:ShowForm(player, "�����")
    return ""
end

function ShowRepireEx(npc, player)
    lualib:ShowForm(player, "���������")
    return ""
end

function SellItem(npc, player, id)
	lualib:ShowForm(player, "������Ʒ��")
	return ""
end

function txdf(npc, player)
	local df_table = {
						--{�;�����, �۸�}
						{"�����", 100, 100},
						{"�����(��)", 200, 200}, 
						{"��ɫҩ��(С��)", 50, 500},
						{"��ɫҩ��(С��)", 50, 500},
						{"��ɫҩ��(����)", 100, 1000},
						{"��ɫҩ��(����)", 100, 1000},
						{"��ɫҩ��(����)", 150, 2000},
						{"��ɫҩ��(����)", 150, 2000},
					}
	local itemlist = lualib:BagItemList(player, true, false, false)

	for i = 1, #itemlist do
		local itemName = lualib:KeyName(itemlist[i])
		local UsesCount = lualib:Item_GetUsesCount(player, itemlist[i])
		for j = 1, #df_table do
			if itemName == df_table[j][1] and UsesCount < df_table[j][2] then
				if not lualib:Player_SubGold(player, df_table[j][3], false, "�۽��:������", "�ӻ���") then return "��Ľ�Ҳ��㣬�޷���������" end
				lualib:Item_SetUsesCount(player, itemlist[i], df_table[j][2])
				lualib:SysPromptMsg(player, "[ϵͳ��ʾ]:����"..df_table[j][3].."�������" ..itemName.. "")
			end
		end
	end
    return ""
end


function leave(player)
	return ""
end