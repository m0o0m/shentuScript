--������ɻص�
--select_index ��ѡ��������


function on_accept(player, quest_id)	
	local msg = "#COLORCOLOR_RED#\n      �ף�����㻹û����ȡ�����ɾͽ������Ͻ����˰ɣ�#COLOREND#\n\n"	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@achievement *01*�ɾͽ���(�����ȡ)>��\n      <@achievement *01*����֮���ڳɾ���塾�����������У���һ������ȡ�������飡>\n\n"
	--msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#245#221#1 *01*��������(�������)>��\n"  
	--msg = msg .. "      ͨ��#COLORCOLOR_GREENG#�������#COLOREND#��ȡ#COLORCOLOR_GREENG#��������#COLOREND#��������ʱ�ڶ��ܻ���ȶ��Ҳ��͵ľ���ͽ�ң�\n \n"	
	--msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#212#212#1 *01*��ħ��(�������)>��\n"  
	--msg = msg .. "      ͨ��#COLORCOLOR_GREENG#��ħ�����#COLOREND#����#COLORCOLOR_GREENG#��ħ��#COLOREND#����Ҫ��ӽ��룬ÿ��3�λ��ú������飡\n \n"	
	--msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#202#225#1 *01*�ر���֮ľ����(�������)>��\n"  
	--msg = msg .. "      ͨ��#COLORCOLOR_GREENG#�ر����ػ���#COLOREND#����#COLORCOLOR_GREENG#ľ����#COLOREND#��������ﾭ�鲻�ƣ����ľ�˵��侭�鵤�ͳ������鵤��\n \n"			
	
	lualib:NPCTalk(player, msg)
	msg = nil

	return true
end


function achievement(player)
    local client_script = [[WndClick(nil,"GameMainInterface,LittleMap,Achieve")]]
    lualib:ShowFormWithContent(player, "�ű���", client_script)
	on_accept(player)
	return ""
end


function on_accomplish(player, quest_id, select_index)
	local item_table = {
							{"����", "�������"},
							{"����", "���⻤��"},
							{"����", "�ش���"}
						}	

	local job = lualib:Job(player)
	local player_name = lualib:Name(player)
	local item_num = 2
	
	if lualib:Player_GetBagFree(player) < item_num then
		for i = 1 , 2 do		
		lualib:Mail("��;", player_name, "������İ������������ѽ�<"..item_table[job][i]..">ͨ���ʼ����͸���", 0, 0, {item_table[job][i], 1, 1})
		end
		lualib:SysMsg_SendTriggerMsg(player, "�����ռ䲻������Ҫ"..item_num.."�����ӣ�������ͨ���ʼ����͸��㣬��ע�����")		
		
	else
		for i = 1, 2 do 
		lualib:AddItem(player, item_table[job][i], 1, true, "������������", "������������")
		lualib:SysMsg_SendTriggerMsg(player, "�������<"..item_table[job][i]..">��򿪱����鿴������")
		end
	end
	return true
end

--[[
function MapMoveXYA(player, map_key_name, x, y, r)
	local x = tonumber(x)
	local y = tonumber(y)
	local r = tonumber(r)
	lualib:Player_MapMoveXY(player,map_key_name, x, y, r)
	return on_accept(player, "")
end

function on_accomplish(player, quest_id, select_index)
	local item_table = {"����", "����", "����"}
	local job = lualib:Job(player)
	local player_name = lualib:Name(player)
	local item_num = 1
	
	if lualib:Player_GetBagFree(player) < item_num then
		lualib:Mail("��;", player_name, "������İ������������ѽ�<"..item_table[job]..">ͨ���ʼ����͸���", 0, 0, {item_table[job], 1, 1})
		lualib:SysMsg_SendTriggerMsg(player, "�����ռ䲻������Ҫ"..item_num.."�����ӣ�������ͨ���ʼ����͸��㣬��ע�����")
		
	else
		lualib:AddItem(player, item_table[job], 1, true, "������������", "������������")
		lualib:SysMsg_SendTriggerMsg(player, "�������<"..item_table[job]..">��򿪱����鿴������")
	end
	return true
end
]]