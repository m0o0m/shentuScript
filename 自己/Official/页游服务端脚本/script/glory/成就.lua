local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/horse")
require("system/serializer")

local glory_callback =
{

	[1] = --第一次加好友
    {
		name = "第一次加好友"
    },
	
	[2] = --第一次组队
    {
		name = "第一次组队"
    },
	
	[3] = --第一次入会
    {
		name = "第一次入会"
    },
	
	[4] = --第一次强化
    {
		name = "第一次强化"
    },
	
	[5] = --累计登录2天
    {
		name = "累计登录2天",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 2 then
				return true
			end
				return false
        end,
    },
	
	[6] = --累计登录3天
    {
		name = "累计登录3天",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 3 then
				return true
			end
				return false
        end,
    },
	
	[7] = --累计登录5天
    {
		name = "累计登录5天",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 5 then
				return true
			end
				return false
        end,
    },
	
	[8] = --累计登录8天
    {
		name = "累计登录8天",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 8 then
				return true
			end
				return false
        end,
    },
	
	[9] = --累计登录12天
    {
		name = "累计登录12天",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 12 then
				return true
			end
				return false
        end,
    },  
	
	[10] = --累计登录16天
    {
		name = "累计登录16天",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 16 then
				return true
			end
				return false
        end,
    },
	
	[11] = --累计登录22天
    {
		name = "累计登录22天",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 22 then
				return true
			end
				return false
        end,
    },
	 
	[12] = --累计登录28天
    {
		name = "累计登录28天",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 28 then
				return true
			end
				return false
        end,
    },
	
	[13] = --累计登录36天
    {
		name = "累计登录36天",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 36 then
				return true
			end
				return false
        end,
    },
	
	[14] = --累计登录46天
    {
		name = "累计登录46天",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 46 then
				return true
			end
				return false
        end,
    },
	
	[15] = --累计登录68天
    {
		name = "累计登录68天",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 68 then
				return true
			end
				return false
        end,
    },
	
	[16] = --累计登录80天
    {
		name = "累计登录80天",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 80 then
				return true
			end
				return false
        end,
    },
	
	[17] = --累计登录92天
    {
		name = "累计登录92天",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 92 then
				return true
			end
				return false
        end,
    },
	
	[18] = --累计登录110天
    {
		name = "累计登录110天",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 110 then
				return true
			end
				return false
        end,
    },
	
	[19] = --达到40级
    {
		name = "升级到40级",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 40 then
				return true
			end
				return false
        end,
    },
	 
	[20] = --达到45级
    {
		name = "升级到45级",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 45 then
				return true
			end
				return false
        end,
    }, 
	
	[21] = --达到50级
    {
		name = "升级到50级",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 50 then
				return true
			end
				return false
        end,
    }, 
	
	[22] = --达到55级
    {
		name = "升级到55级",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 55 then
				return true
			end
				return false
        end,
    },
	
	[23] = --达到60级
    {
		name = "升级到60级",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 60 then
				return true
			end
				return false
        end,
    },
	
	[24] = --达到65级
    {
		name = "升级到65级",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 65 then
				return true
			end
				return false
        end,
    },
	
	[25] = --达到70级
    {
		name = "升级到70级",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 70 then
				return true
			end
				return false
        end,
    },
	
	[26] = --达到75级
    {
		name = "升级到75级",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 75 then
				return true
			end
				return false
        end,
    },
	
	[27] = --达到80级
    {
		name = "升级到80级",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 80 then
				return true
			end
				return false
        end,
    },
	
	[28] = --达到85级
    {
		name = "升级到85级",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 85 then
				return true
			end
				return false
        end,
    },
	
	[29] = --达到90级
    {
		name = "升级到90级",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 90 then
				return true
			end
				return false
        end,
    },
	
	[30] = --达到95级
    {
		name = "升级到95级",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 95 then
				return true
			end
				return false
        end,
    },
	
	[31] = --达到100级
    {
		name = "升级到100级",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 100 then
				return true
			end
				return false
        end,
    },
	
	[32] = --杀死100只怪物
	{
		name = "杀死100只怪物",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 100 then
				return true
			end
				return false
        end,
	},	
	
	[33] = --杀死600只怪物
	{
		name = "杀死600只怪物",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 600 then
				return true
			end
				return false
        end,
	},
	
	[34] = --杀死3000只怪物
	{
		name = "杀死3000只怪物",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 3000 then
				return true
			end
				return false
        end,
	},	
	
	[35] = --杀死12000只怪物
	{
		name = "杀死12000只怪物",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 12000 then
				return true
			end
				return false
        end,
	},
	
	[36] = --杀死48000只怪物
	{
		name = "杀死48000只怪物",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 48000 then
				return true
			end
				return false
        end,
	},	
	
	[37] = --杀死14万只怪物
	{
		name = "杀死14万只怪物",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 140000 then
				return true
			end
				return false
        end,
	},
	
	[38] = --杀死28万只怪物
	{
		name = "杀死28万只怪物",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 280000 then
				return true
			end
				return false
        end,
	},	
	
	[39] = --杀死56万只怪物
	{
		name = "杀死56万只怪物",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 560000 then
				return true
			end
				return false
        end,
	},
	
	[40] = --杀死110万只怪物
	{
		name = "杀死110万只怪物",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 1100000 then
				return true
			end
				return false
        end,
	},
	
	[41] = --杀死220万只怪物
	{
		name = "杀死220万只怪物",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
	
        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 2200000 then
				return true
			end
				return false
        end,
	},	
	
	[42] = --杀死460万只怪物
	{
		name = "杀死460万只怪物",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 4600000 then
				return true
			end
				return false
        end,
	},
	
	[43] = --杀死1000万只怪物
	{
		name = "杀死1000万只怪物",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 10000000 then
				return true
			end
				return false
        end,
	},
	
	[44] = --杀死2200万只怪物
	{
		name = "杀死2200万只怪物",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 22000000 then
				return true
			end
				return false
        end,
	},	
	
	[45] = --杀死4000万只怪物
	{
		name = "杀死4000万只怪物",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 40000000 then
				return true
			end
				return false
        end,
	},
	
	[46] = --杀死7000万只怪物
	{
		name = "杀死7000万只怪物",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 70000000 then
				return true
			end
				return false
        end,
	},
		
	[47] = --击杀天荒教主
    {
		name = "击杀天荒教主",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and (target_name == "魔族入侵沃玛教主" or target_name == "天荒教主副本" or target_name == "玛雅一沃玛教主" or target_name == "神威狱一层BOSS" or target_name == "沃玛教主" or target_name == "锁魔宫天荒教主") then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_tianhuangjiaozhu", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_tianhuangjiaozhu");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_tianhuangjiaozhu", 0);
				return true
			end
				return false
        end,
    },
	
	[48] = --击杀邪皇
    {
		name = "击杀邪皇",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and (target_name == "魔族入侵祖玛教主" or target_name == "玛雅一祖玛教主" or target_name == "神威狱二层BOSS" or target_name == "祖玛教主" or target_name == "祖玛教主副本" or target_name == "暗之祖玛教主") then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_zumajiaozhu", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_zumajiaozhu");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_zumajiaozhu", 0);
				return true
			end
				return false
        end,
    },
	
	[49] = --击杀噬月魇魔
    {
		name = "击杀噬月魇魔",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and (target_name == "魔族入侵赤月恶魔" or target_name == "赤月恶魔副本" or target_name == "玛雅一赤月恶魔" or target_name == "神威狱三层BOSS" or target_name == "赤月恶魔")  then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_chiyueemo", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_chiyueemo");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_chiyueemo", 0);
				return true
			end
				return false
        end,
    },
	
	[50] = --击杀牛魔王
    {
		name = "击杀牛魔王",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and (target_name == "镇魔宝塔牛魔王" or target_name == "牛魔王副本" or target_name == "魔族入侵牛魔王" or target_name == "塔防牛魔王" or target_name == "神威狱四层BOSS" or target_name == "暗之牛魔王" or target_name == "牛魔王") then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_niumowang", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_niumowang");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_niumowang", 0);
				return true
			end
				return false
        end,
    },
	
	[51] = --击杀阎罗教主
    {
		name = "击杀阎罗教主",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and (target_name == "魔族入侵黄泉教主" or target_name == "威狱五层BOSS" or target_name == "黄泉教主" or target_name == "暗之黄泉教主") then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_huangquanjiaozhu", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_huangquanjiaozhu");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_huangquanjiaozhu", 0);
				return true
			end
				return false
        end,
    },
	
	[52] = --击杀血色千人斩
    {
		name = "击杀血色千人斩",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and (target_name == "尸霸" or target_name == "暗之尸霸") then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_shiba", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_shiba");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_shiba", 0);
				return true
			end
				return false
        end,
    },
	
	[53] = --击杀囚世天魔
    {
		name = "击杀囚世天魔",
        on_trigger = function(player, action, target, ref_value, target_name, map_name) 
			if action == 2 and (target_name == "镇魔宝塔虹魔教主" or target_name == "神威狱六层BOSS" or target_name == "虹魔教主" or target_name == "暗之虹魔教主") then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_hongmojiaozhu", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_hongmojiaozhu");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_hongmojiaozhu", 0);
				return true
			end
				return false
        end,
    },
	
	[54] = --击杀蛮荒教主
    {
		name = "击杀蛮荒教主",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and  (target_name == "神威狱七层BOSS" or target_name == "魔龙教主副本" or target_name == "魔龙教主")  then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_molongjiaozhu", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_molongjiaozhu");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_molongjiaozhu", 0);
				return true
			end
				return false
        end,
    },
	
	[55] = --击杀冰咒冥后
    {
		name = "击杀冰咒冥后",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and (target_name == "雪域魔王" or target_name == "神威狱八层BOSS") then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_xueyumowang", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_xueyumowang");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_xueyumowang", 0);
				return true
			end
				return false
        end,
    },
	
	[56] = --击杀铁血大帝
    {
		name = "击杀铁血大帝",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and (target_name == "神威狱九层BOSS" or target_name == "雷炎蛛王") then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_leiyanzhuwang", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_leiyanzhuwang");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_leiyanzhuwang", 0);
				return true
			end
				return false
        end,
    },
	
	[57] = --击杀炎龙
    {
		name = "击杀炎龙",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and (target_name == "火龙副本" or target_name == "神威狱十层BOSS" or target_name == "火龙") then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_huolong", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_huolong");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_huolong", 0);
				return true
			end
				return false
        end,
    },
	
	[58] = --击杀血刹明王
    {
		name = "击杀血刹明王",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and  (target_name == "神威狱十一层BOSS" or target_name == "远古魔猿" or target_name == "阿修罗神") then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_axiuluoshen", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_axiuluoshen");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_axiuluoshen", 0);
				return true
			end
				return false
        end,
    },
	
	[59] = --击杀陨天魔王
    {
		name = "击杀陨天魔王",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and (target_name == "神威狱十三层BOSS" or target_name == "蛇妖王") then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_sheyaowang", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_sheyaowang");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_sheyaowang", 0);
				return true
			end
				return false
        end,
    },
	
	[60] = --击杀冥渊领主
    {
		name = "击杀深岩领主",
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and target_name == "巫妖王" then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_wuyaowang", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_wuyaowang");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_wuyaowang", 0);
				return true
			end
				return false
        end,
    },
	
	[61] = --强化1件+2的装备
	{
		name = "强化1件+2的装备",
		 on_trigger = function(player, action, target, ref_value, target_name, map_name)
			local level = lualib:Equip_GetRefineLevel(player, target)
			if action == 1003 and level >= 2 then
				local cur_refine = lualib:Player_SetCustomVarInt(player, "refine_item", 1);
			end
        end,

        check_complete = function(player)
			local cur_refine = lualib:Player_GetCustomVarInt(player, "refine_item");
			if cur_refine == 1 then
				lualib:Player_SetCustomVarInt(player, "refine_item", 0);
				return true
			end
				return false
        end,
	},
	
	[62] = --强化1件+3的装备
	{
		name = "强化1件+3的装备",
		 on_trigger = function(player, action, target, ref_value, target_name, map_name)
			local level = lualib:Equip_GetRefineLevel(player, target)
			if action == 1003 and level >= 3 then
				local cur_refine = lualib:Player_SetCustomVarInt(player, "refine_item", 1);
			end
        end,

        check_complete = function(player)
			local cur_refine = lualib:Player_GetCustomVarInt(player, "refine_item");
			if cur_refine == 1 then
				lualib:Player_SetCustomVarInt(player, "refine_item", 0);
				return true
			end
				return false
        end,
	},
	
	[63] = --强化1件+4的装备
	{
		name = "强化1件+4的装备",
		 on_trigger = function(player, action, target, ref_value, target_name, map_name)
			local level = lualib:Equip_GetRefineLevel(player, target)
			if action == 1003 and level >= 4 then
				local cur_refine = lualib:Player_SetCustomVarInt(player, "refine_item", 1);
			end
        end,

        check_complete = function(player)
			local cur_refine = lualib:Player_GetCustomVarInt(player, "refine_item");
			if cur_refine == 1 then
				lualib:Player_SetCustomVarInt(player, "refine_item", 0);
				return true
			end
				return false
        end,
	},
	
	[64] = --强化1件+5的装备
	{
		name = "强化1件+5的装备",
		 on_trigger = function(player, action, target, ref_value, target_name, map_name)
			local level = lualib:Equip_GetRefineLevel(player, target)
			if action == 1003 and level >= 5 then
				local cur_refine = lualib:Player_SetCustomVarInt(player, "refine_item", 1);
			end
        end,

        check_complete = function(player)
			local cur_refine = lualib:Player_GetCustomVarInt(player, "refine_item");
			if cur_refine == 1 then
				lualib:Player_SetCustomVarInt(player, "refine_item", 0);
				return true
			end
				return false
        end,
	},
	
	[65] = --强化1件+6的装备
	{
		name = "强化1件+6的装备",
		 on_trigger = function(player, action, target, ref_value, target_name, map_name)
			local level = lualib:Equip_GetRefineLevel(player, target)
			if action == 1003 and level >= 6 then
				local cur_refine = lualib:Player_SetCustomVarInt(player, "refine_item", 1);
			end
        end,

        check_complete = function(player)
			local cur_refine = lualib:Player_GetCustomVarInt(player, "refine_item");
			if cur_refine == 1 then
				lualib:Player_SetCustomVarInt(player, "refine_item", 0);
				return true
			end
				return false
        end,
	},
	
	[66] = --强化1件+7的装备
	{
		name = "强化1件+7的装备",
		 on_trigger = function(player, action, target, ref_value, target_name, map_name)
			local level = lualib:Equip_GetRefineLevel(player, target)
			if action == 1003 and level >= 7 then
				local cur_refine = lualib:Player_SetCustomVarInt(player, "refine_item", 1);
			end
        end,

        check_complete = function(player)
			local cur_refine = lualib:Player_GetCustomVarInt(player, "refine_item");
			if cur_refine == 1 then
				lualib:Player_SetCustomVarInt(player, "refine_item", 0);
				return true
			end
				return false
        end,
	},
	
	[67] = --强化1件+8的装备
	{
		name = "强化1件+8的装备",
		 on_trigger = function(player, action, target, ref_value, target_name, map_name)
			local level = lualib:Equip_GetRefineLevel(player, target)
			if action == 1003 and level >= 8 then
				local cur_refine = lualib:Player_SetCustomVarInt(player, "refine_item", 1);
			end
        end,

        check_complete = function(player)
			local cur_refine = lualib:Player_GetCustomVarInt(player, "refine_item");
			if cur_refine == 1 then
				lualib:Player_SetCustomVarInt(player, "refine_item", 0);
				return true
			end
				return false
        end,
	},
	
	[68] = --强化2件+8的装备
	{
		name = "强化2件+8的装备",
		 on_trigger = function(player, action, target, ref_value, target_name, map_name)
			local level = lualib:Equip_GetRefineLevel(player, target)
			if action == 1003 and level >= 8 then
				local cur_refine = lualib:SetInt(player, "refine_item1", lualib:GetInt(player,"refine_item1") + 1 );
			end
        end,

        check_complete = function(player)
			local cur_refine = lualib:GetInt(player, "refine_item1");
			if cur_refine == 2 then
				lualib:Player_SetCustomVarInt(player, "refine_item1", 0);
				return true
			end
				return false
        end,
	},
	
	[69] = --强化1件+9的装备
	{
		name = "强化1件+9的装备",
		 on_trigger = function(player, action, target, ref_value, target_name, map_name)
			local level = lualib:Equip_GetRefineLevel(player, target)
			if action == 1003 and level >= 9 then
				local cur_refine = lualib:Player_SetCustomVarInt(player, "refine_item", 1);
			end
        end,

        check_complete = function(player)
			local cur_refine = lualib:Player_GetCustomVarInt(player, "refine_item");
			if cur_refine == 1 then
				lualib:Player_SetCustomVarInt(player, "refine_item", 0);
				return true
			end
				return false
        end,
	},
	
	[70] = --进入【镇魔圣殿】1次
	{
		name = "进入【镇魔圣殿】1次",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "副本封魔恶谷" then
				local cur_enters = lualib:Player_SetCustomVarInt(player, "map_enter", 1);
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:Player_GetCustomVarInt(player, "map_enter");
			if cur_enters == 1 then
				lualib:Player_SetCustomVarInt(player, "map_enter", 0);
				return true
			end
				return false
        end,
	},
	
	
	
	[71] = --进入【天荒古阵】1次
	{
		name = "进入【天荒古阵】1次",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "副本沃玛寺庙" then
				local cur_enters = lualib:Player_SetCustomVarInt(player, "map_enter", 1);
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:Player_GetCustomVarInt(player, "map_enter");
			if cur_enters == 1 then
				lualib:Player_SetCustomVarInt(player, "map_enter", 0);
				return true
			end
				return false
        end,
	},
	
	[72] = --进入【黑暗祭坛】1次
	{
		name = "进入【黑暗祭坛】1次",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "副本天空之城" then
				local cur_enters = lualib:Player_SetCustomVarInt(player, "map_enter", 1);
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:Player_GetCustomVarInt(player, "map_enter");
			if cur_enters == 1 then
				lualib:Player_SetCustomVarInt(player, "map_enter", 0);
				return true
			end
				return false
        end,
	},
	
	[73] = --进入【上古邪庙】1次
	{
		name = "进入【上古邪庙】1次",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "副本祖玛寺庙" then
				local cur_enters = lualib:Player_SetCustomVarInt(player, "map_enter", 1);
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:Player_GetCustomVarInt(player, "map_enter");
			if cur_enters == 1 then
				lualib:Player_SetCustomVarInt(player, "map_enter", 0);
				return true
			end
				return false
        end,
	},
	
	[74] = --进入【蜘蛛巢穴】1次
	{
		name = "进入【蜘蛛巢穴】1次",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "副本赤月恶魔" then
				local cur_enters = lualib:Player_SetCustomVarInt(player, "map_enter", 1);
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:Player_GetCustomVarInt(player, "map_enter");
			if cur_enters == 1 then
				lualib:Player_SetCustomVarInt(player, "map_enter", 0);
				return true
			end
				return false
        end,
	},
	
	[75] = --进入【镇魔圣殿】3次
	{
		name = "进入【镇魔圣殿】3次",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "副本封魔恶谷" then
				local cur_enters = lualib:SetInt(player, "map_enter_fm", lualib:GetInt(player,"map_enter_fm") + 1 );
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:GetInt(player, "map_enter_fm");
			if cur_enters == 3 then
				lualib:SetInt(player, "map_enter_fm", 0);
				return true
			end
				return false
        end,
	},
	
	[76] = --进入【黑暗祭坛】3次
	{
		name = "进入【黑暗祭坛】3次",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "副本天空之城" then
				local cur_enters = lualib:SetInt(player, "map_enter_tk", lualib:GetInt(player,"map_enter_tk") + 1 );
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:GetInt(player, "map_enter_tk");
			if cur_enters == 3 then
				lualib:SetInt(player, "map_enter_tk", 0);
				return true
			end
				return false
        end,
	},
	
	[77] = --进入【赤炎禁地】3次
	{
		name = "进入【赤炎禁地】3次",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "副本赤月神殿" then
				local cur_enters = lualib:SetInt(player, "map_enter_cy", lualib:GetInt(player,"map_enter_cy") + 1 );
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:GetInt(player, "map_enter_cy");
			if cur_enters == 3 then
				lualib:SetInt(player, "map_enter_cy", 0);
				return true
			end
				return false
        end,
	},
	
	[78] = --进入【镇魔圣殿】9次
	{	
		name = "进入【镇魔圣殿】9次",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "副本封魔恶谷" then
				local cur_enters = lualib:SetInt(player, "map_enter_fm1", lualib:GetInt(player,"map_enter_fm1") + 1 );
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:GetInt(player, "map_enter_fm1");
			if cur_enters == 9 then
				lualib:SetInt(player, "map_enter_fm1", 0);
				return true
			end
				return false
        end,
	},
	
	[79] = --进入【黑暗祭坛】9次
	{
		name = "进入【黑暗祭坛】9次",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "副本天空之城" then
				local cur_enters = lualib:SetInt(player, "map_enter_tk1", lualib:GetInt(player,"map_enter_tk1") + 1 );
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:GetInt(player, "map_enter_tk1");
			if cur_enters == 9 then
				lualib:SetInt(player, "map_enter_tk1", 0);
				return true
			end
				return false
        end,
	},
	
	[80] = --进入【赤炎禁地】9次
	{
		name = "进入【赤炎禁地】9次",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "副本赤月恶魔" then
				local cur_enters = lualib:SetInt(player, "map_enter_cyem", lualib:GetInt(player,"map_enter_cyem") + 1 );
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:GetInt(player, "map_enter_cyem");
			if cur_enters == 9 then
				lualib:SetInt(player, "map_enter_cyem", 0);
				return true
			end
				return false
        end,
	},
	
	[81] = --翅膀升阶到1阶
	{
		name = "翅膀升至1阶",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local wing_shengjie = lualib:GetInt(player, "wing_level");
			if wing_shengjie == 1 then
				return true
			end
				return false
        end,
	},
	
	[82] = --翅膀升阶到2阶
	{
		name = "翅膀升至2阶",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local wing_shengjie = lualib:GetInt(player, "wing_level");
			if wing_shengjie == 2 then
				return true
			end
				return false
        end,
	},
	
	[83] = --翅膀升阶到3阶
	{
		name = "翅膀升至3阶",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local wing_shengjie = lualib:GetInt(player, "wing_level");
			if wing_shengjie == 3 then
				return true
			end
				return false
        end,
	},
	
	[84] = --翅膀升阶到4阶
	{
		name = "翅膀升至4阶",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local wing_shengjie = lualib:GetInt(player, "wing_level");
			if wing_shengjie == 4 then
				return true
			end
				return false
        end,
	},
	
	[85] = --翅膀升阶到5阶
	{
		name = "翅膀升至5阶",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local wing_shengjie = lualib:GetInt(player, "wing_level");
			if wing_shengjie == 5 then
				return true
			end
				return false
        end,
	},
	
	[86] = --翅膀升阶到6阶
	{
		name = "翅膀升至6阶",
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local wing_shengjie = lualib:GetInt(player, "wing_level");
			if wing_shengjie == 6 then
				return true
			end
				return false
        end,
	},
	
	
	}
	
function OnTrigger(glory_id, player, action, target, ref_value, target_name, map_name)
    if glory_callback[glory_id] ~= nil and glory_callback[glory_id].on_trigger ~= nil then
        glory_callback[glory_id].on_trigger(player, action, target, ref_value, target_name, map_name)
    end
end

function CheckComplete(glory_id, player)
    if glory_callback[glory_id] == nil or glory_callback[glory_id].check_complete
	== nil then
		lualib:SetInt(player,"GloryGetNum",lualib:GetInt(player,"GloryGetNum") + 1)
		local num = lualib:GetInt(player,"GloryGetNum")
		local name = glory_callback[glory_id].name
		
		
		lualib:SysPromptMsg(player,"#COLORCOLOR_BLUE##UILINK<STR:你达成了新的成就,WND:成就>##COLORCOLOR_END##COLORCOLOR_YELLOW#\""..name.."\"，请点击领取奖励#COLORCOLOR_END#")
		lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.AchNum("..num..")")
        return true
    end
	if glory_callback[glory_id].check_complete(player) then
		lualib:SetInt(player,"GloryGetNum",lualib:GetInt(player,"GloryGetNum") + 1)
		local num = lualib:GetInt(player,"GloryGetNum")
		local name = glory_callback[glory_id].name
		if name == "第一次入会" then
			if lualib:HasQuest(player, 97) then
				lualib:SetQuestGroupHuntingsCount(player, 97, 444, 1)
			end
		end
		
		
		--[[
		elseif name == "强化1件+6的装备" then
			if lualib:HasQuest(player, 10001) then
				lualib:SetQuestGroupHuntingsCount(player, 10001, 444, 1)
			end
		elseif name == "第一次入会" then
			if lualib:HasQuest(player, 97) then
				lualib:SetQuestGroupHuntingsCount(player, 97, 444, 1)
			end
		elseif name == "强化1件+8的装备" then
			if lualib:HasQuest(player, 100) then
				lualib:SetQuestGroupHuntingsCount(player, 100, 444, 1)
			end
		elseif name == "强化2件+8的装备" then
			if lualib:HasQuest(player, 105) then
				lualib:SetQuestGroupHuntingsCount(player, 105, 444, 2)
			end
		elseif name == "强化1件+9的装备" then
			if lualib:HasQuest(player, 123) then
				lualib:SetQuestGroupHuntingsCount(player, 123, 444, 1)
			end
		end
		--]]
		lualib:SysPromptMsg(player,"#COLORCOLOR_BLUE##UILINK<STR:你达成了新的成就,WND:成就>##COLORCOLOR_END##COLORCOLOR_YELLOW#\""..name.."\"，请点击领取奖励#COLORCOLOR_END#")
		lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.AchNum("..num..")")
		return true
	end
	return false
		
end
