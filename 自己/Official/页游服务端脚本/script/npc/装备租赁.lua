local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local table_zb = {
			{
				{"ʮɱ������",100,"����",1},
				{"��Ԩ������",100,"����",1},
				{"���١�����",100,"����",1},
				{"�ɿա�����",100,"����",1},
				{"��ա�����",100,"����",1},
				{"�Ͽա�����",100,"����",1},
			},
			{
				{"���ս��(��)������",100,"����",2},
				{"���ս��(Ů)������",100,"����",2},
				{"���޳���(��)������",100,"����",2},
				{"���޳���(Ů)������",100,"����",2},
				{"��������(��)������",100,"����",2},
				{"��������(Ů)������",100,"����",2},
			},
			{
				{"����֮��������",100,"����",3},
				{"����ս��������",100,"����",2},
				{"ħ�Ż�������",100,"����",3},
				{"����ս�䡤����",100,"����",1},
				{"����֮׹������",100,"����",3},
				{"������ߡ�����",100,"����",2},
				{"���׻�������",100,"����",3},
				{"��ڤħ�䡤����",100,"����",1},
				{"�켫����������",100,"����",3},
				{"�޻�ͷ��������",100,"����",2},
				{"������������",100,"����",3},
				{"������ָ������",100,"����",1},
				{"����ѥ������",100,"����",2},	
			},
			}
local table_jl = {
{"1������",1,10},
{"2������",2,20},
{"3������",3,30},
{"4������",4,40},
{"5������",6,50},
{"6������",8,60},
{"7������",11,70},
{"8������",15,80},
{"9������",19,90},
}

local att_type = {
					{
					{"�﹥����", lua_role_max_phy_atk_pct},
					{"ħ������", lua_role_max_mag_atk_pct},
					{"��������", lua_role_max_tao_atk_pct},
					},
					{
					{"�������", lua_role_max_phy_def_pct},
					{"ħ������", lua_role_max_mag_def_pct},
					},
					{
					{"HP����", lua_role_max_hp_pct},
					{"MP����", lua_role_max_mp_pct},
					},
					}

function main(npc,player)
	local msg = "     ��������ʲôװ����\n \n"
	msg = msg.."<@zulin#1 *01*��������>\n"
	msg = msg.."<@zulin#2 *01*�·�����>\n"
	msg = msg.."<@zulin#3 *01*��������>\n"
	msg = msg.."<@leave *01* ȡ��>\n"
	return msg
end

function leave(npc,player)
	return ""
end

function zulin(npc,player,types)
	local msg = "��ѡ����Ҫװ��!\n \n"
	for i = 1, table.getn(table_zb[tonumber(types)]) do
	msg = msg.."<@dazao#"..types.."#"..i.."# *01*"..table_zb[tonumber(types)][i][1]..">"
	msg = msg.."     "
	end
	msg = msg.."\n \n<@main *01* ����>\n"
	return msg
end

function dazao(npc,player,types,name)
	local msg = ""..table_zb[tonumber(types)][tonumber(name)][1].."������:"..table_zb[tonumber(types)][tonumber(name)][3].."����ѡ���������ľ����ȼ���\n \n"
	for i = 1, table.getn(table_jl) do
	msg = msg.."<@pinjie#"..types.."#"..name.."#"..i.." *01*"..table_jl[i][1]..">"
	msg = msg.."           "
	end
	msg = msg.."\n \n<@main *01* ����>\n"
	return msg
end

function pinjie(npc,player,types,name,lvl)
	local msg = "��ѡ������Ҫ�����ĵ�����\n \n"
	for i = 1, table.getn(att_type[tonumber(table_zb[tonumber(types)][tonumber(name)][4])]) do
	msg = msg.."<@attt#"..types.."#"..name.."#"..lvl.."#"..i.." *01*"..att_type[tonumber(table_zb[tonumber(types)][tonumber(name)][4])][i][1]..">"
	msg = msg.."      "
	end
	msg = msg.."\n \n<@main *01* ����>\n"
	return msg
end

	
function attt(npc,player,types,name,lvl,attType)
	local money = tonumber(table_zb[tonumber(types)][tonumber(name)][2]) + tonumber(table_jl[tonumber(lvl)][3])
	local msg = "���� ["..table_zb[tonumber(types)][tonumber(name)][1].."] + "..lvl.."����������Ϊ"..att_type[tonumber(table_zb[tonumber(types)][tonumber(name)][4])][tonumber(attType)][1].."��Ҫ"..money.."Ԫ������ȷ��������\n \n"
	msg = msg.."<@quedinggoumai#"..types.."#"..name.."#"..lvl.."#"..attType.." *01* ȷ������>\n"
	msg = msg.."<@main *01* ����>\n"
	return msg
end

function quedinggoumai(npc,player,types,name,lvl,attType)
	if lualib:Player_GetBagFree(player) < 1 then
	lualib:SysMsg_SendTriggerMsg(player_guid, "�����ռ䲻������Ҫ1�����ӣ�")
	msg = "�����ռ䲻������Ҫ1�����ӣ�"
	return msg
	end
	money = tonumber(table_zb[tonumber(types)][tonumber(name)][2]) + tonumber(table_jl[tonumber(lvl)][3])
	if not lualib:Player_SubIngot(player,money,false,"�ϳɴ�ʦ",player) then return "�۳�Ԫ��ʧ��" end
	local zhuangbeiguid = lualib:Player_GiveSingleItem(player,table_zb[tonumber(types)][tonumber(name)][1],0,"�ϳɴ�ʦ","װ������")
	if zhuangbeiguid == "" then return "��Ʒ���ʧ��" end
	print(zhuangbeiguid)
	local jlsx = att_type[tonumber(table_zb[tonumber(types)][tonumber(name)][4])][tonumber(attType)][2]
	print(jlsx)
	print(lvl)
	if not lualib:Equip_SetRefineLevel(player,zhuangbeiguid,tonumber(lvl)) then return "���þ����ȼ�ʧ��" end
	if not lualib:Equip_SetRefineProp(player,zhuangbeiguid,jlsx,tonumber(table_jl[tonumber(lvl)][2])) then return "���þ�������ʧ��" end
	lualib:Item_NotifyUpdate(player,zhuangbeiguid)
	local msg = "����ɹ���"
	return msg
end
	
	
	
	
