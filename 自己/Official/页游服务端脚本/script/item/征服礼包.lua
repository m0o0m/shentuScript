local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

item = {}
item["��ɽ��Ѩ����"] = {
					{{"������",5},"����ҩ��","������(��)"},
					["սʿ"]={"��սѥ��","�ͼ��﹥������"},
					["��ʦ"]={"�ۻ�ѥ��","�ͼ�ħ��������"},
					["��ʿ"]={"����ѥ��","�ͼ�����������"}
					}
item["���������"] = {
					{{"������",5},"С��������ҩ��","̫��ͼ(��)"},
					["սʿ"]={"ʥ��սѥ","�м��﹥������"},
					["��ʦ"]={"��ڤħѥ","�м�ħ��������"},
					["��ʿ"]={"�ɳ���ѥ","�м�����������"}
					}

item["���а������"] = {
					{"������ħ��ҩ��","����������ҩ��","������(��)"},
					["սʿ"]={"ĩ��սѥ","�߼��﹥������"},
					["��ʦ"]={"Ѫҹħѥ","�߼�ħ��������"},
					["��ʿ"]={"��ٵ�ѥ","�߼�����������"}
					}
					
item["��ħʯ������"] = {
					{"�����ƽ�ҩ��","����������ҩ��","�����(��)"},
					["սʿ"]={"����սѥ","�߼�HP������"},
					["��ʦ"]={"����ħѥ","�߼����������"},
					["��ʿ"]={"�����ѥ","�߼�ħ��������"},
					}
					
item["�����ؾ�����"] = {
					{"�����ƽ�ҩ��","������ħ��ҩ��","�̹��(��)"},
					["սʿ"]={"��ŭսѥ","�﹥������(+10)"},
					["��ʦ"]={"��Ԩħѥ","ħ��������(+10)"},
					["��ʿ"]={"�����ѥ","����������(+10)"},
					}
					


itemlevel={
	["��ɽ��Ѩ����"]=30,
	["���������"]=35,
	["���а������"]=40,
	["��ħʯ������"]=45,
	["�����ؾ�����"]=50,
	}

job = {}
job[1] = "սʿ"
job[2] = "��ʦ"
job[3] = "��ʿ"

function main(player_guid, item_guid)
	local ItemName = lualib:Name(item_guid)
	local s1
	local name_table = {}
	local count_table = {}
	local shuliang = {}
	local bind_table = {}
	local opr_table = {}
	
	if item[ItemName] == nil then
		return false
	end
	
	for k, v in pairs(item[ItemName]) do
		if type(v) == "table" then
			if item[ItemName]["սʿ"] == nil then
				name_table[#name_table+1] = item[ItemName][k][1]
				count_table[#count_table+1] = item[ItemName][k][2]
				bind_table[#bind_table+1] = 1
				opr_table[#opr_table+1] = 0
			else
				for k1, v1 in pairs(item[ItemName][k]) do
					if job[lualib:Player_GetIntProp(player_guid, lua_role_job)] == k or k == 1 then
							if type(v1) == "table" then
								for k2, v2 in pairs(item[ItemName][k]) do
									if type(v1) == "table" then
									else
										name_table[#name_table+1] = item[ItemName][k][k1][1]
										count_table[#count_table+1] = item[ItemName][k][k1][2]
										bind_table[#bind_table+1] = 1
										opr_table[#opr_table+1] = 0
									end
								end
							else
								s1 = v1
								local i,j = string.find(v1,"/")
								if i ~= nil then
									if lualib:Player_GetIntProp(player_guid, lua_role_gender) == 1 then
										s1 = string.sub(v1,1,i-1)
									else
										s1 = string.sub(v1,i+1,string.len(v1))
									end
								end
								name_table[#name_table+1] = s1
								count_table[#count_table+1] = 1
								bind_table[#bind_table+1] = 1
								opr_table[#opr_table+1] = 0
							end
						end
				end
			end
		else
			name_table[#name_table+1] = v
			count_table[#count_table+1] = 1
			bind_table[#bind_table+1] = 1
			opr_table[#opr_table+1] = 0
		end
	end

	s1 = ""
	for k, v in pairs(name_table) do
		if count_table[k] > 1 then
			s1 = s1 .. v .. "*"..count_table[k].."��"
		else
			s1 = s1 .. v .. "��"
		end
	end

	if lualib:Player_GetIntProp(player_guid, lua_role_level) < itemlevel[ItemName] then
		lualib:NPCTalk(player_guid, "#COLORCOLOR_RED#"..itemlevel[ItemName].."�����ܴ򿪣�#COLOREND#\n \n������У�"..s1)
		return false
	end
	
	
	if lualib:Player_ItemRequest(player_guid, name_table, count_table, bind_table, opr_table, "��������", ItemName) == true then
		lualib:Item_Destroy(player_guid, item_guid, "ɾ���ߣ�ʹ�õ���", "�ȼ����")
		return true
	else
		lualib:SysMsg_SendWarnMsg(player_guid, ItemName.."ʹ��ʧ�ܣ�������λ���㣡")
		return false
	end
end