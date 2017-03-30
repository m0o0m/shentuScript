local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")
require("system/ScriptPackage")
require("form/ActivityDegree_s")
local BayeEquip = {"霸业神剑", "10级物攻宝石", "10级魔攻宝石", {"霸业神甲男", "霸业神甲女"}, "10级道攻宝石", "10级生命宝石"}
local ZhiZunEquip = {"至尊傲天战刃", "天狂玄傲法杖", "傲天元法道剑", {"至尊傲天战甲", "至尊傲天战袍"}, {"天狂玄傲法袍", "天狂玄傲羽衣"}, {"傲天元法道袍", "傲天元法道衣"}}

local sheng_tab = {{"至尊傲天头盔","至尊傲天项链","至尊傲天手镯","至尊傲天戒指"},--战士
{"天狂玄傲头盔","天狂玄傲项链","天狂玄傲手镯","天狂玄傲戒指"},--法师
{"傲天元法头盔","傲天元法项链","傲天元法手镯","傲天元法戒指"}}--道士
--探宝所能获得物品表
local tanbao_basic = {
			{"经验丹小", 1,	12000},
			{"经验丹中", 1,	6000},
			{"经验丹大", 1,	2000},
			{"顶尖BOSS召唤令", 1, 500},
			{"2级生命宝石", 1, 50},
			{"2级物攻宝石", 1, 50},
			{"2级魔攻宝石", 1, 50},
			{"2级道攻宝石", 1, 50},
			{"2级物防宝石", 1, 50},
			{"2级魔防宝石", 1, 50},
		}
local tanbao_equip = {
			{"武魂手镯", 1,	8000},
			{"天武手镯", 1, 6400},
			{"神武手镯", 1,	3200},
			{"圣武手镯", 1,	1600},
			{"威武手镯", 1,	800},
			{"洪武行天手镯", 1,	400},
			{"雄武震天手镯", 1,	200},
			{"尊武凌天手镯", 1,	100},
			{"神威亢天手镯", 1,	50},
			{"至尊傲天手镯", 1,	25},
			
			{"魔魂手镯", 1,	8000},
			{"天魔手镯", 1,	6400},
			{"神魔手镯", 1,	3200},
			{"圣魔手镯", 1,	1600},
			{"幻神手镯", 1,	800},
			{"天地玄奇手镯", 1,	400},
			{"天异玄奥手镯", 1,	200},
			{"天魁玄灵手镯", 1,	100},
			{"天暴玄宗手镯", 1,	50},
			{"天狂玄傲手镯", 1,	25},
			
			{"玄魂手镯", 1,	8000},
			{"天灵手镯", 1,	6400},
			{"神灵手镯", 1,	3200},
			{"圣灵手镯", 1,	1600},
			{"无量手镯", 1,	800},
			{"玄天妙法手镯", 1,	400},
			{"混天广法手镯", 1,	200},
			{"鸿天明法手镯", 1,	100},
			{"昊天玄尊手镯", 1,	50},
			{"傲天元法手镯", 1,	25},
			
			{"武魂戒指", 1,	8000},
			{"天武戒指", 1,	6400},
			{"神武戒指", 1,	3200},
			{"圣武戒指", 1,	1600},
			{"威武戒指", 1,	800},
			{"洪武行天戒指", 1,	400},
			{"雄武震天戒指", 1,	200},
			{"尊武凌天戒指", 1,	100},
			{"神威亢天戒指", 1,	50},
			{"至尊傲天戒指", 1,	25},
			
			{"魔魂戒指", 1,	8000},
			{"天魔戒指", 1,	6400},
			{"神魔戒指", 1,	3200},
			{"圣魔戒指", 1,	1600},
			{"幻神戒指", 1,	800},
			{"天地玄奇戒指", 1,	400},
			{"天异玄奥戒指", 1,	200},
			{"天魁玄灵戒指", 1,	100},
			{"天暴玄宗戒指", 1,	50},
			{"天狂玄傲戒指", 1,	25},
			
			{"玄魂戒指", 1,	8000},
			{"天灵戒指", 1,	6400},
			{"神灵戒指", 1,	3200},
			{"圣灵戒指", 1,	1600},
			{"无量戒指", 1,	800},
			{"玄天妙法戒指", 1,	400},
			{"混天广法戒指", 1,	200},
			{"鸿天明法戒指", 1,	100},
			{"昊天玄尊戒指", 1,	50},
			{"傲天元法戒指", 1,	25},
			
			{"武魂腰带", 1,	8000},
			{"天武腰带", 1,	6400},
			{"神武腰带", 1,	3200},
			{"圣武腰带", 1,	1600},
			{"威武腰带", 1,	800},
			{"洪武行天腰带", 1,	400},
			{"雄武震天腰带", 1,	200},
			{"尊武凌天腰带", 1,	100},
			{"神威亢天腰带", 1,	50},
			{"至尊傲天腰带", 1,	25},
			
			{"魔魂腰带", 1,	8000},
			{"天魔腰带", 1,	6400},
			{"神魔腰带", 1,	3200},
			{"圣魔腰带", 1,	1600},
			{"幻神腰带", 1,	800},
			{"天地玄奇腰带", 1,	400},
			{"天异玄奥腰带", 1,	200},
			{"天魁玄灵腰带", 1,	100},
			{"天暴玄宗腰带", 1,	50},
			{"天狂玄傲腰带", 1,	25},
			
			{"玄魂腰带", 1,	8000},
			{"天灵腰带", 1,	6400},
			{"神灵腰带", 1,	3200},
			{"圣灵腰带", 1,	1600},
			{"无量腰带", 1,	800},
			{"玄天妙法腰带", 1,	400},
			{"混天广法腰带", 1,	200},
			{"鸿天明法腰带", 1,	100},
			{"昊天玄尊腰带", 1,	50},
			{"傲天元法腰带", 1,	25},
			
			{"武魂项链", 1,	8000},
			{"天武靴子", 1,	6400},
			{"神武靴子", 1,	3200},
			{"圣武靴子", 1,	1600},
			{"威武靴子", 1,	800},
			{"洪武行天靴子", 1,	400},
			{"雄武震天靴子", 1,	200},
			{"尊武凌天靴子", 1,	100},
			{"神威亢天靴子", 1,	50},
			{"至尊傲天靴子", 1,	25},
			
			{"魔魂靴子", 1,	8000},
			{"天魔靴子", 1,	6400},
			{"神魔靴子", 1,	3200},
			{"圣魔靴子", 1,	1600},
			{"幻神靴子", 1,	800},
			{"天地玄奇靴子", 1,	400},
			{"天异玄奥靴子", 1,	200},
			{"天魁玄灵靴子", 1,	100},
			{"天暴玄宗靴子", 1,	50},
			{"天狂玄傲靴子", 1,	25},
			
			{"玄魂靴子", 1,	8000},
			{"天灵靴子", 1,	6400},
			{"神灵靴子", 1,	3200},
			{"圣灵靴子", 1,	1600},
			{"无量靴子", 1,	800},
			{"玄天妙法靴子", 1,	400},
			{"混天广法靴子", 1,	200},
			{"鸿天明法靴子", 1,	100},
			{"昊天玄尊靴子", 1,	50},
			{"傲天元法靴子", 1,	25},
			
			{"武魂项链", 1,	8000},
			{"天武项链", 1,	6400},
			{"神武项链", 1,	3200},
			{"圣武项链", 1,	1600},
			{"威武项链", 1,	800},
			{"洪武行天项链", 1,	400},
			{"雄武震天项链", 1,	200},
			{"尊武凌天项链", 1,	100},
			{"神威亢天项链", 1,	50},
			{"至尊傲天项链", 1,	25},
			
			{"魔魂项链", 1,	8000},
			{"天魔项链", 1,	6400},
			{"神魔项链", 1,	3200},
			{"圣魔项链", 1,	1600},
			{"幻神项链", 1,	800},
			{"天地玄奇项链", 1,	400},
			{"天异玄奥项链", 1,	200},
			{"天魁玄灵项链", 1,	100},
			{"天暴玄宗项链", 1,	50},
			{"天狂玄傲项链", 1,	25},
			
			{"玄魂项链", 1,	8000},
			{"天灵项链", 1,	6400},
			{"神灵项链", 1,	3200},
			{"圣灵项链", 1,	1600},
			{"无量项链", 1,	800},
			{"玄天妙法项链", 1,	400},
			{"混天广法项链", 1,	200},
			{"鸿天明法项链", 1,	100},
			{"昊天玄尊项链", 1,	50},
			{"傲天元法项链", 1,	25},
			
			{"武魂头盔", 1,	8000},
			{"天武头盔", 1,	6400},
			{"神武头盔", 1,	3200},
			{"圣武头盔", 1,	1600},
			{"威武头盔", 1,	800},
			{"洪武行天头盔", 1,	400},
			{"雄武震天头盔", 1,	200},
			{"尊武凌天头盔", 1,	100},
			{"神威亢天头盔", 1,	50},
			{"至尊傲天头盔", 1,	25},
			
			{"魔魂头盔", 1,	8000},
			{"天魔头盔", 1,	6400},
			{"神魔头盔", 1,	3200},
			{"圣魔头盔", 1,	1600},
			{"幻神头盔", 1,	800},
			{"天地玄奇头盔", 1,	400},
			{"天异玄奥头盔", 1,	200},
			{"天魁玄灵头盔", 1,	100},
			{"天暴玄宗头盔", 1,	50},
			{"天狂玄傲头盔", 1,	25},
			
			{"玄魂头盔", 1,	8000},
			{"天灵头盔", 1,	6400},
			{"神灵头盔", 1,	3200},
			{"圣灵头盔", 1,	1600},
			{"无量头盔", 1,	800},
			{"玄天妙法头盔", 1,	400},
			{"混天广法头盔", 1,	200},
			{"鸿天明法头盔", 1,	100},
			{"昊天玄尊头盔", 1,	50},
			{"傲天元法头盔", 1,	25},
		}
local tanbao_item =	{
			-- {"经验丹大", 1,	20},
			-- {"双倍经验12小时", 1, 20},
			-- {"三倍经验8小时", 1, 15},
			-- {"金砖大",	1, 15},
			-- {"超级金砖", 1 , 5},
			-- {"高级BOSS积分精魄", 1,	20},
			-- {"超级BOSS积分精魄", 1,	20},
			-- {"高级转生丹", 1, 20},
			-- {"魂珠碎片中", 1, 30},
			-- {"魂珠碎片大", 1, 10},
			-- {"宝石结晶中", 1, 30},
			-- {"宝石结晶大", 1, 10},
			-- {"高级成就令牌", 1,	15},
			-- {"灵石精华中", 1, 30},
			-- {"灵石精华大", 1, 10},
			-- {"高级功勋卷轴", 1,	20},
			-- {"高级魔魂卷轴", 1,	5},
		}
local tanbao_cloth = {
			{"武魂战甲", 1, 8000},
			{"天武战甲", 1, 6400},
			{"神武战甲", 1, 3200},
			{"圣武战甲", 1, 1600},
			{"威武战甲", 1, 800},
			{"洪武行天战甲", 1, 400},
			{"雄武震天战甲", 1, 200},
			{"尊武凌天战甲", 1, 100},
			{"神威亢天战甲", 1, 50},
			{"至尊傲天战甲", 1, 25},
			
			{"武魂战袍", 1, 8000},
			{"天武战袍", 1, 6400},
			{"神武战袍", 1, 3200},
			{"圣武战袍", 1, 1600},
			{"威武战袍", 1, 800},
			{"洪武行天战袍", 1, 400},
			{"雄武震天战袍", 1, 200},
			{"尊武凌天战袍", 1, 100},
			{"神威亢天战袍", 1, 50},
			{"至尊傲天战袍", 1, 25},
			
			{"魔魂法袍", 1, 8000},
			{"天魔法袍", 1, 6400},
			{"神魔法袍", 1, 3200},
			{"圣魔法袍", 1, 1600},
			{"幻神法袍", 1, 800},
			{"天地玄奇法袍", 1, 400},
			{"天异玄奥法袍", 1, 200},
			{"天魁玄灵法袍", 1, 100},
			{"天暴玄宗法袍", 1, 50},
			{"天狂玄傲法袍", 1, 25},
			
			{"魔魂羽衣", 1, 8000},
			{"天魔羽衣", 1, 6400},
			{"神魔羽衣", 1, 3200},
			{"圣魔羽衣", 1, 1600},
			{"幻神羽衣", 1, 800},
			{"天地玄奇羽衣", 1, 400},
			{"天异玄奥羽衣", 1, 200},
			{"天魁玄灵羽衣", 1, 100},
			{"天暴玄宗羽衣", 1, 50},
			{"天狂玄傲羽衣", 1, 25},
			
			{"玄魂道袍", 1, 8000},
			{"天灵道袍", 1, 6400},
			{"神灵道袍", 1, 3200},
			{"圣灵道袍", 1, 1600},
			{"无量道袍", 1, 800},
			{"玄天妙法道袍", 1, 400},
			{"混天广法道袍", 1, 200},
			{"鸿天明法道袍", 1, 100},
			{"昊天玄尊道袍", 1, 50},
			{"傲天元法道袍", 1, 25},
			
			{"玄魂道衣", 1, 8000},
			{"天灵道衣", 1, 6400},
			{"神灵道衣", 1, 3200},
			{"圣灵道衣", 1, 1600},
			{"无量道衣", 1, 800},
			{"玄天妙法道衣", 1, 200},
			{"混天广法道衣", 1, 200},
			{"鸿天明法道衣", 1, 100},
			{"昊天玄尊道衣", 1, 50},
			{"傲天元法道衣", 1, 25},
			
			{"霸业神甲男", 1, 5},
			{"霸业神甲女", 1, 5},
		}	
local tanbao_weapon = {
			{"武魂战刃", 1, 8000},
			{"天武战刃", 1, 6400},
			{"神武战刃", 1, 3200},
			{"圣武战刃", 1, 1600},
			{"威武战刃", 1, 800},
			{"洪武行天战刃", 1, 400},
			{"雄武震天战刃", 1, 200},
			{"尊武凌天战刃", 1, 100},
			{"神威亢天战刃", 1, 50},
			{"至尊傲天战刃", 1, 25},
			
			{"魔魂法杖", 1, 8000},
			{"天魔法杖", 1, 6400},
			{"神魔法杖", 1, 3200},
			{"圣魔法杖", 1, 1600},
			{"幻神法杖", 1, 800},
			{"天地玄奇法杖", 1, 400},
			{"天异玄奥法杖", 1, 200},
			{"天魁玄灵法杖", 1, 100},
			{"天暴玄宗法杖", 1, 50},
			{"天狂玄傲法杖", 1, 25},
			
			{"玄魂道剑", 1, 8000},
			{"天灵道剑", 1, 6400},
			{"神灵道扇", 1, 3200},
			{"圣灵道剑", 1, 1600},
			{"无量道剑", 1, 800},
			{"玄天妙法道扇", 1, 400},
			{"混天广法道剑", 1, 200},
			{"鸿天明法道剑", 1, 100},
			{"昊天玄尊道剑", 1, 50},
			{"傲天元法道剑", 1, 25},
			
			{"霸业神剑", 1, 5},
		}

						
local _ot = {["霸业神剑"]=1, ["霸业神甲男"]=1, ["霸业神甲女"]=1, ["傲天元法道剑"]=1, ["昊天玄尊道剑"]=1, ["鸿天明法道剑"]=1,
			["混天广法道剑"]=1, ["玄天妙法道扇"]=1, ["无量道剑"]=1, ["圣灵道剑"]=1, ["神灵道扇"]=1, ["天狂玄傲法杖"]=1, 
			["天暴玄宗法杖"]=1, ["天魁玄灵法杖"]=1, ["天异玄奥法杖"]=1, ["天地玄奇法杖"]=1, ["幻神法杖"]=1, ["圣魔法杖"]=1, 
			["神魔法杖"]=1, ["至尊傲天战刃"]=1, ["神威亢天战刃"]=1, ["尊武凌天战刃"]=1, ["雄武震天战刃"]=1, ["洪武行天战刃"]=1, 
			["威武战刃"]=1, ["圣武战刃"]=1, ["神武战刃"]=1, ["傲天元法道衣"]=1, ["昊天玄尊道衣"]=1, ["鸿天明法道衣"]=1, 
			["混天广法道衣"]=1, ["玄天妙法道衣"]=1, ["无量道衣"]=1, ["圣灵道衣"]=1, ["神灵道衣"]=1, ["傲天元法道袍"]=1, 
			["昊天玄尊道袍"]=1, ["鸿天明法道袍"]=1, ["混天广法道袍"]=1, ["玄天妙法道袍"]=1, ["无量道袍"]=1, ["圣灵道袍"]=1, 
			["神灵道袍"]=1, ["天狂玄傲羽衣"]=1, ["天暴玄宗羽衣"]=1, ["天魁玄灵羽衣"]=1, ["天异玄奥羽衣"]=1, ["天地玄奇羽衣"]=1, 
			["幻神羽衣"]=1, ["圣魔羽衣"]=1, ["神魔羽衣"]=1, ["天狂玄傲法袍"]=1, ["天暴玄宗法袍"]=1, ["天魁玄灵法袍"]=1, 
			["天异玄奥法袍"]=1, ["天地玄奇法袍"]=1, ["幻神法袍"]=1, ["圣魔法袍"]=1, ["神魔法袍"]=1, ["至尊傲天战袍"]=1, 
			["神威亢天战袍"]=1, ["尊武凌天战袍"]=1, ["雄武震天战袍"]=1, ["洪武行天战袍"]=1, ["威武战袍"]=1, ["圣武战袍"]=1, 			
			["神武战袍"]=1, ["至尊傲天战甲"]=1, ["神威亢天战甲"]=1, ["尊武凌天战甲"]=1, ["雄武震天战甲"]=1, ["洪武行天战甲"]=1, 
			["威武战甲"]=1, ["圣武战甲"]=1, ["神武战甲"]=1, ["傲天元法头盔"]=1, ["昊天玄尊头盔"]=1, ["鸿天明法头盔"]=1,
			["混天广法头盔"]=1, ["玄天妙法头盔"]=1, ["天狂玄傲头盔"]=1, ["天暴玄宗头盔"]=1, ["天魁玄灵头盔"]=1, ["天异玄奥头盔"]=1,
			["天地玄奇头盔"]=1, ["至尊傲天头盔"]=1, ["神威亢天头盔"]=1, ["尊武凌天头盔"]=1, ["雄武震天头盔"]=1, ["洪武行天头盔"]=1,
			["傲天元法项链"]=1, ["昊天玄尊项链"]=1, ["鸿天明法项链"]=1, ["混天广法项链"]=1, ["玄天妙法项链"]=1, ["天狂玄傲项链"]=1,
			["天暴玄宗项链"]=1, ["天魁玄灵项链"]=1, ["天异玄奥项链"]=1, ["天地玄奇项链"]=1, ["至尊傲天项链"]=1, ["神威亢天项链"]=1,
			["尊武凌天项链"]=1, ["雄武震天项链"]=1, ["洪武行天项链"]=1, ["傲天元法靴子"]=1, ["昊天玄尊靴子"]=1, ["鸿天明法靴子"]=1,
			["混天广法靴子"]=1, ["天狂玄傲靴子"]=1, ["天暴玄宗靴子"]=1, ["天异玄奥靴子"]=1, ["天魁玄灵靴子"]=1, ["天地玄奇靴子"]=1,
			["至尊傲天靴子"]=1, ["玄天妙法靴子"]=1, ["神威亢天靴子"]=1, ["尊武凌天靴子"]=1, ["雄武震天靴子"]=1, ["洪武行天靴子"]=1,
			["傲天元法腰带"]=1, ["昊天玄尊腰带"]=1, ["鸿天明法腰带"]=1, ["混天广法腰带"]=1, ["玄天妙法腰带"]=1, ["天狂玄傲腰带"]=1,
			["天暴玄宗腰带"]=1, ["天魁玄灵腰带"]=1, ["天异玄奥腰带"]=1, ["天地玄奇腰带"]=1, ["至尊傲天腰带"]=1, ["神威亢天腰带"]=1,
			["尊武凌天腰带"]=1, ["雄武震天腰带"]=1, ["洪武行天腰带"]=1, ["傲天元法戒指"]=1, ["昊天玄尊戒指"]=1, ["鸿天明法戒指"]=1,
			["混天广法戒指"]=1, ["玄天妙法戒指"]=1, ["天狂玄傲戒指"]=1, ["天暴玄宗戒指"]=1, ["天魁玄灵戒指"]=1, ["天异玄奥戒指"]=1,
			["天地玄奇戒指"]=1, ["至尊傲天戒指"]=1, ["神威亢天戒指"]=1, ["尊武凌天戒指"]=1, ["雄武震天戒指"]=1, ["洪武行天戒指"]=1,
			["傲天元法手镯"]=1, ["昊天玄尊手镯"]=1, ["混天广法手镯"]=1, ["玄天妙法手镯"]=1, ["天狂玄傲手镯"]=1, ["天暴玄宗手镯"]=1,
			["天魁玄灵手镯"]=1, ["天异玄奥手镯"]=1, ["鸿天明法手镯"]=1, ["天地玄奇手镯"]=1, ["至尊傲天手镯"]=1, ["神威亢天手镯"]=1,
			["尊武凌天手镯"]=1, ["雄武震天手镯"]=1, ["洪武行天手镯"]=1, ["顶尖BOSS召唤令"]=1, ["1级物攻宝石"]=1, ["1级魔攻宝石"]=1,
			["1级道攻宝石"]=1, ["1级物防宝石"]=1, ["1级魔防宝石"]=1, ["1级生命宝石"]=1
}

--——————————图标显示——————————
function openTreasureHouse_show(player)
	local level = lualib:Level(player)
	if level > 59 then 
		AddSEIcon(player, 2, -4, "探宝", 1800200079, "倒计时", "openTreasureHouse","","探宝得极品装备")
	else
		AddSEIcon(player, 2, -4, "探宝", 1800200079, "倒计时", "openTreasureHouse","","65级开启探宝")
	end 
	
    --  AddIconMagic(player, "探宝",1094200000 , 0,62, 150)
	return ""
end
 
-------------------图标被点击-----------------------
function openTreasureHouse(player)
	
	local level = lualib:Level(player)
	if level < 60 then 
		return ""
	end 
	-------------weiduan--------------
	if lualib:GetClientType(player) == 0 then
		local score = lualib:GetInt(player, "tanbao_score")
		local newDisplay = playDisplayFive(player)
		local treasureTxt = lualib:GetDBStr("treasureMsgDataBase")
		local strDataBase = {}
		if treasureTxt ~= "" then
			strDataBase = json.decode(treasureTxt)
		end
		
		local job = tonumber(lualib:Job(player))
		BayeEquip[2]= sheng_tab[job][1]
		BayeEquip[3]= sheng_tab[job][2]
		BayeEquip[5]= sheng_tab[job][3]
		BayeEquip[6]= sheng_tab[job][4]
		lualib:ShowFormWithContent(player, "form文件表单", "TreasureWnd#".. serialize(ZhiZunEquip) .. "#" .. serialize(BayeEquip) .. "#" .. score .. "#" .. serialize(newDisplay) .. "#" .. serialize(strDataBase))
		return ""
	end
	---------------------------------
	--lualib:SetDBNum("ActivityUnderway",0)
	--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
	--lualib:SysPromptMsg(player, ""..ActivityVar)
	lualib:ShowFormWithContent(player, "脚本表单Sc", "UI.Asc_OpenWindow(0, \"TreasureWnd.sc\");")
    return ""
end

function DataInform(player)
	local data = {}
	local score = lualib:GetInt(player, "tanbao_score")
	local newDisplay = playDisplayFive(player)
	local treasureTxt = lualib:GetDBStr("treasureMsgDataBase")
	local strDataBase = {}
	if treasureTxt ~= "" then
		strDataBase = json.decode(treasureTxt)
	end
	
	local job = tonumber(lualib:Job(player))
	BayeEquip[2]= sheng_tab[job][1]
	BayeEquip[3]= sheng_tab[job][2]
	BayeEquip[5]= sheng_tab[job][3]
	BayeEquip[6]= sheng_tab[job][4]
	
	data[1], data[2], data[3], data[4], data[5] = ZhiZunEquip, BayeEquip, score, newDisplay, strDataBase
	lualib:ShowFormWithContent(player, "脚本表单Sc", "TreasureWnd.ContentFill("..serializeSc(data)..");")
	return ""
end

function tanbaoRandomItem()
	local rand = math.random(1, 100)
	local tb = {}
	if rand <= 3 then
		tb = tanbao_equip
	elseif rand <= 13 then
		tb = tanbao_weapon
	elseif rand <= 25 then
		tb = tanbao_cloth
	elseif rand <= 100 then
		tb = tanbao_basic
	end
	local t = {}	
	local t_rate = {}					
	for i = 1 , #tb do 
		t[i] = tb[i][1]
		t_rate[i] = tb[i][3]
	end	
	local maxs = 0
	local rate_t = {}
	for i = 1, #t_rate do
		maxs = maxs + t_rate[i]
		rate_t[i] = maxs
	end
	
	local key = 1
	local rand = math.random(1, maxs)
	for i = 1, #rate_t do
		if rand < rate_t[i] then
			key = i
			break
		end
	end
	return t[key]
end
function seekTreasure(player, yb)
	yb = tonumber(yb)
	local table t = {}
	t = 	lualib:GetItemsByKeys(player, "宝藏钥匙", false, true, false, false)
	local cost = 200
	if 1800 == yb then
		cost = 180
	end
	if tonumber(yb) <= lualib:GetIngot(player) or t[1] ~= nil then
		local chargeStr = lualib:GetStr(player, "player_treasures")
		if chargeStr ~= nil and chargeStr ~= "" then 
			local chargeTb = json.decode(chargeStr)
			local length = 0
			for k,v in pairs(chargeTb) do
				length=length+1
			end
			if math.floor(tonumber(yb)/cost) + length > 280 then
				-- lualib:MsgBox(player, "宝藏仓库已满,请先清理仓库!")
				lualib:ShowFormWithContent(player,"脚本表单Sc","TreasureWnd.Msg_Box();")
				return ""
			end
		end
		
		local leftYb = tonumber(yb)
		while leftYb > 0 do
			local str = lualib:GetStr(player, "player_treasures")
			local temp = 1
			if lualib:DelItem(player, "宝藏钥匙", 1, 2, "探宝", player) then
				temp = 2
			elseif lualib:SubIngot(player, cost, "探宝消耗", "用户") then
				--********************************--
				local indexx = lualib:GetDBNum("consumeTerm")
				local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + cost
				RecordTop10ConsumeInfo(player,totalYb)
				--********************************--
				temp = 2
			end
			if temp == 2 then
				------------每日活跃度探宝-------
				local count = lualib:GetDayInt(player, "activityDgr_tb")
				if 0 == count then
					lualib:SetDayInt(player, "activityDgr_tb", 1)
					lualib:SetDayInt(player, "totalActivityDegree", lualib:GetDayInt(player, "totalActivityDegree") + 15)
					ActivityDegree_setFlag(player)
				end
				------------每日活跃度探宝END-------
				local randomNumItem = tanbaoRandomItem()
				--存储玩家探宝所得，可排序
				local player_treasure = {}
				local displayStr = lualib:GetStr(player, "player_displayT")
				local display_treasure = {}
				if str ~= nil and str ~= "" and displayStr ~= "" then
					player_treasure = json.decode(str)
					display_treasure = json.decode(displayStr)
					local length = 0
					for k,v in pairs(player_treasure) do
						length=length+1
					end
					local a = length
					local b = #display_treasure		
					if player_treasure[randomNumItem] ~= nil then
						player_treasure[randomNumItem] = player_treasure[randomNumItem]+1
					else
						player_treasure[randomNumItem] = 1
					end
					display_treasure[b + 1] = randomNumItem
					TreasureMsgDataBase(player,randomNumItem)
				else
					player_treasure = {}
					display_treasure = {}
					player_treasure[randomNumItem] = 1
					display_treasure[1] = randomNumItem
					TreasureMsgDataBase(player,randomNumItem)
				end
				lualib:SetStr(player, "player_treasures", json.encode(player_treasure))
				lualib:SetStr(player, "player_displayT", json.encode(display_treasure))
				local tbScore = lualib:GetInt(player, "tanbao_score")
				lualib:SetInt(player, "tanbao_score", tbScore + 1)
				leftYb = leftYb - cost
				
			end 
		end
		local isExchangePage = lualib:GetInt(player, "isExchangePage")
		local tbScore = lualib:GetInt(player, "tanbao_score")
		--[[if tbScore > 0 and isExchangePage == 0 then
			lualib:SetInt(player, "isExchangePage", 1)
			DelIcon(player,"战神")
			AddSEIcon(player, 2, -4, "积分装备", 1800200039, "倒计时", "openExchangePage","","兑换极品装备")		
			AddSEIcon(player, 2, -5, "战神", 1800200055, "倒计时", "openMarsPage","","英雄战神与你一起战斗")
		end--]]
		local newDisplay = playDisplayFive(player)
		local strDataBase = json.decode(lualib:GetDBStr("treasureMsgDataBase"))
		local str =  json.decode(lualib:GetStr(player, "player_treasures"))
		strDataBase["length"] = #strDataBase
		local newStr = {}
		for k,v in pairs(str) do
			newStr[#newStr+1] = {k,v}
		end
		lualib:ShowFormWithContent(player, "脚本表单Sc", "TreasureWnd.isTreasureBagOpen(".. serializeSc(newStr) .. ");TreasureWnd.Update2(" .. tbScore .. "," .. serializeSc(newDisplay) .. "," .. serializeSc(strDataBase) .. ");")
	else 	
		lualib:ShowFormWithContent(player,"脚本表单Sc","TreasureWnd.MsgAttention(" .. 1 .. ");")
		return""
	end
	return ""
end

function TreasureMsgDataBase(player,randomNumItem)
	local serviceDisplay = ""
	if _ot[randomNumItem] == 1 then
		serviceDisplay = randomNumItem
	else
		return ""
	end
	local str = lualib:GetDBStr("treasureMsgDataBase")
	local treasureMsgDataBase = {}
	local name = lualib:Name(player)
	if str ~= nil and str ~= "" then
		treasureMsgDataBase = json.decode(str)
		local a = #treasureMsgDataBase
		treasureMsgDataBase[a + 1] = name .. ":" .. serviceDisplay
	else
		treasureMsgDataBase = {}
		treasureMsgDataBase[1] = name .. ":" .. serviceDisplay
	end
	local length = #treasureMsgDataBase
	if length > 5 then
		for i = 1, length - 5 do
			table.remove(treasureMsgDataBase, i)
		end
	end
	treasureMsgDataBase["length"] = #treasureMsgDataBase
	lualib:SetDBStrEx("treasureMsgDataBase", json.encode(treasureMsgDataBase), 0)
	return ""
end

function setTreasureMsg(player)
	local str = lualib:GetDBStr("treasureMsgDataBase")
	if str ~= "" then
		local tab = json.decode(str)
		tab["length"] = #tab
		lualib:ShowFormWithContent(player, "脚本表单Sc", "TreasureWnd.SetTreasureMsg(" .. serializeSc(tab) .. ");")
	end	
	return ""
end

function playDisplayFive(player)
	local str = lualib:GetStr(player, "player_displayT")
	if str == "" then
		return ""
	end
	local treasure = json.decode(str)
	--取最后五个用于显示
	local length = #treasure
	if length > 5 then
		for i = 1, length - 5 do
			table.remove(treasure, 1)
		end
		lualib:SetStr(player, "player_displayT", json.encode(treasure))
	end
	treasure["length"] = #treasure
	return treasure
end