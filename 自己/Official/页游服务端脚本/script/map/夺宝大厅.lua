local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local timer_table = 
{
	{600, 1000},
	{300, 300000},
	{180, 420000},
	{120, 480000},
	{60,  540000},
	{30,  570000},
	{20,  580000},
	{10,  590000},
	{5,	  595000},
	{4,   596000},
	{3,   597000},
	{2,   598000},
	{1,   599000},
	{601, 600000}
}

local timer_refresh = 
{
	{1000, 1000},
	{1001, 602000}
}

local timer_exp_t = {20000, 41}

function on_map_create(map)
	lualib:AddTrigger(map,  lua_trigger_enter_map, "on_trigger_enter_map")
	
    lualib:Debug("夺宝大厅地图创建回调！")
	for _, v in pairs(timer_refresh) do
		if not lualib:AddTimer(map, v[1], v[2], 1, "on_timer_refresh") then
			lualib:Error("夺宝大厅地图刷新物品定时器失败！")
			return
		end
	end
	lualib:Debug("夺宝大厅地图刷新物品定时器成功！")
	
	if "" == lualib:Map_GenNpc(map, "夺宝大使场内", 32, 45, 1, 3) then
		lualib:Error("夺宝大厅地图场内NPC刷新失败！")
	end
	lualib:Debug("夺宝大厅地图场内NPC刷新成功！")
	
		if not lualib:AddTimer(map, timer_exp_t[2], timer_exp_t[1], -1, "on_timer_exp") then
			lualib:Error("夺宝大厅添加经验定时器出错！")
		return
	end
	
end

function on_trigger_enter_map(player)
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n \n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.该地图每隔一段时间就会刷出元宝和装备，请耐心等待\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.每20秒就能获得一次大量经验，场内人数越少，经验越高!\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.激情无限、玩得愉快^_^#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 310)
    return true
end



function on_timer_refresh(map, timer_id)
	CItem:Declare(map, timer_table)
end

function on_timer_declare(map, timer_id)
	if timer_id <= 600 then
		if timer_id < 60 then
			lualib:SysMsg_SendMapMsg(map, "离刷出极品装备还有"..timer_id.."秒，请大家耐心等待！")
		else
			lualib:SysMsg_SendMapMsg(map, "离刷出极品装备还有"..(timer_id / 60).."分，请大家耐心等待！")
		end
	else
		local drop1, drop2, drop3 , drop4 = CItem:Roll()
        --下面分别为(刷新地图，刷新坐标x，刷新坐标y，物品KeyName，堆数，每堆物品数)
		CItem:GenItem(map, 32, 45, drop1, 1, 1)
		CItem:GenItem(map, 32, 45, drop2, 1, 1)
		CItem:GenItem(map, 32, 45, drop3, 1, 1)
		CItem:GenItem(map, 32, 45, drop4, 1, 5)
	end
end

function on_map_destroy(map)
	lualib:ClearTrigger(map)
end

CItem = 
{
	drop_t1 = {
                {"审判", 740},
                {"忘机", 740},
                {"囚龙", 740},
                {"赤峰战甲(男)", 740},
                {"赤峰战甲(女)", 740},
                {"阎罗长袍(男)", 740},
                {"阎罗长袍(女)", 740},
                {"光明道袍(男)", 740},
                {"光明道袍(女)", 740},
                {"审判(极)", 493},
                {"忘机(极)", 493},
                {"囚龙(极)", 493},
                {"龙渊", 370},
                {"天瀑", 370},
                {"十杀", 370},
                {"讨伐令", 751}
			},
	drop_t2 = {
                {"幻邪手镯", 536}, 
                {"龙牙手镯", 804}, 
                {"骷髅手套", 1072}, 
                {"魔化面具", 1608}, 
                {"阎魔头盔", 1876}, 
                {"黄金头盔", 2144}, 
                {"浮云", 2412}, 
                {"灵光石项链", 2680}, 
                {"唤魔铃铛", 2948}, 
                {"绿玉项链", 3216}, 
                {"破坏戒指", 3484}, 
                {"摄魂戒指", 4020}, 
                {"混元戒指", 4556}, 
                {"青云戒指", 5092}, 
                {"奥普戒指", 5628}, 
                {"武圣之戒", 6164}, 
                {"奥普项链", 6700}, 
                {"荧光项链", 7236}, 
                {"鬼牙项链", 7772}, 
                {"阴阳靴", 8308}, 
                {"境魂护腕", 8844}, 
                {"奥普手镯", 9380}, 
                {"黄金手镯", 9648}, 
                {"赤峰战甲(男)", 9701}, 
                {"赤峰战甲(女)", 9754}, 
                {"阎罗长袍(男)", 9807}, 
                {"阎罗长袍(女)", 9860}, 
                {"光明道袍(男)", 9913}, 
                {"光明道袍(女)", 9966}, 
                {"讨伐令", 10000}, 
			},
		drop_t3 = 
			{
				{"500元宝", 10000}
			},
		drop_t4 = 
			{
				{"祝福神水", 2500},
				{"疗伤药", 5000},
				{"强效太阳水", 7500},
				{"太阳水", 10000}
			}
}

function CItem:Roll()
	local drop1, drop2, drop3 ,drop4
	local rnd1,rnd2,rnd3,rnd4 = 0,0,0,0
	local qujian1,qujian2,qujian3,qujian4 = 0,0,0,0
	local max1,max2,max3,max4 = 0,0,0,0
	
	for k = 1, #self.drop_t1 do
		max1 = max1 + self.drop_t1[k][2]
	end
	
	local rnd1 = lualib:GenRandom(1, max1)
	for i = 1, #self.drop_t1 do
		qujian1 = qujian1 + self.drop_t1[i][2]
		if rnd1 <= qujian1 then
			drop1 = self.drop_t1[i][1]
			break
		end
	end
	
	for k = 1, #self.drop_t2 do
		max2 = max2 + self.drop_t2[k][2]
	end
	
	local rnd2 = lualib:GenRandom(1, max2)
	for i = 1, #self.drop_t2 do
		qujian2 = qujian2 + self.drop_t2[i][2]
		if rnd2 <= qujian2 then
			drop2 = self.drop_t2[i][1]
			break
		end
	end
	
	for k = 1, #self.drop_t3 do
		max3 = max3 + self.drop_t3[k][2]
	end
	
	local rnd3 = lualib:GenRandom(1, max3)
	for i = 1, #self.drop_t3 do
		qujian3 = qujian3 + self.drop_t3[i][2]
		if rnd3 <= qujian3 then
			drop3 = self.drop_t3[i][1]
			break
		end
	end
	
	for k = 1, #self.drop_t4 do
		max4 = max4 + self.drop_t4[k][2]
	end
	
	local rnd4 = lualib:GenRandom(1, max4)
	for i = 1, #self.drop_t4 do
		qujian4 = qujian4 + self.drop_t4[i][2]
		if rnd4 <= qujian4 then
			drop4 = self.drop_t4[i][1]
			break
		end
	end

	return drop1, drop2, drop3, drop4
end

function CItem:GenItem(map, x, y, name, num, count)
	for i = 1, count do
		if "" == lualib:Map_GenItem(map, x, y, name, num, true, 120) then
			lualib:Error("夺宝大厅地图创建物品失败！")
		end
	end
	lualib:Debug("夺宝大厅地图创建物品成功！")
	lualib:SysMsg_SendMapMsg(map, name.."出现在坐标【"..x.."，"..y.."】!")
end

function CItem:Declare(map, time_t)
	for _, v in pairs(time_t) do
		if not lualib:AddTimer(map, v[1], v[2], 1, "on_timer_declare") then
			lualib:Error("夺宝大厅地图添加物品宣告定时器失败！")
		end
	end
	lualib:Debug("夺宝大厅地图添加物品宣告定时器成功！")
end

function on_timer_exp(map, timer_id)
	local add_exp = 88888

	local players = lualib:Map_GetMapPlayers(map, false)
	local player_num = lualib:Map_GetPlayerCount(map, true)
	player_num = math.ceil(player_num)
	
	local dbdt_exp = math.ceil(add_exp / player_num)
	
	if players == nil then return end
	for _, v in pairs(players) do
		lualib:Player_AddExp(v, dbdt_exp, "加经验：神途武斗场活动", "神途武斗场")
		lualib:SysMsg_SendTriggerMsg(v, "夺宝大厅的生死决斗为你带来超额经验："..dbdt_exp.."！".."场内活着的人和生物越少，经验将越多！疯狂战斗吧！")
		local player_level = lualib:Level(v)

	end

end