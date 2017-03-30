local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/horse")
require("system/logic_def_lua")

local huishou_pinji = {"��Ѫ����", "��Ӱ", "����"}
local name_table = {"����", "���ﾭ�鵤", "�������"}
local count_table = {}
local bind_table = {}
local opr_table = {}

local talk_t = {"Ұ����Զ�ץЩ�������������⣬�����Ի��ա�", "�����ץ��Ұ�����Ե����������ʹ�ÿ���ӡ���⡣", "����������õ�ս�ѣ�ӵ��һƥ�񼶺�����������һ����׷��"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 260000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

local castle_table = {"����",}

function main(npc, player)
    local own_family = lualib:GetCastleOwnFamily(castle_table[1])
    local my_family = lualib:Player_GetStrProp(player,  lua_role_guild)
    local msg = ""
	msg = msg.."    #COLORCOLOR_RED#ֻ�п��������������ˣ�#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@kaiguangyd *01*�����￪�⡹>       #OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@recover_zong#1 *01*��������ա�>       #OFFSET<X:0,Y:0>##IMAGE<ID:1902700017>##OFFSET<X:0,Y:-1>#<@jieshao *01*��������ܡ�> \n \n \n"
    if own_family == "" or own_family ~= my_family then
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@OpenShop#25 *01*��ѱ���̵꡹> #COLORCOLOR_GREENG#��û�м���ռ�����ǵ��лᣬ����ԭ�ۣ�#COLOREND#\n"
    else
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@OpenShop#34 *01*��ѱ���̵꡹> #COLORCOLOR_RED#�������ڵ��л���ռ�����ǵ�ǿ���лᣬ��������Żݣ�#COLOREND#\n"
    end
	msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	msg = msg.."#COLORCOLOR_YELLOW#[��ͨ����]#COLOREND##COLORCOLOR_WHITE#������ɽ������׽��#COLOREND##COLORCOLOR_YELLOW#[ϡ������]#COLOREND##COLORCOLOR_WHITE#ÿһ��ʱ������������ĳ�ŵ�ͼ�������Ǵ������~#COLOREND#\n"
	return msg
end


function recover_zong(npc, player)
	local msg = ""
	msg = msg.."#OFFSET<X:0,Y:-5>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@recover#1 *01*����ͨ���ա�>       #OFFSET<X:0,Y:0>##IMAGE<ID:1902700017>##OFFSET<X:0,Y:-1>#<@recover#2 *01*��ϡ�л��ա�>       #IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@recover#3 *01*�������ա�>\n \n"
    msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n\n"
	msg = msg.."#COLORCOLOR_GOLD#��ͨ���գ�#COLOREND##COLORCOLOR_SKYBLUE#����Ѫ�� �����硻 ����Ӱ��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GOLD#ϡ�л��գ�#COLOREND##COLORCOLOR_SKYBLUE#�����ǡ� �����ʡ� �����졻 �����ǡ� �����꡻#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GOLD#�����գ�#COLOREND##COLORCOLOR_SKYBLUE#��ħʨ�� �����ޡ� ����ӥ�� ��������#COLOREND#\n\n"
    msg = msg.."                                                   #OFFSET<X:0,Y:-10>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n "
	
	return msg
end

	
function recover(npc, player, e)	
	local zuoqi_keyname_tb = {}
	local e = tonumber(e)
	if e == 1 then
		zuoqi_keyname_tb = {"��Ѫ����", "����", "��Ӱ"}
	elseif e == 2 then
		zuoqi_keyname_tb = {"������", "������", "������", "ѩ������", "��������"}
	elseif e == 3 then
		zuoqi_keyname_tb = {"����ħʨ", "����", "������", "��ӥ"}
	end

  	local tb = {}
	local item_guid_tb = {}
	local msg = ""
	msg = msg.."#COLORCOLOR_RED#��ʾ������ύ���ǰ󶨵�������ð󶨽�ң�����ύ���Ƿǰ󶨵�������÷ǰ󶨽�ң�\n \n#COLOREND#"
	local pinzhi_tb = {
						[1] = "��ͨ",
						[2] = "��Ʒ",
						[3] = "��Ʒ",
						[4] = "��Ʒ",
						[5] = "��Ʒ"
					   }
	
	for i = 1, #zuoqi_keyname_tb do
		local name_guid_tb = lualib:GetItemsByKeys(player, zuoqi_keyname_tb[i], false, true, false, false)
		if name_guid_tb ~= "" then
			for i = 1, #name_guid_tb do
				table.insert(item_guid_tb, name_guid_tb[i])
			end	
		end	
	end
	
	local u = table.getn(item_guid_tb)
	if u == 0 then
		msg = msg.."��û�пɻ��յ����\n \n#OFFSET<X:0,Y:-10>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
		return msg
	else
		for i = 1, u do
			local pinji = lualib:Item_GetCustomVarInt(player, item_guid_tb[i], "h_type")
			if pinji > 0 then
				local pinji = pinzhi_tb[pinji]
				table.insert(tb, {pinji, lualib:KeyName(item_guid_tb[i]), item_guid_tb[i]})
			end
		end	
	end	
		
	table.sort(tb, function(a,b) return a[1] < b[1] end)

	for i = 1, #tb do
		if lualib:Item_IsBind(player, tb[i][3]) == true then
			msg = msg.."�������֣���#COLORCOLOR_BROWN#"..tb[i][2].."#COLOREND#��   ����Ʒ�ʡ�#COLORCOLOR_BROWN#"..tb[i][1].." #COLOREND#��  �������ԡ��󶨡�  <@tijiao_ma#"..tb[i][3].."#"..e.." *01*[�Ͻ�]>\n"
		else
			msg = msg.."�������֣���#COLORCOLOR_BROWN#"..tb[i][2].."#COLOREND#��   ����Ʒ�ʡ�#COLORCOLOR_BROWN#"..tb[i][1].." #COLOREND#��  �������ԡ��ǰ󶨡�  <@tijiao_ma#"..tb[i][3].."#"..e.." *01*[�Ͻ�]>\n"
		end
	end	

	lualib:NPCTalk(player, msg)
	return ""
end

function tijiao_ma(player, item_guid, e)
	local itemname	= lualib:Name(item_guid)
	local itemkeyname = lualib:KeyName(item_guid)
	local item_num = lualib:ItemCountByKey(player, itemkeyname, true, false, false, 2)
	local item_player_guid = lualib:Item_GetRole(item_guid)
	if item_player_guid == "" then
		lualib:SysTriggerMsg(player, "���ǲ��ǰ�["..itemname.."]���ű��ˣ�")
		return "���ǲ��ǰ�["..itemname.."]���ű��ˣ�"
	end
	
	if player ~= item_player_guid then
		lualib:SysTriggerMsg(player, "���ǲ��ǰ�["..itemname.."]���ű��ˣ�")
		return "���ǲ��ǰ�["..itemname.."]���ű��ˣ�"
	end
	
	local e = tonumber(e)
	if e == 1 then
		gold_number = 200000
	elseif e == 2 then
		gold_number = 400000
	elseif e == 3 then
		gold_number = 800000
	end
	
	if lualib:Item_IsBind(player, item_guid) == true then	
		if lualib:Item_Destroy(player, item_guid, "�ύ��Ʒ", player) == true then
			lualib:Player_AddGold(player, gold_number, true, "������������", player)
			lualib:SysWarnMsg(player, "������"..gold_number.."�󶨽�ң�")
			gold_number = nil
			e = nil
		else
			return "������Ʒʧ�ܣ�����"
		end
	
	else
		if lualib:Item_Destroy(player, item_guid, "�ύ��Ʒ", player) == true then
			lualib:Player_AddGold(player, gold_number, false, "������������", player)
			lualib:SysWarnMsg(player, "������"..gold_number.."��ң�")
			gold_number = nil
			e = nil
		else

			return "������Ʒʧ�ܣ�����"
		end	
	end	

	return ""
end

function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
end

function kaiguangyd(npc, player)
	local msg = "#COLORCOLOR_RED#���￪�������������ʱ���и������������������ԣ�#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	msg = msg.."#COLORCOLOR_GREENG#�ƶ��ٶ� �����ٶ� �˺����� �˺����� ��Ѫ ��ħ ���� ����#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:5>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@kaiguang *01*�����￪�⡹>\n \n"
	msg = msg.."                                              #OFFSET<X:0,Y:-10>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
	
	return msg
end


function kaiguang(npc, player)
    lualib:ShowForm(player, "�����")

    return ""
end


function jieshao(npc, player)
	local msg = "#COLORCOLOR_RED#�����Ʒ�ʷ�Ϊ�ա������䡢������\nƷ��Խ�ߣ��ƶ��ٶȾ�Խ�죬�������������ҲԽ�ߣ�#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-8>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	msg = msg.."#COLORCOLOR_YELLOW#1.������������-1������-2������-3������-4������-5��#COLOREND#\n \n"
	msg = msg.."#COLORCOLOR_YELLOW#2.���Գɳ�������ͨ�������Ʒ�ʵ�����ֻҪ���������ԣ������Զ�����������ĵȼ��ɳ����ɳ���#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-8>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GREENG#С��ʾ��[��ͨ����]�������ɽ�ǵ�����׽����#COLORCOLOR_YELLOW#[ϡ������]#COLOREND##COLORCOLOR_GREENG#ÿһ��ʱ������������һ�ŵ�ͼ�������Ǵ������~#COLOREND#\n"
	msg = msg.."                                              #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"

	return msg
end

function leave(npc, player)
	return ""
end

function huishou(npc, player)
	local msg ="�����в��������������Խ����ң��һ����һЩʵ�õ�������ߣ�������Ѱ�ٺ��������õ����\n"
	msg = msg.."#COLORCOLOR_RED#ע�⣺���ڰ�����һλ������Ҫ���յĲ����Ѿ�����������ȷ��Ҫ���յ����ﲻ������״̬��#COLOREND# \n"
	msg = msg.."#COLORCOLOR_RED#С���ɣ�Ʒ��Խ�ߵ�������ջ�õĽ���Խ�ߣ�#COLOREND# \n"
	msg = msg.."#OFFSET<X:0,Y:-8>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	--for k, v in pairs(huishou_pinji) do
	--msg = msg .."<@queren#"..k.. "#"..v.."*01* "..huishou_pinji[tonumber(k)].."\n>"
	--end
	msg = msg .."#OFFSET<X:0,Y:5>##IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@queren *01*[ȷ������]>\n"
	msg = msg.."                                              #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"

    
	return msg
end



function queren(npc, player, kwei)


	print(kwei)
	kwei = tonumber(kwei)
	local msg =""
	local keyname = lualib:KeyName(npc)
	local item_site = lualib:Player_GetItemGuid(player,lua_site_bag_0)  --��ȡ��һ���������ӵ���Ʒ
	print(item_site)
	local item_type = lualib:Item_GetType(player,item_site)	            --��ȡ��һ��������Ʒ������
	print(item_type)
	local item_subtype = lualib:Item_GetSubType(player,item_site)	            --��ȡ��һ��������Ʒ������
	print(item_subtype)
	--local mountguid = lualib:Player_GetItemGuid(player,  lua_site_mount) --��ȡ����λ����ƷGUID
	local h_type = get_horse_type(player, item_site)
	print(h_type)
	local request_slots = 3
	--	if lualib:Player_GetItemCount(player, huishou_pinji[kwei]) < 1 then
	--		return "������û������"
	--	end
        
 
        
		if	item_site == "" then
			return "���ڰ�����һ�������Ҫ���յ��ѿ�������\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@huishou *01*�����ء�>"
			
		end
		
		if item_subtype ~=14 then
			return "��İ�����һ��������!�������ﻹδ���⣡\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@huishou *01*�����ء�>"
		end
		
		if	item_type ~=1 and item_subtype ~= 14 then
			return "��İ�����һ��������������ﻹδ���⣡\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@huishou *01*�����ء�>"
		end
		
		if lualib:Player_GetBagFree(player) < request_slots then
			return "��İ�������Ҫ��3���λร�\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@huishou *01*�����ء�>"
		end
        
        if lualib:Item_GetDurability(player, item_site) == 0 then
            return "����������������븴����ٽ��л��ղ�����\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@huishou *01*�����ء�>"
        end
        
		
		if h_type == 1 then          -- ��
			count_table = {1, 1, 1}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0} 
			if not lualib:Item_Destroy(player, item_site, "��������", keyname) then
				return "�۳�����ʧ��"
			end
			
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������Ʒ", keyname)	
		end
		
		if h_type == 2 then           --��
			count_table = {2, 2, 2}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			if not lualib:Item_Destroy(player, item_site, "��������", keyname) then
				return "�۳�����ʧ��"
			end
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������Ʒ", keyname)	
		end
		
		if h_type == 3 then           --��
			count_table = {3, 5, 5}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			if not lualib:Item_Destroy(player, item_site, "��������", keyname) then
				return "�۳�����ʧ��"
			end
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������Ʒ", keyname)	
		end
		
		
		if h_type == 4 then           --��
			count_table = {4, 7, 7}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			if not lualib:Item_Destroy(player, item_site, "��������", keyname) then
				return "�۳�����ʧ��"
			end
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������Ʒ", keyname)	
		end
		
		
		if h_type == 5 then           --��
			count_table = {5, 10, 10}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			if not lualib:Item_Destroy(player, item_site, "��������", keyname) then
				return "�۳�����ʧ��"
			end
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������Ʒ", keyname)	
		end
		
		
		--[[if	kwei == 1 and h_type == 1 then     --��Ѫ��
			count_table = {1, 1, 1}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "��������", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������Ʒ", keyname)	
		end
		
		if	kwei == 1 and h_type == 2 then    --��Ѫ��
			count_table = {1, 2, 2}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "��������", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������Ʒ", keyname)	
		end
		
		if	kwei == 1 and h_type == 3 then	  --��Ѫ��
			count_table = {2, 3, 3}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "��������", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������Ʒ", keyname)	
		end
		
		if	kwei == 1 and h_type == 4 then    --��Ѫ��
			count_table = {3, 3, 3}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "��������", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������Ʒ", keyname)	
		end
		
		if	kwei == 1 and h_type == 5 then    --��Ѫ��
			count_table = {3, 4, 4}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "��������", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������Ʒ", keyname)	
		end
		
		if	kwei == 2 and h_type == 1 then     --��Ӱ��
			count_table = {3, 4, 4}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "��������", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������Ʒ", keyname)	
		end
		
		if	kwei == 2 and h_type == 2 then    --��Ӱ��
			count_table = {4, 4, 4}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "��������", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������Ʒ", keyname)	
		end
		
		if	kwei == 2 and h_type == 3 then	  --��Ӱ��
			count_table = {4, 5, 5}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "��������", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������Ʒ", keyname)	
		end
		
		if	kwei == 2 and h_type == 4 then    --��Ӱ��
			count_table = {5, 5, 5}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "��������", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������Ʒ", keyname)	
		end
		
		if	kwei == 2 and h_type == 5 then    --��Ӱ��
			count_table = {5, 6, 6}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "��������", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������Ʒ", keyname)	
		end
		
		if	kwei == 3 and h_type == 1 then     --������
			count_table = {3, 4, 4}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "��������", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������Ʒ", keyname)	
		end
		
		if	kwei == 3 and h_type == 2 then    --���缫
			count_table = {4, 4, 4}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "��������", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������Ʒ", keyname)	
		end
		
		if	kwei == 3 and h_type == 3 then	  --������
			count_table = {4, 5, 5}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "��������", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������Ʒ", keyname)	
		end
		
		if	kwei == 3 and h_type == 4 then    --�����
			count_table = {5, 5, 5}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "��������", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������Ʒ", keyname)	
		end
		
		if	kwei == 3 and h_type == 5 then    --������
			count_table = {5, 6, 6}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "��������", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������Ʒ", keyname)	
		end]]
		
		
	return msg

end

function give(npc, player, wupin)
	print(wupin)
	local msg ="��������"

	return ""
	
end