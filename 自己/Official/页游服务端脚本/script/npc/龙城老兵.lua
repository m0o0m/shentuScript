local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


	itemTbl =
		{
			{
				{
					{["name"] = "��������  ", ["count"] = 2, ["keyname"] = "��������"},
					{["name"] = "���ν�ָ  ", ["count"] = 2, ["keyname"] = "���ν�ָ"},
					{["name"] = "��������  ", ["count"] = 1, ["keyname"] = "��������"},
					{["name"] = "�������  ", ["count"] = 1, ["keyname"] = "�������"},
					{["name"] = "����ѥ    ", ["count"] = 1, ["keyname"] = "����ѥ"},
					{["name"] = "����      ", ["count"] = 1, ["keyname"] = "����"},
				},
				{
					{["name"] = "�ƽ�����  ", ["count"] = 2, ["keyname"] = "�ƽ�����"},
					{["name"] = "��ʥ֮��  ", ["count"] = 2, ["keyname"] = "��ʥ֮��"},
					{["name"] = "����      ", ["count"] = 1, ["keyname"] = "����"}
				},
				{
					{["name"] = "��������  ", ["count"] = 1, ["keyname"] = "��������"},
					{["name"] = "�ƻ���ָ  ", ["count"] = 1, ["keyname"] = "�ƻ���ָ"},
					{["name"] = "�ƽ�ͷ��  ", ["count"] = 1, ["keyname"] = "�ƽ�ͷ��"},
					{["name"] = "����      ", ["count"] = 1, ["keyname"] = "����"}
				},
				{
					{["name"] = "��ս����  ", ["count"] = 2, ["keyname"] = "��ս����"},
					{["name"] = "��ս��ָ  ", ["count"] = 2, ["keyname"] = "��ս��ָ"},
					{["name"] = "��սѥ��  ", ["count"] = 1, ["keyname"] = "��սѥ��"}
				}
			},
			{
				{
					{["name"] = "ħ������  ", ["count"] = 2, ["keyname"] = "ħ������"},
					{["name"] = "����觽�ָ", ["count"] = 2, ["keyname"] = "����觽�ָ"},
					{["name"] = "��������  ", ["count"] = 1, ["keyname"] = "��������"},
					{["name"] = "�������  ", ["count"] = 1, ["keyname"] = "�������"},
					{["name"] = "����ѥ    ", ["count"] = 1, ["keyname"] = "����ѥ"},
					{["name"] = "ħ�鷨��  ", ["count"] = 1, ["keyname"] = "ħ�鷨��"},
				},
				{
					{["name"] = "��������  ", ["count"] = 2, ["keyname"] = "��������"},
					{["name"] = "���ս�ָ  ", ["count"] = 2, ["keyname"] = "���ս�ָ"},
					{["name"] = "����      ", ["count"] = 1, ["keyname"] = "����"}
				},
				{
					{["name"] = "��������  ", ["count"] = 1, ["keyname"] = "��������"},
					{["name"] = "����ָ  ", ["count"] = 1, ["keyname"] = "����ָ"},
					{["name"] = "��ħͷ��  ", ["count"] = 1, ["keyname"] = "��ħͷ��"},
					{["name"] = "����      ", ["count"] = 1, ["keyname"] = "����"}
				},
				{
					{["name"] = "�ۻ껤��  ", ["count"] = 2, ["keyname"] = "�ۻ껤��"},
					{["name"] = "�ۻ��ָ  ", ["count"] = 2, ["keyname"] = "�ۻ��ָ"},
					{["name"] = "�ۻ�ѥ��  ", ["count"] = 1, ["keyname"] = "�ۻ�ѥ��"}
				}
			},
			{
				{
					{["name"] = "��ʯ����  ", ["count"] = 2, ["keyname"] = "��ʯ����"},
					{["name"] = "�׽��ָ  ", ["count"] = 2, ["keyname"] = "�׽��ָ"},
					{["name"] = "ӫ������  ", ["count"] = 1, ["keyname"] = "ӫ������"},
					{["name"] = "�������  ", ["count"] = 1, ["keyname"] = "�������"},
					{["name"] = "����ѥ    ", ["count"] = 1, ["keyname"] = "����ѥ"},
					{["name"] = "������    ", ["count"] = 1, ["keyname"] = "������"},
				},
				{
					{["name"] = "���껤��  ", ["count"] = 2, ["keyname"] = "���껤��"},
					{["name"] = "���ƽ�ָ  ", ["count"] = 2, ["keyname"] = "���ƽ�ָ"},
					{["name"] = "����      ", ["count"] = 1, ["keyname"] = "����"}
				},
				{
					{["name"] = "��а����  ", ["count"] = 1, ["keyname"] = "��а����"},
					{["name"] = "��Ԫ��ָ  ", ["count"] = 1, ["keyname"] = "��Ԫ��ָ"},
					{["name"] = "ħ�����  ", ["count"] = 1, ["keyname"] = "ħ�����"},
					{["name"] = "����      ", ["count"] = 1, ["keyname"] = "����"}
				},
				{
					{["name"] = "���⻤��  ", ["count"] = 2, ["keyname"] = "���⻤��"},
					{["name"] = "�����ָ  ", ["count"] = 2, ["keyname"] = "�����ָ"},
					{["name"] = "����ѥ��  ", ["count"] = 1, ["keyname"] = "����ѥ��"}
				}
			}
		}

	itemRewardTbl =
		{
			{

			},
			{
				{["keyname"] = "��Ԫ��", ["count"] = 2}, {["keyname"] = "��ӡ������", ["count"] = 1}
			},
			{
				{["keyname"] = "��Ԫ��", ["count"] = 3}, {["keyname"] = "��ӡ������", ["count"] = 2}
			},
			{
				{["keyname"] = "��Ԫ��", ["count"] = 5}, {["keyname"] = "��ӡ������", ["count"] = 3}
			}
		}


--[[������㷽ʽ��
	local level = lualib:Level(player)
	local mul = math.floor(level - lvlExp[lvl][2])
	local exp = lvlExp[lvl][1] * mul
]]
--����ϵ�� �ֱ��� �ͼ� �м� �߼� ��Ӣ

lvlExp =
	{
		{24000,  15},
		{40000,  15},
		{80000,  15},
		{120000, 15}
	}

local talk_t = {"�������ʶ;���ϱ����Դ���ܿ�Σ�ա�", "��������һ�����̣����ֻ���������·�ˡ�", "��ʿ����ԶҪ��ס�ϱ����Ҹ档"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 230000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

local castle_table = {"����",}
function main(npc,player)
    local own_family = lualib:GetCastleOwnFamily(castle_table[1])
    local my_family = lualib:Player_GetStrProp(player,  lua_role_guild)
    local msg = ""
    if own_family == "" or own_family ~= my_family then
	msg = "    �뵱����Ҳ���ֳ�����ն����ħ����ϧ��������һǹ�������Թ����������ʿ͹���Ҫȥ���\n \n"
	msg = msg .. "#IMAGE1902700015# #OFFSET<X:0,Y:-1>#<@anquan *01*����ȫ����> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# ��������������еİ�ȫ����#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# <@digong *01*��Σ������> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# ��������̽������#COLOREND#\n"
	msg = msg .. "#IMAGE1902700015# <@shangdian *01*���̵괫�͡�> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# �����������صĽ�������#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# <@shenge *01*���Ǳ����͡�> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# �����������ǳǱ�#COLOREND#\n \n"
    --msg = msg .. "#IMAGE1902700015# <@equip *01*�������ռ���> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# �ռ�������Ҫ�ĸ���װ��#COLOREND#\n \n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#24 *01*���ϱ��̵꡹>#COLORCOLOR_GREENG#��û�м���ռ�����ǵ��лᣬ����ԭ�ۣ�#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:-1>#<@xinshoubuff *01*������ӳɡ�>#COLORCOLOR_RED#�����ؾ�����ħ���ؿ�����ͼ��������ȡ��������#COLOREND#" 
	--msg = msg .. "\n                                                    #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@Leave *01*���뿪��>\n"
 else
	msg = "    #COLORCOLOR_GREENG#�뵱����Ҳ���ֳ�����ն����ħ����ϧ��������һǹ�������Թ����������ʿ͹���Ҫȥ���#COLOREND#\n \n"
	msg = msg .. "#IMAGE1902700015# #OFFSET<X:0,Y:-1>#<@anquan *01*����ȫ����> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# ��������������еİ�ȫ����#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# <@digong *01*��Σ������> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# ��������̽������#COLOREND#\n"
	msg = msg .. "#IMAGE1902700015# <@shangdian *01*���̵괫�͡�> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# �����������صĽ�������#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# <@shenge *01*���Ǳ����͡�> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# �����������ǳǱ�#COLOREND#\n \n"
    --msg = msg .. "#IMAGE1902700015# <@equip *01*�������ռ���> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# �ռ�������Ҫ�ĸ���װ��#COLOREND#\n \n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#11 *01*���ϱ��̵꡹>#COLORCOLOR_GREENG#��û�м���ռ�����ǵ��лᣬ����ԭ�ۣ�#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:-1>#<@xinshoubuff *01*������ӳɡ�>#COLORCOLOR_RED#�����ؾ�����ħ���ؿ�����ͼ��������ȡ��������#COLOREND#" 
	--msg = msg .. "\n                                                    #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@Leave *01*���뿪��>\n"
     end

	return msg
end

function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
end

function equip(npc, player)
    local msg = "     ���Ӣ�ۣ����ǵ�״�������Ͼ�������������Ҫ������װ������װ���ǵľ��ӣ����������;��ʲô�����װ�����Ը��ң��һ����һ���ı��꣡\n"
    msg = msg .. "#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg .. "#OFFSET<X:0,Y:5>##IMAGE<ID:1902700017>#<@equipEx#1 *01*��սʿ������>     #IMAGE<ID:1902700017>#<@equipEx#2 *01*����ʦ������>     #IMAGE<ID:1902700017>#<@equipEx#3 *01*����ʿ������>\n"
    msg = msg .."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg.."������������������������������������      ��  #IMAGE<ID:1902700019>#<@main *01* ����>\n"

    return msg
end

function equipEx(npc, player, job)
	job = tonumber(job)
	local jobTbl =
	{
		"սʿ",
		"��ʦ",
		"��ʿ"
	}

	local msg = "#COLORCOLOR_RED#װ���ɼ���ʾ��#COLOREND#\n"
    msg = msg.."���ж����" .. jobTbl[job] .. "��װô�������ǰ��ײɼ��ģ��������������װ���Ϳ����������ﻻȡ��������Ŷ��\n"
    msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg .. "    #IMAGE<ID:1902700017>#<@equipEx2#" .. job .. "#" .. 1 .." *01*���ͼ�" .. jobTbl[job] .. "�������ա�>    #IMAGE<ID:1902700017>#<@equipEx2#" .. job .. "#" .. 2 .." *01*���м�" .. jobTbl[job] .. "�������ա�>\n"
	msg = msg .. "    #OFFSET<X:0,Y:8>##IMAGE<ID:1902700017>#<@equipEx2#" .. job .. "#" .. 3 .." *01*���߼�" .. jobTbl[job] .. "�������ա�>    #IMAGE<ID:1902700017>#<@equipEx2#" .. job .. "#" .. 4 .." *01*����Ӣ" .. jobTbl[job] .. "�������ա�>\n"
    msg = msg.."\n#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg.."������������������������������������      ��  #IMAGE<ID:1902700019>#<@equip *01* ����>\n"
	return msg
end

function equipEx2(npc, player, job, lvl)
	job = tonumber(job)
	lvl = tonumber(lvl)
	local lvlTbl = {26, 33, 35, 40}
	local msg = ""
	if lualib:Level(player) < lvlTbl[lvl] then
		msg = msg .. "���ĵȼ���������Ҫ" .. lvlTbl[lvl] .. "��\n \n"
		msg = msg .. "<@main *01*�����ء�>"
		return msg
	end

	local lvlNameTbl = {"�ͼ�", "�м�", "�߼�", "��Ӣ"}
	local jobTbl =
	{
		"սʿ",
		"��ʦ",
		"��ʿ"
	}

	msg = msg .. "#COLORCOLOR_RED#�˴λ�����Ҫ������Ʒ��#COLOREND#\n"
	for k, v in pairs(itemTbl[job][lvl]) do
		msg = msg .. "��"..v.name .. v.count .. "����  "
		if (k % 3) == 0 then
			msg = msg .. "\n"
		end
	end
	msg = msg .. "\n"

	local level = lualib:Level(player)
	local mul = math.floor(level - lvlExp[lvl][2])
	local exp = lvlExp[lvl][1] * mul
	msg = msg .. "#COLORCOLOR_RED#���տ��Եõ����½�����#COLOREND#\n"
	msg = msg .. "��".."���飺" .. exp .. "��\n"
	for k, v in pairs(itemRewardTbl[lvl]) do
		msg = msg .. "��"..v.keyname .. v.count .. "����  "
		if (k % 3) == 0 then
			msg = msg .. "\n"
		end
	end
	msg = msg .. "\n#COLORCOLOR_GREENG#�Ƿ�ȷ������װ��?#COLOREND#\n"
	msg = msg .. "                 #IMAGE<ID:1902700017>#<@OK#" .. job .. "#" .. lvl .."   *01*��ȷ����>          #IMAGE<ID:1902700019>#<@equip *01*�����ء�>\n"
	return msg
end

function OK(npc, player, job, lvl)
	job = tonumber(job)
	lvl = tonumber(lvl)

	local keynameTbl = {}
    local countTbl   = {}
    local bindTbl    = {}
    local operaTbl   = {}
	for k, v in pairs(itemTbl[job][lvl]) do
		keynameTbl[k] = v.keyname
		countTbl[k]   = v.count
		bindTbl[k]    = 0
		operaTbl[k]   = 1
	end

	if not lualib:Player_ItemRequest(player, keynameTbl, countTbl, bindTbl, operaTbl, "��������������ϱ���װ���������װ", "�����ϱ�") then
        return "��װ�������㣬�޷����գ�\n \n<@main *01*����>"
    end

	local level = lualib:Level(player)
	local mul = math.floor(level - lvlExp[lvl][2])
	local exp = lvlExp[lvl][1] * mul
	if not lualib:Player_AddExp(player, exp, "�Ӿ��飺�����ϱ���װ���������װ", "�����ϱ�") then
        return "�Ӿ���ʧ�ܣ�\n \n<@equip *01*����>"
    end

	local rewardKeynameTbl = {}
    local rewardCountTbl   = {}
    local rewardBindTbl    = {}
    local rewardOperaTbl   = {}
	for k, v in pairs(itemRewardTbl[lvl]) do
		rewardKeynameTbl[k] = v.keyname
		rewardCountTbl[k]   = v.count
		rewardBindTbl[k]    = 0
		rewardOperaTbl[k]   = 0
	end

	if not lualib:Player_ItemRequest(player, rewardKeynameTbl, rewardCountTbl, rewardBindTbl, rewardOperaTbl, "��������������ϱ���װ���������װ����", "�����ϱ�") then
        return "���󣬸�����ʧ��\n \n<@main *01*����>"
    end

	local msg = ""

	msg = msg .. "�������ųɹ�\n \n"
	msg = msg .. "<@main  *01*����>\n"
	msg = msg .. "<@Leave *01*�뿪>"

	return msg
end

function MapMoveXYA(npc, player, map_key_name, x, y, r)
	local msg=""
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "����ͼʧ��"
    end
	
	local mapname = {"��ɽ��", "���ٳ�", "���ִ�", "����������", "�������ε�", "�������", "����"}
	
	for i = 1, #mapname do
		if map_key_name == mapname[1] then
			lualib:AddTimerEx(npc, 124, 300, 1, "mvtx", "��ɽ��".."#"..x.."#"..y)
		elseif map_key_name == mapname[2] then
			lualib:AddTimerEx(npc, 125, 300, 1, "mvtx", "���ٳ�".."#"..x.."#"..y)
		elseif map_key_name == mapname[3] then
			lualib:AddTimerEx(npc, 126, 300, 1, "mvtx", "���ִ�".."#"..x.."#"..y)
		elseif map_key_name == mapname[4] then
			lualib:AddTimerEx(npc, 127, 300, 1, "mvtx", "����������".."#"..x.."#"..y)
		elseif map_key_name == mapname[5] then
			lualib:AddTimerEx(npc, 128, 300, 1, "mvtx", "�������ε�".."#"..x.."#"..y)
		elseif map_key_name == mapname[6] then
			lualib:AddTimerEx(npc, 129, 300, 1, "mvtx", "�������".."#"..x.."#"..y)
		elseif map_key_name == mapname[7] then
			lualib:AddTimerEx(npc, 129, 300, 1, "mvtx", "����".."#"..x.."#"..y)	
		end
	end

	if lualib:HasBuff(player,"��̯") then
		lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
		return false
	end
	
	return msg
end

function mvtx(npc, tierid, param1, param2, param3)

	mapming = param1
	map_x = param2
	map_y = param3

	local canshu = {"��ɽ��", "���ٳ�", "���ִ�", "����������", "�������ε�", "�������", "����", "����"}
	for i = 1, #canshu do
		if mapming == canshu[i] then
			local csmapguid = lualib:Map_GetMapGuid(canshu[i])
			lualib:RunClientScript(csmapguid, "mapeffect", "texiao", "100001671#"..map_x.."#"..map_y.."#0#0")
		end
	end

end



function anquan(npc,player)
	msg = "#COLORCOLOR_GOLD#�ҿ��Խ�����Ѵ��͵������ĳ���#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700015# #OFFSET<X:0,Y:-1>#<@MapMoveXYA#��ɽ��#237#303#3 *01*��ɽ��>\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700015# #OFFSET<X:0,Y:-1>#<@MapMoveXYA#��ɽ��#500#682#3 *01*���ִ�>\n \n"
	--msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700015# #OFFSET<X:0,Y:-2>#<@MapMove_zhenmo#��ħ��#226#174#3 *01*��ħ��>\n \n \n"
	--msg = msg.."#IMAGE1902700015# <@MapMoveXYA#��ɽ��#496#687#3 *01*��ɣ��>          "
	--msg = msg.."#IMAGE1902700015# <@MapMoveXYA#��ɽ��#194#679#3 *01*�����>\n \n"
		msg = msg.."                                                    #OFFSET<X:0,Y:1>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	return msg
end


function shangdian(npc,player)
	msg = "#IMAGE1902700015# #OFFSET<X:0,Y:-1>##COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#����������#18#30#3 *01*������> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#���ۺ��չ������ĵط�#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #OFFSET<X:0,Y:-1>##COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#���Ƿ�װ��#14#27#3 *01*��װ��> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#���ۺ��չ����׵ĵط�#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #OFFSET<X:0,Y:-1>##COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#�������ε�#14#30#3 *01*���ε�> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#���ۺ��չ����εĵط�#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #OFFSET<X:0,Y:-1>##COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#����#247#231#3 *01*�ӻ���> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�����չ����־�����Ʒ#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #OFFSET<X:0,Y:-1>##COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#����#266#234#3 *01*ҩ  ��> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#���ۺ��չ��������ҩƷ#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #OFFSET<X:0,Y:-1>##COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#�������#15#26#3 *01*��  ��> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#���ۺ��չ���ְҵ������#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #OFFSET<X:0,Y:-1>##COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#����#237#268#3 *01*��  ��> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#��Ÿ�����Ʒ�ĵط�#COLOREND#\n \n                                                    #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
	return msg
end


function digong(npc,player)
	msg = "#COLORCOLOR_GOLD#���͵�Σ�յ�����Ҫ���ɽ��\n40�����½���1500��40�������Ͻ���15000����Ҫȥ����ð�գ�#COLOREND#\n \n"
--	msg = msg.."#IMAGE1902700018# #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYB#��ɽ��#458#97#1 *01*����ڣ> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�15-20��̽��#COLOREND#\n"
--	msg = msg.."#IMAGE1902700018# #COLORCOLOR_GOLD#��#COLOREND#<@MapMoveXYB#��ɽ��#22#94#1 *01*������>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�20-25��̽��#COLOREND#\n"
--	msg = msg.."#IMAGE1902700018# #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYB#��·��#18#54#1 *01*��·��> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�25-35��̽��#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND#<@MapMoveXYB#����#172#40#1 *01*��ɽ��Ѩ>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�25-30��̽��#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYB#����#209#198#1 *01*�����> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�30-40��̽��#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND#<@MapMoveXYB#����#515#31#1 *01*���а��>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�35-45��̽��#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND#<@MapMoveXYB#����#34#36#1 *01*��ħʯ��>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�40-50��̽��#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND#<@MapMoveXYB#����#135#734#1 *01*�����ؾ�>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�45-55��̽��#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND#<@MapMoveXYB#����#242#462#1 *01*��ħ����>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�50-60��̽��#COLOREND#\n"
	msg = msg.."                                                 #OFFSET<X:0,Y:0>##IMAGE1902700019# #OFFSET<X:0,Y:0>#<@main *01*�����ء�>\n"
	return msg
end

function chengbao(npc,player)
	msg = "#COLORCOLOR_GOLD#���͵��Ǳ���Ҫ���ɽ�ң�40�����½���1500��40�������Ͻ���15000����Ҫȥ�ĸ��Ǳ���#COLOREND#\n \n"
	msg = msg.."#IMAGE1902700015# <@shenge *01*����>\n \n"
	msg = msg.."#IMAGE1902700015#<@main *01*�����ء�>\n \n"
	return msg
end
function shenge(npc,player)
	msg = "#COLORCOLOR_GOLD#���͵��Ǳ���Ҫ���ɽ��\n40�����½���1500��40�������Ͻ���15000����Ҫȥ�ĸ���λ��#COLOREND#\n \n"
	msg = msg.."#COLORCOLOR_BLUE#�X---------------------�j---------------------�[#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#��   #COLORCOLOR_RED#��#COLOREND#<@MapMovecb#����#50#103#10 *01*��������>#COLORCOLOR_RED#��#COLOREND#   #OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#��   #COLORCOLOR_RED#��#COLOREND#<@MapMovecb#����#470#70#10 *01*��������>#COLORCOLOR_RED#��#COLOREND#   #OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#��\n"
	msg = msg.."#COLORCOLOR_BLUE#�^---------------------�m---------------------�a#COLOREND#\n \n"
	msg = msg.."#COLORCOLOR_BLUE#�X---------------------�j---------------------�[#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#��   #COLORCOLOR_RED#��#COLOREND#<@MapMovecb#����#112#635#10 *01*��������>#COLORCOLOR_RED#��#COLOREND#   #OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#��   #COLORCOLOR_RED#��#COLOREND#<@MapMovecb#����#408#617#10 *01*��������>#COLORCOLOR_RED#��#COLOREND#   #OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#��\n"
	msg = msg.."#COLORCOLOR_BLUE#�^---------------------�m---------------------�a#COLOREND##IMAGE1902700019#   <@main *01*�����ء�>\n"

	return msg
end

function MapMoveXYB(npc, player, map_key_name, x, y, r)
	local msg=""
	local gold = 1500
	local level = lualib:Level(player)
	if level >= 40 then
		gold = 15000
	else
		gold = 1500
	end
	if not lualib:Player_SubGold(player, gold, false, "�۳���ң����ͷ�", "�����ϱ�") then return "��Ľ�Ҳ��㣬���ܴ��ͣ�\n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")
	

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "����ͼʧ��"
    end
	
	local mapname = {"��ɽ��", "���ٳ�", "���ִ�", "����", "����"}
	
	for i = 1, #mapname do
		if map_key_name == mapname[1] then
			lualib:AddTimerEx(npc, 124, 300, 1, "mvtx", "��ɽ��".."#"..x.."#"..y)
		elseif map_key_name == mapname[2] then
			lualib:AddTimerEx(npc, 125, 300, 1, "mvtx", "���ٳ�".."#"..x.."#"..y)
		elseif map_key_name == mapname[3] then
			lualib:AddTimerEx(npc, 126, 300, 1, "mvtx", "���ִ�".."#"..x.."#"..y)
		elseif map_key_name == mapname[4] then
			lualib:AddTimerEx(npc, 127, 300, 1, "mvtx", "����".."#"..x.."#"..y)
		elseif map_key_name == mapname[5] then
			lualib:AddTimerEx(npc, 129, 300, 1, "mvtx", "����".."#"..x.."#"..y)	
		end
	end

	if lualib:HasBuff(player,"��̯") then
		lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
		return false
	end
	
	return msg
end

function MapMovecb(npc, player, map_key_name, x, y, r)
	local msg=""
	local gold = 1500
	local level = lualib:Level(player)
	if level >= 40 then
		gold = 15000
	else
		gold = 1500
	end
	if not lualib:Player_SubGold(player, gold, false, "�۳���ң����ͷ�", "�����ϱ�") then return "��Ľ�Ҳ��㣬���ܴ��ͣ�\n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "����ͼʧ��"
    end
	
	local mapname = {"��ɽ��", "���ٳ�", "���ִ�", "����", "����"}
	
	for i = 1, #mapname do
		if map_key_name == mapname[1] then
			lualib:AddTimerEx(npc, 124, 300, 1, "mvtx", "��ɽ��".."#"..x.."#"..y)
		elseif map_key_name == mapname[2] then
			lualib:AddTimerEx(npc, 125, 300, 1, "mvtx", "���ٳ�".."#"..x.."#"..y)
		elseif map_key_name == mapname[3] then
			lualib:AddTimerEx(npc, 126, 300, 1, "mvtx", "���ִ�".."#"..x.."#"..y)
		elseif map_key_name == mapname[4] then
			lualib:AddTimerEx(npc, 127, 300, 1, "mvtx", "����".."#"..x.."#"..y)
		elseif map_key_name == mapname[5] then
			lualib:AddTimerEx(npc, 129, 300, 1, "mvtx", "����".."#"..x.."#"..y)	
		end
	end

	if lualib:HasBuff(player,"��̯") then
		lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
		return false
	end
	
	return msg
end


function MapMove_zhenmo(npc, player, map_key_name, x, y, r)
	local zmc_key = 5
	local zhenmocheng_Open = lualib:IO_GetCustomVarInt("zhenmocheng_Open")
	if zhenmocheng_Open < zmc_key then
		return "��ħ�ǻ�δ����ʿ����������½����"..zmc_key.."λ52������ʿʱ����ħ�ǵ�̽��֮·���Ὺ����"
	end
	
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "����ͼʧ��"
    end
	
	return ""
end

function xinshoubuff(npc,player)
    local jingyan_table_hj = {{47, 150}, {45, 200}, {42, 300}, }  --�����ؾ�����
    local jingyan_table_zm = {{52, 150}, {50, 200}, {48, 300}, }  --��ħ�ǿ���

    local haidi_Open = lualib:IO_GetCustomVarInt("haidi_Open")
    local zhenmocheng_Open = lualib:IO_GetCustomVarInt("zhenmocheng_Open")
    local lv = lualib:Level(player)
    local player_buff_value = 0
    
    local msg = "����ش�½����Σ��ʱ��ĳλ������Ϊ��Ϊð���߽��д͸��������������˿�������������ȡ�Գ�����ð���ߵĳɳ��ǳ�������ľ���ӳɣ�\n\n"
    if zhenmocheng_Open >= 5 then
        msg = msg.."#COLORCOLOR_RED#��ħ���Ѿ�������#COLOREND#\n"
        for _, v in pairs(jingyan_table_zm) do
            local beilv = v[2]/100
            msg = msg .. v[1].."���¿�����ȡ#COLORCOLOR_GREENG#"..beilv.."#COLOREND#������ӳɣ�\n"
            if lv <= v[1] then
                player_buff_value = v[2]
            end
        end
    elseif haidi_Open >= 20 then
        msg = msg.."#COLORCOLOR_RED#�����ؾ��Ѿ�������#COLOREND#\n"
        for _, v in pairs(jingyan_table_hj) do
            local beilv = v[2]/100
            msg = msg .. v[1].."���¿�����ȡ#COLORCOLOR_GREENG#"..beilv.."#COLOREND#������ӳɣ�\n"
            if lv <= v[1] then
                player_buff_value = v[2]
            end
        end
	else
		msg = msg.."#COLORCOLOR_RED#�ȵ������ؾ�����������ħ���ؿ���֮ʱ���Ϳ�����ȡ���־���ӳ��ˣ�#COLOREND#\n\n"
    end
    msg = msg .. "\n#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:-2>#<@xinshoubuff_Ex#"..player_buff_value.." *01*��Ҫ��ȡ����ӳ�> \n \n"
    --msg = msg .. "#OFFSET<X:250,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*����>"
    return msg

end

function xinshoubuff_Ex(npc,player, player_buff_value)
    local player_buff_value = tonumber(player_buff_value)
    if player_buff_value == 0 then
        return "��û����ȡ�ʸ�"
    end
    
    if lualib:AddBuffEx(player, "������Ϣ", 3600, player_buff_value) == true then
        return "��ȡ����ӳɳɹ�����ش�½��δ����Ҫ������ˣ�"
    else
        return "��ȡ����ӳ�ʧ�ܣ�"
    end
end

function Leave(npc,player)
	return ""
end