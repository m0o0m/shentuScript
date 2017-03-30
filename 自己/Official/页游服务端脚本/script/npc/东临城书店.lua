local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/װ����ʦ")

function main(npc, player)
    lualib:AddShop(npc, 13)
	msg = "     ���Ϸ��ҵ���Ҳ��һ��������ƾ������߳������գ��߱���ش�½���յò����ؼ�����~~�����Ҳ���ؼ�Ҳ�������ã����������Ǻ�������Ը�ܽ���Щ�ؼ�������\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."<@OpenShop#13 *01*������>      <@SellItem#1 *01*�����ۡ�>\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."                     <@main_ex *01*����װ����װ����ʦ��>\n"
     msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                               <@MapMoveXYA#���ٳ�#330#300#3 *01*�����Ĺ㳡>"
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
	gold = 0
	if not lualib:Player_SubGold(player, gold, false, "�۳���ң����ͷ�", "��ɽ�����") then return "��Ľ�Ҳ��㣬���ܴ��ͣ�" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "����ͼʧ��"
    end
	return msg
end
