local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

	local txdy_tb = 
			{
			{"zhan_men_name", "zhan_women_name"}, 
			{"fa_men_name", "fa_women_name"}, 
			{"dao_men_name", "dao_women_name"}, 
			}
			
	local npc_tb = 
			{
			{"zhan_men_npc", "zhan_women_npc"}, 
			{"fa_men_npc", "fa_women_npc"}, 
			{"dao_men_npc", "dao_women_npc"}, 
			}
			
	local hanghui_tb = 
			{
			{"zhan_men_hanghui", "zhan_women_hanghui"}, 
			{"fa_men_hanghui", "fa_women_hanghui"}, 
			{"dao_men_hanghui", "dao_women_hanghui"}, 
			}
			
	local level_tb = 
			{
			{"zhan_men_level", "zhan_women_level"}, 
			{"fa_men_level", "fa_women_level"}, 
			{"dao_men_level", "dao_women_level"}, 
			}

	local equip_site = {
					--	{1, "����"},
						{14, "���"},
						{16, "����"},	
					--	{5, "�·�"},	
						{12, "ѫ��"},						
					--	{2, "ͷ��"},
					--	{9, "����"},
					--	{3, "����(��)"},
					--	{4, "����(��)"},
					--	{10, "��ָ(��)"},
					--	{11, "��ָ(��)"},
					--	{7, "Ь��"},
					}
	local item_name_table = {"���۵�׹2", "222", "333"}

function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#�칤��ʦ#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	msg = msg.."�����ɶ��칤�Ĵ�ʦ���������ľţ�������������꣡\n \n"
	msg = msg.."#IMAGE1902700037#<@bind *01*װ���󶨽��>#POS<X:200>##IMAGE1902700037#<@xingyun *01*������������>\n \n"
	msg = msg.."���Ǹ������ӣ�Ҳ������ҽ����ֻ��֤�㲻������������ҳ�����\n \n"
	msg = msg.."#IMAGE1902700037#<@zhuanzhi_1 *01*ת����ɫְҵ>#POS<X:200>##IMAGE1902700037#<@bianxin_1 *01*�ı��ɫ�Ա�>\n"
	return msg
end

function bind(npc, player)
	local msg = "�㴩���еģ����ܴ����װ�����£�\n \n"
	local equip_num = 0
	for i = 1, #equip_site do
		local equip_guid = lualib:Player_GetItemGuid(player, equip_site[i][1])
		if equip_guid ~= "" and equip_guid ~= nil then
			local equip_name = lualib:Name(equip_guid)
			if lualib:Item_IsBind(player, equip_guid) == false then
				msg = msg..equip_site[i][2]..":#POS<X:110>#"..equip_name.."  #POS<X:250>#<@bindEx#1".."#"..equip_site[i][1].." *01*����������󶨡�>\n"
			else
				msg = msg..equip_site[i][2]..":#POS<X:110>#"..equip_name.."  #POS<X:250>#<@bindEx#2".."#"..equip_site[i][1].." *01*������ͻ���>\n"
			end
			equip_num = equip_num + 1
		end
	end
	if equip_num == 0 then
		return "��ѧ�ղ������������ڴ����е�װ������Ϊ����Ŀǰ��ֻ�ܴ���������ѫ�¡�"
	end
	return msg
end


function bindEx(npc, player, types, site)
	local reqGold = 2000000
	local types = tonumber(types)
	local msg = ""
	if types == 1 then
		msg = msg.."����Ҫ����"..reqGold.."��ң��󶨺��ܽ��ף�������������䣡\n \n "
	elseif types == 2 then
		msg = msg.."�������Ҫ����"..reqGold.."��ң�����󶨺���Խ��ף��������м��ʻ���䣡\n \n"
	end
	msg = msg.."<@bind_ok#"..types.."#"..site.." *01*��ȷ����>"
	return msg
end

function bind_ok(npc, player, types, site)
	local msg = ""
	local reqGold = 2000000
	local equip_guid = lualib:Player_GetItemGuid(player, tonumber(site))
	if equip_guid == "" or equip_guid == nil then
		return "��Я����װ�������䶯�����޸ĵ�װ���޷��ҵ�!��"
	end
	
	local types = tonumber(types)
	if types == 1 then
		if lualib:Item_IsBind(player, equip_guid) == true then
			return "��װ���Ѱ󶨣������ٽ��������󶨣�"
		end
	elseif types == 2 then
		if lualib:Item_IsBind(player, equip_guid) == false then
			return "��װ��δ�󶨣������ٽ����ͻ���"
		end
	end
	
	if not lualib:Player_IsGoldEnough(player, reqGold, false) then
		return "��Ľ�Ҳ���"..reqGold.."������ʧ�ܣ�"
	end
	
	if not lualib:Player_SubGold(player, reqGold, false, "װ����", player) then
		return "�۳����ʧ�ܣ�"
	end
	
	if types == 1 then
		lualib:Item_SetBind(player, equip_guid, true)
		msg = "�����󶨳ɹ���"
	elseif types == 2 then
		lualib:Item_SetBind(player, equip_guid, false)
		msg = "�ͻ���ɹ���"
	end
	
	return msg
end



function xingyun(npc, player)
    local msg = ""
	msg = msg.."#OFFSET<X:0,Y:-7>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	msg = msg.."����������Ը�����#COLORCOLOR_RED#����������������#COLOREND#��ÿ����һ�����˵��ζ���Ҫ����һ���Ľ�ң����˵���Խ�ߣ��ɹ�������Ӧ���͡�#COLORCOLOR_RED#���������˵�����������Ϊ����#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#IMAGE<ID:1902700017>#<@xingyun1 *01*��������һ>��Ҫ��װ������������Ϊ0��ÿ��50����\n"
	msg = msg.."#IMAGE<ID:1902700017>#<@xingyun2 *01*����һ����>��Ҫ��װ������������Ϊ1��ÿ��100����\n"
	msg = msg.."#IMAGE<ID:1902700017>#<@xingyun3 *01*���˶�����>��Ҫ��װ������������Ϊ2��ÿ��200����\n"
	msg = msg.."#OFFSET<X:0,Y:-7>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	return msg
	end

function xingyun1(npc, player)
			local yb = 500000
			local r = lualib:GenRandom(1, 5)
			local item_guid = lualib:Player_GetEquipGuid(player, lua_site_necklace)
			local item_name = lualib:Player_GetEquipName(player, lua_site_necklace)

		for i = 1, 3 do
			if item_name == item_name_table[i] then
			return "��Ҫ������������Ϊ0����������������Ҫ��\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
			end
		end
		
		if item_guid == "" then
			return "��û��װ������������ʹ������������ԣ�\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
		end
		
			local luck_curse = lualib:Equip_GetLuckCurse(player, item_guid)
		if luck_curse > 0 then
			return "��Ҫ������������Ϊ0����������������Ҫ��\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
		end
		
		if not lualib:Player_IsGoldEnough(player, yb, false) then
			return "��Ҳ��㣡���ֵ�����������������ԣ�\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
		end
		
		if not lualib:Player_SubGold(player, yb, false, "�۽�ң�������������1", player) then
			return "�۳����ʧ�ܣ�\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
		end
		
			local luck = luck_curse + 1
		if r == 3 then
				local player_name = lualib:Player_GetStrProp(player, lua_role_user_name)
			if lualib:Equip_SetLuckCurse(player, item_guid, luck) == false then
                lualib:SysMsg_SendWarnMsg(player, "������������ʧ�ܣ�")
                return "������������ʧ�ܣ�\n \n<@xingyun *01*�����ء�>"
			end
				lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BROWN#["..player_name.."]".."#COLORCOLOR_YELLOW#��#COLORCOLOR_BROWN#����[�칤��ʦ]#COLORCOLOR_YELLOW#����������������#COLORCOLOR_GREENG#"..luck.."#COLORCOLOR_YELLOW#�㣡", "", 1, 12)
			return "��ϲ����������������������"..luck.."�㣡\n \n<@xingyun *01*�����ء�>"
		end	
	return "���ź�������ε�������������ʧ�ܣ��´ο��ܻ�ɹ������ͣ�\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
end

function xingyun2(npc, player)
			local msg=""
			local yb = 1000000
			local r = lualib:GenRandom(1, 10)
			local item_guid = lualib:Player_GetEquipGuid(player, lua_site_necklace)
			local item_name = lualib:Player_GetEquipName(player, lua_site_necklace)

		for i = 1, 3 do
			if item_name == item_name_table[i] then
			return "��Ҫ������������Ϊ1����������������Ҫ��\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
			end
		end
			
		if item_guid == "" then
			return "��û��װ������������ʹ������������ԣ�\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
		end
		
			local luck_curse = lualib:Equip_GetLuckCurse(player, item_guid)
		if luck_curse > 1  or luck_curse < 1 then
			return "��Ҫ������������Ϊ1����������������Ҫ��\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
		end
		
		if not lualib:Player_IsGoldEnough(player, yb, false) then
			return "��Ҳ��㣡���ֵ�����������������ԣ�\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
		end
		
		if not lualib:Player_SubGold(player, yb, false, "�۽�ң�������������2", player) then
			return "�۳����ʧ�ܣ�\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
		end
		
			local luck = luck_curse + 1
		if r == 3 then
				local player_name = lualib:Player_GetStrProp(player, lua_role_user_name)
			if lualib:Equip_SetLuckCurse(player, item_guid, luck) == false then
                lualib:SysMsg_SendWarnMsg(player, "������������ʧ�ܣ�")
                return "������������ʧ�ܣ�\n \n<@xingyun *01*�����ء�>"
			end
				lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BROWN#["..player_name.."]".."#COLORCOLOR_YELLOW#��#COLORCOLOR_BROWN#����[�칤��ʦ]#COLORCOLOR_YELLOW#����������������#COLORCOLOR_GREENG#"..luck.."#COLORCOLOR_YELLOW#�㣡", "", 1, 12)
			return "��ϲ����������������������"..luck.."�㣡\n \n<@xingyun *01*�����ء�>"
		end	
	return "���ź�������ε�������������ʧ�ܣ��´ο��ܻ�ɹ������ͣ�\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
end

function xingyun3(npc, player)
			local msg=""
			local yb = 2000000
			local r = lualib:GenRandom(1, 15)
			local item_guid = lualib:Player_GetEquipGuid(player, lua_site_necklace)
			local player_name = lualib:Player_GetStrProp(player, lua_role_user_name)
			local item_name = lualib:Player_GetEquipName(player, lua_site_necklace)
			local luck_curse = lualib:Equip_GetLuckCurse(player, item_guid)
			local luck = luck_curse + 1
			
		if item_guid == "" then
			return "��û��װ������������ʹ������������ԣ�\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
		end
		
		for i = 1, 3 do
			if item_name == item_name_table[i] and luck_curse == 1 then
				return "��Ҫ������������Ϊ2����������������Ҫ��\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
			end
		end
		
		for i = 1, 3 do
			if item_name == item_name_table[i] then
				if not lualib:Player_IsGoldEnough(player, yb, false) then
					return "��Ҳ��㣡���ֵ�����������������ԣ�\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
				end
				
				if not lualib:Player_SubGold(player, yb, false, "�۽�ң�������������3", player) then
					return "�۳����ʧ�ܣ�\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
				end
				
				if r == 3 then
					if lualib:Equip_SetLuckCurse(player, item_guid, luck) == false then
						lualib:SysMsg_SendWarnMsg(player, "������������ʧ�ܣ�")
						return "������������ʧ�ܣ�\n \n<@xingyun *01*�����ء�>"
					end
				lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BROWN#["..player_name.."]".."#COLORCOLOR_YELLOW#��#COLORCOLOR_BROWN#����[�칤��ʦ]#COLORCOLOR_YELLOW#����������������#COLORCOLOR_GREENG#"..luck.."#COLORCOLOR_YELLOW#�㣡", "", 1, 12)
					return "��ϲ����������������������3�㣡\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
				end
				if r ~= 3 then
					return "���ź�������ε�������������ʧ�ܣ��´ο��ܻ�ɹ������ͣ�\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
				end
			end
		end
		

		if luck_curse ~= 2 then
				return "��Ҫ������������Ϊ2����������������Ҫ��\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
		end
		
		if not lualib:Player_IsGoldEnough(player, yb, false) then
			return "��Ҳ��㣡���ֵ�����������������ԣ�\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
		end
		
		if not lualib:Player_SubGold(player, yb, false, "�۽�ң�������������2", player) then
			return "�۳����ʧ�ܣ�\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
		end
		
		if r == 3 then
			if lualib:Equip_SetLuckCurse(player, item_guid, luck) == false then
                lualib:SysMsg_SendWarnMsg(player, "������������ʧ�ܣ�")
                return "������������ʧ�ܣ�\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
			end
				lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BROWN#["..player_name.."]".."#COLORCOLOR_YELLOW#��#COLORCOLOR_BROWN#����[�칤��ʦ]#COLORCOLOR_YELLOW#����������������#COLORCOLOR_GREENG#"..luck.."#COLORCOLOR_YELLOW#�㣡", "", 1, 12)
			return "��ϲ����������������������"..luck.."�㣡\n \n<@xingyun *01*�����ء�>"
		end	
	return "���ź�������ε�������������ʧ�ܣ��´ο��ܻ�ɹ������ͣ�\n \n#IMAGE<ID:1902700019>#<@xingyun *01*�����ء�>"
end
	
--------------------------------------------------------------------------------------------------------����
function bianxin_1(npc, player)
    local msg = ""
	msg = msg.."#COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#====================��ӭ�����Ա�ת��====================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
	msg = msg.."    #OFFSET<X:0,Y:8>##COLORCOLOR_SKYBLUE#����������Ը�����#COLORCOLOR_RED#ת���Ա�#COLOREND##COLORCOLOR_SKYBLUE#������Ҫ���ȼ��ﵽ52���ͻ���һ\n����Ԫ��Ŷ��#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#������������������������������������������������������������#COLOREND#\n"
	msg = msg.."#IMAGE<ID:1902700017>#<@bianxin#1 *01*ת������>  #COLORCOLOR_RED#��Ҫ����5000Ԫ�� Ϊ��ֹ�����쳣 �ɹ������������#COLOREND#\n"
	msg = msg.."#IMAGE<ID:1902700017>#<@bianxin#2 *01*ת��Ů��>  #COLORCOLOR_RED#��Ҫ����5000Ԫ�� Ϊ��ֹ�����쳣 �ɹ������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	msg = msg.."                                            #IMAGE<ID:1902700019>#<@main *01*�����ء�>"
	return msg
end

function bianxin(npc, player, leixing)
	local lc_map_guid = lualib:MapGuid(npc)
	local gender = lualib:Gender(player)
	local job = lualib:Job(player)
	local job_tb = {"����", "Ů��"}
	if tonumber(leixing) == gender then
		return "���Ѿ��ǡ�"..job_tb[tonumber(leixing)].."����\n \n#IMAGE<ID:1902700019>#<@bianxin_1 *01*�����ء�>"
	end
	
	for i = 1, 11 do
		if lualib:Player_GetItemGuid(player, i) ~= "" then
			return "ת���Ա�ǰ�뽫������װ��ȫ��ȡ�£�\n \n#IMAGE<ID:1902700019>#<@bianxin_1 *01*�����ء�>"
		end
	end
	
	if lualib:Level(player) < 52 then
		return "ת���Ա���Ҫ���ȼ��ﵽ52����\n \n#IMAGE<ID:1902700019>#<@bianxin_1 *01*�����ء�>"
	end
	
	if not lualib:Player_IsIngotEnough(player, 5000, false) then
		return "ת���Ա���Ҫ����5000Ԫ������Ԫ�����㣡\n \n#IMAGE<ID:1902700019>#<@bianxin_1 *01*�����ء�>"
	end
	
	if not lualib:Player_SubIngot(player, 5000, false, "��Ԫ����ת���Ա�", player) then
		return "�۳�Ԫ��ʧ�ܣ�\n \n#IMAGE<ID:1902700019>#<@bianxin_1 *01*�����ء�>"
	end
	
	local txdy_name = lualib:GetStr(lc_map_guid, txdy_tb[job][gender])
	if txdy_name ~= "" then
		if lualib:Name(player) == lualib:GetStr(lc_map_guid, txdy_tb[job][gender]) then
			lualib:SetStr(lc_map_guid, txdy_tb[job][gender], "�ڴ��ϰ�")
			lualib:Npc_ChangeName(lualib:GetStr(lc_map_guid, npc_tb[job][gender]), "�ڴ��ϰ�")
			lualib:SetStr(lc_map_guid, hanghui_tb[job][gender], "Ŀǰ��ȱ")
			lualib:SetInt(lc_map_guid, level_tb[job][gender], 0)
			lualib:RemoveTitle(player, 26)
		end
	end
	
	lualib:SetGender(player, tonumber(leixing))

	lualib:KickByName(lualib:Name(player), 2, "���Ժ��ֹ���ݴ�������")
	return ""
end

--------------------------------------------------------------------------------------------------------תְ
function zhuanzhi_1(npc, player)
    local msg = ""
	msg = msg.." #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#====================��ӭ����ְҵת��===================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
	msg = msg.."    #OFFSET<X:0,Y:8>##COLORCOLOR_SKYBLUE#����������Ը�������#COLOREND##COLORCOLOR_RED#ת��ְҵ#COLOREND##COLORCOLOR_SKYBLUE#������Ҫ���ȼ��ﵽ60���ͻ���һ����Ԫ����#COLOREND##COLORCOLOR_RED#ְҵת������м���Ϊ������#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#������������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE<ID:1902700017>#<@zhuanzhi#1 *01*ת����սʿ> #COLORCOLOR_RED#��Ҫ����15000Ԫ�� Ϊ��ֹ�����쳣 �ɹ������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE<ID:1902700017>#<@zhuanzhi#2 *01*ת���ɷ�ʦ> #COLORCOLOR_RED#��Ҫ����15000Ԫ�� Ϊ��ֹ�����쳣 �ɹ������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE<ID:1902700017>#<@zhuanzhi#3 *01*ת���ɵ�ʿ> #COLORCOLOR_RED#��Ҫ����15000Ԫ�� Ϊ��ֹ�����쳣 �ɹ������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	msg = msg.."                                               #IMAGE<ID:1902700019>#<@main *01*�����ء�>"
	return msg
end

function zhuanzhi(npc, player, leixing)
	local lc_map_guid = lualib:MapGuid(npc)
	local job = lualib:Job(player)
	local gender = lualib:Gender(player)
	local job_tb = {"սʿ", "��ʦ", "��ʿ"}

	if job == tonumber(leixing) then
		return "���Ѿ���ΰ��ġ�"..job_tb[tonumber(leixing)].."���ˣ�\n \n#IMAGE<ID:1902700019>#<@zhuanzhi_1 *01*�����ء�>"
	end
	
	for i = 1, 11 do
		if lualib:Player_GetItemGuid(player, i) ~= "" then
			return "ת��ְҵǰ�뽫������װ��ȫ��ȡ�£�\n \n#IMAGE<ID:1902700019>#<@zhuanzhi_1 *01*�����ء�>"
		end
	end
	
	if lualib:Level(player) < 60 then
		return "ת��ְҵ��Ҫ���ȼ��ﵽ60����\n \n#IMAGE<ID:1902700019>#<@zhuanzhi_1 *01*�����ء�>"
	end
	
	if not lualib:Player_IsIngotEnough(player, 15000, false) then
		return "ת��ְҵ��Ҫ����15000Ԫ������Ԫ�����㣡\n \n#IMAGE<ID:1902700019>#<@zhuanzhi_1 *01*�����ء�>"
	end
	
	if not lualib:Player_SubIngot(player, 15000, false, "��Ԫ����ת��ְҵ", player) then
		return "�۳�Ԫ��ʧ�ܣ�\n \n#IMAGE<ID:1902700019>#<@zhuanzhi_1 *01*�����ء�>"
	end

	local txdy_name = lualib:GetStr(lc_map_guid, txdy_tb[job][gender])
	if txdy_name ~= "" then
		if lualib:Name(player) == lualib:GetStr(lc_map_guid, txdy_tb[job][gender]) then
			lualib:SetStr(lc_map_guid, txdy_tb[job][gender], "�ڴ��ϰ�")
			lualib:Npc_ChangeName(lualib:GetStr(lc_map_guid, npc_tb[job][gender]), "�ڴ��ϰ�")
			lualib:SetStr(lc_map_guid, hanghui_tb[job][gender], "Ŀǰ��ȱ")
			lualib:SetInt(lc_map_guid, level_tb[job][gender], 0)
			lualib:RemoveTitle(player, 26)
		end
	end
	lualib:SetJob(player, tonumber(leixing))
	lualib:DelUnmatchedSkill(player)
	
	local jineng_tb = 
			{
			{"�����ķ�4��", "����ն4��", "��̽���4��", "�»��䵶4��", "Ұ�����4��", "����ն4��", "�ѵ�ն4��", "������4��","�޼����3��"},
			{"������4��", "�˾�֮��4��", "�����ջ�4��", "������4��", "˲Ϣ�鶯4��", "������4��", "�ױ���4��", "�����4��", "�����Ӱ4��", "��������4��", "ħ��4��", "��������4��","ɱ����4��","����ħ��4��","��������4��","�������3��"},
			{"������4��", "�ƶ���4��", "�����5��", "������4��", "��ɷ��ħ��4��", "�������4��", "�ش���4��", "����ֹˮ4��", "����������4��", "������4��", "������4��", "��֮ͥ��4��", "�����4��", "�ظ�֮��4��", "Ⱥ��ƶ�Ѫ��4��", "̫��������4��","ͨ��֮��4��","��ħ֮ŭ3��"},
			}
			
	for i = 1, #jineng_tb[lualib:Job(player)] do
		lualib:AddSkill(player, jineng_tb[lualib:Job(player)][i])
	end
	lualib:KickByName(lualib:Name(player), 2, "תְ���ֹ���ݴ�������")
	return ""
end