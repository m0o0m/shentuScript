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
	
    lualib:Debug("�ᱦ������ͼ�����ص���")
	for _, v in pairs(timer_refresh) do
		if not lualib:AddTimer(map, v[1], v[2], 1, "on_timer_refresh") then
			lualib:Error("�ᱦ������ͼˢ����Ʒ��ʱ��ʧ�ܣ�")
			return
		end
	end
	lualib:Debug("�ᱦ������ͼˢ����Ʒ��ʱ���ɹ���")
	
	if "" == lualib:Map_GenNpc(map, "�ᱦ��ʹ����", 32, 45, 1, 3) then
		lualib:Error("�ᱦ������ͼ����NPCˢ��ʧ�ܣ�")
	end
	lualib:Debug("�ᱦ������ͼ����NPCˢ�³ɹ���")
	
		if not lualib:AddTimer(map, timer_exp_t[2], timer_exp_t[1], -1, "on_timer_exp") then
			lualib:Error("�ᱦ������Ӿ��鶨ʱ������")
		return
	end
	
end

function on_trigger_enter_map(player)
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n \n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.�õ�ͼÿ��һ��ʱ��ͻ�ˢ��Ԫ����װ���������ĵȴ�\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.ÿ20����ܻ��һ�δ������飬��������Խ�٣�����Խ��!\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.�������ޡ�������^_^#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 310)
    return true
end



function on_timer_refresh(map, timer_id)
	CItem:Declare(map, timer_table)
end

function on_timer_declare(map, timer_id)
	if timer_id <= 600 then
		if timer_id < 60 then
			lualib:SysMsg_SendMapMsg(map, "��ˢ����Ʒװ������"..timer_id.."�룬�������ĵȴ���")
		else
			lualib:SysMsg_SendMapMsg(map, "��ˢ����Ʒװ������"..(timer_id / 60).."�֣��������ĵȴ���")
		end
	else
		local drop1, drop2, drop3 , drop4 = CItem:Roll()
        --����ֱ�Ϊ(ˢ�µ�ͼ��ˢ������x��ˢ������y����ƷKeyName��������ÿ����Ʒ��)
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
                {"����", 740},
                {"����", 740},
                {"����", 740},
                {"���ս��(��)", 740},
                {"���ս��(Ů)", 740},
                {"���޳���(��)", 740},
                {"���޳���(Ů)", 740},
                {"��������(��)", 740},
                {"��������(Ů)", 740},
                {"����(��)", 493},
                {"����(��)", 493},
                {"����(��)", 493},
                {"��Ԩ", 370},
                {"����", 370},
                {"ʮɱ", 370},
                {"�ַ���", 751}
			},
	drop_t2 = {
                {"��а����", 536}, 
                {"��������", 804}, 
                {"��������", 1072}, 
                {"ħ�����", 1608}, 
                {"��ħͷ��", 1876}, 
                {"�ƽ�ͷ��", 2144}, 
                {"����", 2412}, 
                {"���ʯ����", 2680}, 
                {"��ħ����", 2948}, 
                {"��������", 3216}, 
                {"�ƻ���ָ", 3484}, 
                {"����ָ", 4020}, 
                {"��Ԫ��ָ", 4556}, 
                {"���ƽ�ָ", 5092}, 
                {"���ս�ָ", 5628}, 
                {"��ʥ֮��", 6164}, 
                {"��������", 6700}, 
                {"ӫ������", 7236}, 
                {"��������", 7772}, 
                {"����ѥ", 8308}, 
                {"���껤��", 8844}, 
                {"��������", 9380}, 
                {"�ƽ�����", 9648}, 
                {"���ս��(��)", 9701}, 
                {"���ս��(Ů)", 9754}, 
                {"���޳���(��)", 9807}, 
                {"���޳���(Ů)", 9860}, 
                {"��������(��)", 9913}, 
                {"��������(Ů)", 9966}, 
                {"�ַ���", 10000}, 
			},
		drop_t3 = 
			{
				{"500Ԫ��", 10000}
			},
		drop_t4 = 
			{
				{"ף����ˮ", 2500},
				{"����ҩ", 5000},
				{"ǿЧ̫��ˮ", 7500},
				{"̫��ˮ", 10000}
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
			lualib:Error("�ᱦ������ͼ������Ʒʧ�ܣ�")
		end
	end
	lualib:Debug("�ᱦ������ͼ������Ʒ�ɹ���")
	lualib:SysMsg_SendMapMsg(map, name.."���������꡾"..x.."��"..y.."��!")
end

function CItem:Declare(map, time_t)
	for _, v in pairs(time_t) do
		if not lualib:AddTimer(map, v[1], v[2], 1, "on_timer_declare") then
			lualib:Error("�ᱦ������ͼ�����Ʒ���涨ʱ��ʧ�ܣ�")
		end
	end
	lualib:Debug("�ᱦ������ͼ�����Ʒ���涨ʱ���ɹ���")
end

function on_timer_exp(map, timer_id)
	local add_exp = 88888

	local players = lualib:Map_GetMapPlayers(map, false)
	local player_num = lualib:Map_GetPlayerCount(map, true)
	player_num = math.ceil(player_num)
	
	local dbdt_exp = math.ceil(add_exp / player_num)
	
	if players == nil then return end
	for _, v in pairs(players) do
		lualib:Player_AddExp(v, dbdt_exp, "�Ӿ��飺��;�䶷���", "��;�䶷��")
		lualib:SysMsg_SendTriggerMsg(v, "�ᱦ��������������Ϊ���������飺"..dbdt_exp.."��".."���ڻ��ŵ��˺�����Խ�٣����齫Խ�࣡���ս���ɣ�")
		local player_level = lualib:Level(v)

	end

end