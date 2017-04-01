local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")



--ǿ������
local ATT = {
	[3] = {10 , 20 , 30 , 40 , 50 , 60 , 70 , 80 , 90 , 100, }, 
	-- [5] = {5 , 10, 15, 20, 25, 30, 35, 40, 45, 50, },
	[6]  = {1 , 2 , 4 , 6 , 8 , 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40},	--�������
	[7]  = {1 , 2 , 4 , 6 , 8 , 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40},	--�������
	[8]  = {1 , 2 , 4 , 6 , 8 , 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40},	--ħ������
	[9]  = {1 , 2 , 4 , 6 , 8 , 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40},	--ħ������
	[10] = {3 , 6 , 9 , 12, 15, 18, 21, 24, 27, 30, 33, 36, 39, 42, 45, 48, 51, 54, 57, 60, 40},	--�﹥����
	[11] = {1 , 2 , 4 , 6 , 8 , 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40},	--�﹥����
	[12] = {1 , 2 , 4 , 6 , 8 , 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40},	--ħ������
	[13] = {1 , 2 , 4 , 6 , 8 , 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40},	--ħ������
	[14] = {1 , 2 , 4 , 6 , 8 , 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40},	--��������
	[15] = {1 , 2 , 4 , 6 , 8 , 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40},	--��������
	-- [16] = {3 , 6 , 9 , 12, 15, 18, 21, 24, 27, 30, },
	-- [17] = {1 , 2 , 4 , 6 , 8 , 10, 12, 14, 16, 18, },
} 


--ǿ��װ��ʱ��Ҫ���ĵĵ�����������������Լ���������ɴ�װ������Ӧ�� �ȼ��� �� ǿ���ȼ� ��ͬ������
local EXPEND = {
	{	--װ���ȼ�1��10��
--�ṹ:������ ����� �ɹ��� 100%�ɹ���ҪԪ��
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
	{	--װ���ȼ�10��20��
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
	{	--װ���ȼ�20��30��
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
	{	--װ���ȼ�30��40��
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
	{	--װ���ȼ�40��50��
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
	{	--װ���ȼ�50��60��
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
	{	--װ���ȼ�60��70��
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
	{	--װ���ȼ�70��80��
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
	{	--װ���ȼ�80��90��
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
	{	--װ���ȼ�90��100��
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
local material = "���鵤С"

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
	assert(item_level_index ~= 0, "װ����ʹ�õȼ��Ƿ�!");
	return item_level_index;
end




function OfferData(player,item_guid)
	
	local item_level_index = GetItemLevelIndex(item_guid);
	local DATA = {};
	local jl_level = lualib:Equip_GetRefineLevel(player, item_guid);
	local next_jl_level = jl_level + 1;
	-- DATA[1] = jl_level; --�ͻ���ֱ�ӻ�ȡ
	DATA[0] = item_level_index;
	DATA[1] = ATT;
	DATA[2] = EXPEND[item_level_index][next_jl_level];
	DATA[3] = item_guid;
	DATA[4] = lualib:GetInt(item_guid, "xing_num");
	DATA[5] = lualib:ItemCount(player, material);
	lualib:ShowFormWithContent(player, "�ű���", "QianghWnd:UpData("..serialize(DATA)..")");
	-- lualib:ShowFormWithContent(player, "�ű���", "dbg('�ű����ű����ű���--------------');")
	return ""
end	





function forge_item(player, item_guid, yb_y)
	local item_level_index = GetItemLevelIndex(item_guid);
	local jl_level = lualib:Equip_GetRefineLevel(player, item_guid)
	local xing_n = lualib:GetInt(item_guid,"xing_n")
	local keyname = lualib:KeyName(item_guid)
	local table1 = lualib:Item_DataRow(keyname)  
	if not next(table1) then
		lualib:ShowFormWithContent(player,"�ű���","win_msg_up(\"��Ʒ���ñ�Ϊ��\");")
		return ""
	end
	local color = table1["Color"]
	-- local str = string.format("%q", "��Ʒ���ñ�Ϊ��"..color);
	-- lualib:ShowFormWithContent(player, "�ű���", "win_msg_up("..str..");");
	local top_level = 0
	if color == "PURPLE" then  --��   -- ��  -- ��  -- ��
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
	-- lualib:ShowFormWithContent(player, "�ű���", "win_msg_up('"..top_level.."');");
	-- return ""
	if jl_level >= top_level then
		lualib:ShowFormWithContent(player,"�ű���","win_msg_up(\"�Ѿ�ǿ������ߵȼ�\");")
		lualib:SysPromptMsg(player, "�Ѿ�ǿ������ߵȼ�");
        return ""
    end
	

	local refine_next_level = jl_level + 1
		-- lualib:SysPromptMsg(player, "refine_next_level.............."..refine_next_level);
	local gold = EXPEND[item_level_index][refine_next_level][1][2];
	local bind_gold = lualib:GetBindGold(player)
	local n_gold = lualib:GetGold(player)
	if gold > bind_gold + n_gold  then
		lualib:ShowFormWithContent(player,"�ű���","win_msg_up(\"��Ҳ���\");")
		lualib:SysPromptMsg(player, "��Ҳ���");
		return ""
	end	
	----��֤�����Ƿ��㹻
	local require_count = EXPEND[item_level_index][refine_next_level][1][1]
	local count = lualib:ItemCount(player, material);
	-- lualib:ShowFormWithContent(player,"�ű���","dbg('"..count.."')")
	if count < require_count then 
		local msg = string.format("%q", lualib:KeyName2Name(material, 4).."��������,�޷����ǿ��")
		lualib:ShowFormWithContent(player,"�ű���","win_msg_up("..msg..")")
		return lualib:KeyName2Name(material, 4).."��������,�޷����ǿ��"
	end
	
	local succ_rate = EXPEND[item_level_index][refine_next_level][2] 
	if tonumber(yb_y) == 1 then
		--��֤�ɹ���Ԫ��
		local yb = EXPEND[item_level_index][refine_next_level][3]
		local ingot = lualib:GetIngot(player)
		if yb > ingot then
			lualib:ShowFormWithContent(player,"�ű���","win_msg_up(\"Ԫ������\");")
			lualib:SysPromptMsg(player, "Ԫ������");
			return ""
		end
		if not lualib:Player_SubIngot(player, yb, false, "��Ԫ��:100%ǿ���ɹ�", "ϵͳ") then
			lualib:ShowFormWithContent(player,"�ű���","win_msg_up(\"Ԫ���۳�ʧ��\");")
			return ""
		end
		succ_rate = 100
	end
	
	--�۵���
	if not lualib:TakeItem(player, material, require_count, "ɾ����:ǿ��", player) then 
		lualib:Error("�۵���ʧ��"..lualib:Name(player));
		lualib:SysPromptMsg(player, "�۵���ʧ��");
		return ""
	end	

	if bind_gold >= gold then
		if not lualib:Player_SubGold(player, gold, true, "�۰󶨽��:ǿ��", "ϵͳ") then
			-- lualib:ShowFormWithContent(player,"�ű���","win_msg_up(\"��ҿ۳�ʧ��\");")
			return "��ҿ۳�ʧ��"
		end
	else
		if not lualib:Player_SubGold(player, bind_gold, true, "�۰󶨽��:ǿ��", "ϵͳ") then
			-- lualib:ShowFormWithContent(player,"�ű���","win_msg_up(\"��ҿ۳�ʧ��\");")
			return "��ҿ۳�ʧ��"
		end
		local jb = gold - bind_gold
		if not lualib:Player_SubGold(player, jb, false, "�۽��:ǿ��", "ϵͳ") then
			-- lualib:ShowFormWithContent(player,"�ű���","win_msg_up(\"��ҿ۳�ʧ��\");")
			return "��ҿ۳�ʧ��"
		end
	end	


	
	local ran = lualib:GenRandom(1,100)
	if ran > succ_rate then
		OfferData(player, item_guid);
		lualib:ShowFormWithContent(player,"�ű���","win_msg_up(\"ǿ��ʧ��\");")
		return ""
	end	
	
	
	
	if not lualib:Equip_SetRefineLevel(player, item_guid, refine_next_level) then
		-- lualib:ShowFormWithContent(player,"�ű���","WndAddEffect(nil,\"ForgeWnd,QianghWnd,item_magic\",3020200200,-215,-174,150,1);win_msg_up(\"ǿ��ʧ��\");")
		return "���þ����ȼ�ʧ��,ǿ��ʧ��"
	end
	local keyname = lualib:KeyName(item_guid)
	--��Ʒ���ñ���Ϣ
	local Item_Data = lualib:Item_DataRow(keyname)
	local tAttName = { 
		--���߱��������� ����λ��,		 iAttName
		["MinPhyDef"] = { 	0, 				 6},
		["MaxPhyDef"] = { 	1, 				 7},
		["MinMagDef"] = { 	2, 				 8},
		["MaxMagDef"] = { 	3, 				 9},
		["MinPhyAtk"] = { 	4, 				10},
		["MaxPhyAtk"] = { 	5, 				11},
		["MinMagAtk"] = { 	6, 				12},
		["MaxMagAtk"] = { 	7, 				13},
		["MinTaoAtk"] = { 	8, 				14},
		["MaxTaoAtk"] = { 	9, 				15},	
	}
	-- lualib:ShowFormWithContent(player,"�ű���","win_msg_up(\"ǿ��111111111111\");")
	for k, v in pairs(tAttName) do
		-- lualib:ShowFormWithContent(player,"�ű���","win_msg_up(\"ǿ��2222222222\");")
		local iAttValue = Item_Data[k];
		--Ҫ�����ñ���������Դ���0
		if iAttValue > 0 then 
			local old_prop_max = get_old_prop(player, item_guid, v[1]);
			local iNewAttValue = old_prop_max + ATT[v[2]][refine_next_level]
			lualib:ShowFormWithContent(player,"�ű���","win_msg_up('"..iNewAttValue.."');")
			lualib:Equip_SetExtProp( player, item_guid, v[1], v[2], iNewAttValue)
		end
	end


	lualib:Item_NotifyUpdate(player, item_guid)
    -- lualib:OnGloryTrigger(player, lua_glory_trigger_jinglian, item_guid, 0, "����", "")
	lualib:ShowFormWithContent(player,"�ű���", "ForgeWnd:Get_EquipUpdate()")
	lualib:ShowFormWithContent(player,"�ű���", "win_msg_up(\"��ϲ,ǿ���ɹ�\");")
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
		lualib:ShowFormWithContent(player,"�ű���","QianghWnd.Script2("..num..")")
	end
	return ""
end 

function item_setint(player)
	-- local num = lualib:GetInt(player,"Qiang_tip1")  
	-- lualib:ShowFormWithContent(player,"�ű���","QianghWnd.tip("..num..")")
		-- lualib:SysPromptMsg(player, "item_setint");
		-- lualib:ShowFormWithContent(player, "�ű���", "dbg('�ű����ű����ű���--------------');")
	return ""
end
