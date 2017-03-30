local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local buff_table = 	{"��é�˱���", "ľ���˱���", "��֩�����", "������", "���˱���", "����ս������", "��â����", "аħ��ż����", "��������", "������������", "����๤����", "����๤����", "������������", "��������", "������Գ����", "�޶����", "Ұ�Ǳ���", "���ޱ���", "����ţħ����", "ţħ��������", "���߱���", "��ˮ�߱���", "���Ǳ���", "��ū����", "ɢ������", "ɳʯħ����", "��ħ����", "ҹ��ɮ����", "�ڰ��̿ͱ���", "����ɮ����", "��ԭ��ʿ����", "Ѫ��ʦ����", "����������", "�ɵ����ñ���", "����ս������", "ʬū��ͷ����", "��ʬ����", "�ױ���ʬ����", "Ĺ���������", "��ڤʬ������", "¹����", "��é���˱���", "��éа�˱���", "��֩�����", "����֩�����", "�ú����", "�ױ�Գ�����", "Գ�����", "�ɶ����", "�������", "���Ǳ���", "���߱���", "���߱���", "���߱���", "���߱���", "���Ա���", "�Źֵ��ͱ���", "���浶�ֱ���", "˫�������ֱ���", "ħ������", "���ޱ���", "��ɮ����", "�������߱���", "Ӱ�̱���", "����սʿ����", "�������ñ���", "�����ñ���", "��ө����", "ħө����", "а�����", "ʳ�˻�����", "��ԭ��ʿ����", "��ԭ��ʿ����", "����ţħ����", "ţħ��ʿ����", "ţħ��������", "��ʬ����", "ʬ������", "��ʬ����", "���ʬū����", "����ʬū����", "ʬū����", "���ñ�������", "��ĸ�����", "С�����", "�����", "ţ����", "������", "���������", "�綾�����", "ħ�߱���", "ħ�Ǳ���", "ħԳ����", "��ʯ���ܱ���", "ţħ��������", "ħ���������", "ħ��Ы�ӱ���", "ħ��ɳ�����", "��ħ��������", "��ս��ħ����", "��ħū�ͱ���", "ҹ�����", "��ħͳ�����", "��ħ��������", "��ħ��������", "��ħ�ȷ����", "��ħ�����", "������ֱ���", "ʯ�������", "�ؾ���������", "��ǯз����", "��ħ�̴ӱ���", "��ħ��������", "�ؾ���������", "���������", "�����ֱ���", "����ҩ��", "��Сҩ��", "�������"}
local avatar_table = {}
	avatar_table["��é�˱���"] = {1}
	avatar_table["ľ���˱���"] = {2}
	avatar_table["��֩�����"] = {3}
	avatar_table["������"] = {4}
	avatar_table["���˱���"] = {5}
	avatar_table["����ս������"] = {6}
	avatar_table["��â����"] = {7}
	avatar_table["аħ��ż����"] = {8}
	avatar_table["��������"] = {9}
	avatar_table["������������"] = {10}
	avatar_table["����๤����"] = {11}
	avatar_table["����๤����"] = {12}
	avatar_table["������������"] = {13}
	avatar_table["��������"] = {14}
	avatar_table["������Գ����"] = {15}
	avatar_table["�޶����"] = {16}
	avatar_table["Ұ�Ǳ���"] = {17}
	avatar_table["���ޱ���"] = {18}
	avatar_table["����ţħ����"] = {19}
	avatar_table["ţħ��������"] = {20}
	avatar_table["���߱���"] = {21}
	avatar_table["��ˮ�߱���"] = {22}
	avatar_table["���Ǳ���"] = {23}
	avatar_table["��ū����"] = {24}
	avatar_table["ɢ������"] = {25}
	avatar_table["ɳʯħ����"] = {26}
	avatar_table["��ħ����"] = {27}
	avatar_table["ҹ��ɮ����"] = {28}
	avatar_table["�ڰ��̿ͱ���"] = {29}
	avatar_table["����ɮ����"] = {30}
	avatar_table["��ԭ��ʿ����"] = {31}
	avatar_table["Ѫ��ʦ����"] = {32}
	avatar_table["����������"] = {33}
	avatar_table["�ɵ����ñ���"] = {34}
	avatar_table["����ս������"] = {35}
	avatar_table["ʬū��ͷ����"] = {36}
	avatar_table["��ʬ����"] = {37}
	avatar_table["�ױ���ʬ����"] = {38}
	avatar_table["Ĺ���������"] = {39}
	avatar_table["��ڤʬ������"] = {40}
	avatar_table["¹����"] = {41}
	avatar_table["��é���˱���"] = {43}
	avatar_table["��éа�˱���"] = {44}
	avatar_table["��֩�����"] = {45}
	avatar_table["����֩�����"] = {46}
	avatar_table["�ú����"] = {47}
	avatar_table["�ױ�Գ�����"] = {48}
	avatar_table["Գ�����"] = {49}
	avatar_table["�ɶ����"] = {50}
	avatar_table["�������"] = {51}
	avatar_table["���Ǳ���"] = {52}
	avatar_table["���߱���"] = {53}
	avatar_table["���߱���"] = {54}
	avatar_table["���߱���"] = {55}
	avatar_table["���߱���"] = {56}
	avatar_table["���Ա���"] = {57}
	avatar_table["�Źֵ��ͱ���"] = {58}
	avatar_table["���浶�ֱ���"] = {59}
	avatar_table["˫�������ֱ���"] = {60}
	avatar_table["ħ������"] = {61}
	avatar_table["���ޱ���"] = {62}
	avatar_table["��ɮ����"] = {63}
	avatar_table["�������߱���"] = {64}
	avatar_table["Ӱ�̱���"] = {65}
	avatar_table["����սʿ����"] = {66}
	avatar_table["�������ñ���"] = {67}
	avatar_table["�����ñ���"] = {68}
	avatar_table["��ө����"] = {69}
	avatar_table["ħө����"] = {70}
	avatar_table["а�����"] = {71}
	avatar_table["ʳ�˻�����"] = {72}
	avatar_table["��ԭ��ʿ����"] = {73}
	avatar_table["��ԭ��ʿ����"] = {74}
	avatar_table["����ţħ����"] = {75}
	avatar_table["ţħ��ʿ����"] = {76}
	avatar_table["ţħ��������"] = {77}
	avatar_table["��ʬ����"] = {78}
	avatar_table["ʬ������"] = {79}
	avatar_table["��ʬ����"] = {80}
	avatar_table["���ʬū����"] = {81}
	avatar_table["����ʬū����"] = {82}
	avatar_table["ʬū����"] = {83}
	avatar_table["����ս������"] = {84}
	avatar_table["��ĸ�����"] = {85}
	avatar_table["С�����"] = {86}
	avatar_table["�����"] = {87}
	avatar_table["ţ����"] = {88}
	avatar_table["������"] = {90}
	avatar_table["���������"] = {93}
	avatar_table["�綾�����"] = {94}
	avatar_table["ħ�߱���"] = {95}
	avatar_table["ħ�Ǳ���"] = {96}
	avatar_table["ħԳ����"] = {97}
	avatar_table["��ʯ���ܱ���"] = {98}
	avatar_table["ţħ��������"] = {99}
	avatar_table["ħ���������"] = {100}
	avatar_table["ħ��Ы�ӱ���"] = {101}
	avatar_table["ħ��ɳ�����"] = {102}
	avatar_table["��ħ��������"] = {103}
	avatar_table["��ս��ħ����"] = {104}
	avatar_table["��ħū�ͱ���"] = {105}
	avatar_table["ҹ�����"] = {106}
	avatar_table["��ħͳ�����"] = {107}
	avatar_table["��ħ��������"] = {108}
	avatar_table["��ħ��������"] = {109}
	avatar_table["��ħ�ȷ����"] = {110}
	avatar_table["��ħ�����"] = {111}
	avatar_table["������ֱ���"] = {119}
	avatar_table["ʯ�������"] = {120}
	avatar_table["�ؾ���������"] = {121}
	avatar_table["��ǯз����"] = {122}
	avatar_table["��ħ�̴ӱ���"] = {123}
	avatar_table["��ħ��������"] = {124}
	avatar_table["�ؾ���������"] = {125}
	avatar_table["���������"] = {126}
	avatar_table["�����ֱ���"] = {127}
	avatar_table["��Сҩ��"] = {50000}
	avatar_table["����ҩ��"] = {50001}


function main(player, item)	
	local num = lualib:Item_GetAmount(player, item)
	local item_key = lualib:KeyName(item)
	if item_key == "" then
		lualib:SysMsg_SendWarnMsg(player, "�������ƻ�ȡʧ�ܣ�")
		return false
	end
	
	if avatar_table[item_key] == nil then
        lualib:SysMsg_SendWarnMsg(player_guid, "�õ�����ʱ�޷�ʹ�ã�����ϵ������Ա��")
        return false
    end
	
	local hashorse = lualib:Attr(player, 200)
	if hashorse == 1 then
		lualib:MsgBox(player, "�������ڳ���״̬���޷�������")
		return true
	end
	
	for i = 1, #buff_table do
		if lualib:HasBuff(player, buff_table[i]) == true then
			qingqiu(player, item_key, item, num)
			return false
		end
	end
	ok(player, item_key, item, num)
	return false
end

function qingqiu(player, item_key, item, num)
	local msg = "�������Ѿ��б���BUFF���Ƿ��滻����BUFF\n"
	msg = msg.."<@ok#"..item_key.."#"..item.."#"..num.." *01*ȷ��>\n"
	msg = msg.."<@likai *01*ȡ��>"
	lualib:NPCTalk(player, msg)
end

function ok(player, item_key, item, num)
	lualib:Item_SetAmount(player, item, num - 1)
	lualib:AddAvataBuff(player, avatar_table[item_key][1], "�������", "��ħ����", 0)
	lualib:SysMsg_SendTriggerMsg(player, "����ɹ�!!!")
	return ""
end

function likai(player)
	return ""
end

function on_create(item)
	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
	
end

function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	
	if item_map_x < 20000 then
		if player_name == "" then
			local s = "��"..item_name.."��������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "��"..item_name.."����������".."["..player_name.."]һ����Ʒ�������˳�����������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
            local s = "��"..item_name.."��������"..item_map_name.."��["..item_map_x..":"..item_map_y.."]������"
			local s1 = "#COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#������#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#��["..item_map_x..":"..item_map_y.."]������"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end