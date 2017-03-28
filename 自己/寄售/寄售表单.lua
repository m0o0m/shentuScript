local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")



function Main(player)
	local rmb = lualib:GetInt(player, "rmbPoint");
	lualib:ShowFormWithContent(player, "脚本表单", "TradeWnd:Updata("..rmb..")");
	return ""
end


--客户端显示使用，填物品的name字段
local data = 
{	
	--回收价格表{name,  回收价格}
	{"1人民币", 1},
	{"5人民币", 5},
	{"10人民币", 10},
	{"50人民币", 50},
	{"100人民币", 100},
	{"霸业神剑", 200},
	{"斗笠1-2", 400},
	{"斗笠1-3", 600},
	{"斗笠2-1", 800},
	{"斗笠2-2", 1000},
	{"斗笠2-3", 1200},
	{"斗笠3-1", 1400},
	{"斗笠3-2", 1600},
	{"斗笠3-3", 1800},
	{"斗笠4-1", 2000},
	{"斗笠4-2", 2200},
	{"斗笠4-3", 2400},
	{"青龙盾", 1000},
	{"白虎盾", 1000},
	{"朱雀盾", 1000},
	{"玄武盾", 1000},
	{"战武器6", 1000},
	{"法武器6", 1000},
	{"道武器6", 1000},
}


--程序判断使用，填物品的keyname字段
local DATA = 
{	
	--回收价格表{索引名,  回收价格}
	{"1人民币", 1},
	{"5人民币", 5},
	{"10人民币", 10},
	{"50人民币", 50},
	{"100人民币", 100},
	{"霸业神剑", 200},
	{"斗笠1-2", 400},
	{"斗笠1-3", 600},
	{"斗笠2-1", 800},
	{"斗笠2-2", 1000},
	{"斗笠2-3", 1200},
	{"斗笠3-1", 1400},
	{"斗笠3-2", 1600},
	{"斗笠3-3", 1800},
	{"斗笠4-1", 2000},
	{"斗笠4-2", 2200},
	{"斗笠4-3", 2400},
	{"青龙盾", 1000},
	{"白虎盾", 1000},
	{"朱雀盾", 1000},
	{"玄武盾", 1000},
	{"战武器6", 1000},
	{"法武器6", 1000},
	{"道武器6", 1000},
}
function RMBRecycle_Main(player )
	lualib:ShowFormWithContent(player, "脚本表单", "TradeWnd_1:Updata("..serialize(data)..")");
	return ""
end

function RMBRecycle_Recycle(player, index);
	index = tonumber(index);
	local tab = DATA[index]
	if not tab then 
		return "回收列表里没有对应索引"
	end 
	local keyname = tab[1];
	local count = lualib:ItemCount(player, keyname);
	if count <= 0 then 
		return "您的背包里没有【"..data[index][1].."】这个装备"
	else
		if not lualib:TakeItem(player, keyname, 1, "删道具:寄售表单，RMB回收", player) then
			return "删除道具失败"
		end
		local rmb = lualib:GetInt(player, "rmbPoint");
		rmb = rmb + tab[2];
		lualib:SetInt(player, "rmbPoint", rmb);
		Main(player);
		local db_sub_tb = {};
		local player_name = lualib:Name(player);
		db_sub_tb[1] = data[index][1]; --name
		db_sub_tb[2] = tab[2];		--price
		db_sub_tb[3] = player_name; --player_name
		db_sub_tb[4] = 0;	--hasBeenBought
		db_sub_tb[5] = keyname;	--item _KeyName
		local DBStr_RMBRecycle = {}
		local str = lualib:GetDBStr("DBStr_RMBRecycle");
		if str ~= nil and str ~= "" and str ~= "0" then
			DBStr_RMBRecycle  = deserialize(str);
		end
		table.insert(DBStr_RMBRecycle, 1, db_sub_tb);
		lualib:SetDBStr("DBStr_RMBRecycle", serialize(DBStr_RMBRecycle));
		return "恭喜您成功回收【"..data[index][1].."】,获得【"..tab[2].."】RMB"
	end 
	return ""
end



function EquipRecycle_Main(player)
	local DBStr_RMBRecycle = {}
	local str = lualib:GetDBStr("DBStr_RMBRecycle");
	if str ~= nil and str ~= "" and str ~= "0" then
		DBStr_RMBRecycle  = deserialize(str);
		if type(DBStr_RMBRecycle) ~= "table" then 
			return "数据库数据结构错误,不是表结构"
		end
	end
	lualib:ShowFormWithContent(player, "脚本表单", "TradeWnd_2:Updata("..serialize(DBStr_RMBRecycle)..")");
	return ""
end

function EquipRecycle_BuyBack(player, index)
	index = tonumber(index);
	local DBStr_RMBRecycle = {}
	local str = lualib:GetDBStr("DBStr_RMBRecycle");
	if str ~= nil and str ~= "" and str ~= "0" then
		DBStr_RMBRecycle  = deserialize(str);
		if type(DBStr_RMBRecycle) ~= "table" then 
			return "数据库数据结构错误,不是表结构"
		end
	end
	local tab = DBStr_RMBRecycle[index]
	if not tab then 
		return ""
	end 
	local bool = tab[4];
	if bool == 1 then 
		return "物品已经被购买"
	end
	local price = tab[2];
	local rmb = lualib:GetInt(player, "rmbPoint");
	if price > rmb then 
		return "RMB点数不足,无法购买"
	end
	if lualib:GetBagFree(player) < 1 then
		return "背包空间不足"
	end
	local Item_KeyName = tab[5];
	if not lualib:AddItem(player, Item_KeyName, 1, false, "加物品:寄售表单，物品回购", player) then --给物品
	   return "给玩家加道具失败"
	end
	rmb = rmb - price;
	lualib:SetInt(player, "rmbPoint", rmb);
	Main(player);
	DBStr_RMBRecycle[index][4] = 1;
	lualib:SetDBStr("DBStr_RMBRecycle", serialize(DBStr_RMBRecycle));
	lualib:ShowFormWithContent(player, "脚本表单", "TradeWnd_2:Updata("..serialize(DBStr_RMBRecycle)..")");
	return ""
end



local AWARD = 
{	--{需要装备+数量}....desc="描述文字",val=奖励RMB数量,num=回收数量
	{{"四级烈火剑法", 1}, desc = "四级烈焰斩", val = 300, num = 1},
	{{"四级开天斩", 1}, desc = "四级开天斩", val = 300, num = 1},
	{{"四级魔法盾", 1}, desc = "四级魔法盾", val = 300, num = 1},
	{{"四级冰咆哮", 1}, desc = "四级冰咆哮", val = 300, num = 1},
	{{"四级流星火雨", 1}, desc = "四级流星火雨", val = 300, num = 1},
	{{"四级召唤神兽", 1}, desc = "四级召唤神獣", val = 300, num = 1},
	{{"四级召唤月灵", 1}, desc = "四级召唤月灵", val = 300, num = 1},
	{{"战武器2觉醒", 1}, desc = "屠龙★觉醒", val = 100, num = 1},
	{{"法武器2觉醒", 1}, desc = "嗜魂★觉醒", val = 100, num = 1},
	{{"道武器2觉醒", 1}, desc = "逍遥扇★觉醒", val = 100, num = 1},
	{{"战武器3觉醒", 1}, desc = "冥王★觉醒", val = 500, num = 1},
	{{"法武器3觉醒", 1}, desc = "雷鸣★觉醒", val = 500, num = 1},
	{{"道武器3觉醒", 1}, desc = "青冥★觉醒", val = 500, num = 1},
	{{"战武器4觉醒", 1}, desc = "问天★觉醒", val = 500, num = 1},
	{{"法武器4觉醒", 1}, desc = "魔魂★觉醒", val = 500, num = 1},
	{{"道武器4觉醒", 1}, desc = "玄冰★觉醒", val = 500, num = 1},
	{{"战衣服3男", 1}, desc = "天魔战甲", val = 50, num = 1},
	{{"战衣服3女", 1}, desc = "圣战宝衣", val = 50, num = 1},
	{{"法衣服3男", 1}, desc = "法圣披风", val = 50, num = 1},
	{{"法衣服3女", 1}, desc = "云裳羽衣", val = 50, num = 1},
	{{"道衣服3男", 1}, desc = "天尊道袍", val = 50, num = 1},
	{{"道衣服3女", 1}, desc = "天师道衣", val = 50, num = 1},
	{{"战衣服4男", 1}, desc = "雷霆战甲【男】", val = 200, num = 1},
	{{"战衣服4女", 1}, desc = "雷霆战甲【女】", val = 200, num = 1},
	{{"法衣服4男", 1}, desc = "烈焰魔衣【男】", val = 200, num = 1},
	{{"法衣服4女", 1}, desc = "烈焰魔衣【女】", val = 200, num = 1},
	{{"道衣服4男", 1}, desc = "光芒道袍【男】", val = 200, num = 1},
	{{"道衣服4女", 1}, desc = "光芒道袍【女】", val = 200, num = 1},
	{{"战衣服5男", 1}, desc = "永恒●凤天战甲", val = 1000, num = 1},
	{{"战衣服5女", 1}, desc = "永恒●凤天战袍", val = 1000, num = 1},
	{{"法衣服5男", 1}, desc = "永恒●凤天魔甲", val = 1000, num = 1},
	{{"法衣服5女", 1}, desc = "永恒●凤天魔衣", val = 1000, num = 1},
	{{"道衣服5男", 1}, desc = "永恒●凤天圣甲", val = 1000, num = 1},
	{{"道衣服5女", 1}, desc = "永恒●凤天圣衣", val = 1000, num = 1},
	{{"屠龙刀", 1}, desc = "十杀", val = 1000, num = 1},
}
local file = "提现日志.txt"--存储提现记录详细记录
local files = "提现记录.txt"--存储提现记录json串数据
local remains = 24*60*60	--限时奖励时间[单位秒]

function TimeLimitRecycle_Main(player)
	
	local startServerTime_str = lualib:GetConstVar("StartServerTime");
	local startServerTime_int = lualib:Str2Time(startServerTime_str);  
	local nowTime_int = lualib:GetAllTime();
	local activityEndTime_int = startServerTime_int + 24*60*60;  	
	local restTime_int = 0;
	if nowTime_int > activityEndTime_int then 
	else
		restTime_int = activityEndTime_int - nowTime_int;
	end
	local DATA = {};
	DATA[1] = restTime_int;
	DATA[2] = AWARD;
	lualib:ShowFormWithContent(player, "脚本表单", "TradeWnd_4:Updata("..serialize(DATA)..")");
	return ""
end

function TimeLimitRecycle_Recycle(player, index)
	local startServerTime_str = lualib:GetConstVar("StartServerTime");
	local startServerTime_int = lualib:Str2Time(startServerTime_str);  
	local nowTime_int = lualib:GetAllTime();
	local activityEndTime_int = startServerTime_int + 24*60*60;  	
	local restTime_int = 0;
	if nowTime_int > activityEndTime_int then 
		return "限时奖励时间已结束"
	end
	index = tonumber(index);
	local tab = AWARD[index]
	if not tab then 
		return "回收列表里没有对应索引TimeLimitRecycle"
	end 
	local keyname = tab[1][1];
	local count = lualib:ItemCount(player, keyname);
	if count <= 0 then 
		return "您的背包里没有【"..tab.desc.."】这个装备"
	else
		if not lualib:TakeItem(player, keyname, 1, "删道具:寄售表单，限时奖励回收", player) then
			return "删除道具失败"
		end
		local rmb = lualib:GetInt(player, "rmbPoint");
		rmb = rmb + tab.val;
		lualib:SetInt(player, "rmbPoint", rmb);
		Main(player);
		--[[
		local db_sub_tb = {};
		local player_name = lualib:Name(player);
		-- lualib:SysPromptMsg(player, ""..name);
		db_sub_tb[1] = tab.desc; --name 
		db_sub_tb[2] = tab.val;	--price
		db_sub_tb[3] = player_name;
		db_sub_tb[4] = 0;	--hasBeenBought
		db_sub_tb[5] = tab[1][1];	--keyname
		local DBStr_RMBRecycle = {}
		local str = lualib:GetDBStr("DBStr_RMBRecycle");
		if str ~= nil and str ~= "" and str ~= "0" then
			DBStr_RMBRecycle  = deserialize(str);
		end
		table.insert(DBStr_RMBRecycle, db_sub_tb);
		lualib:SetDBStr("DBStr_RMBRecycle", serialize(DBStr_RMBRecycle));
		return "恭喜您成功回收【"..data[index][1].."】,获得【"..tab[2].."】RMB"
		--]]
		return "恭喜您成功回收【"..tab.desc.."】,获得【"..tab.val.."】RMB"
	end 
	return ""
end


function RMB2Ingot_Main(player)
	local DBStr_RMB2Ingot_Recharge = {}
	local str = lualib:GetDBStr("DBStr_RMB2Ingot_Recharge");
	if str ~= nil and str ~= "" and str ~= "0" then
		DBStr_RMB2Ingot_Recharge  = deserialize(str);
		if type(DBStr_RMB2Ingot_Recharge) ~= "table" then 
			return "数据库数据结构错误,不是表结构"
		end
	end
	lualib:ShowFormWithContent(player, "脚本表单", "TradeWnd_3:Updata("..serialize(DBStr_RMB2Ingot_Recharge)..")");
	return ""
end

function RMB2Ingot_Recharge( player, num )
	num = tonumber(num);
	if num > 99999 then 
		return "您输入的数字过大,不予处理"
	end
	if num < 100 then 
		return "您输入的RMB点数不足100, 100RMB点起充"
	end
	local rmb = lualib:GetInt(player, "rmbPoint");
	if num > rmb then 
		return "RMB点数不足,无法完成充值"
	end
	rmb = rmb - num;
	lualib:SetInt(player, "rmbPoint", rmb);
	local ingot = num * 100;
	if not lualib:Player_AddIngot(player, ingot, false, "加元宝：寄售表单:RMB点数兑换", player) then
		lualib:Error("RMB2Ingot_Recharge给玩家加元宝发生错误"..player..lualib:Name(player)..",数量="..num);
	end
	local player_name = lualib:Name(player);
	local strTime = lualib:Now();
	local db_sub_tb = {};
	db_sub_tb[1] = player_name;
	db_sub_tb[2] = num;
	db_sub_tb[3] = strTime;
	local DBStr_RMB2Ingot_Recharge = {}
	local str = lualib:GetDBStr("DBStr_RMB2Ingot_Recharge");
	if str ~= nil and str ~= "" and str ~= "0" then
		DBStr_RMB2Ingot_Recharge  = deserialize(str);
		if type(DBStr_RMB2Ingot_Recharge) ~= "table" then 
			return "数据库数据结构错误,不是表结构"
		end
	end
	table.insert(DBStr_RMB2Ingot_Recharge, 1, db_sub_tb);
	lualib:SetDBStr("DBStr_RMB2Ingot_Recharge", serialize(DBStr_RMB2Ingot_Recharge));
	Main(player);
	RMB2Ingot_Main(player);
	return "恭喜您充值成功!,获得【"..ingot.."】元宝"
end