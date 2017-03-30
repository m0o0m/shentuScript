local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local yuanbao = 100
local zb_table = {
			{
				{"审判", "十杀", "断空", "帝释", "十殿阎罗"},
				{"赤峰战甲", "百裂战甲"},
			},
			{
				{"囚龙", "天瀑", "碎空", "残虹", "七劫浮屠"},
				{"阎罗长袍", "圣灵法衣"},
			},
			{
				{"忘机", "龙渊", "噬空", "无常", "赤霄白帝"},
				{"光明道袍", "太玄道袍"},
			},
}
local jp_table = {"·极","·珍","·绝","·神"}

local duihuan = {
["审判·极"] = {"审判(极)","审判","审判"},
["审判·珍"] = {"审判(珍)","审判(极)","审判·极"},
["十杀·极"] = {"十杀(极)","十杀","十杀"},
["十杀·珍"] = {"十杀(珍)","十杀(极)","十杀·极"},
["断空·极"] = {"断空(极)","断空","断空"},
["断空·珍"] = {"断空(珍)","断空(极)","断空·极"},
["断空·绝"] = {"断空(绝)","断空(珍)","断空·珍"},
["断空·神"] = {"断空(神)","断空(绝)","断空·绝"},
["帝释·极"] = {"帝释(极)","帝释","帝释"},
["帝释·珍"] = {"帝释(珍)","帝释(极)","帝释·极"},
["帝释·绝"] = {"帝释(绝)","帝释(珍)","帝释·珍"},
["帝释·神"] = {"帝释(神)","帝释(绝)","帝释·绝"},
["十殿阎罗·极"] = {"十殿阎罗(极)","十殿阎罗","十殿阎罗"},
["十殿阎罗·珍"] = {"十殿阎罗(珍)","十殿阎罗(极)","十殿阎罗·极"},
["十殿阎罗·绝"] = {"十殿阎罗(绝)","十殿阎罗(珍)","十殿阎罗·珍"},
["十殿阎罗·神"] = {"十殿阎罗(神)","十殿阎罗(绝)","十殿阎罗·绝"},
["囚龙·极"] = {"囚龙(极)","囚龙","囚龙"},
["囚龙·珍"] = {"囚龙(珍)","囚龙(极)","囚龙·极"},
["天瀑·极"] = {"天瀑(极)","天瀑","天瀑"},
["天瀑·珍"] = {"天瀑(珍)","天瀑(极)","天瀑·极"},
["碎空·极"] = {"碎空(极)","碎空","碎空"},
["碎空·珍"] = {"碎空(珍)","碎空(极)","碎空·极"},
["碎空·绝"] = {"碎空(绝)","碎空(珍)","碎空·珍"},
["碎空·神"] = {"碎空(神)","碎空(绝)","碎空·绝"},
["残虹·极"] = {"残虹(极)","残虹","残虹"},
["残虹·珍"] = {"残虹(珍)","残虹(极)","残虹·极"},
["残虹·绝"] = {"残虹(绝)","残虹(珍)","残虹·珍"},
["残虹·神"] = {"残虹(神)","残虹(绝)","残虹·绝"},
["七劫浮屠·极"] = {"七劫浮屠(极)","七劫浮屠","七劫浮屠"},
["七劫浮屠·珍"] = {"七劫浮屠(珍)","七劫浮屠(极)","七劫浮屠·极"},
["七劫浮屠·绝"] = {"七劫浮屠(绝)","七劫浮屠(珍)","七劫浮屠·珍"},
["七劫浮屠·神"] = {"七劫浮屠(神)","七劫浮屠(绝)","七劫浮屠·绝"},
["忘机·极"] = {"忘机(极)","忘机","忘机"},
["忘机·珍"] = {"忘机(珍)","忘机(极)","忘机·极"},
["龙渊·极"] = {"龙渊(极)","龙渊","龙渊"},
["龙渊·珍"] = {"龙渊(珍)","龙渊(极)","龙渊·极"},
["噬空·极"] = {"噬空(极)","噬空","噬空"},
["噬空·珍"] = {"噬空(珍)","噬空(极)","噬空·极"},
["噬空·绝"] = {"噬空(绝)","噬空(珍)","噬空·珍"},
["噬空·神"] = {"噬空(神)","噬空(绝)","噬空·绝"},
["无常·极"] = {"无常(极)","无常","无常"},
["无常·珍"] = {"无常(珍)","无常(极)","无常·极"},
["无常·绝"] = {"无常(绝)","无常(珍)","无常·珍"},
["无常·神"] = {"无常(神)","无常(绝)","无常·绝"},
["赤霄白帝·极"] = {"赤霄白帝(极)","赤霄白帝","赤霄白帝"},
["赤霄白帝·珍"] = {"赤霄白帝(珍)","赤霄白帝(极)","赤霄白帝·极"},
["赤霄白帝·绝"] = {"赤霄白帝(绝)","赤霄白帝(珍)","赤霄白帝·珍"},
["赤霄白帝·神"] = {"赤霄白帝(神)","赤霄白帝(绝)","赤霄白帝·绝"},
["赤峰战甲·极(男)"] = {"赤峰战甲·极(男)","赤峰战甲(男)","赤峰战甲(男)"},
["赤峰战甲·极(女)"] = {"赤峰战甲·极(女)","赤峰战甲(女)","赤峰战甲(女)"},
["阎罗长袍·极(男)"] = {"阎罗长袍·极(男)","阎罗长袍(男)","阎罗长袍(男)"},
["阎罗长袍·极(女)"] = {"阎罗长袍·极(女)","阎罗长袍(女)","阎罗长袍(女)"},
["光明道袍·极(男)"] = {"光明道袍·极(男)","光明道袍(男)","光明道袍(男)"},
["光明道袍·极(女)"] = {"光明道袍·极(女)","光明道袍(女)","光明道袍(女)"},
["赤峰战甲·珍(男)"] = {"赤峰战甲·珍(男)","赤峰战甲·极(男)","赤峰战甲·极(男)"},
["赤峰战甲·珍(女)"] = {"赤峰战甲·珍(女)","赤峰战甲·极(女)","赤峰战甲·极(女)"},
["阎罗长袍·珍(男)"] = {"阎罗长袍·珍(男)","阎罗长袍·极(男)","阎罗长袍·极(男)"},
["阎罗长袍·珍(女)"] = {"阎罗长袍·珍(女)","阎罗长袍·极(女)","阎罗长袍·极(女)"},
["光明道袍·珍(男)"] = {"光明道袍·珍(男)","光明道袍·极(男)","光明道袍·极(男)"},
["光明道袍·珍(女)"] = {"光明道袍·珍(女)","光明道袍·极(女)","光明道袍·极(女)"},
["赤峰战甲·绝(男)"] = {"赤峰战甲·绝(男)","赤峰战甲·珍(男)","赤峰战甲·珍(男)"},
["赤峰战甲·绝(女)"] = {"赤峰战甲·绝(女)","赤峰战甲·珍(女)","赤峰战甲·珍(女)"},
["阎罗长袍·绝(男)"] = {"阎罗长袍·绝(男)","阎罗长袍·珍(男)","阎罗长袍·珍(男)"},
["阎罗长袍·绝(女)"] = {"阎罗长袍·绝(女)","阎罗长袍·珍(女)","阎罗长袍·珍(女)"},
["光明道袍·绝(男)"] = {"光明道袍·绝(男)","光明道袍·珍(男)","光明道袍·珍(男)"},
["光明道袍·绝(女)"] = {"光明道袍·绝(女)","光明道袍·珍(女)","光明道袍·珍(女)"},
["赤峰战甲·神(男)"] = {"赤峰战甲·神(男)","赤峰战甲·绝(男)","赤峰战甲·绝(男)"},
["赤峰战甲·神(女)"] = {"赤峰战甲·神(女)","赤峰战甲·绝(女)","赤峰战甲·绝(女)"},
["阎罗长袍·神(男)"] = {"阎罗长袍·神(男)","阎罗长袍·绝(男)","阎罗长袍·绝(男)"},
["阎罗长袍·神(女)"] = {"阎罗长袍·神(女)","阎罗长袍·绝(女)","阎罗长袍·绝(女)"},
["光明道袍·神(男)"] = {"光明道袍·神(男)","光明道袍·绝(男)","光明道袍·绝(男)"},
["光明道袍·神(女)"] = {"光明道袍·神(女)","光明道袍·绝(女)","光明道袍·绝(女)"},
["百裂战甲·极(男)"] = {"百裂战甲·极(男)","百裂战甲(男)","百裂战甲(男)"},
["百裂战甲·极(女)"] = {"百裂战甲·极(女)","百裂战甲(女)","百裂战甲(女)"},
["圣灵法衣·极(男)"] = {"圣灵法衣·极(男)","圣灵法衣(男)","圣灵法衣(男)"},
["圣灵法衣·极(女)"] = {"圣灵法衣·极(女)","圣灵法衣(女)","圣灵法衣(女)"},
["太玄道袍·极(男)"] = {"太玄道袍·极(男)","太玄道袍(男)","太玄道袍(男)"},
["太玄道袍·极(女)"] = {"太玄道袍·极(女)","太玄道袍(女)","太玄道袍(女)"},
["百裂战甲·珍(男)"] = {"百裂战甲·珍(男)","百裂战甲·极(男)","百裂战甲·极(男)"},
["百裂战甲·珍(女)"] = {"百裂战甲·珍(女)","百裂战甲·极(女)","百裂战甲·极(女)"},
["圣灵法衣·珍(男)"] = {"圣灵法衣·珍(男)","圣灵法衣·极(男)","圣灵法衣·极(男)"},
["圣灵法衣·珍(女)"] = {"圣灵法衣·珍(女)","圣灵法衣·极(女)","圣灵法衣·极(女)"},
["太玄道袍·珍(男)"] = {"太玄道袍·珍(男)","太玄道袍·极(男)","太玄道袍·极(男)"},
["太玄道袍·珍(女)"] = {"太玄道袍·珍(女)","太玄道袍·极(女)","太玄道袍·极(女)"},
["百裂战甲·绝(男)"] = {"百裂战甲·绝(男)","百裂战甲·珍(男)","百裂战甲·珍(男)"},
["百裂战甲·绝(女)"] = {"百裂战甲·绝(女)","百裂战甲·珍(女)","百裂战甲·珍(女)"},
["圣灵法衣·绝(男)"] = {"圣灵法衣·绝(男)","圣灵法衣·珍(男)","圣灵法衣·珍(男)"},
["圣灵法衣·绝(女)"] = {"圣灵法衣·绝(女)","圣灵法衣·珍(女)","圣灵法衣·珍(女)"},
["太玄道袍·绝(男)"] = {"太玄道袍·绝(男)","太玄道袍·珍(男)","太玄道袍·珍(男)"},
["太玄道袍·绝(女)"] = {"太玄道袍·绝(女)","太玄道袍·珍(女)","太玄道袍·珍(女)"},
["百裂战甲·神(男)"] = {"百裂战甲·神(男)","百裂战甲·绝(男)","百裂战甲·绝(男)"},
["百裂战甲·神(女)"] = {"百裂战甲·神(女)","百裂战甲·绝(女)","百裂战甲·绝(女)"},
["圣灵法衣·神(男)"] = {"圣灵法衣·神(男)","圣灵法衣·绝(男)","圣灵法衣·绝(男)"},
["圣灵法衣·神(女)"] = {"圣灵法衣·神(女)","圣灵法衣·绝(女)","圣灵法衣·绝(女)"},
["太玄道袍·神(男)"] = {"太玄道袍·神(男)","太玄道袍·绝(男)","太玄道袍·绝(男)"},
["太玄道袍·神(女)"] = {"太玄道袍·神(女)","太玄道袍·绝(女)","太玄道袍·绝(女)"},
["龙鳞战甲·极(男)"] = {"龙鳞战甲·极(男)","龙鳞战甲(男)","龙鳞战甲(男)"},
["龙鳞战甲·极(女)"] = {"龙鳞战甲·极(女)","龙鳞战甲(女)","龙鳞战甲(女)"},
["璃梦法袍·极(男)"] = {"璃梦法袍·极(男)","璃梦法袍(男)","璃梦法袍(男)"},
["璃梦法袍·极(女)"] = {"璃梦法袍·极(女)","璃梦法袍(女)","璃梦法袍(女)"},
["天鼎道袍·极(男)"] = {"天鼎道袍·极(男)","天鼎道袍(男)","天鼎道袍(男)"},
["天鼎道袍·极(女)"] = {"天鼎道袍·极(女)","天鼎道袍(女)","天鼎道袍(女)"},
["龙鳞战甲·珍(男)"] = {"龙鳞战甲·珍(男)","龙鳞战甲·极(男)","龙鳞战甲·极(男)"},
["龙鳞战甲·珍(女)"] = {"龙鳞战甲·珍(女)","龙鳞战甲·极(女)","龙鳞战甲·极(女)"},
["璃梦法袍·珍(男)"] = {"璃梦法袍·珍(男)","璃梦法袍·极(男)","璃梦法袍·极(男)"},
["璃梦法袍·珍(女)"] = {"璃梦法袍·珍(女)","璃梦法袍·极(女)","璃梦法袍·极(女)"},
["天鼎道袍·珍(男)"] = {"天鼎道袍·珍(男)","天鼎道袍·极(男)","天鼎道袍·极(男)"},
["天鼎道袍·珍(女)"] = {"天鼎道袍·珍(女)","天鼎道袍·极(女)","天鼎道袍·极(女)"},
["龙鳞战甲·绝(男)"] = {"龙鳞战甲·绝(男)","龙鳞战甲·珍(男)","龙鳞战甲·珍(男)"},
["龙鳞战甲·绝(女)"] = {"龙鳞战甲·绝(女)","龙鳞战甲·珍(女)","龙鳞战甲·珍(女)"},
["璃梦法袍·绝(男)"] = {"璃梦法袍·绝(男)","璃梦法袍·珍(男)","璃梦法袍·珍(男)"},
["璃梦法袍·绝(女)"] = {"璃梦法袍·绝(女)","璃梦法袍·珍(女)","璃梦法袍·珍(女)"},
["天鼎道袍·绝(男)"] = {"天鼎道袍·绝(男)","天鼎道袍·珍(男)","天鼎道袍·珍(男)"},
["天鼎道袍·绝(女)"] = {"天鼎道袍·绝(女)","天鼎道袍·珍(女)","天鼎道袍·珍(女)"},
["龙鳞战甲·神(男)"] = {"龙鳞战甲·神(男)","龙鳞战甲·绝(男)","龙鳞战甲·绝(男)"},
["龙鳞战甲·神(女)"] = {"龙鳞战甲·神(女)","龙鳞战甲·绝(女)","龙鳞战甲·绝(女)"},
["璃梦法袍·神(男)"] = {"璃梦法袍·神(男)","璃梦法袍·绝(男)","璃梦法袍·绝(男)"},
["璃梦法袍·神(女)"] = {"璃梦法袍·神(女)","璃梦法袍·绝(女)","璃梦法袍·绝(女)"},
["天鼎道袍·神(男)"] = {"天鼎道袍·神(男)","天鼎道袍·绝(男)","天鼎道袍·绝(男)"},
["天鼎道袍·神(女)"] = {"天鼎道袍·神(女)","天鼎道袍·绝(女)","天鼎道袍·绝(女)"},
}

local table_zb = {
			{
				{"十杀·租赁",20,"攻击:12-26",1},
				{"龙渊·租赁",20,"攻击:4-16    道术:3-10",1},
				{"天瀑·租赁",20,"攻击:7-16    魔攻:2-8",1},
				{"噬空·租赁",80,"攻击:8-31    道术:5-12",1},
				{"碎空·租赁",80,"攻击:7-15    魔攻:5-12",1},
				{"断空·租赁",80,"攻击:6-40",1},
			},
			{
				{"赤峰战甲(男)·租赁",20,"物防:5-12    魔防:4-7    攻击:1-2",2},
				{"赤峰战甲(女)·租赁",20,"物防:5-12    魔防:4-7    攻击:1-2",2},
				{"阎罗长袍(男)·租赁",20,"物防:4-9    魔防:4-6    魔攻:2-5",2},
				{"阎罗长袍(女)·租赁",20,"物防:4-9    魔防:4-6    魔攻:2-5",2},
				{"光明道袍(男)·租赁",20,"物防:4-9    魔防:4-6    道术:2-5",2},
				{"光明道袍(女)·租赁",20,"物防:4-9    魔防:4-6    道术:2-5",2},
			},
			{
				{"王者之链·租赁",20,"攻击:2-7",3},
				{"麒麟战盔·租赁",20,"物防:4-7    魔防:2-3",2},
				{"魔炫护腕·租赁",20,"物防:1-4    攻击:2-3",3},
				{"君王战戒·租赁",20,"攻击:2-9",1},
				{"残月之坠·租赁",20,"魔攻:2-6",3},
				{"龙牙面具·租赁",20,"物防:3-5    魔防:3-3",2},
				{"紫炎护腕·租赁",20,"物防:1-3    魔攻:2-5",3},
				{"星冥魔戒·租赁",20,"魔攻:2-8",1},
				{"天极项链·租赁",20,"道术:2-6",3},
				{"无魂头盔·租赁",20,"物防:3-5    魔防:3-3",2},
				{"天翼手镯·租赁",20,"物防:1-3    道术:2-5",3},
				{"上清玄指·租赁",20,"道术:2-8",1},
				{"逐波天靴·租赁",20,"物防:3-4    魔防:3-4",2},
			},
			}
			
function is_in_table_zb(a_name,b_name)
	for k,v in pairs(table_zb) do
		for k1,v1 in pairs(v) do
			if a_name == v1[1] or b_name == v1[1] then
				lualib:Warn(v1[1])
				return true
			end
		end
	end
		
	return false
end			

local table_jl = {
{"1级精炼",1,1},
{"2级精炼",2,5},
{"3级精炼",3,15},
{"4级精炼",4,30},
{"5级精炼",6,50},
{"6级精炼",8,100},
{"7级精炼",11,200},
--{"8级精炼",15,600},
--{"9级精炼",19,7500},
}

local att_type = {
					{
					{"物攻上限",lua_role_max_phy_atk_pct},
					{"魔攻上限",lua_role_max_mag_atk_pct},
					{"道术上限",lua_role_max_tao_atk_pct},
					},
					{
					{"物防上限",lua_role_max_phy_def_pct},
					{"魔防上限",lua_role_max_mag_def_pct},
					},
					{
					{"HP上限",lua_role_max_hp_pct},
					{"MP上限",lua_role_max_mp_pct},
					},
					}

local talk_t = {"你可以把自己的装备改名成符合你个性的装备名称哦。", "如果你想立即获得好装备，可以选择装备租赁。", "你可以把两件相同的装备合成更高品级的装备。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 170000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc,player)
	local msg = "    作为欧志子的师兄，我精通装备合成这一独家技艺，至于装备改名，那只是小case！\n"
	msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@zhuanghecheng *01*[装备合成]>        #OFFSET<X:0,Y:0>##IMAGE1902700032##OFFSET<X:0,Y:-1>#<@zhuangzulin *01*[装备租赁]>        #OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@gaiming *01*[装备个性改名]>\n"
    msg = msg.."#OFFSET<X:0,Y:10>##IMAGE<ID:1902700017>#<@info *01*[功能介绍]>\n"
	msg = msg.."#OFFSET<X:0,Y:10>##COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n \n"
	msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-1>#<@leave *01*「离开」>\n"
	return msg
end
--介绍
function info(npc,player)
    local msg = "看看你要了解什么！\n \n"
    msg = msg.."#IMAGE<ID:1902700017>#<@hechenginfo#1# *01* [装备合成]>\n"
    msg = msg.."#IMAGE<ID:1902700017>#<@zulininfo#1# *01* [装备租赁]>\n"
    msg = msg.."#IMAGE<ID:1902700017>#<@namechangeinfo#1# *01* [个性改名]>\n \n \n \n"
    msg = msg.."                                                #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01* 「返回」>\n"
    return msg
end

function hechenginfo(npc,player)
    local msg = "                        装备合成\n"
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
    msg = msg.."两件同样的、允许合成的装备可以合成为一件高一级的装备，合成之后装备属性会有一定的提升，同时装备需求等级也可能上升一级\n"
    msg = msg.."例如：两件“断空”(45级)，可以合成“断空·极”(46级)\n"
    msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
    msg = msg.."                                                       #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@info *01* 「返回」>\n"
    return msg
end

function zulininfo(npc,player)
    local msg = "                        装备租赁\n"
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
    msg = msg.."    如果你或你的朋友缺少装备，可以来我这里租赁装备，我这里提供很多装备的租赁，具体装备可以在装备租赁界面内查询。"
    msg = msg.."租赁的装备可以自由选择精炼等级(最多7级)和精炼属性，当然了，价格嘛，绝对公道，童叟无欺！\n#COLORCOLOR_RED#    另外，使用时间结束后我就会将它们收回！\n"
    msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
    msg = msg.."                                                      #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>#<@info *01* 「返回」>\n"
    return msg
end

function namechangeinfo(npc,player)
    local msg = "                        个性改名\n"
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
    msg = msg.."    如果你觉得自己的装备的名字不够霸气，哈哈，没关系，作为欧志子的师兄我会帮助你。"
    msg = msg.."使用这个功能你首先要把需要改名的装备放在包裹的第一格，然后点击对应的功能即可\n#COLORCOLOR_RED#    这个功能要100元宝的哦！\n"
    msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
    msg = msg.."                                                      #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@info *01* 「返回」>\n"
    return msg
end

--装备合成
function zhuanghecheng(npc,player)
	local msg = "请选择要合成什么职业的装备！\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@hecheng#1# *01* [战士装备]>\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@hecheng#2# *01* [法师装备]>\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@hecheng#3# *01* [道士装备]>\n \n \n \n"
	msg = msg.."                                                   #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01* 「返回」>\n"
	return msg
end

function leave(npc,player)
	return ""
end

function hecheng(npc,player,job)
	local msg = "请选择要合成武器还是防具\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700039##OFFSET<X:0,Y:-1>#<@wuqi#"..job.."#1# *01* [武器合成]>      \n#OFFSET<X:0,Y:2>##IMAGE1902700040##OFFSET<X:0,Y:-1>#<@fangju#"..job.."#2# *01* [防具合成]>\n \n \n \n \n"
	msg = msg.."                                                   #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@zhuanghecheng *01*「返回」>\n"
	return msg
end



function wuqi(npc,player,job,kind)
	local msg = " 你想合成什么武器？\n \n"
	for i = 1, table.getn(zb_table[tonumber(job)][tonumber(kind)]) do
	msg = msg.."<@wuqileixing#"..job.."#"..kind.."#"..i.."#*01* ["..zb_table[tonumber(job)][tonumber(kind)][i].."]>"
	msg = msg.."     "
	end
	msg = msg.."\n \n \n \n \n \n                                               #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"
	return msg
end

function fangju(npc,player,job,kind)
	local msg = " 你想合成什么防具？\n \n"
	for i = 1, table.getn(zb_table[tonumber(job)][tonumber(kind)]) do
	msg = msg.."<@fangjuleixing#"..job.."#"..kind.."#"..i.."#*01* ["..zb_table[tonumber(job)][tonumber(kind)][i].."]>"
	msg = msg.."     "
	end
	msg = msg.."\n \n \n \n \n \n                                               #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n\n"
	return msg
end

function wuqileixing(npc,player,job,kind,types)
	local msg = "请选择你要合成的装备品阶！\n \n"
	if tonumber(kind) == 1 and tonumber(types) < 3 then
	for i = 1, table.getn(jp_table) do
	msg = msg.."<@dazaozhuangbei#"..job.."#"..kind.."#"..types.."#"..i.."#*01* ["..zb_table[tonumber(job)][tonumber(kind)][tonumber(types)]..jp_table[i].."]>"
	msg = msg.."     "
	if jp_table[i] == jp_table[2] then break end
	end
	else
	for i = 1, table.getn(jp_table) do
	msg = msg.."<@dazaozhuangbei#"..job.."#"..kind.."#"..types.."#"..i.."#*01* ["..zb_table[tonumber(job)][tonumber(kind)][tonumber(types)]..jp_table[i].."]>"
	msg = msg.."     "
	end
	end
	msg = msg.."\n \n \n \n \n \n                                               #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	return msg
end

function dazaozhuangbei(npc,player,job,kind,types,quelity)
	local zname = zb_table[tonumber(job)][tonumber(kind)][tonumber(types)]..jp_table[tonumber(quelity)]
	msg = "打造「"..zb_table[tonumber(job)][tonumber(kind)][tonumber(types)]..jp_table[tonumber(quelity)].."」 ， 需要两件「"..duihuan[zname][3].."」 ， #COLORCOLOR_GREENG#打造会直接合成你包裹内的装备，请把精炼、封印过的装备存入仓库后再打造#COLOREND#，你确定打造吗？\n \n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700033##OFFSET<X:0,Y:-1>#<@quedingdazao#"..zname.." *01*[确定打造]>\n"
	msg = msg.."\n \n                                               #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	return msg
end


function quedingdazao(npc,player,zname)
	local delCount = 0
	local del_Guid = {}
	for i = 22 , 221 do
		local hechen_G = lualib:Item_GetBySite(player, i)
		local hecheng_K = lualib:KeyName(hechen_G)
		--print("KeyName"..hecheng_K)	
		if duihuan[zname][2] == hecheng_K and delCount < 2 then
			delCount = delCount + 1
			del_Guid[delCount] = hechen_G
		end
	end
	if delCount < 2 then
		--print("XXX")
		return "你没有两件"..duihuan[zname][3].."，无法打造。\n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	end
	
	for i = 1, table.getn(del_Guid) do
		if not lualib:Item_Destroy(player, del_Guid[i], "装备合成", "装备打造大师") then return "销毁道具失败" end
	end
	
	--if not lualib:DelItem(player,duihuan[zname][2],2,2,"装备合成","装备打造大师") then return "你没有两件"..duihuan[zname][3].."，无法打造。" end
	if not lualib:Player_GiveItemUnbind(player,duihuan[zname][1],1,"装备合成","装备打造大师") then return "装备添加失败！" end
	local user_name = lualib:Player_GetStrProp(player, lua_role_user_name)
	local gb = "恭喜 ["..user_name.."] 在装备打造大师出成功合成"..zname.."!"
	lualib:SysMsg_SendCenterMsg(1, gb,"")
	msg = "合成["..zname.."]成功!\n \n"
	msg = msg.." \n \n \n \n \n \n                                               #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"
	return msg
end

function fangjuleixing(npc,player,job,kind,types)
	local msg = "请选择你要合成的装备品阶！\n \n"
	for i = 1, table.getn(jp_table) do
	msg = msg.."<@dazaofangju#"..job.."#"..kind.."#"..types.."#"..i.."#*01* ["..zb_table[tonumber(job)][tonumber(kind)][tonumber(types)]..jp_table[i].."]>"
	msg = msg.."     "
	end
	msg = msg.."\n \n \n \n \n                                               #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"
	return msg
end

function dazaofangju(npc,player,job,kind,types,quelity)
	local fname = zb_table[tonumber(job)][tonumber(kind)][tonumber(types)]..jp_table[tonumber(quelity)]
	table_sex = {"(男)","(女)"}
	local msg = "请选择所要合成的防具！\n \n"
	for i = 1 , table.getn(table_sex) do
	msg = msg.. "<@xuanzxingbie#"..fname.."#"..table_sex[i].." *01*["..fname..table_sex[i].."]>"
	msg = msg.."     "
	end
	msg = msg.."\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"
	return msg
end

function xuanzxingbie(npc,player,fname,sex)
	local fjname = fname..sex
	local msg = "打造 「"..fjname.."」 ，需要两件「"..duihuan[fjname][3].."」，#COLORCOLOR_GREENG#打造会直接合成你包裹内的装备，请把精炼、封印过的装备存入仓库后再打造#COLOREND#，你确定打造吗？\n \n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700033##OFFSET<X:0,Y:-1>#<@quedingfangju#"..fjname.." *01*[确定打造]>\n"
	msg = msg.."\n \n                                               #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	return msg
end

function quedingfangju(npc,player,fjname)
	local delCount1 = 0
	local del_Guid = {}
	for i = 1 , 221 do
		local hechen_G = lualib:Item_GetBySite(player, i)
		local hecheng_K = lualib:KeyName(hechen_G)
		--print("KeyName"..hecheng_K)	
		if i > 21 and duihuan[fjname][2] == hecheng_K and delCount1 < 2 then
			delCount1 = delCount1 + 1
			del_Guid[delCount1] = hechen_G
		end
	end
	if delCount1 < 2 then
		return "你没有两件"..duihuan[fjname][3].."，无法打造。\n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	end
	
	for i = 1, table.getn(del_Guid) do
		if not lualib:Item_Destroy(player, del_Guid[i], "装备合成", "装备打造大师") then return "销毁道具失败" end
	end
	--if not lualib:DelItem(player,duihuan[fjname][2],2,2,"装备合成","装备打造大师") then return "你没有两件"..duihuan[fjname][3].."，无法打造。" end
	if not lualib:Player_GiveItemUnbind(player,duihuan[fjname][1],1,"装备合成","装备打造大师") then return "装备添加失败！" end
	local user_name = lualib:Player_GetStrProp(player, lua_role_user_name)
	local gb = "恭喜 ["..user_name.."] 在装备打造大师出成功合成"..fjname.."!"
	lualib:SysMsg_SendCenterMsg(1, gb,"")
	msg = "合成["..fjname.."]成功!\n \n"
	msg = msg.." \n \n \n \n \n \n                                               #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"
	return msg
end

--装备租赁
function zhuangzulin(npc,player)
	local msg = "你想租赁什么装备？\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700039##OFFSET<X:0,Y:-1>#<@zulin#1 *01*[武器租赁]>\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700040##OFFSET<X:0,Y:-1>#<@zulin#2 *01*[衣服租赁]>\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700041##OFFSET<X:0,Y:-1>#<@zulin#3 *01*[其他租赁]>\n \n \n \n"
	msg = msg.."                                                   #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01* 「返回」>\n"
	return msg
end

function leave(npc,player)
	return ""
end

function zulin(npc,player,types)
	local msg = "请选择你要装备!\n \n"
	for i = 1, table.getn(table_zb[tonumber(types)]) do
	msg = msg.."<@dazao#"..types.."#"..i.."# *01*["..table_zb[tonumber(types)][i][1].."]>"
	msg = msg.."        "
	end
	msg = msg.."\n \n \n \n \n                                               #OFFSET<X:0,Y:8>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"
	return msg
end

function dazao(npc,player,types,name)
	local msg = "#COLORCOLOR_BLUE#"..table_zb[tonumber(types)][tonumber(name)][1].."的属性:"..table_zb[tonumber(types)][tonumber(name)][3].."#COLOREND#\n请选择你所道的精炼等级！\n \n"
	for i = 1, table.getn(table_jl) do
	msg = msg.."<@pinjie#"..types.."#"..name.."#"..i.." *01*["..table_jl[i][1].."]>"
	msg = msg.."           "
	end
	msg = msg.."\n \n \n \n                                               #OFFSET<X:0,Y:8>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"
	return msg
end

function pinjie(npc,player,types,name,lvl)
	local msg = "请选择你所要精炼的的属性\n \n"
	for i = 1, table.getn(att_type[tonumber(table_zb[tonumber(types)][tonumber(name)][4])]) do
	msg = msg.."<@genTime#"..types.."#"..name.."#"..lvl.."#"..i.." *01*["..att_type[tonumber(table_zb[tonumber(types)][tonumber(name)][4])][i][1].."]>"
	msg = msg.."      "
	end
	msg = msg.."\n \n \n \n \n \n                                               #OFFSET<X:0,Y:8>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"
	return msg
end

function genTime(npc,player,types,name,lvl,attType)
	--print(npc,player,types,name,lvl,attType)
	lualib:SysMsg_SendInputDlg(player, 10, "请输入你所要租赁的时间(正整数)", 45, 3, "attt", npc.."#"..types.."#"..name.."#"..lvl.."#"..attType)
	return ""
end


function attt(id,player,times,param)
	--print(param)
	local times = tonumber(times)
	local params = lualib:StrSplit(param, "#")
	local npc = params[1]
	local types = params[2]
	local name = params[3]
	local lvl = params[4]
	local attType = params[5]
	--print(npc,player,types,name,lvl,attType, times)
	local msg = ""
	if times == nil or times < 1 or times%1 ~= 0 then
		msg = "你输入的租赁时间不正确！"
		lualib:NPCTalkEx(npc, player, msg)
		return ""
	end

    local money = (tonumber(table_zb[tonumber(types)][tonumber(name)][2]) * times + tonumber(table_jl[tonumber(lvl)][3]) * times)
	local msg = "租赁 ["..table_zb[tonumber(types)][tonumber(name)][1].."] + "..lvl.."，精炼属性为"..att_type[tonumber(table_zb[tonumber(types)][tonumber(name)][4])][tonumber(attType)][1].."，需要"..money.."元宝，你确定购买吗？\n \n \n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700033##OFFSET<X:0,Y:-1>#<@quedinggoumai#"..types.."#"..name.."#"..lvl.."#"..attType.."#"..money.."#"..times.." *01* [确定购买]>\n"
	msg = msg.."\n \n                                               #OFFSET<X:0,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01* 「返回首页」>\n"
	lualib:NPCTalkEx(npc, player, msg)
	return ""
end


function quedinggoumai(npc,player,types,name,lvl,attType, money, times)
	--print(npc,player,types,name,lvl,attType, money)
	if lualib:Player_GetBagFree(player) < 1 then
	lualib:SysMsg_SendTriggerMsg(player_guid, "背包空间不够，需要1个格子！")
	msg = "背包空间不够，需要1个格子！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	return msg
	end
	local money = tonumber(money)
	if lualib:Player_IsIngotEnough(player,money,false) == false then return "你的元宝不足，无法租赁\n \n \n \n \n \n \n \n                                                   #OFFSET<X:0,Y:8>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01* 「返回」>" end
	if not lualib:Player_SubIngot(player,money,false,"合成大师",player) then return "扣除元宝失败" end
	local zhuangbeiguid = lualib:Player_GiveSingleItem(player,table_zb[tonumber(types)][tonumber(name)][1],0,"合成大师","装备租赁")
	if zhuangbeiguid == "" then return "物品添加失败" end
	--print(zhuangbeiguid)
	local jlsx = att_type[tonumber(table_zb[tonumber(types)][tonumber(name)][4])][tonumber(attType)][2]
	if not lualib:Equip_SetRefineLevel(player,zhuangbeiguid,tonumber(lvl)) then return "设置精炼等级失败" end
	if not lualib:Equip_SetRefineProp(player,zhuangbeiguid,jlsx,tonumber(table_jl[tonumber(lvl)][2])) then return "设置精炼属性失败" end
	if not lualib:Item_SetLife(player, zhuangbeiguid, tonumber(times)*3600) then return "设置装备时限失败" end
	lualib:Item_NotifyUpdate(player,zhuangbeiguid)
	local msg = "购买成功！\n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:8>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	return msg
end
------装备改名
function gaiming(npc,player)
	local msg="#COLORCOLOR_YELLOW#1.装备个性改名可不是一般人能奢侈的，需要#COLOREND##COLORCOLOR_RED#100元宝#COLOREND##COLORCOLOR_YELLOW#哦！#COLOREND#\n"
	msg = msg.."#COLORCOLOR_YELLOW#2.请将所要修改的装备放在包裹第一个格子#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n \n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700032##OFFSET<X:0,Y:-1>#<@zhuangbeigaiming *01*[我要改名]>\n \n \n"
	msg = msg.."                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"	
	return msg
end


function zhuangbeigaiming(npc,player)
	local item_name = lualib:Player_GetItemGuid(player,lua_site_bag_0)
	local key = lualib:KeyName(item_name)
	local name = lualib:Name(item_name)
	local msg = "你要所修改的装备为 ["..name.."] ，你确定修改吗？\n"
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n \n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700032##OFFSET<X:0,Y:-1>#<@queding#"..item_name.."# *01*[确定修改]>\n \n \n \n"
	msg = msg.."                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	return msg
end

function queding(npc,player,itemKey)
	local item_type = lualib:Item_GetType(player,itemKey)
	--print(itemKey)
	if item_type ~= 1 then
		return "包裹第一个位置不是装备,无法装备改名\n \n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@zhuangbeigaiming *01*「返回」>"
	end
	
	local z_name = lualib:KeyName(itemKey)
	for i = 1, table.getn(table_zb) do
		for z = 1, table.getn(table_zb[i]) do
			if z_name == table_zb[i][z][1] then
				return "租赁装备不能进行改名！\n \n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			end
		end
	end
	
	if not lualib:Player_IsIngotEnough(player, tonumber(yuanbao), false) then
	
		return "你没有"..yuanbao.."元宝，不能改名！\n \n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	end
	

	
	lualib:SysMsg_SendInputDlg(player, 1, "请输入你所要修改的装备名称", 45, 14, "EnterHot", npc.."#"..itemKey)
	return ""
end


function EnterHot(id,player,toName,param)
	local params = lualib:StrSplit(param, "#")
	local npc = params[1]
	local item_name = params[2]
	local msg = ""
	--print(npc,item_name)
	--local item_name = lualib:Player_GetItemGuid(player,lua_site_bag_0)
	local item_type = lualib:Item_GetType(player,item_name)
	local yuan_iName = lualib:Name(item_name)
	if string.find(toName,"[%]%[]") ~= nil then 
		local msg = "输入的名称不合法，请重新输入！\n \n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@zhuangbeigaiming *01*「返回」>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	
	if lualib:IsBanString(toName) == true then 
		msg = "输入的名称不合法，请重新输入！\n \n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@zhuangbeigaiming *01*「返回」>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	if item_type ~= 1 then
		msg = "包裹第一个位置不是装备，无法装备改名\n \n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	local cName = "(改)"..toName
	if not lualib:Item_ChangeName(player,item_name,cName) then return "改名失败" end
	local gaiming_p = lualib:KeyName(player)
	local play_name = lualib:Name(player)
	if lualib:Player_SubIngot(player, yuanbao, false, "装备改名", player) == false then
		lualib:NPCTalkEx(npc, player, "扣除元宝失败")
		return true
	end
	
	local gb2 = "玩家 ["..play_name.."] 在装备打造大师将 ["..yuan_iName.."] 命名为 ["..cName.."] !"
	lualib:SysMsg_SendCenterMsg(1, gb2,"")
	
	msg = "装备改名成功！\n \n \n \n \n \n \n \n \n                                          #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	lualib:NPCTalkEx(npc, player, msg)
	return true
end