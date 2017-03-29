local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")



--强化收益
local ATT = {
	[3] = {
		10 ,
		20 ,
		30 ,
		40 ,
		50 ,
		60 ,
		70 ,
		80 ,
		90 ,
		100,
	},	
	[5] = {
		5 ,
		10,
		15,
		20,
		25,
		30,
		35,
		40,
		45,
		50,
	},	
	[6] = {
		1 ,
		2 ,
		4 ,
		6 ,
		8 ,
		10,
		12,
		14,
		16,
		18,
	},
	[7] = {
		1 ,
		2 ,
		4 ,
		6 ,
		8 ,
		10,
		12,
		14,
		16,
		18,
	},
	[8] = {
		1 ,
		2 ,
		4 ,
		6 ,
		8 ,
		10,
		12,
		14,
		16,
		18,
	},
	[9] = {
		1 ,
		2 ,
		4 ,
		6 ,
		8 ,
		10,
		12,
		14,
		16,
		18,
	},
	[10] = {
		3 ,
		6 ,
		9 ,
		12,
		15,
		18,
		21,
		24,
		27,
		30,
	},
	[11] = {
		1 ,
		2 ,
		4 ,
		6 ,
		8 ,
		10,
		12,
		14,
		16,
		18,
	},
	[12] = {
		1 ,
		2 ,
		4 ,
		6 ,
		8 ,
		10,
		12,
		14,
		16,
		18,
	},
	[13] = {
		1 ,
		2 ,
		4 ,
		6 ,
		8 ,
		10,
		12,
		14,
		16,
		18,
	},
	[14] = {
		1 ,
		2 ,
		4 ,
		6 ,
		8 ,
		10,
		12,
		14,
		16,
		18,
	},
	[15] = {
		1 ,
		2 ,
		4 ,
		6 ,
		8 ,
		10,
		12,
		14,
		16,
		18,
	},	
	[16] = {
		3 ,
		6 ,
		9 ,
		12,
		15,
		18,
		21,
		24,
		27,
		30,
	},
	[17] = {
		1 ,
		2 ,
		4 ,
		6 ,
		8 ,
		10,
		12,
		14,
		16,
		18,
	},	
	[49] = {
		5 ,
		6 ,
		7 ,
		8 ,
		9 ,
		10,
		11,
		12,
		13,
		14,
	},	
	
} 


--强化装备时需要消耗的道具类型与道具数量以及金币数量由此装备所对应的 等级段 与 强化等级 共同决定。
local EXPEND = {
	{	--装备等级1到10级
--结构:道具数 金币数 成功率 100%成功需要元宝
		{{2 , 101}, 100, 	0},
		{{3 , 102}, 100, 	0},
		{{4 , 103}, 100, 	0},
		{{5 , 104}, 100, 	0},
		{{6 , 105}, 100, 	0},
		{{7 , 106}, 100, 	0},
		{{8 , 107}, 100, 	0},
		{{9 , 108}, 100,	0},
		{{10, 109}, 100,	0},
		{{11, 110}, 100, 	0},
		{{12, 111}, 100, 	0},
		{{13, 112}, 100, 	0},
		{{14, 113}, 100, 	0},
		{{15, 114}, 100, 	0},
		{{16, 115}, 100, 	0},
		{{17, 116}, 100, 	0},
		{{18, 117}, 100, 	0},
		{{19, 118}, 100, 	0},
		{{20, 119}, 100, 	0},
		{{21, 120}, 100, 	0},
		{{21, 120}, 100, 	0},

	},	
	{	--装备等级10到20级
		{{12, 401}, 100, 	0},
		{{13, 402}, 100, 	0},
		{{14, 403}, 100, 	0},
		{{15, 404}, 100, 	0},
		{{16, 405}, 100, 	0},
		{{17, 406}, 100, 	0},
		{{18, 407}, 100, 	0},
		{{19, 408}, 100,	0},
		{{20, 409}, 100,	0},
		{{21, 410}, 100, 	0},
		{{22, 411}, 100, 	0},
		{{23, 412}, 100, 	0},
		{{24, 413}, 100, 	0},
		{{25, 414}, 100, 	0},
		{{26, 415}, 100, 	0},
		{{27, 416}, 100, 	0},
		{{28, 417}, 100, 	0},
		{{29, 418}, 100, 	0},
		{{30, 419}, 100, 	0},
		{{31, 420}, 100, 	0},
		{{31, 420}, 100, 	0},
	},
	{	--装备等级20到30级
		{{22, 901}, 100, 	0},
		{{23, 902}, 100, 	0},
		{{24, 903}, 100, 	0},
		{{25, 904}, 100, 	0},
		{{26, 905}, 100, 	0},
		{{27, 906}, 100, 	0},
		{{28, 907}, 100, 	0},
		{{29, 908}, 90,		100},
		{{30, 909}, 90,		100},
		{{31, 910}, 90, 	100},
		{{32, 911}, 80, 	200},
		{{33, 912}, 80, 	200},
		{{34, 913}, 80, 	200},
		{{35, 914}, 75, 	300},
		{{36, 915}, 75, 	300},
		{{37, 916}, 75, 	300},
		{{38, 917}, 70, 	500},
		{{39, 918}, 70, 	500},
		{{40, 919}, 70, 	500},
		{{41, 920}, 70, 	500},
		{{41, 920}, 70, 	500},
	},
	{	--装备等级30到40级
		{{32, 1601}, 100, 	0},
		{{33, 1602}, 100, 	0},
		{{34, 1603}, 100, 	0},
		{{35, 1604}, 100, 	0},
		{{36, 1605}, 100, 	0},
		{{37, 1606}, 100, 	0},
		{{38, 1607}, 100, 	0},
		{{39, 1608}, 90,	100},
		{{40, 1609}, 90,	100},
		{{41, 1610}, 90, 	100},
		{{42, 1611}, 80, 	200},
		{{43, 1612}, 80, 	200},
		{{44, 1613}, 80, 	200},
		{{45, 1614}, 75, 	300},
		{{46, 1615}, 75, 	300},
		{{47, 1616}, 75, 	300},
		{{48, 1617}, 70, 	500},
		{{49, 1618}, 70, 	500},
		{{50, 1619}, 70, 	500},
		{{51, 1620}, 70, 	500},
		{{51, 1620}, 70, 	500},
	},
	{	--装备等级40到50级
		{{42, 2501}, 100, 	0},
		{{43, 2502}, 100, 	0},
		{{44, 2503}, 100, 	0},
		{{45, 2504}, 100, 	0},
		{{46, 2505}, 100, 	0},
		{{47, 2506}, 100, 	0},
		{{48, 2507}, 100, 	0},
		{{49, 2508}, 90,	100},
		{{50, 2509}, 90,	100},
		{{51, 2510}, 90, 	100},
		{{52, 2511}, 80, 	200},
		{{53, 2512}, 80, 	200},
		{{54, 2513}, 80, 	200},
		{{55, 2514}, 75, 	300},
		{{56, 2515}, 75, 	300},
		{{57, 2516}, 75, 	300},
		{{58, 2517}, 70, 	500},
		{{59, 2518}, 70, 	500},
		{{60, 2519}, 70, 	500},
		{{61, 2520}, 70, 	500},
		{{61, 2520}, 70, 	500},
	},
	{	--装备等级50到60级
		{{52, 3601}, 100, 	0},
		{{53, 3602}, 100, 	0},
		{{54, 3603}, 100, 	0},
		{{55, 3604}, 100, 	0},
		{{56, 3605}, 100, 	0},
		{{57, 3606}, 100, 	0},
		{{58, 3607}, 100, 	0},
		{{59, 3608}, 90,	100},
		{{60, 3609}, 90,	100},
		{{61, 3610}, 90, 	100},
		{{62, 3611}, 80, 	200},
		{{63, 3612}, 80, 	200},
		{{64, 3613}, 80, 	200},
		{{65, 3614}, 75, 	300},
		{{66, 3615}, 75, 	300},
		{{67, 3616}, 75, 	300},
		{{68, 3617}, 70, 	500},
		{{69, 3618}, 70, 	500},
		{{70, 3619}, 70, 	500},
		{{71, 3620}, 70, 	500},
		{{71, 3620}, 70, 	500},
	},
	{	--装备等级60到70级
		{{62, 4901}, 100, 	0},
		{{63, 4902}, 100, 	0},
		{{64, 4903}, 100, 	0},
		{{65, 4904}, 100, 	0},
		{{66, 4905}, 100, 	0},
		{{67, 4906}, 100, 	0},
		{{68, 4907}, 100, 	0},
		{{69, 4908}, 90,	100},
		{{70, 4909}, 90,	100},
		{{71, 4910}, 90, 	100},
		{{72, 4911}, 80, 	200},
		{{73, 4912}, 80, 	200},
		{{74, 4913}, 80, 	200},
		{{75, 4914}, 75, 	300},
		{{76, 4915}, 75, 	300},
		{{77, 4916}, 75, 	300},
		{{78, 4917}, 70, 	500},
		{{79, 4918}, 70, 	500},
		{{80, 4919}, 70, 	500},
		{{81, 4920}, 70, 	500},
		{{81, 4920}, 70, 	500},
	},
	{	--装备等级70到80级
		{{72, 6401}, 100, 	0},
		{{73, 6402}, 100, 	0},
		{{74, 6403}, 100, 	0},
		{{75, 6404}, 100, 	0},
		{{76, 6405}, 100, 	0},
		{{77, 6406}, 100, 	0},
		{{78, 6407}, 100, 	0},
		{{79, 6408}, 90,	100},
		{{80, 6409}, 90,	100},
		{{81, 6410}, 90, 	100},
		{{82, 6411}, 80, 	200},
		{{83, 6412}, 80, 	200},
		{{84, 6413}, 80, 	200},
		{{85, 6414}, 75, 	300},
		{{86, 6415}, 75, 	300},
		{{87, 6416}, 75, 	300},
		{{88, 6417}, 70, 	500},
		{{89, 6418}, 70, 	500},
		{{90, 6419}, 70, 	500},
		{{91, 6420}, 70, 	500},
		{{91, 6420}, 70, 	500},
	},
	{	--装备等级80到90级
		{{82 , 8101}, 100, 			0},
		{{83 , 8102}, 100, 			0},
		{{84 , 8103}, 100, 			0},
		{{85 , 8104}, 100, 			0},
		{{86 , 8105}, 100, 			0},
		{{87 , 8106}, 100, 			0},
		{{88 , 8107}, 100, 			0},
		{{89 , 8108}, 90,		100},
		{{90 , 8109}, 90,		100},
		{{91 , 8110}, 90, 		100},
		{{92 , 8111}, 80, 		200},
		{{93 , 8112}, 80, 		200},
		{{94 , 8113}, 80, 		200},
		{{95 , 8114}, 75, 		300},
		{{96 , 8115}, 75, 		300},
		{{97 , 8116}, 75, 		300},
		{{98 , 8117}, 70, 		500},
		{{99 , 8118}, 70, 		500},
		{{100, 8119}, 70, 		500},
		{{101, 8120}, 70, 		500},
		{{101, 8120}, 70, 		500},
	},
	{	--装备等级90到100级
		{{92 , 10001}, 100, 	0},
		{{93 , 10002}, 100, 	0},
		{{94 , 10003}, 100, 	0},
		{{95 , 10004}, 100, 	0},
		{{96 , 10005}, 100, 	0},
		{{97 , 10006}, 100, 	0},
		{{98 , 10007}, 100, 	0},
		{{99 , 10008}, 90,		100},
		{{100, 10009}, 90,		100},
		{{101, 10010}, 90, 		100},
		{{102, 10011}, 80, 		200},
		{{103, 10012}, 80, 		200},
		{{104, 10013}, 80, 		200},
		{{105, 10014}, 75, 		300},
		{{106, 10015}, 75, 		300},
		{{107, 10016}, 75, 		300},
		{{108, 10017}, 70, 		500},
		{{109, 10018}, 70, 		500},
		{{110, 10019}, 70, 		500},
		{{111, 10020}, 70, 		500},
		{{111, 10020}, 70, 		500},
	},
	
}
local material = "经验丹小"

function GetItemLevelIndex(item_guid)

	local itemlevel = lualib:Item_GetLevel(item_guid)	
	local item_level_index = 0;
	if itemlevel <= 10 then 
		item_level_index = 1
	elseif itemlevel <= 20 then 
		item_level_index = 2
	elseif itemlevel <= 30 then
		item_level_index = 3
	elseif itemlevel <= 40 then 
		item_level_index = 4
	elseif itemlevel <= 50 then 
		item_level_index = 5
	elseif itemlevel <= 60 then 
		item_level_index = 6
	elseif itemlevel <= 70 then 
		item_level_index = 7
	elseif itemlevel <= 80 then 
		item_level_index = 8
	elseif itemlevel <= 90 then 
		item_level_index = 9
	elseif itemlevel <= 100 then 
		item_level_index = 10
	end	
	assert(item_level_index ~= 0, "装备的使用等级非法!");
	return item_level_index;
end




function OfferData(player,item_guid)
	
	local item_level_index = GetItemLevelIndex(item_guid);
	local DATA = {};
	local jl_level = lualib:Equip_GetRefineLevel(player, item_guid);
	local next_jl_level = jl_level + 1;
	-- DATA[1] = jl_level; --客户端直接获取
	DATA[0] = item_level_index;
	DATA[1] = ATT;
	DATA[2] = EXPEND[item_level_index][next_jl_level];
	DATA[3] = item_guid;
	DATA[4] = lualib:GetInt(item_guid, "xing_num");
	DATA[5] = lualib:ItemCount(player, material);
	lualib:ShowFormWithContent(player, "脚本表单", "QianghWnd:UpData("..serialize(DATA)..")");
	-- lualib:ShowFormWithContent(player, "脚本表单", "dbg('脚本表单脚本表单脚本表单--------------');")
	return ""
end	





function forge_item(player, item_guid, job, yb_y)
	-- lualib:SysPromptMsg(player, "item_guid="..item_guid..";job="..job..";yb_y="..yb_y);
	local job = tonumber(job)
	local item_level_index = GetItemLevelIndex(item_guid);
	local jl_level = lualib:Equip_GetRefineLevel(player, item_guid)
	local xing_n = lualib:GetInt(item_guid,"xing_n")
	local keyname = lualib:KeyName(item_guid)
	local table1 = lualib:Item_DataRow(keyname)  
	if not next(table1) then
		lualib:ShowFormWithContent(player,"脚本表单","win_msg_up(\"物品配置表为空\");")
		return ""
	end
	local color = table1["Color"]
	-- local str = string.format("%q", "物品配置表为空"..color);
	-- lualib:ShowFormWithContent(player, "脚本表单", "win_msg_up("..str..");");
	local top_level = 0
	if color == "PURPLE" then  --紫   -- 黄  -- 红  -- 绿
		top_level = 20
	elseif color == "GOLD" or color == "YELLOW" then
		top_level = 20
	elseif color == "RED" then
		top_level = 20
	elseif color == "SKYBLUE" then
		top_level = 10
	elseif color == "BLUE" then
		top_level = 10
	elseif color == "GREENG" then
		top_level = 10
	elseif color == "WHITE" then
		top_level = 10
	end
	-- lualib:ShowFormWithContent(player, "脚本表单", "win_msg_up('"..top_level.."');");
	-- return ""
	if jl_level >= top_level then
		lualib:ShowFormWithContent(player,"脚本表单","win_msg_up(\"已经强化到最高等级\");")
		lualib:SysPromptMsg(player, "已经强化到最高等级");
        return ""
    end
	
	local xing_num = lualib:GetInt(item_guid,"xing_num")
	-- if jl_level >= xing_num then
		-- lualib:SysPromptMsg(player, "强化次数不足");
		-- return ""
	-- end
	
	local refine_next_level = jl_level + 1
	local gold = EXPEND[item_level_index][refine_next_level][1][2];
	local bind_gold = lualib:GetBindGold(player)
	local n_gold = lualib:GetGold(player)
	if gold > bind_gold + n_gold  then
		lualib:ShowFormWithContent(player,"脚本表单","win_msg_up(\"金币不足\");")
		lualib:SysPromptMsg(player, "金币不足");
		return ""
	end	
	----验证道具是否足够
	local require_count = EXPEND[item_level_index][refine_next_level][1][1]
	local count = lualib:ItemCount(player, material);
	-- lualib:ShowFormWithContent(player,"脚本表单","dbg('"..count.."')")
	if count < require_count then 
		local msg = string.format("%q", lualib:KeyName2Name(material, 4).."数量不足,无法完成强化")
		lualib:ShowFormWithContent(player,"脚本表单","win_msg_up("..msg..")")
		return lualib:KeyName2Name(material, 4).."数量不足,无法完成强化"
	end
	
	local succ_rate = EXPEND[item_level_index][refine_next_level][2] 
	if tonumber(yb_y) == 1 then
		--保证成功扣元宝
		local yb = EXPEND[item_level_index][refine_next_level][3]
		local ingot = lualib:GetIngot(player)
		if yb > ingot then
			lualib:ShowFormWithContent(player,"脚本表单","win_msg_up(\"元宝不足\");")
			lualib:SysPromptMsg(player, "元宝不足");
			return ""
		end
		if not lualib:Player_SubIngot(player, yb, false, "扣元宝:100%强化成功", "系统") then
			lualib:ShowFormWithContent(player,"脚本表单","win_msg_up(\"元宝扣除失败\");")
			return ""
		end
		succ_rate = 100
	end
	
	--扣道具
	if not lualib:TakeItem(player, material, require_count, "删道具:强化", player) then 
		lualib:Error("扣道具失败"..lualib:Name(player));
		lualib:SysPromptMsg(player, "扣道具失败");
		return ""
	end	

	if bind_gold >= gold then
		if not lualib:Player_SubGold(player, gold, true, "扣绑定金币:强化", "系统") then
			-- lualib:ShowFormWithContent(player,"脚本表单","win_msg_up(\"金币扣除失败\");")
			return "金币扣除失败"
		end
	else
		if not lualib:Player_SubGold(player, bind_gold, true, "扣绑定金币:强化", "系统") then
			-- lualib:ShowFormWithContent(player,"脚本表单","win_msg_up(\"金币扣除失败\");")
			return "金币扣除失败"
		end
		local jb = gold - bind_gold
		if not lualib:Player_SubGold(player, jb, false, "扣金币:强化", "系统") then
			-- lualib:ShowFormWithContent(player,"脚本表单","win_msg_up(\"金币扣除失败\");")
			return "金币扣除失败"
		end
	end	


	
	local ran = lualib:GenRandom(1,100)
	if ran > succ_rate then
		OfferData(player, item_guid);
		lualib:ShowFormWithContent(player,"脚本表单","win_msg_up(\"强化失败\");")
		return ""
	end	
	
	
	
	if not lualib:Equip_SetRefineLevel(player, item_guid, refine_next_level) then
		-- lualib:ShowFormWithContent(player,"脚本表单","WndAddEffect(nil,\"ForgeWnd,QianghWnd,item_magic\",3020200200,-215,-174,150,1);win_msg_up(\"强化失败\");")
		return "设置精炼等级失败,强化失败"
	end
	
	local attack_att_name_min = -1;
	local attack_att_name_max = -1;
	if job == 1 then
		attack_att_name_max = 10;
		attack_att_name_min = 11;
	elseif job == 2 then
		attack_att_name_max = 12;
		attack_att_name_min = 13;
	elseif job == 3 then
		attack_att_name_max = 14;
		attack_att_name_min = 15;
	end	
	local subType = lualib:Item_GetSubType(player, item_guid)
	if subType == 1 or subType == 8 or subType == 9 then
		--攻击
		if job == 0 then 
			---三职业通用装备
			local k = 0;
			local a = 10;
			for i = 1, 3 do 
				local old_prop_max = get_old_prop(player, item_guid, k);
				lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_max + ATT[a][item_level_index])
				k = k + 1;
				a = a + 1;
				local old_prop_min = get_old_prop(player, item_guid, k);
				lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_min + ATT[a][item_level_index])	
				k = k + 1;
				a = a + 1;
			end
		else

			local old_prop_max = get_old_prop(player, item_guid, 0);
			lualib:Equip_SetExtProp(player, item_guid, 0, attack_att_name_max, old_prop_max + ATT[attack_att_name_max][item_level_index])
			local old_prop_min = get_old_prop(player, item_guid, 1);
			lualib:Equip_SetExtProp(player, item_guid, 1, attack_att_name_min, old_prop_min + ATT[attack_att_name_min][item_level_index])	
		end
	elseif subType == 2 or subType == 3 or subType == 4 or subType == 6 or subType == 7 then
		--攻击, 物防, 魔防
		if job == 0 then 
			local k = 2;
			local a = 6;
			for i = 1, 3 do 
				if i == 1 then 
				
					local old_prop_max = get_old_prop(player, item_guid, 0);
					lualib:Equip_SetExtProp(player, item_guid, 0, 10, old_prop_max + ATT[10][item_level_index])
					local old_prop_min = get_old_prop(player, item_guid, 1);
					lualib:Equip_SetExtProp(player, item_guid, 1, 11, old_prop_min + ATT[11][item_level_index])	
				else
				
					local old_prop_max = get_old_prop(player, item_guid, k);
					lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_max + ATT[a][item_level_index])
					k = k + 1;
					a = a + 1;
					local old_prop_min = get_old_prop(player, item_guid, k);
					lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_min + ATT[a][item_level_index])	
					k = k + 1;
					a = a + 1;
				end
			end
			
		else
			local k = 2;
			local a = 6;
			for i = 1, 3 do 
				if i == 1 then 
				
					local old_prop_max = get_old_prop(player, item_guid, 0);
					lualib:Equip_SetExtProp(player, item_guid, 0, attack_att_name_max, old_prop_max + ATT[attack_att_name_max][item_level_index])
					local old_prop_min = get_old_prop(player, item_guid, 1);
					lualib:Equip_SetExtProp(player, item_guid, 1, attack_att_name_min, old_prop_min + ATT[attack_att_name_min][item_level_index])	
				else
				
					local old_prop_max = get_old_prop(player, item_guid, k);
					lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_max + ATT[a][item_level_index])
					k = k + 1;
					a = a + 1;
					local old_prop_min = get_old_prop(player, item_guid, k);
					lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_min + ATT[a][item_level_index])	
					k = k + 1;
					a = a + 1;
				end
			end
		end
		
	elseif subType == 15 then  
		--物防,魔防
		local k = 0;
		local a = 6
		for i = 1 , 2 do 
			local old_prop_max = get_old_prop(player, item_guid, k);
			lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_max + ATT[a][item_level_index])
			k = k + 1;
			a = a + 1;
			local old_prop_min = get_old_prop(player, item_guid, k);
			lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_min + ATT[a][item_level_index])	
			k = k + 1;
			a = a + 1;
		end
		
	elseif subType == 10 or subType == 11 or subType == 13 or subType == 18 then 
		--三攻击
		local k = 0;
		local a = 10;
		for i = 1, 3 do 
			local old_prop_max = get_old_prop(player, item_guid, k);
			lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_max + ATT[a][item_level_index])
			k = k + 1;
			a = a + 1;
			local old_prop_min = get_old_prop(player, item_guid, k);
			lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_min + ATT[a][item_level_index])	
			k = k + 1;
			a = a + 1;
		end
	end

	
	
	lualib:Item_NotifyUpdate(player, item_guid)
    -- lualib:OnGloryTrigger(player, lua_glory_trigger_jinglian, item_guid, 0, "精炼", "")
	lualib:ShowFormWithContent(player,"脚本表单", "ForgeWnd:Get_EquipUpdate()")
	lualib:ShowFormWithContent(player,"脚本表单", "win_msg_up(\"恭喜,强化成功\");")
	return ""
end	

function get_old_prop(player,item,index)
	local tab = lualib:Equip_GetExtProp(player, item, tonumber(index))	
	local old_prop = 0
	if #tab ~= 0 then
		old_prop = tab[1]
	end
	return old_prop
end

function num_set(player,str)
	local level = lualib:Level(player)
	if level  >= 60 then 
		lualib:SetInt(player,str,1)  
		local num = lualib:GetInt(player,"Qiang_tip2")  
		lualib:NotifyVar(player,str)
		lualib:ShowFormWithContent(player,"脚本表单","QianghWnd.Script2("..num..")")
	end
	return ""
end 

function item_setint(player)
	-- local num = lualib:GetInt(player,"Qiang_tip1")  
	-- lualib:ShowFormWithContent(player,"脚本表单","QianghWnd.tip("..num..")")
		-- lualib:SysPromptMsg(player, "item_setint");
		-- lualib:ShowFormWithContent(player, "脚本表单", "dbg('脚本表单脚本表单脚本表单--------------');")
	return ""
end
