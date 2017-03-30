local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/װ����ʦ")

function main(npc, player)
    lualib:AddShop(npc, 8)
	msg = "������ħ���У����õ�ҩ�Ļ�û��������������ͷʹ�����������ˣ���ӭ���٣�������������ҩƷ�Ĺ�Ӧ�� \n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700030#<@OpenShop#8 *01*������   >#IMAGE1902700030#<@SellItem#1 *01*�����ۡ�>\n"
        msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."                     #OFFSET<X:0,Y:0>##IMAGE1902700018#<@main_ex *01*����װ����װ����ʦ��>\n"
     msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                               #OFFSET<X:0,Y:-6>##IMAGE1902700015#<@MapMoveXYA#����#232#229#3 *01*�����ǹ㳡>"
	return msg
end

function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
end

function SellItem(npc, player, id)
	lualib:ShowForm(player, "������Ʒ��")
	return ""
end

function MapMoveXYA(npc, player, map_key_name, x, y, r)
	local msg=""
	--gold = 0
	--if not lualib:Player_SubGold(player, gold, false, "�۳����", player) then return "��Ľ�Ҳ��㣬���ܴ��ͣ�" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "����ͼʧ��"
    end
	return msg
end
