local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local table_zb = {
			{
				{"十杀·租赁",100,"描述",1},
				{"龙渊·租赁",100,"描述",1},
				{"天瀑·租赁",100,"描述",1},
				{"噬空·租赁",100,"描述",1},
				{"碎空·租赁",100,"描述",1},
				{"断空·租赁",100,"描述",1},
			},
			{
				{"赤峰战甲(男)·租赁",100,"描述",2},
				{"赤峰战甲(女)·租赁",100,"描述",2},
				{"阎罗长袍(男)·租赁",100,"描述",2},
				{"阎罗长袍(女)·租赁",100,"描述",2},
				{"光明道袍(男)·租赁",100,"描述",2},
				{"光明道袍(女)·租赁",100,"描述",2},
			},
			{
				{"王者之链·租赁",100,"描述",3},
				{"麒麟战盔·租赁",100,"描述",2},
				{"魔炫护腕·租赁",100,"描述",3},
				{"君王战戒·租赁",100,"描述",1},
				{"残月之坠·租赁",100,"描述",3},
				{"龙牙面具·租赁",100,"描述",2},
				{"紫炎护腕·租赁",100,"描述",3},
				{"星冥魔戒·租赁",100,"描述",1},
				{"天极项链·租赁",100,"描述",3},
				{"无魂头盔·租赁",100,"描述",2},
				{"天翼手镯·租赁",100,"描述",3},
				{"上清玄指·租赁",100,"描述",1},
				{"逐波天靴·租赁",100,"描述",2},	
			},
			}
local table_jl = {
{"1级精炼",1,10},
{"2级精炼",2,20},
{"3级精炼",3,30},
{"4级精炼",4,40},
{"5级精炼",6,50},
{"6级精炼",8,60},
{"7级精炼",11,70},
{"8级精炼",15,80},
{"9级精炼",19,90},
}

local att_type = {
					{
					{"物攻上限", lua_role_max_phy_atk_pct},
					{"魔攻上限", lua_role_max_mag_atk_pct},
					{"道术上限", lua_role_max_tao_atk_pct},
					},
					{
					{"物防上限", lua_role_max_phy_def_pct},
					{"魔防上限", lua_role_max_mag_def_pct},
					},
					{
					{"HP上限", lua_role_max_hp_pct},
					{"MP上限", lua_role_max_mp_pct},
					},
					}

function main(npc,player)
	local msg = "     你想租赁什么装备？\n \n"
	msg = msg.."<@zulin#1 *01*武器租赁>\n"
	msg = msg.."<@zulin#2 *01*衣服租赁>\n"
	msg = msg.."<@zulin#3 *01*其他租赁>\n"
	msg = msg.."<@leave *01* 取消>\n"
	return msg
end

function leave(npc,player)
	return ""
end

function zulin(npc,player,types)
	local msg = "请选择你要装备!\n \n"
	for i = 1, table.getn(table_zb[tonumber(types)]) do
	msg = msg.."<@dazao#"..types.."#"..i.."# *01*"..table_zb[tonumber(types)][i][1]..">"
	msg = msg.."     "
	end
	msg = msg.."\n \n<@main *01* 返回>\n"
	return msg
end

function dazao(npc,player,types,name)
	local msg = ""..table_zb[tonumber(types)][tonumber(name)][1].."的属性:"..table_zb[tonumber(types)][tonumber(name)][3].."，请选择你所道的精炼等级！\n \n"
	for i = 1, table.getn(table_jl) do
	msg = msg.."<@pinjie#"..types.."#"..name.."#"..i.." *01*"..table_jl[i][1]..">"
	msg = msg.."           "
	end
	msg = msg.."\n \n<@main *01* 返回>\n"
	return msg
end

function pinjie(npc,player,types,name,lvl)
	local msg = "请选择你所要精炼的的属性\n \n"
	for i = 1, table.getn(att_type[tonumber(table_zb[tonumber(types)][tonumber(name)][4])]) do
	msg = msg.."<@attt#"..types.."#"..name.."#"..lvl.."#"..i.." *01*"..att_type[tonumber(table_zb[tonumber(types)][tonumber(name)][4])][i][1]..">"
	msg = msg.."      "
	end
	msg = msg.."\n \n<@main *01* 返回>\n"
	return msg
end

	
function attt(npc,player,types,name,lvl,attType)
	local money = tonumber(table_zb[tonumber(types)][tonumber(name)][2]) + tonumber(table_jl[tonumber(lvl)][3])
	local msg = "租赁 ["..table_zb[tonumber(types)][tonumber(name)][1].."] + "..lvl.."，精炼属性为"..att_type[tonumber(table_zb[tonumber(types)][tonumber(name)][4])][tonumber(attType)][1].."需要"..money.."元宝，你确定购买吗？\n \n"
	msg = msg.."<@quedinggoumai#"..types.."#"..name.."#"..lvl.."#"..attType.." *01* 确定购买>\n"
	msg = msg.."<@main *01* 返回>\n"
	return msg
end

function quedinggoumai(npc,player,types,name,lvl,attType)
	if lualib:Player_GetBagFree(player) < 1 then
	lualib:SysMsg_SendTriggerMsg(player_guid, "背包空间不够，需要1个格子！")
	msg = "背包空间不够，需要1个格子！"
	return msg
	end
	money = tonumber(table_zb[tonumber(types)][tonumber(name)][2]) + tonumber(table_jl[tonumber(lvl)][3])
	if not lualib:Player_SubIngot(player,money,false,"合成大师",player) then return "扣除元宝失败" end
	local zhuangbeiguid = lualib:Player_GiveSingleItem(player,table_zb[tonumber(types)][tonumber(name)][1],0,"合成大师","装备租赁")
	if zhuangbeiguid == "" then return "物品添加失败" end
	print(zhuangbeiguid)
	local jlsx = att_type[tonumber(table_zb[tonumber(types)][tonumber(name)][4])][tonumber(attType)][2]
	print(jlsx)
	print(lvl)
	if not lualib:Equip_SetRefineLevel(player,zhuangbeiguid,tonumber(lvl)) then return "设置精炼等级失败" end
	if not lualib:Equip_SetRefineProp(player,zhuangbeiguid,jlsx,tonumber(table_jl[tonumber(lvl)][2])) then return "设置精炼属性失败" end
	lualib:Item_NotifyUpdate(player,zhuangbeiguid)
	local msg = "购买成功！"
	return msg
end
	
	
	
	
