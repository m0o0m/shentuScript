local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


local talk_t = {"�������Դ����˸��ִ���ʯ���������Ѿ�����Խ��Խ�����ˣ���ô���أ�", "��λʯ���������ڵع����ȥ���硣", "�سǾ��������;��������ʡȴ�ܶ��·��ʱ�䣬��ϧ��Ϊ���ص���ң���Ҵ�δ�ü���"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 19000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end


local castle_table = {"����",}
function main(npc, player)
    local own_family = lualib:GetCastleOwnFamily(castle_table[1])
    local my_family = lualib:Player_GetStrProp(player,  lua_role_guild)
    local msg = ""
    if own_family == "" or own_family ~= my_family then
        msg = "�͹٣���ʲô��Ҫ����\n��������������������������ҽ��ʿ��ְҵ׼�����˲�ֹ�����������ҩ����Ҫ���������Ҹ���\n#COLORCOLOR_GREENG#��û�м���ռ�����ǵ��лᣬ����ԭ�ۣ�#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#10 *01*������>"
    else
        msg = "�͹٣���ʲô��Ҫ����\n��������������������������ҽ��ʿ��ְҵ׼�����˲�ֹ�����������ҩ����Ҫ���������Ҹ���\n#COLORCOLOR_RED#�����л���ռ�����ǵ����ߣ�������ۣ�#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#19 *01*������>"
    end
	msg = msg.."    #OFFSET<X:0,Y:1>##IMAGE1902700036##OFFSET<X:0,Y:-1>#<@SellItem#1 *01*�����ۡ�>    #OFFSET<X:0,Y:1>##IMAGE1902700035##OFFSET<X:0,Y:-1>#<@ShowRepire#1 *01*������>   #OFFSET<X:0,Y:1>##IMAGE1902700035##OFFSET<X:0,Y:-1>#<@ShowRepireEx#1 *01*����������>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n \n \n"
	msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#232#229#3 *01*�����Ĺ㳡>"
	return msg
end


function OpenShop(npc, player, id)
    shopid = tonumber(id)
    lualib:AddShop(npc, shopid)
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

function MapMoveXYA(npc, player, map_key_name, x, y, r)
	local msg=""
	--gold = 0
	--if not lualib:Player_SubGold(player, gold, false, "�۳���ң����ͷ�", "�����ӻ���") then return "��Ľ�Ҳ��㣬���ܴ��ͣ�" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "����ͼʧ��"
    end
	return msg
end