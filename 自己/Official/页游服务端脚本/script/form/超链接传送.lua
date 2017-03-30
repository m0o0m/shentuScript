local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
local mv_time_key = 				"��ң��(7��)#��ң��(1��)#��ң��(1Сʱ)"
local mv_count_key = "��ң��#��ң��10��#��ң��20��#��ң��50��#��ң��100��#��ң��500��"

local mv = {
				"��ң��(7��)",
                "��ң��(1��)",
				"��ң��(1Сʱ)",
                "��ң��",
                "��ң��(10��)",
                "��ң��(20��)",
                "��ң��(50��)",
				"��ң��(100��)",
				"��ң��(500��)",
			}

local mapList = {
					"�°����ִ�",
					"��",
					"��ɽ��",
					"��򼶴һ��",
					"��򼶴����",
					"��򼶴����",
					"��򼶴����",
					"��һ��",
					"������",
					"������",
					"������",
					"����",
					"���Ǹ���",
					"��������һ��",
					"�����������",
					"а��6-8",
					"а��6-9",
					"а��6-10",
					"а��6-11",
					"а��6-12",
					"а��6-13",
					"а��6-14",
					"а��6-15",
					"а��6-16",
					"а��7-1",
					"а��7-2",
					"а��7-3",
					"а��boss",
					"�����5",
					"�����6",
					"�����7-1",
					"�����7-2",
					"�����7-3",
					"�����7-4",
					"�����7-5",
					"�����7-6",
					"�����7-7",
					"�����7-8",
					"�����7-9",
					"�����boss",
					"��·��3",
					"��·��boss",
					"��ħʯ��3",
					"��ħʯ��4",
					"��ħʯ��boss",
					"����2",
					"����3",
					"����3Ұ��",
					"����4",
					"����4Ұ��",
					"����5",
					"����1����1",
					"����1����2",
					"����1����3",
					"����1����4",
					"����1����5",
					"����1����6",
					"����1����7",
					"����2����1",
					"����2����2",
					"����2����3",
					"����2����4",
					"����2����5",
					"����2����6",
					"����3����1",
					"����4����1",
					"����4����2",
					"���ǻʹ�",
					"����",
					"�����ܵ�",
					"����ڣ����",
					"��Ĺ���",
					"���������ض�",
					"���µ�һս��",
					"Ư����",
					"����ڣ����",
					"����ڣ����",
					"����ڣ����",
					"���µ�һս��",
					"���µ�һս��",
					"���µ�һս��",
					"��ħ��",
					"������",
					"�������",
					"��ɽ",
					"������þ�",
					"��ħ��",
					"��ħ��",
					"��ħ��",
					"��ħ��",
					"���µ�һս��",
					"��ɽ",
					"������",
					"��ħ��",
					"�����boss",
					"�������",
					"��·��boss",
					"������þ�",
					"������",
					"������",
					"������",
					"������",
					"������1",
					"��·��3",
					"��ɽ��Ѩ5",
					"������Ԩ1",
					"������Ԩ3",
					"������Ԩ4",
					"��ħ��",
					"��Ϣ��",
					"��̨",
					"�غ���ӡ",
					"����ڣ����",
					"���µ�һս��",
					"������",
					"������",
					"������",
					"������",
					"������",
					"����ڣ����",
					"������",
					"������þ�",
					"�����boss",
					"�������",
					}			
			
function main(player, npc, map, x, y, questId, types)
	if lualib:Player_IsDie(player) == true then
		return "�������������ܴ��ͣ�"
	end
	
	if types == "3" then
		local t_map = lualib:Map_GetMapGuid("��ͼ����3")
		local t_npc = lualib:Map_GenNpcRnd(t_map, npc)
		local ret = lualib:Npc_GetBindQuests(t_npc)
		lualib:Map_RemoveNpc(t_map, t_npc)
		local accepts = ret[1]
		local is_bind = false
		for k,v in ipairs(accepts) do
			if v == tonumber(questId) then
				is_bind = true
			end
		end
		if not is_bind then
			return "�޷����͸�λ��"
		end
	else	
		--��ͼ����
		local Open_map = {
							["tianmo_Open"] = {"��ħʯ��1", "��ħʯ��2", "��ħʯ��3", "��ħʯ��4", "��ħʯ��boss", "����������"}, 
							["haidi_Open"] = {"����1", "�������", "����2", "����3", "����3Ұ��", "����4", "����4Ұ��", "����5", "Сʫ��", "Զ����ͳ��", "�������ߺ���", "�ؾ�����", "ð����", "������", "ľ����", "ˮ����", "������", "������", "һ��ľ��", "���Ի������", "��������", "��������", "��������ү", "��������ү"}
						}
		local  mapTip = {
							["tianmo_Open"] = {40, "�㻹δ�ﵽ40�����޷�������ħʯ��"},
							["haidi_Open"] = {5, "�����ؾ���δ����ʿ����������½����20λ47������ʿʱ�������ؾ���̽��֮·���Ὺ����"}
						}
		local destination = ""
		if map ~= "" and map ~= nil then
			destination = map
		elseif npc ~= "" and npc ~= nil then
			destination = npc
		end
		
		for k, v in pairs(Open_map) do
			for i = 1, #v do
				if v[i] == destination then				
					local Open_key = 0
					if k == "tianmo_Open" then
						Open_key = lualib:Level(player)
					else
						Open_key = lualib:IO_GetCustomVarInt(k)
					end
					if Open_key < mapTip[k][1] then
						return mapTip[k][2]
					end
				end
			end
		end
		
		--��������
		local questId = tonumber(questId)
		local str = ""
		local questStr = ""

		if npc == "" then
			str = "<MAP:"..map..",POSX:"..x..",POSY:"..y
		else
			str = ",NPCKEYNAME:"..npc..",MOVE:1>"
		end	
		
		if types == "1" then
			questStr = lualib:GetQuestProgressing(questId)
		elseif types == "2" then
			questStr = lualib:GetQuestAccomplishing(questId)
		end
		
		local  i, j = string.find(questStr, str)
		if i == nil then
			lualib:SysMsg_SendTriggerMsg(player,"��Ŀ��λ�ò��ܴ��ͣ�")
			return ""
		end
			
		if npc == "" and map == "" then
			lualib:SysMsg_SendTriggerMsg(player,"��Ŀ��λ�ò�������")
			return ""
		end
	end
	
	local is_time_item = false
	local move_items = lualib:GetItemsByKeys(player, mv_time_key, false, true, false, false)
	
	if #move_items == 0 then
		move_items = lualib:GetItemsByKeys(player, mv_count_key, false, true, false, false)
	else
		is_time_item = true
	end
	
	if #move_items == 0 then
		lualib:SysMsg_SendTriggerMsg(player,"��û����ң�Σ����ð󶨽�����̳ǹ���")
		lualib:ShowFormWithContent(player,"�ű���",[[luaMsgBox.new("��ң��", "��û����ң�Σ����ð󶨽�����̳ǹ���", {"ȷ��"}, {0},"")]])
	end
	
	if is_time_item then
		
	else
		local itemCount = lualib:Item_GetUsesCount(player, move_items[1])
		lualib:Item_SetUsesCount(player, move_items[1], itemCount - 1)
		lualib:SysMsg_SendTriggerMsg(player,"�����ң�λ�ʣ��".. itemCount - 1 .."�Σ�")
	end
	
	if npc ~= "" then
		--lualib:SysMsg_SendTriggerMsg(player, ""..npc)	
		lualib:Player_NpcMove(player, npc, 5)
	else
		--lualib:SysMsg_SendTriggerMsg(player, ""..map)	
		lualib:Player_MapMoveXY(player, map, tonumber(x), tonumber(y), 5)
	end
	
	local str = "" 
	str =str.. "local Handle = GetWindow(nil, \"TransmitMagic\")\n"
	str =str.."if Handle ~= 0 then\n"
	str =str.."GUI:WndClose(Handle)\n"
	str = str.."end\n"
	str = str.."if TaskWindow._wnd ~= 0 then\n"
	str = str.."WndDelEffect(TaskWindow._wnd)\n"
	str = str.."end\n"
	lualib:ShowFormWithContent(player,"�ű���",str) 
	return ""
end


function move(player, npc, map, x, y, item)
	local req = false
	local x = tonumber(x)
	local y = tonumber(y)
	
	if  item == "��ң��10��" or item == "��ң��(20��)" or item == "��ң��(50��)" or item == "��ң��(100��)" or item == "��ң��(500��)" then
		for i = 22, 221 do
			local itemGuid = lualib:Player_GetItemGuid(player, i)
			local itemName = lualib:KeyName(itemGuid)
			if itemName == "��ң��10��" or itemName == "��ң��20��" or itemName == "��ң��50��" or itemName == "��ң��100��" or itemName == "��ң��500��" then
				local itemCount = lualib:Item_GetUsesCount(player, itemGuid)
				lualib:Item_SetUsesCount(player, itemGuid, itemCount - 1)
				lualib:SysMsg_SendTriggerMsg(player,"�����ң�λ�ʣ��".. itemCount - 1 .."�Σ�")
				req = true
				break
			end
		end
	elseif item == "��ң��(7��)" or item == "��ң��(1Сʱ)" or item == "��ң��(1��)" then
		req = true
	end
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
--[[
bool CScriptLib::Player_NpcMove( const std::string& player_guid, const std::string& npc_key_name, UINT16 range )
]]	
	if req == true then
		if npc ~= "" then
			lualib:Player_NpcMove(player, npc, 5)
			--lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")
		else
			lualib:Player_MapMoveXY(player, map, tonumber(x), tonumber(y), 5)
			--lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")
		end
	end
	return ""
end

-----------------------������ң��--------------------------
function goumai_xiaoyaoyou(player)
	lualib:SysMsg_SendMsgDlg(player,1,"�Ƿ�����297Ԫ��������ң��(100��)��#BUTTON0#ȷ������#BUTTONEND##BUTTON0#�رմ���#BUTTONEND#", 100, "goumai_xiaoyaoyou1", "")
end

function goumai_xiaoyaoyou1(id,player,xuanzhe)
	if xuanzhe == 0 then
	else
		return ""
	end
	
	if lualib:Player_GetBagFree(player) < 1 then
		lualib:SysMsg_SendMsgDlg(player,1,"������λ���㣡�������Ժ�������#BUTTON0#�رմ���#BUTTONEND#", 100, "guanbi", "")
		return ""
	end
	
	if lualib:Player_IsIngotEnough(player,297,false) == true then
		lualib:Player_SubIngot(player,297,false,"������ң��",player)
		lualib:AddItem(player,"��ң��100��",1,false,"������ң��", player) --����Ʒ
		lualib:SysMsg_SendMsgDlg(player,1,"��ң��(100��) ����ɹ���#BUTTON0#�رմ���#BUTTONEND#", 100, "guanbi", "")
		return ""
	else
		lualib:SysMsg_SendMsgDlg(player,1,"Ԫ�����㣬����ʧ�ܣ�#BUTTON0#�رմ���#BUTTONEND#", 100, "guanbi", "")
		return ""
	end
		
end

function guanbi()
	return ""
end