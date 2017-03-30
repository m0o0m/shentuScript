local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/װ����ʦ")

local talk_t = {"����Ҫ��ʿ�������ĵ�ʿ��ʵ����æ�������ˡ�", "ҩ�Ľ�ȱ����Ա��ȱ������Ҳ��ȱ���㿴�ҵ�é���Ƶá���", "����������ˣ��������Ұɣ�ÿһ���˶��ǶԿ���ħ��һ��������"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 23000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    lualib:AddShop(npc, 8)
	msg = "     ������ȫ�������õ�ҩ�꣬����������������ҽ��ʿ��ְҵ׼�����ϰ��գ������𲡣������ҩ��������Ϸ���ҵ��Ŀ�ģ�\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#8 *01*������>      #OFFSET<X:0,Y:1>##IMAGE1902700036##OFFSET<X:0,Y:-1>#<@SellItem#1 *01*�����ۡ�>\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."                     <@main_ex *01*����װ����װ����ʦ��>\n"
     msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-2>#<@MapMoveXYA#���ٳ�#330#300#3 *01*�����Ĺ㳡>"
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
	if not lualib:Player_SubGold(player, gold, false, "�۳���ң����ͷ�", "��ɽ��ҩ��") then return "��Ľ�Ҳ��㣬���ܴ��ͣ�" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "����ͼʧ��"
    end
	return msg
end
