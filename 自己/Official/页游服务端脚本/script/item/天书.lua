local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/征服系统")

local lua_kezhaoguaiwu = "<@kezhao *01*可招的怪物>\n"

local lua_tianshu = {{{"当前等级合适探险地图: 巫山城\n \n挑战怪物：鸡、鹿","可携带装备: \n \n新手之剑、木棍、古藤棍、新手衣服、麻布衣、新手项链、新手戒指、新手护腕\n","当前没有技能可学"},
    {"当前等级合适探险地图: 巫山城 \n \n挑战怪物：鸡、鹿","可携带装备: \n \n新手之剑、木棍、古藤棍、新手衣服、麻布衣、新手项链、新手戒指、新手护腕\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 巫山城\n \n挑战怪物：鸡、鹿","可携带装备: \n \n小护腕、普通项链\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 巫山城\n \n挑战怪物：白茅人、木器人","可携带装备: \n \n小护腕、普通项链\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 巫山城\n \n挑战怪物：白茅人、木器人","可携带装备: \n \n短剑、皮手套、幸运符、青铜戒指、犀角戒指\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 巫山城\n \n挑战怪物：白茅人、木器人","可携带装备: \n \n短剑、皮手套、幸运符、青铜戒指、犀角戒指\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 巫山城\n \n挑战怪物：白茅怪人、白茅邪人","可携带装备: \n \n草鞋\n","当前可学技能: 剑术心法、剑术心法1级"},
					  {"当前等级合适探险地图: 巫山城\n \n挑战怪物：白茅怪人、白茅邪人","可携带装备: \n \n铁手镯、黄金项链\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 巫山城\n \n挑战怪物：毒蜘蛛、花蜘蛛","可携带装备: \n \n大手镯\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 绝路谷、绝路岭\n \n挑战怪物：顽猴","可携带装备: \n \n长刀、新手长刀、御战护腕、御战靴子、御战戒指、铁头盔\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 绝路谷、绝路岭\n \n挑战怪物：猿猴","可携带装备: \n \n轻型盔甲、玉\n","剑术心法2级"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、红蛇、青蛇、白蛇、黑水蛇","可携带装备: \n \n骨甲护腕、力量水晶戒指\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、红蛇、青蛇、白蛇、黑水蛇","可携带装备: \n \n砍柴斧\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、红蛇、青蛇、白蛇、黑水蛇、单刀骷髅、飞刀骷髅","可携带装备: \n \n魔法头盔、力量水晶项链\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、红蛇、青蛇、白蛇、黑水蛇、单刀骷髅、飞刀骷髅","可携带装备: \n \n蛮荒长刀\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、红蛇、青蛇、白蛇、黑水蛇、单刀骷髅、飞刀骷髅","可携带装备: \n \n轻便铠甲、战术手镯、珊瑚石戒指、布鞋\n","剑术心法3级"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、红蛇、青蛇、白蛇、黑水蛇、单刀骷髅、飞刀骷髅","可携带装备: \n \n轻便铠甲、战术手镯、珊瑚石戒指、布鞋\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、赤面猴、凶暴猿猴、红蛇、青蛇、白蛇、黑水蛇、单刀骷髅、飞刀骷髅、骷髅战士、墓地蛆虫","可携带装备: \n \n虎牙项链、坚壁护腕\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、赤面猴、凶暴猿猴、红蛇、青蛇、白蛇、黑水蛇、单刀骷髅、飞刀骷髅、骷髅战士、墓地蛆虫","可携带装备: \n \n百裂戒指\n","当前可学技能: 攻心斩、攻心斩1级"},
					  {"当前等级合适探险地图: 将军冢、废弃矿洞\n \n挑战怪物：单刀骷髅、飞刀骷髅、骷髅战士、大斧骷髅、墓地蛆虫、爬尸、腐尸、尸卫、雷暴僵尸","可携带装备: \n \n斩魄刀、重型手镯、猛禽戒指\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 将军冢、废弃矿洞\n \n挑战怪物：单刀骷髅、飞刀骷髅、骷髅战士、大斧骷髅、墓地蛆虫、爬尸、腐尸、尸卫、雷暴僵尸","可携带装备: \n \n牛皮鞋\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 将军冢、废弃矿洞\n \n挑战怪物：单刀骷髅、飞刀骷髅、骷髅战士、大斧骷髅、墓地蛆虫、爬尸、腐尸、尸卫、雷暴僵尸","可携带装备: \n \n元灵铠甲、斗魂\n","攻心斩2级"},
					  {"当前等级合适探险地图: 废弃矿洞、妖山暗穴\n \n挑战怪物：爬尸、腐尸、尸卫、雷暴僵尸、飞芒、尸奴、飞萤、妖面监工、魔萤、鬼面监工、掘铲尸奴、铁镐尸奴","可携带装备: \n \n有很多神秘装备需要你探索！\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 废弃矿洞、妖山暗穴\n \n挑战怪物：爬尸、腐尸、尸卫、雷暴僵尸、飞芒、尸奴、飞萤、妖面监工、魔萤、鬼面监工、掘铲尸奴、铁镐尸奴","可携带装备: \n \n有很多神秘装备需要你探索！\n","攻心斩3级"},
					  {"当前等级合适探险地图: 废弃矿洞、妖山暗穴\n \n挑战怪物：爬尸、腐尸、尸卫、雷暴僵尸、飞芒、尸奴、飞萤、妖面监工、魔萤、鬼面监工、掘铲尸奴、铁镐尸奴","可携带装备: \n \n有很多神秘装备需要你探索！\n","风刺剑法、风刺剑法1级"},
					  {"当前等级合适探险地图: 废弃矿洞、妖山暗穴\n \n挑战怪物：爬尸、腐尸、尸卫、雷暴僵尸、飞芒、尸奴、飞萤、妖面监工、魔萤、鬼面监工、掘铲尸奴、铁镐尸奴","可携带装备: \n \n有很多神秘装备需要你探索！\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 废弃矿洞、妖山暗穴\n \n挑战怪物：爬尸、腐尸、尸卫、雷暴僵尸、飞芒、尸奴、飞萤、妖面监工、魔萤、鬼面监工、掘铲尸奴、铁镐尸奴","可携带装备: \n \n有很多神秘装备需要你探索！\n","风刺剑法2级"},
					  {"当前等级合适探险地图: 废弃矿洞、妖山暗穴\n \n挑战怪物：爬尸、腐尸、尸卫、雷暴僵尸、飞芒、尸奴、飞萤、妖面监工、魔萤、鬼面监工、掘铲尸奴、铁镐尸奴","可携带装备: \n \n有很多神秘装备需要你探索！\n","月弧弯刀、月弧弯刀1级"},
					  {"当前等级合适探险地图: 废弃矿洞、妖山暗穴\n \n挑战怪物：爬尸、腐尸、尸卫、雷暴僵尸、飞芒、尸奴、飞萤、妖面监工、魔萤、鬼面监工、掘铲尸奴、铁镐尸奴","可携带装备: \n \n元有很多神秘装备需要你探索！\n","风刺剑法3级"},
					  {"当前等级合适探险地图: 绝路城、天荒阵\n \n挑战怪物：巨蛾、红面牛魔、黑面牛魔、牛魔守卫、尸奴工头、蟒蛇、蛇蛟、蓝兽、沙石魔、散兵、魔兵、刀奴、古怪刀客、风魔、邪翅","可携带装备: \n \n有很多神秘装备需要你探索！\n","野蛮冲锋、野蛮冲锋1级"},
					  {"当前等级合适探险地图: 绝路城、天荒阵\n \n挑战怪物：巨蛾、红面牛魔、黑面牛魔、牛魔守卫、尸奴工头、蟒蛇、蛇蛟、蓝兽、沙石魔、散兵、魔兵、刀奴、古怪刀客、风魔、邪翅","可携带装备: \n \n有很多神秘装备需要你探索！\n","月弧弯刀2级"},
					  {"当前等级合适探险地图: 绝路城、天荒阵\n \n挑战怪物：巨蛾、红面牛魔、黑面牛魔、牛魔守卫、尸奴工头、蟒蛇、蛇蛟、蓝兽、沙石魔、散兵、魔兵、刀奴、古怪刀客、风魔、邪翅","可携带装备: \n \n有很多神秘装备需要你探索！\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 绝路城、天荒阵\n \n挑战怪物：巨蛾、红面牛魔、黑面牛魔、牛魔守卫、尸奴工头、蟒蛇、蛇蛟、蓝兽、沙石魔、散兵、魔兵、刀奴、古怪刀客、风魔、邪翅","可携带装备: \n \n有很多神秘装备需要你探索！\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 绝路城、天荒阵\n \n挑战怪物：巨蛾、红面牛魔、黑面牛魔、牛魔守卫、尸奴工头、蟒蛇、蛇蛟、蓝兽、沙石魔、散兵、魔兵、刀奴、古怪刀客、风魔、邪翅","可携带装备: \n \n有很多神秘装备需要你探索！\n","月弧弯刀3级、野蛮冲锋2级"},
					  {"当前等级合适探险地图: 绝路城、天荒阵\n \n挑战怪物：巨蛾、红面牛魔、黑面牛魔、牛魔守卫、尸奴工头、蟒蛇、蛇蛟、蓝兽、沙石魔、散兵、魔兵、刀奴、古怪刀客、风魔、邪翅","可携带装备: \n \n有很多神秘装备需要你探索！\n","烈焰斩、烈焰斩1级"},
					  {"当前等级合适探险地图: 天荒邪庙\n \n挑战怪物：天原猛士、夜行僧、天原勇士、鬼面武者、天原死士、妖僧、天原死士、影刺、黑暗刺客","可携带装备: \n \n有很多神秘装备需要你探索！\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 天荒邪庙\n \n挑战怪物：天原猛士、夜行僧、天原勇士、鬼面武者、天原死士、妖僧、天原死士、影刺、黑暗刺客","可携带装备: \n \n有很多神秘装备需要你探索！\n","烈焰斩2级"},
					  {"当前等级合适探险地图: 天荒邪庙\n \n挑战怪物：天原猛士、夜行僧、天原勇士、鬼面武者、天原死士、妖僧、天原死士、影刺、黑暗刺客","可携带装备: \n \n有很多神秘装备需要你探索！\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 天荒邪庙\n \n挑战怪物：天原猛士、夜行僧、天原勇士、鬼面武者、天原死士、妖僧、天原死士、影刺、黑暗刺客","可携带装备: \n \n有很多神秘装备需要你探索！\n","野蛮冲锋3级"},
					  {"当前等级合适探险地图: 天荒邪庙\n \n挑战怪物：天原猛士、夜行僧、天原勇士、鬼面武者、天原死士、妖僧、天原死士、影刺、黑暗刺客","可携带装备: \n \n有很多神秘装备需要你探索！\n","烈焰斩3级"},
					  {"天书到此变成了空白，以后就靠你自己了！\n","天书到此变成了空白，以后就靠你自己了！","天书到此变成了空白，以后就靠你自己了！"}},
					 {{"当前等级合适探险地图: 巫山城\n \n挑战怪物：鸡、鹿\n"..lua_kezhaoguaiwu,"可携带装备: \n \n新手之剑、木棍、古藤棍、新手衣服、麻布衣、新手项链、新手戒指、新手护腕\n","当前没有技能可学"},
                      {"当前等级合适探险地图: 巫山城 \n \n挑战怪物：鸡、鹿\n"..lua_kezhaoguaiwu,"可携带装备: \n \n新手之剑、木棍、古藤棍、新手衣服、麻布衣、新手项链、新手戒指、新手护腕\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 巫山城\n \n挑战怪物：鸡、鹿\n"..lua_kezhaoguaiwu,"可携带装备: \n \n小护腕、普通项链、元素戒指\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 巫山城\n \n挑战怪物：白茅人、木器人\n"..lua_kezhaoguaiwu,"可携带装备: \n \n小护腕、普通项链\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 巫山城\n \n挑战怪物：白茅人、木器人\n"..lua_kezhaoguaiwu,"可携带装备: \n \n短剑、皮手套、幸运符\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 巫山城\n \n挑战怪物：白茅人、木器人\n"..lua_kezhaoguaiwu,"可携带装备: \n \n短剑、皮手套、幸运符\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 巫山城\n \n挑战怪物：白茅怪人、白茅邪人\n"..lua_kezhaoguaiwu,"可携带装备: \n \n草鞋\n","当前可学技能: 炎球术、炎球术1级"},
					  {"当前等级合适探险地图: 巫山城\n \n挑战怪物：白茅怪人、白茅邪人\n"..lua_kezhaoguaiwu,"可携带装备: \n \n铁手镯、黄金项链\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 巫山城\n \n挑战怪物：毒蜘蛛、花蜘蛛\n"..lua_kezhaoguaiwu,"可携带装备: \n \n大手镯\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 绝路谷、绝路岭\n \n挑战怪物：顽猴\n"..lua_kezhaoguaiwu,"可携带装备: \n \n长刀、新手长刀、御魔护腕、御魔靴子、御魔戒指、铁头盔\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 绝路谷、绝路岭\n \n挑战怪物：猿猴\n"..lua_kezhaoguaiwu,"可携带装备: \n \n轻型盔甲、玉\n","炎球术2级"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、红蛇、青蛇、白蛇、黑水蛇\n"..lua_kezhaoguaiwu,"可携带装备: \n \n符文护腕、黑铁戒指\n","当前可学技能: 推拒火环、退拒之环1级"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、红蛇、青蛇、白蛇、黑水蛇\n"..lua_kezhaoguaiwu,"可携带装备: \n \n符文护腕、黑铁戒指\n","当前可学技能: 夺心诱惑、夺心诱惑1级"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、红蛇、青蛇、白蛇、黑水蛇、单刀骷髅、飞刀骷髅\n"..lua_kezhaoguaiwu,"可携带装备: \n \n魔法头盔、石琥珀项链\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、红蛇、青蛇、白蛇、黑水蛇、单刀骷髅、飞刀骷髅\n"..lua_kezhaoguaiwu,"可携带装备: \n \n夜叉矛\n","退拒之环2级"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、红蛇、青蛇、白蛇、黑水蛇、单刀骷髅、飞刀骷髅\n"..lua_kezhaoguaiwu,"可携带装备: \n \n见习法师袍、法术手镯、蛇眼石戒指、布鞋\n","退拒之环2级"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、红蛇、青蛇、白蛇、黑水蛇、单刀骷髅、飞刀骷髅\n"..lua_kezhaoguaiwu,"可携带装备: \n \n见习法师袍、法术手镯、蛇眼石戒指、布鞋\n","当前可学技能: 天雷术、天雷术1级"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、赤面猴、凶暴猿猴、红蛇、青蛇、白蛇、黑水蛇、单刀骷髅、飞刀骷髅、骷髅战士、墓地蛆虫\n"..lua_kezhaoguaiwu,"可携带装备: \n \n白金项链、坚壁护腕\n","夺心诱惑2级"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、赤面猴、凶暴猿猴、红蛇、青蛇、白蛇、黑水蛇、单刀骷髅、飞刀骷髅、骷髅战士、墓地蛆虫\n"..lua_kezhaoguaiwu,"可携带装备: \n \n百裂戒指\n","当前可学技能: 瞬息灵动、瞬息灵动1级、冰箭术、冰箭术1级、退拒之环3级"},
					  {"当前等级合适探险地图: 将军冢、废弃矿洞\n \n挑战怪物：单刀骷髅、飞刀骷髅、骷髅战士、大斧骷髅、墓地蛆虫、爬尸、腐尸、尸卫\n"..lua_kezhaoguaiwu,"可携带装备: \n \n邀月法杖、毒蝎手镯、真金戒指\n","天雷术2级"},
					  {"当前等级合适探险地图: 将军冢、废弃矿洞\n \n挑战怪物：单刀骷髅、飞刀骷髅、骷髅战士、大斧骷髅、墓地蛆虫、爬尸、腐尸、尸卫\n"..lua_kezhaoguaiwu,"可携带装备: \n \n牛皮鞋\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 将军冢、废弃矿洞\n \n挑战怪物：单刀骷髅、飞刀骷髅、骷髅战士、大斧骷髅、墓地蛆虫、爬尸、腐尸、尸卫\n"..lua_kezhaoguaiwu,"可携带装备: \n \n紫绸长袍\n","当前可学技能: 炎爆术、炎爆术1级、瞬息灵动2级"},
					  {"当前等级合适探险地图: 废弃矿洞、妖山暗穴\n \n挑战怪物：爬尸、腐尸、尸卫、雷暴僵尸、飞芒、尸奴、飞萤、妖面监工、魔萤、鬼面监工、掘铲尸奴、铁镐尸奴\n"..lua_kezhaoguaiwu,"可携带装备: \n \n有很多神秘装备需要你探索！\n","天雷术3级、冰箭术2级"},
					  {"当前等级合适探险地图: 废弃矿洞、妖山暗穴\n \n挑战怪物：爬尸、腐尸、尸卫、雷暴僵尸、飞芒、尸奴、飞萤、妖面监工、魔萤、鬼面监工、掘铲尸奴、铁镐尸奴\n"..lua_kezhaoguaiwu,"可携带装备: \n \n有很多神秘装备需要你探索！\n","烈焰火海、烈焰火海1级、夺心诱惑3级"},
					  {"当前等级合适探险地图: 废弃矿洞、妖山暗穴\n \n挑战怪物：爬尸、腐尸、尸卫、雷暴僵尸、飞芒、尸奴、飞萤、妖面监工、魔萤、鬼面监工、掘铲尸奴、铁镐尸奴\n"..lua_kezhaoguaiwu,"可携带装备: \n \n有很多神秘装备需要你探索！\n","冰箭术3级、瞬息灵动3级"},
					  {"当前等级合适探险地图: 废弃矿洞、妖山暗穴\n \n挑战怪物：爬尸、腐尸、尸卫、雷暴僵尸、飞芒、尸奴、飞萤、妖面监工、魔萤、鬼面监工、掘铲尸奴、铁镐尸奴\n"..lua_kezhaoguaiwu,"可携带装备: \n \n有很多神秘装备需要你探索！\n","死亡射线、死亡射线1级"},
					  {"当前等级合适探险地图: 废弃矿洞、妖山暗穴\n \n挑战怪物：爬尸、腐尸、尸卫、雷暴僵尸、飞芒、尸奴、飞萤、妖面监工、魔萤、鬼面监工、掘铲尸奴、铁镐尸奴\n"..lua_kezhaoguaiwu,"可携带装备: \n \n有很多神秘装备需要你探索！\n","炎爆术2级"},
					  {"当前等级合适探险地图: 废弃矿洞、妖山暗穴\n \n挑战怪物：爬尸、腐尸、尸卫、雷暴僵尸、飞芒、尸奴、飞萤、妖面监工、魔萤、鬼面监工、掘铲尸奴、铁镐尸奴\n"..lua_kezhaoguaiwu,"可携带装备: \n \n有很多神秘装备需要你探索！\n","当前没有可学技能"},
					  {"当前等级合适探险地图: 废弃矿洞、妖山暗穴\n \n挑战怪物：爬尸、腐尸、尸卫、雷暴僵尸、飞芒、尸奴、飞萤、妖面监工、魔萤、鬼面监工、掘铲尸奴、铁镐尸奴\n"..lua_kezhaoguaiwu,"可携带装备: \n \n元有很多神秘装备需要你探索！\n","烈焰火海2级、死亡射线2级"},
					  {"当前等级合适探险地图: 绝路城、天荒阵\n \n挑战怪物：巨蛾、红面牛魔、黑面牛魔、牛魔守卫、尸奴工头、蟒蛇、蛇蛟、蓝兽、沙石魔、散兵、魔兵、刀奴、古怪刀客、风魔、邪翅\n"..lua_kezhaoguaiwu,"可携带装备: \n \n有很多神秘装备需要你探索！\n","雷霆极光、雷霆极光1级"},
					  {"当前等级合适探险地图: 绝路城、天荒阵\n \n挑战怪物：巨蛾、红面牛魔、黑面牛魔、牛魔守卫、尸奴工头、蟒蛇、蛇蛟、蓝兽、沙石魔、散兵、魔兵、刀奴、古怪刀客、风魔、邪翅\n"..lua_kezhaoguaiwu,"可携带装备: \n \n有很多神秘装备需要你探索！\n","流光护盾、流光护盾1级、炎爆术3级"},
					  {"当前等级合适探险地图: 绝路城、天荒阵\n \n挑战怪物：巨蛾、红面牛魔、黑面牛魔、牛魔守卫、尸奴工头、蟒蛇、蛇蛟、蓝兽、沙石魔、散兵、魔兵、刀奴、古怪刀客、风魔、邪翅\n"..lua_kezhaoguaiwu,"可携带装备: \n \n有很多神秘装备需要你探索！\n","杀生术、杀生术1级、雷霆极光2级、死亡射线3级"},
					  {"当前等级合适探险地图: 绝路城、天荒阵\n \n挑战怪物：巨蛾、红面牛魔、黑面牛魔、牛魔守卫、尸奴工头、蟒蛇、蛇蛟、蓝兽、沙石魔、散兵、魔兵、刀奴、古怪刀客、风魔、邪翅\n"..lua_kezhaoguaiwu,"可携带装备: \n \n有很多神秘装备需要你探索！\n","烈焰火海3级"},
					  {"当前等级合适探险地图: 绝路城、天荒阵\n \n挑战怪物：巨蛾、红面牛魔、黑面牛魔、牛魔守卫、尸奴工头、蟒蛇、蛇蛟、蓝兽、沙石魔、散兵、魔兵、刀奴、古怪刀客、风魔、邪翅\n"..lua_kezhaoguaiwu,"可携带装备: \n \n有很多神秘装备需要你探索！\n","雷霆极光3级、流光护盾2级"},
					  {"当前等级合适探险地图: 绝路城、天荒阵\n \n挑战怪物：巨蛾、红面牛魔、黑面牛魔、牛魔守卫、尸奴工头、蟒蛇、蛇蛟、蓝兽、沙石魔、散兵、魔兵、刀奴、古怪刀客、风魔、邪翅\n"..lua_kezhaoguaiwu,"可携带装备: \n \n有很多神秘装备需要你探索！\n","冰爆漩涡、冰爆漩涡1级、杀生术2级"},
					  {"当前等级合适探险地图: 天荒邪庙\n \n挑战怪物：天原猛士、夜行僧、天原勇士、鬼面武者、天原死士、妖僧、天原死士、影刺、黑暗刺客","可携带装备: \n \n有很多神秘装备需要你探索！\n\n"..lua_kezhaoguaiwu,"当前没有技能可学"},
					  {"当前等级合适探险地图: 天荒邪庙\n \n挑战怪物：天原猛士、夜行僧、天原勇士、鬼面武者、天原死士、妖僧、天原死士、影刺、黑暗刺客","可携带装备: \n \n有很多神秘装备需要你探索！\n\n"..lua_kezhaoguaiwu,"冰爆漩涡2级"},
					  {"当前等级合适探险地图: 天荒邪庙\n \n挑战怪物：天原猛士、夜行僧、天原勇士、鬼面武者、天原死士、妖僧、天原死士、影刺、黑暗刺客","可携带装备: \n \n有很多神秘装备需要你探索！\n\n"..lua_kezhaoguaiwu,"流光护盾3级"},
					  {"当前等级合适探险地图: 天荒邪庙\n \n挑战怪物：天原猛士、夜行僧、天原勇士、鬼面武者、天原死士、妖僧、天原死士、影刺、黑暗刺客","可携带装备: \n \n有很多神秘装备需要你探索！\n\n"..lua_kezhaoguaiwu,"杀生术3级"},
					  {"当前等级合适探险地图: 天荒邪庙\n \n挑战怪物：天原猛士、夜行僧、天原勇士、鬼面武者、天原死士、妖僧、天原死士、影刺、黑暗刺客","可携带装备: \n \n有很多神秘装备需要你探索！\n\n"..lua_kezhaoguaiwu,"冰爆漩涡3级"},
					  {"天书到此变成了空白，以后就靠你自己了！","天书到此变成了空白，以后就靠你自己了！","天书到此变成了空白，以后就靠你自己了！"}},
					 {{"当前等级合适探险地图: 巫山城\n \n挑战怪物：鸡、鹿","可携带装备: \n \n新手之剑、木棍、古藤棍、新手衣服、麻布衣、新手项链、新手戒指、新手护腕\n","当前没有技能可学"},
                      {"当前等级合适探险地图: 巫山城 \n \n挑战怪物：鸡、鹿","可携带装备: \n \n新手之剑、木棍、古藤棍、新手衣服、麻布衣、新手项链、新手戒指、新手护腕\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 巫山城\n \n挑战怪物：鸡、鹿","可携带装备: \n \n小护腕、普通项链\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 巫山城\n \n挑战怪物：白茅人、木器人","可携带装备: \n \n小护腕、普通项链\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 巫山城\n \n挑战怪物：白茅人、木器人","可携带装备: \n \n短剑、皮手套、幸运符、青铜戒指、犀角戒指\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 巫山城\n \n挑战怪物：白茅人、木器人","可携带装备: \n \n短剑、皮手套、幸运符、青铜戒指、犀角戒指\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 巫山城\n \n挑战怪物：白茅怪人、白茅邪人","可携带装备: \n \n草鞋\n","当前可学技能: 治疗咒、治疗咒1级"},
					  {"当前等级合适探险地图: 巫山城\n \n挑战怪物：白茅怪人、白茅邪人","可携带装备: \n \n铁手镯、黄金项链、水晶戒指\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 巫山城\n \n挑战怪物：毒蜘蛛、花蜘蛛","可携带装备: \n \n大手镯\n","当前可学技能: 明镜止水、明镜止水1级"},
					  {"当前等级合适探险地图: 绝路谷、绝路岭\n \n挑战怪物：顽猴","可携带装备: \n \n长刀、新手长刀、御道护腕、御道靴子、御道戒指、铁头盔\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 绝路谷、绝路岭\n \n挑战怪物：猿猴","可携带装备: \n \n轻型盔甲、玉\n","治疗咒2级"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、红蛇、青蛇、白蛇、黑水蛇","可携带装备: \n \n水晶护腕、六芒星戒指\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、红蛇、青蛇、白蛇、黑水蛇","可携带装备: \n \n砍柴斧\n","明镜止水2级"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、红蛇、青蛇、白蛇、黑水蛇、单刀骷髅、飞刀骷髅","可携带装备: \n \n魔法头盔、水晶项链\n","当前可学技能: 蛊毒咒、蛊毒咒1级"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、红蛇、青蛇、白蛇、黑水蛇、单刀骷髅、飞刀骷髅","可携带装备: \n \n上弦\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、红蛇、青蛇、白蛇、黑水蛇、单刀骷髅、飞刀骷髅","可携带装备: \n \n乾坤道衣、道术手镯、翡翠珍珠戒指、布鞋\n","治疗咒3级"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、红蛇、青蛇、白蛇、黑水蛇、单刀骷髅、飞刀骷髅","可携带装备: \n \n明珠项链\n","蛊毒咒2级"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、赤面猴、凶暴猿猴、红蛇、青蛇、白蛇、黑水蛇、单刀骷髅、飞刀骷髅、骷髅战士、墓地蛆虫","可携带装备: \n \n坚壁护腕\n","当前可学技能: 神魂火符、神魂火符1级"},
					  {"当前等级合适探险地图: 将军冢、绝路谷、绝路岭\n \n挑战怪物：猿猴、赤面猴、凶暴猿猴、红蛇、青蛇、白蛇、黑水蛇、单刀骷髅、飞刀骷髅、骷髅战士、墓地蛆虫","可携带装备: \n \n百裂戒指\n","当前可学技能: 地府之唤、地府之唤1级、明镜止水3级"},
					  {"当前等级合适探险地图: 将军冢、废弃矿洞\n \n挑战怪物：单刀骷髅、飞刀骷髅、骷髅战士、大斧骷髅、墓地蛆虫、爬尸、腐尸、尸卫","可携带装备: \n \n镇魔剑、白银手镯、品德戒指\n","当前可学技能: 隐形咒、隐形咒1级、蛊毒咒3级"},
					  {"当前等级合适探险地图: 将军冢、废弃矿洞\n \n挑战怪物：单刀骷髅、飞刀骷髅、骷髅战士、大斧骷髅、墓地蛆虫、爬尸、腐尸、尸卫","可携带装备: \n \n牛皮鞋\n","当前可学技能: 集体隐形咒、集体隐形咒1级、神魂火符2级"},
					  {"当前等级合适探险地图: 将军冢、废弃矿洞\n \n挑战怪物：单刀骷髅、飞刀骷髅、骷髅战士、大斧骷髅、墓地蛆虫、爬尸、腐尸、尸卫","可携带装备: \n \n祭祀道袍\n","当前可学技能: 地煞镇魔咒、地煞镇魔咒1级"},
					  {"当前等级合适探险地图: 废弃矿洞、妖山暗穴\n \n挑战怪物：爬尸、腐尸、尸卫、雷暴僵尸、飞芒、尸奴、飞萤、妖面监工、魔萤、鬼面监工、掘铲尸奴、铁镐尸奴","可携带装备: \n \n有很多神秘装备需要你探索！\n","隐形咒2级、地府之唤2级"},
					  {"当前等级合适探险地图: 废弃矿洞、妖山暗穴\n \n挑战怪物：爬尸、腐尸、尸卫、雷暴僵尸、飞芒、尸奴、飞萤、妖面监工、魔萤、鬼面监工、掘铲尸奴、铁镐尸奴","可携带装备: \n \n有很多神秘装备需要你探索！\n","神魂火符3级、地煞镇魔咒2级"},
					  {"当前等级合适探险地图: 废弃矿洞、妖山暗穴\n \n挑战怪物：爬尸、腐尸、尸卫、雷暴僵尸、飞芒、尸奴、飞萤、妖面监工、魔萤、鬼面监工、掘铲尸奴、铁镐尸奴","可携带装备: \n \n有很多神秘装备需要你探索！\n","天罡护体咒、天罡护体咒1级、集体隐形咒2级"},
					  {"当前等级合适探险地图: 废弃矿洞、妖山暗穴\n \n挑战怪物：爬尸、腐尸、尸卫、雷暴僵尸、飞芒、尸奴、飞萤、妖面监工、魔萤、鬼面监工、掘铲尸奴、铁镐尸奴","可携带装备: \n \n有很多神秘装备需要你探索！\n","地府之唤3级、隐形咒3级、地煞镇魔咒3级"},
					  {"当前等级合适探险地图: 废弃矿洞、妖山暗穴\n \n挑战怪物：爬尸、腐尸、尸卫、雷暴僵尸、飞芒、尸奴、飞萤、妖面监工、魔萤、鬼面监工、掘铲尸奴、铁镐尸奴","可携带装备: \n \n有很多神秘装备需要你探索！\n","天罡护体咒2级"},
					  {"当前等级合适探险地图: 废弃矿洞、妖山暗穴\n \n挑战怪物：爬尸、腐尸、尸卫、雷暴僵尸、飞芒、尸奴、飞萤、妖面监工、魔萤、鬼面监工、掘铲尸奴、铁镐尸奴","可携带装备: \n \n有很多神秘装备需要你探索！\n","锁妖咒、锁妖咒1级"},
					  {"当前等级合适探险地图: 废弃矿洞、妖山暗穴\n \n挑战怪物：爬尸、腐尸、尸卫、雷暴僵尸、飞芒、尸奴、飞萤、妖面监工、魔萤、鬼面监工、掘铲尸奴、铁镐尸奴","可携带装备: \n \n元有很多神秘装备需要你探索！\n","天罡护体咒3级、集体隐形咒3级"},
					  {"当前等级合适探险地图: 绝路城、天荒阵\n \n挑战怪物：巨蛾、红面牛魔、黑面牛魔、牛魔守卫、尸奴工头、蟒蛇、蛇蛟、蓝兽、沙石魔、散兵、魔兵、刀奴、古怪刀客、风魔、邪翅","可携带装备: \n \n有很多神秘装备需要你探索！\n","锁妖咒2级"},
					  {"当前等级合适探险地图: 绝路城、天荒阵\n \n挑战怪物：巨蛾、红面牛魔、黑面牛魔、牛魔守卫、尸奴工头、蟒蛇、蛇蛟、蓝兽、沙石魔、散兵、魔兵、刀奴、古怪刀客、风魔、邪翅","可携带装备: \n \n有很多神秘装备需要你探索！\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 绝路城、天荒阵\n \n挑战怪物：巨蛾、红面牛魔、黑面牛魔、牛魔守卫、尸奴工头、蟒蛇、蛇蛟、蓝兽、沙石魔、散兵、魔兵、刀奴、古怪刀客、风魔、邪翅","可携带装备: \n \n有很多神秘装备需要你探索！\n","锁妖咒3级"},
					  {"当前等级合适探险地图: 绝路城、天荒阵\n \n挑战怪物：巨蛾、红面牛魔、黑面牛魔、牛魔守卫、尸奴工头、蟒蛇、蛇蛟、蓝兽、沙石魔、散兵、魔兵、刀奴、古怪刀客、风魔、邪翅","可携带装备: \n \n有很多神秘装备需要你探索！\n","回春咒、回春咒1级"},
					  {"当前等级合适探险地图: 绝路城、天荒阵\n \n挑战怪物：巨蛾、红面牛魔、黑面牛魔、牛魔守卫、尸奴工头、蟒蛇、蛇蛟、蓝兽、沙石魔、散兵、魔兵、刀奴、古怪刀客、风魔、邪翅","可携带装备: \n \n有很多神秘装备需要你探索！\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 绝路城、天荒阵\n \n挑战怪物：巨蛾、红面牛魔、黑面牛魔、牛魔守卫、尸奴工头、蟒蛇、蛇蛟、蓝兽、沙石魔、散兵、魔兵、刀奴、古怪刀客、风魔、邪翅","可携带装备: \n \n有很多神秘装备需要你探索！\n","天庭之唤、天庭之唤1级、回春咒2级"},
					  {"当前等级合适探险地图: 天荒邪庙\n \n挑战怪物：天原猛士、夜行僧、天原勇士、鬼面武者、天原死士、妖僧、天原死士、影刺、黑暗刺客","可携带装备: \n \n有很多神秘装备需要你探索！\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 天荒邪庙\n \n挑战怪物：天原猛士、夜行僧、天原勇士、鬼面武者、天原死士、妖僧、天原死士、影刺、黑暗刺客","可携带装备: \n \n有很多神秘装备需要你探索！\n","天庭之唤2级"},
					  {"当前等级合适探险地图: 天荒邪庙\n \n挑战怪物：天原猛士、夜行僧、天原勇士、鬼面武者、天原死士、妖僧、天原死士、影刺、黑暗刺客","可携带装备: \n \n有很多神秘装备需要你探索！\n","回春咒3级"},
					  {"当前等级合适探险地图: 天荒邪庙\n \n挑战怪物：天原猛士、夜行僧、天原勇士、鬼面武者、天原死士、妖僧、天原死士、影刺、黑暗刺客","可携带装备: \n \n有很多神秘装备需要你探索！\n","当前没有技能可学"},
					  {"当前等级合适探险地图: 天荒邪庙\n \n挑战怪物：天原猛士、夜行僧、天原勇士、鬼面武者、天原死士、妖僧、天原死士、影刺、黑暗刺客","可携带装备: \n \n有很多神秘装备需要你探索！\n","天庭之唤3级"},
					  {"天书到此变成了空白，以后就靠你自己了！","天书到此变成了空白，以后就靠你自己了！","天书到此变成了空白，以后就靠你自己了！"}}}

function main(player, item)


	yaoshanzhengfudian = 4/30*lualib:GetInt(player,"yaoshanzhengfu1")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu2")
				+6/30*lualib:GetInt(player,"yaoshanzhengfu3")
				+7/30*lualib:GetInt(player,"yaoshanzhengfu4")
				+7/30*lualib:GetInt(player,"yaoshanzhengfu5")
				+7/30*lualib:GetInt(player,"yaoshanzhengfu6")
				+8/30*lualib:GetInt(player,"yaoshanzhengfu7")
				+8/30*lualib:GetInt(player,"yaoshanzhengfu8")
				+8/30*lualib:GetInt(player,"yaoshanzhengfu9")
				+10/3*lualib:GetInt(player,"yaoshanzhengfu10")
				+10/1*lualib:GetInt(player,"yaoshanzhengfu11")
				--+6/2*lualib:GetInt(player,"yaoshanzhengfu12")
				+10/10*lualib:GetInt(player,"yaoshanzhengfu13")
				+10/1*lualib:GetInt(player,"yaoshanzhengfu14")
				
	if yaoshanzhengfudian >= 10 and string.len(tostring(yaoshanzhengfudian)) > 5 then --征服点数小数超过2位后只取前2位用来显示出来
		yaoshanzhengfudxs = string.sub(yaoshanzhengfudian,1,5)
	elseif yaoshanzhengfudian < 10 and string.len(tostring(yaoshanzhengfudian)) > 4 then --征服点数小数超过2位后只取前2位用来显示出来
		yaoshanzhengfudxs = string.sub(yaoshanzhengfudian,1,4)
	else
		yaoshanzhengfudxs = yaoshanzhengfudian
	end
	
	tianhuangzhengfudian = 6/50*lualib:GetInt(player,"tianhuangzhengfu1")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu2")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu3")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu4")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu5")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu6")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu7")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu8")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu9")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu10")
				+10/6*lualib:GetInt(player,"tianhuangzhengfu11")
				+10/1*lualib:GetInt(player,"tianhuangzhengfu12")
				--+5/4*lualib:GetInt(player,"tianhuangzhengfu13")
				+10/20*lualib:GetInt(player,"tianhuangzhengfu14")
				+10/1*lualib:GetInt(player,"tianhuangzhengfu15")
				
	if tianhuangzhengfudian >= 10 and string.len(tostring(tianhuangzhengfudian)) > 5 then --征服点数小数超过2位后只取前2位用来显示出来
		tianhuangzhengfudxs = string.sub(tianhuangzhengfudian,1,5)
	elseif tianhuangzhengfudian < 10 and string.len(tostring(tianhuangzhengfudian)) > 4 then --征服点数小数超过2位后只取前2位用来显示出来
		tianhuangzhengfudxs = string.sub(tianhuangzhengfudian,1,4)
	else
		tianhuangzhengfudxs = tianhuangzhengfudian
	end
	
	
	xiemiaozhengfudian = 4/100*lualib:GetInt(player,"xiemiaozhengfu1")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu2")
				+6/100*lualib:GetInt(player,"xiemiaozhengfu3")
				+7/100*lualib:GetInt(player,"xiemiaozhengfu4")
				+7/100*lualib:GetInt(player,"xiemiaozhengfu5")
				+7/100*lualib:GetInt(player,"xiemiaozhengfu6")
				+8/100*lualib:GetInt(player,"xiemiaozhengfu7")
				+8/100*lualib:GetInt(player,"xiemiaozhengfu8")
				+8/12*lualib:GetInt(player,"xiemiaozhengfu9")
				+10/1*lualib:GetInt(player,"xiemiaozhengfu10")
				+10/1*lualib:GetInt(player,"xiemiaozhengfu11")
				--+5/8*lualib:GetInt(player,"xiemiaozhengfu12")
				+10/40*lualib:GetInt(player,"xiemiaozhengfu13")
				+10/1*lualib:GetInt(player,"xiemiaozhengfu14")
				
	if xiemiaozhengfudian >= 10 and string.len(tostring(xiemiaozhengfudian)) > 5 then --征服点数小数超过2位后只取前2位用来显示出来
		xiemiaozhengfudxs = string.sub(xiemiaozhengfudian,1,5)
	elseif xiemiaozhengfudian < 10 and string.len(tostring(xiemiaozhengfudian)) > 4 then --征服点数小数超过2位后只取前2位用来显示出来
		xiemiaozhengfudxs = string.sub(xiemiaozhengfudian,1,4)
	else
		xiemiaozhengfudxs = xiemiaozhengfudian
	end

	haidizhengfudian = 6/100*lualib:GetInt(player,"haidizhengfu1")
				+6/100*lualib:GetInt(player,"haidizhengfu2")
				+6/100*lualib:GetInt(player,"haidizhengfu3")
				+6/100*lualib:GetInt(player,"haidizhengfu4")
				+6/100*lualib:GetInt(player,"haidizhengfu5")
				+6/100*lualib:GetInt(player,"haidizhengfu6")
				+6/100*lualib:GetInt(player,"haidizhengfu7")
				+6/100*lualib:GetInt(player,"haidizhengfu8")
				+6/100*lualib:GetInt(player,"haidizhengfu9")
				+6/12*lualib:GetInt(player,"haidizhengfu10")
				+10/1*lualib:GetInt(player,"haidizhengfu11")
				+10/1*lualib:GetInt(player,"haidizhengfu12")
				+10/40*lualib:GetInt(player,"haidizhengfu13")
				+10/1*lualib:GetInt(player,"haidizhengfu14")
				
	if haidizhengfudian >= 10 and string.len(tostring(haidizhengfudian)) > 5 then --征服点数小数超过2位后只取前2位用来显示出来
		haidizhengfudxs = string.sub(haidizhengfudian,1,5)
	elseif haidizhengfudian < 10 and string.len(tostring(haidizhengfudian)) > 4 then --征服点数小数超过2位后只取前2位用来显示出来
		haidizhengfudxs = string.sub(haidizhengfudian,1,4)
	else
		haidizhengfudxs = haidizhengfudian
	end

	tianmozhengfudian = 6/100*lualib:GetInt(player,"tianmozhengfu1")
				+6/100*lualib:GetInt(player,"tianmozhengfu2")
				+6/100*lualib:GetInt(player,"tianmozhengfu3")
				+6/100*lualib:GetInt(player,"tianmozhengfu4")
				+6/100*lualib:GetInt(player,"tianmozhengfu5")
				+6/100*lualib:GetInt(player,"tianmozhengfu6")
				+6/100*lualib:GetInt(player,"tianmozhengfu7")
				+6/100*lualib:GetInt(player,"tianmozhengfu8")
				+6/100*lualib:GetInt(player,"tianmozhengfu9")
				+6/12*lualib:GetInt(player,"tianmozhengfu10")
				+10/1*lualib:GetInt(player,"tianmozhengfu11")
				+10/1*lualib:GetInt(player,"tianmozhengfu12")
				+10/40*lualib:GetInt(player,"tianmozhengfu13")
				+10/1*lualib:GetInt(player,"tianmozhengfu14")
				
	if tianmozhengfudian >= 10 and string.len(tostring(tianmozhengfudian)) > 5 then --征服点数小数超过2位后只取前2位用来显示出来
		tianmozhengfudxs = string.sub(tianmozhengfudian,1,5)
	elseif tianmozhengfudian < 10 and string.len(tostring(tianmozhengfudian)) > 4 then --征服点数小数超过2位后只取前2位用来显示出来
		tianmozhengfudxs = string.sub(tianmozhengfudian,1,4)
	else
		tianmozhengfudxs = tianmozhengfudian
	end


	local lua_tishi = {"温馨提示：按CTRL+R打开任务面板，可查看当前阶段有哪些任务可接！\n",
					   "温馨提示: 怪物死亡后可以采集尸体！",
					   "温馨提示：按TAB打开地图，点击地图位置或双击寻路列表名称可自动寻路哦！",
					   "温馨提示: 鼠标停留目标身上按ALT+W邀请目标进队。\n",
					   "温馨提示: 点击右上方小地图边上活动列表可以查看游戏正在进行的活动！\n",
					   "温馨提示: 如果你在游戏中有什么疑惑可以点击小地图边上?按钮查看。\n",
					   "温馨提示: 按CTRL+F打开好友系统，添加你游戏的朋友吧！\n",
					   "温馨提示: 鼠标停留目标身上，按CTRL+T可向目标发起交易请求。\n",
					   "温馨提示: 按F12打开游戏辅助选项，帮助你更便捷的进行游戏！\n",
					   "温馨提示: 点击邮件按钮，可以查看您所收到的邮件！\n",
					   "温馨提示: 击杀精英获得精元可以在巫山城装备铸造大师处[187,310]「兑换」套装装备！\n",
					   "温馨提示: 去巫山城寻找行会管理使者[255,203]加入行会吧！\n",
					   "温馨提示: 按CTRL+B打开商城，可以购买一些奇珍异宝。\n",
					   "温馨提示: 在巫山城寄售商人[246,203]，你可以委托它出售或收购你所需的物品。\n",
					   "温馨提示: 你可以点击包裹内摆摊功能把你多余的物品进行出售，但是只能在摆摊区域进行。\n",
					   "温馨提示: 你每天可以巫山城炼金师[259,316]进行一次精元炼制。\n",
					   "温馨提示: 拿上鹤嘴锄，去矿洞探险吧，用双手创造财富！\n",
					   "温馨提示: 装备包裹可以扩张背包格子！\n",
					   "温馨提示: 拥有绝世神兵远远还不够，巫山城的精炼大师[198,318]可以让你的装备更进一步！\n",
					   "温馨提示: 人在江湖漂，宣传很重要，你可以通过喇叭频道进行全服唯一发言！\n",
					   "温馨提示: 仓库不够用吗？你可以使用储存箱拓展高级仓库！\n",
					   "温馨提示: 能说的也差不多了，以后您要多关注活动列表、任务列表，及时了解游戏可玩内容\n",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",}
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
    if level == -1 then
		return ""
	end
	msg = "#COLORCOLOR_GREENG#当前等级"..level.."：#COLOREND#"
	msg = msg.."#IMAGE<ID:1902700017>#<@ts1a *01*可去的地图     >"
	msg = msg.."#IMAGE<ID:1902700017>#<@ts2a *01*可带的装备     >"
	msg = msg.."#IMAGE<ID:1902700017>#<@ts3a *01*可学的技能     >\n"
	msg = msg.."#COLORCOLOR_RED#下一等级"..(level + 1).."：#COLOREND#"
	msg = msg.."#IMAGE<ID:1902700017>#<@ts1b *01*可去的地图     >"
	msg = msg.."#IMAGE<ID:1902700017>#<@ts2b *01*可带的装备     >"
	msg = msg.."#IMAGE<ID:1902700017>#<@ts3b *01*可学的技能     >\n \n"
	if lua_tishi[level] ~= nil then
		msg = msg..lua_tishi[level]
		msg = msg.."基本指南："
		msg = msg.."#IMAGE<ID:1902700017>#<@wupin *01*物品使用  >"
		msg = msg.."#IMAGE<ID:1902700017>#<@caozuo *01*角色操作  >"
		msg = msg.."#IMAGE<ID:1902700017>#<@zhandou *01*战斗指南  >"
		msg = msg.."#IMAGE<ID:1902700017>#<@mingling *01*聊天发言  >"
		msg = msg.."#IMAGE<ID:1902700017>#<@jineng *01*职业技能  >"
		msg = msg.."#IMAGE<ID:1902700017>#<@kuaijiejian *01*快捷键>\n \n"
		msg = msg.."在以下地图中探索冒险时会不知不觉增加对该地图的征服度，征服可领取各种奖励。\n"
		msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian1 *01*查看进度详情>   #COLORCOLOR_GREENG#妖山暗穴#COLOREND##COLORCOLOR_BLUE#（适合25-30级探险）#COLOREND#   目前进度#COLORCOLOR_ORANGE#"..yaoshanzhengfudxs.."%#COLOREND#\n"
		msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian2 *01*查看进度详情>   #COLORCOLOR_GREENG#天荒阵 #COLOREND##COLORCOLOR_BLUE#（适合30-40级探险）#COLOREND#    目前进度#COLORCOLOR_ORANGE#"..tianhuangzhengfudxs.."%#COLOREND#\n"
		msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian3 *01*查看进度详情>   #COLORCOLOR_GREENG#天荒邪庙#COLOREND##COLORCOLOR_BLUE#（适合35-45级探险）#COLOREND#   目前进度#COLORCOLOR_ORANGE#"..xiemiaozhengfudxs.."%#COLOREND#"
	else
		msg = "你已经不是新手，无法再查看新手指南。你现在有足够的能力去征服世界！\n \n"
		msg = msg.."在以下地图中探索冒险时会不知不觉增加对该地图的征服度，征服可领取各种奖励。\n"
		msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian1 *01*查看进度详情>   #COLORCOLOR_GREENG#妖山暗穴#COLOREND##COLORCOLOR_BLUE#（适合25-30级探险）#COLOREND#   目前进度#COLORCOLOR_ORANGE#"..yaoshanzhengfudxs.."%#COLOREND#\n"
		msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian2 *01*查看进度详情>   #COLORCOLOR_GREENG#天荒阵 #COLOREND##COLORCOLOR_BLUE#（适合30-40级探险）#COLOREND#    目前进度#COLORCOLOR_ORANGE#"..tianhuangzhengfudxs.."%#COLOREND#\n"
		msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian3 *01*查看进度详情>   #COLORCOLOR_GREENG#天荒邪庙#COLOREND##COLORCOLOR_BLUE#（适合35-45级探险）#COLOREND#   目前进度#COLORCOLOR_ORANGE#"..xiemiaozhengfudxs.."%#COLOREND#\n"
		msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian4 *01*查看进度详情>   #COLORCOLOR_GREENG#天魔石窟 #COLOREND##COLORCOLOR_BLUE#（适合40-50级探险）#COLOREND#  目前进度#COLORCOLOR_ORANGE#"..tianmozhengfudxs.."%#COLOREND#\n"
		msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian5 *01*查看进度详情>   #COLORCOLOR_GREENG#海角秘境#COLOREND##COLORCOLOR_BLUE#（适合50-60级探险）#COLOREND#   目前进度#COLORCOLOR_ORANGE#"..haidizhengfudxs.."%#COLOREND#"
	end
	lualib:NPCTalk(player, msg)
	return true
end

function ret(player, item)
	main(player, item)
	return ""
end


--探险打怪
function ts1a(player,item)
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
    if level == -1 then
		return ""
	end

	local job = lualib:Player_GetIntProp(player,  lua_role_job)
    if job == -1 then
		return ""
	end

	if lua_tianshu[job][level] == nil then return "" end
	local msg = "您当前等级为"..level..": "
	msg = msg..lua_tianshu[job][level][1]
	msg = msg.."\n<@ret *01*「返回」>\n"
	return msg
end

function ts1b(player,item)
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
    if level == -1 then
		return ""
	end

	local job = lualib:Player_GetIntProp(player,  lua_role_job)
    if job == -1 then
		return ""
	end

	if lua_tianshu[job][level] == nil then return "" end
	local msg = "您下个等级为"..(level + 1)..":  "
	msg = msg..lua_tianshu[job][level + 1][1]
	msg = msg.."\n<@ret *01*「返回」>\n"
	return msg
end

--装备
function ts2a(player,item)
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
    if level == -1 then
		return ""
	end

	local job = lualib:Player_GetIntProp(player,  lua_role_job)
    if job == -1 then
		return ""
	end

	if lua_tianshu[job][level] == nil then return "" end
	local msg = "您当前等级为"..level..": "
	msg = msg..lua_tianshu[job][level][2]
	msg = msg.."\n<@ret *01*「返回」>\n"
	return msg
end

function ts2b(player,item)
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
    if level == -1 then
		return ""
	end

	local job = lualib:Player_GetIntProp(player,  lua_role_job)
    if job == -1 then
		return ""
	end

	if lua_tianshu[job][level] == nil then return "" end
	local msg = "您下个等级为"..(level + 1)..":  "
	msg = msg..lua_tianshu[job][level + 1][2]
	msg = msg.."\n<@ret *01*「返回」>\n"
	return msg
end


--222
function ts3a(player,item)
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
    if level == -1 then
		return ""
	end

	local job = lualib:Player_GetIntProp(player,  lua_role_job)
    if job == -1 then
		return ""
	end

	if lua_tianshu[job][level] == nil then return "" end
	local msg = "您当前等级为"..level..": "
	msg = msg..lua_tianshu[job][level][3]
	msg = msg.."\n<@ret *01*「返回」>\n"
	return msg
end

function ts3b(player,item)
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
    if level == -1 then
		return ""
	end

	local job = lualib:Player_GetIntProp(player,  lua_role_job)
    if job == -1 then
		return ""
	end

	if lua_tianshu[job][level] == nil then return "" end
	local msg = "您下个等级为"..(level + 1)..":  "
	msg = msg..lua_tianshu[job][level + 1][3]
	msg = msg.."\n<@ret *01*「返回」>\n"
	return msg
end

--	法师可招怪

function kezhao(player,item)
	msg = "可招怪物列表\n \n"
	msg = msg.."鸡(6)、 鹿(13)、 食人花(15)、 猿猴(16)、 苍狼(17)、 毒蜘蛛(17)、 花蜘蛛(17)、 泼猴(17)、 天狼蜘蛛(17)、 顽猴(17)、 野狼(17)、 红蛇(18)、 青蛇(18)、 白蛇(19)、 黑水蛇(19)、 飞蛾(21)、 赤面猴(23)、 凶暴猿猴(23)、 飞芒(27)、 飞萤(27)、 魔萤(27)、 妖面监工(27)、 鬼面监工(29)、 巨蛾(33)、 蟒蛇(33)、 蛇蛟(33)、 邪翅(33)\n"
	msg = msg.."<@ret *01* 「返回」>"
	return msg
end



function wupin(npc, player)
   msg = "首先，按下F9（包裹窗口）和F10（人物属性面板）打开对应面板。\n直接双击物品，你就可以将装备穿戴上去，如果是其他的功能道具，双击则使用该道具！\n道具移动：用鼠标左键点击提起，再点击放下\n \n"
   msg = msg.."<@caozuozhinan *01*「返回」>\n"
   return msg
end

function caozuo(npc, player)
   msg = "鼠标左键 : 作为脚本的行动、移动、攻击，移动物品等。\n鼠标右键 : 在游戏界面内点击右键可以跑步\nShift+左键:强行攻击\nCTRL+右键 : CTRL+右键点击玩家可以查看对方信息\nAlt+左键 : 挖取怪物尸体可以获得物品\n左键双击或右键单击 : 使用物品，携带装备\n \n"
   msg = msg.."<@caozuozhinan *01*「返回」>\n"
   return msg
end

function zhandou(npc, player)
   msg = "基本上来说，你都可以利用左键来进行攻击，如果你不能进行攻击，你可以按住Shift+左键来强行攻击\n 对于那些死去的鹿、鸡等，你可以在他们的尸体上采集获得相应物品。\n \n"
   msg = msg.."<@caozuozhinan *01*「返回」>\n"
   return msg
end

function mingling(npc, player)
   msg = "附近发言 : 在聊天框输入文字发送后为附近发言\n私聊 : 你可以右键点击目标头像选择私聊选项，或者以/ + 对象名称发送私聊\n喊话 : 以!开头输入文字发送后为喊话（信息颜色是黄色的，但有时间限制）\n组队发言 : 以!!开头输入文字发送后为只发送给组队成员\n行会发言 : 以!~开头输入文字发送后为只发送给行会成员\n喇叭发言 : 选择聊天框喇叭喊话，发送后在特殊频道显示，但每次需要消耗一个小喇叭\n \n"
   msg = msg.."<@caozuozhinan *01*「返回」>\n"
   return msg
end

function jineng(npc, player)
   msg = "每个职业能够学习技能的等级要求都是7级，战士可以学习《剑术心法》，法师可以学习《炎球术》，道士可以学习《治疗咒》。\n这些书都可以在各地的书店中买到的，等级提升之后，还可以学习其他更高级的技能。\n \n但这些书无法在书店买到，你只能通过杀死怪物获得！\n \n"
   msg = msg.."<@caozuozhinan *01*「返回」>\n"
   return msg
end

function kuaijiejian(npc, player)
   msg = "F1~F8:技能快捷键        F9：包裹       F10:人物属性\nF11:技能                F12:辅助选项\nCtrl+H:改变攻击模式    Ctrl+A:改变宠物攻击模式\nAlt+W:邀请组队            Alt+T:请求交易\n \n"
   msg = msg.."<@caozuozhinan *01*「返回」>\n"
   return msg
end


-------------------------------------------------征服系统---------------------------------------------------------------
function zhengfuxitong(player)
	yaoshanzhengfudian = 5/30*lualib:GetInt(player,"yaoshanzhengfu1")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu1")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu2")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu3")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu4")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu5")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu6")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu7")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu8")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu9")
				+10/3*lualib:GetInt(player,"yaoshanzhengfu10")
				+20/1*lualib:GetInt(player,"yaoshanzhengfu11")
				+5/2*lualib:GetInt(player,"yaoshanzhengfu12")
				+10/10*lualib:GetInt(player,"yaoshanzhengfu13")
				+10/1*lualib:GetInt(player,"yaoshanzhengfu14")
				
	if yaoshanzhengfudian >= 10 and string.len(tostring(yaoshanzhengfudian)) > 5 then --征服点数小数超过2位后只取前2位用来显示出来
		yaoshanzhengfudxs = string.sub(yaoshanzhengfudian,1,5)
	elseif yaoshanzhengfudian < 10 and string.len(tostring(yaoshanzhengfudian)) > 4 then --征服点数小数超过2位后只取前2位用来显示出来
		yaoshanzhengfudxs = string.sub(yaoshanzhengfudian,1,4)
	else
		yaoshanzhengfudxs = yaoshanzhengfudian
	end
	
		tianhuangzhengfudian = 5/50*lualib:GetInt(player,"tianhuangzhengfu1")
				+4.5/50*lualib:GetInt(player,"tianhuangzhengfu1")
				+4.5/50*lualib:GetInt(player,"tianhuangzhengfu2")
				+4.5/50*lualib:GetInt(player,"tianhuangzhengfu3")
				+4.5/50*lualib:GetInt(player,"tianhuangzhengfu4")
				+4.5/50*lualib:GetInt(player,"tianhuangzhengfu5")
				+4.5/50*lualib:GetInt(player,"tianhuangzhengfu6")
				+4.5/50*lualib:GetInt(player,"tianhuangzhengfu7")
				+4.5/50*lualib:GetInt(player,"tianhuangzhengfu8")
				+4.5/50*lualib:GetInt(player,"tianhuangzhengfu9")
				+4.5/50*lualib:GetInt(player,"tianhuangzhengfu10")
				+10/6*lualib:GetInt(player,"tianhuangzhengfu11")
				+20/1*lualib:GetInt(player,"tianhuangzhengfu12")
				+5/4*lualib:GetInt(player,"tianhuangzhengfu13")
				+10/20*lualib:GetInt(player,"tianhuangzhengfu14")
				+10/1*lualib:GetInt(player,"tianhuangzhengfu15")
				
	if tianhuangzhengfudian >= 10 and string.len(tostring(tianhuangzhengfudian)) > 5 then --征服点数小数超过2位后只取前2位用来显示出来
		tianhuangzhengfudxs = string.sub(tianhuangzhengfudian,1,5)
	elseif tianhuangzhengfudian < 10 and string.len(tostring(tianhuangzhengfudian)) > 4 then --征服点数小数超过2位后只取前2位用来显示出来
		tianhuangzhengfudxs = string.sub(tianhuangzhengfudian,1,4)
	else
		tianhuangzhengfudxs = tianhuangzhengfudian
	end
	
	
		xiemiaozhengfudian = 5/100*lualib:GetInt(player,"xiemiaozhengfu1")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu1")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu2")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu3")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu4")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu5")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu6")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu7")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu8")
				+10/12*lualib:GetInt(player,"xiemiaozhengfu9")
				+5/1*lualib:GetInt(player,"xiemiaozhengfu10")
				+20/1*lualib:GetInt(player,"xiemiaozhengfu11")
				+5/8*lualib:GetInt(player,"xiemiaozhengfu12")
				+10/40*lualib:GetInt(player,"xiemiaozhengfu13")
				+10/1*lualib:GetInt(player,"xiemiaozhengfu14")
				
	if xiemiaozhengfudian >= 10 and string.len(tostring(xiemiaozhengfudian)) > 5 then --征服点数小数超过2位后只取前2位用来显示出来
		xiemiaozhengfudxs = string.sub(xiemiaozhengfudian,1,5)
	elseif xiemiaozhengfudian < 10 and string.len(tostring(xiemiaozhengfudian)) > 4 then --征服点数小数超过2位后只取前2位用来显示出来
		xiemiaozhengfudxs = string.sub(xiemiaozhengfudian,1,4)
	else
		xiemiaozhengfudxs = xiemiaozhengfudian
	end
	
	local msg = "当玩家在以下地图中探索冒险时就会不知不觉增加该地图的征服度，征服度达到一定程度可以领取各种奖励。\n \n"
	msg = msg .. "<@chumojiemian1 *01*征服进度>   #COLORCOLOR_GREENG#妖山暗穴#COLOREND#        #COLORCOLOR_ORANGE#"..yaoshanzhengfudxs.."%#COLOREND#\n"
	msg = msg .. "<@chumojiemian2 *01*征服进度>   #COLORCOLOR_GREENG#天荒阵#COLOREND#          #COLORCOLOR_ORANGE#"..tianhuangzhengfudxs.."%#COLOREND#\n"
	msg = msg .. "<@chumojiemian3 *01*征服进度>   #COLORCOLOR_GREENG#天荒邪庙#COLOREND#        #COLORCOLOR_ORANGE#"..xiemiaozhengfudxs.."%#COLOREND#\n"
	return msg
end