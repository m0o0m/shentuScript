local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("include/����ս�淨")
require("system/�Զ����")
require("system/online_gift")
require("system/��ֵ���")


function on_system_start()
	lualib:AddTrigger("", lua_trigger_login, "on_player_login");
	lualib:AddTrigger("", lua_trigger_add_exp, "on_player_add_exp");		--��������ʱ
	lualib:AddTrigger("", lua_trigger_pre_logout, "on_pre_logout");
	lualib:DelayCall("", 1, "OnFirstCastleWar", "");		--��һ�ι���ս
	lualib:AddTrigger("0",  lua_trigger_billin, "on_trigger_billin")--��ֵ�ص�
	lualib:AddTrigger("0",  lua_trigger_first_in_game, "on_first_in_game")
	lualib:AddTrigger("0",  lua_trigger_level_up, "on_level_up")				--��������
	lualib:AddTrigger("0",  lua_trigger_gp, "on_gp")				--����Ҵ���
	lualib:AddTrigger("0",  363, "on_ride_request")  --������
	lualib:AddTrigger("0",  364, "on_unride_request")  --������
	lualib:AddTrigger("0", 302, "on_post_equip") --��������
	lualib:AddTrigger("0",  lua_trigger_player_relive, "on_player_relive") --����ǰ�ص�
	lualib:AddTrigger("0",  lua_trigger_post_die, "on_post_die") --����ʱ�ص�
	lualib:AddTrigger("0", lua_trigger_hack_check, "on_hack_check");
	lualib:AddTrigger("0", lua_trigger_hack_check2, "on_hack_check2");
	lualib:AddTrigger("0",  356, "on_player_pre_die")  --��ǰ����
	lualib:AddTrigger("0", lua_trigger_post_drop_one, "on_post_drop_one");
end

function on_post_die(player)
	lualib:SetInt(player, "die_flag", 1)
end

function on_ride_request(player)
	local hashorse = lualib:Attr(player, 200)
    if hashorse == 1 then
		lualib:MsgBox(player, "���Ѿ��������״̬�ˣ�")
		return
	end
    
    --�������
    lualib:ProgressBarStart(player, 1000, "������", "on_Horse_true", "on_Horse_false", "")    
end

--����
function on_Horse_true(player)
	lualib:Ride(player)
end

--�������
function on_Horse_false(player)
	lualib:SysTriggerMsg(player, "�������")
end

-- ����
function on_unride_request(player)
 	local hashorse = lualib:Attr(player, 200)
	if hashorse == 2 then
		lualib:MsgBox(player, "�㻹û����ˣ���������״̬�ˣ�")
	else
		lualib:UnRide(player)
	end
end

function on_player_relive(player)
	lualib:SetInt(player, "die_flag", 0)
	local map = lualib:Map_GetMapGuid("����")
	if lualib:IsCastleWarStart("����") then
		local own_family = lualib:GetCastleOwnFamily("����")
		local my_family = lualib:GetFamilyName(player)
		
		if own_family == "" or my_family == "" then
			return true
		else
			if lualib:GetCastleOwnFamily("����")== my_family or lualib:GetCastleTempFamily("����") == my_family then
				lualib:Player_Relive(player, map, 532, 243, 5, 20)
				return false
			else
				return true
			end
		end
	else
		return true
	end
end




function on_player_login(player)
	lualib:ShowFormWithContent(player, "form�ļ���", "������ʱ���#"..lualib:GetAllTime());
    for i = 10, 11 do
        local item = lualib:Player_GetItemGuid(player, i)
        if item ~= "" then
            on_post_equip(player, item)
        end
    end
	lualib:DelayCall(player, 1, "��½�ű�:main", "");
	lualib:DelayCall(player, 1, "ħ��Ѫʯ:on_login", "");
	active_player(player, 2, 0)	--��¼ʱ����վ���ͽ�ɫ������Ϣ����Ҫɾ������Ӱ��ͳ�ƹ���
	--lualib:DelayCall(player, 2000, "client_ver", "");	--���ͻ��˰汾
	
	--����ս��������
	local die_flag = lualib:GetInt(player, "die_flag")
	if lualib:IsCastleWarStart("����") and die_flag == 1 then
		local own_family = lualib:GetCastleOwnFamily("����")
		local my_family = lualib:GetFamilyName(player)
		
		if own_family ~= "" and own_family == my_family then
			lualib:Player_MapMoveXY(player, "����", 532, 243, 5)
			lualib:SetInt(player, "die_flag", 0)
		end
	end
	
	--GM��½
	if lualib:Player_IsGM(player) then
		lualib:Player_SetGhost(player, true)
		lualib:SysTriggerMsg(player, "���ѽ�������״̬��")
		lualib:Player_SetInvincible(player, true)
		lualib:SysTriggerMsg(player, "���ѽ����޵�״̬��")
		lualib:AddBuff(player, "����", 60*60*24)
		lualib:SysTriggerMsg(player, "���ѽ��뼲��״̬��")
	end
	
	--���Ͻ�ͼ����ʾ
	online_gift_login(player)	--�������
	guaji_xianshi(player)		--�Զ����
	check_first_bill(player)	--�׳����ֵ���

	local spouse = lualib:GetStr(player, "��żGUID")
	if spouse ~= "" then
		local caller = (lualib:Gender(player) == 1) and "�ɷ�" or "����"
		lualib:SysPromptMsg(spouse, "���"..caller.."�����ˡ�")
	end
end

function client_ver(player)
	lualib:RequestClientVer(player);
	lualib:DelayCall(player, lualib:GenRandom(2, 5) * 1000, "client_ver_ex", "");
end

function client_ver_ex(player)
    local ver = lualib:GetClientVerEx(player);

    if (ver < 3003) or (ver <  lualib:GetGSClientVer()) then
		lualib:SysTriggerMsg(player, "�ͻ���̫����ر�������Ϸ���ڲ�Ҫ˫�������´򿪵�¼�����£�")
		lualib:SysTriggerMsg(player, "�ͻ���̫����ر�������Ϸ���ڲ�Ҫ˫�������´򿪵�¼�����£�")
		lualib:SysTriggerMsg(player, "�ͻ���̫����ر�������Ϸ���ڲ�Ҫ˫�������´򿪵�¼�����£�")
		lualib:SysTriggerMsg(player, "���������������¼������Դ�޸������޸���ſ���������Ϸ��")
		lualib:SysTriggerMsg(player, "���������������¼������Դ�޸������޸���ſ���������Ϸ��")
		lualib:DelayCall(player, 3000, "kick_player", "");
    end
end

function kick_player(player)
	lualib:Player_Kick(player)
end

function on_pre_logout(player, type)
	lualib:DelayCall(player, 1, "master:process_master_apprentice_logout", ""); --ʦͽ�˳�����
	lualib:DelayCall(player, 1, "online_gift:online_gift_logout", ""); --��������˳�
	
	return true;
end

function on_player_add_exp(player, expv)
	lualib:DelayCall(player, 1, "����ű�:main", tostring(expv));
end

function on_level_up(player, level)	    
	active_player(player, 3, 0)	--����ʱ����վ���ͽ�ɫ������Ϣ����Ҫɾ������Ӱ��ͳ�ƹ���
	lualib:DelayCall(player, 1, "master:process_apprentice_level_up", tostring(level))  --����ͽ����������
end

--------[[��ҵ�һ�ν�����Ϸ]]
function on_first_in_game(player)
	lualib:AddBuff(player, "���ֻ���", 3600);
	local item_k = {"ľ��", "��ң��"}
	local item_n = {1, 1}
	local item_b = {1, 1}
	local item_o = {0, 0}
	
	if not lualib:Player_ItemRequest(player, item_k, item_n, item_b, item_o, "����Ʒ����һ�ν���Ϸ", "") then
		lualib:SysTriggerMsg(player, "������Ʒ����ʧ�ܣ�")	
	end
	
	local Gender = lualib:Gender(player)	
	local award_item = {"����(��)", "����(Ů)"}
	if not lualib:AddItem(player, award_item[Gender], 1, true, "", "") then
		lualib:SysTriggerMsg(player, "���Ͳ���ʧ�ܣ�")
	end	
	
	local player_name = lualib:Name(player)
	lualib:SysMsg_SendBroadcastMsg("��ҡ�"..player_name.."��������Ϸ,Ϊ��;������һ������", "[ϵͳ��ʾ]")
end

function on_gp(player, gp_runtime, gp, diff_avg_tick)
	local count = lualib:GetTempInt(player, "SetNetCheck");
    if count <= 0  then
		--��һ�δ���, ����Ҽ����ϸ�ģʽ
        lualib:SetTempInt(player, "SetNetCheck", 1);
        lualib:SetNetCheckEx(player, true, true);
        lualib:DelayCall(player, 1200 * 1000, "CancelCheck", "");
	elseif count == 1 then
		--�ϸ�ģʽ��, �ڶ��δ���, ����ҷ��;���
		lualib:SetTempInt(player, "SetNetCheck", 2);
		lualib:SysWarnMsg(player, "ϵͳ��⵽��ʹ�÷Ƿ���ң�������ֹͣʹ�ã����򽫶����ȡ�ͷ���ʩ��");
	else
		--�ϸ�ģʽ��, �����δ���, ֱ��T����
		lualib:KickByName(lualib:Name(player), 2, "ʹ�����");
    end
end

function CancelCheck(player)
    lualib:SetTempInt(player, "SetNetCheck", 0)
    lualib:SetNetCheck(player, false)
end

--�ϱ���ɫ��Ϣ
function active_player(player, request_type, times)
	if times >= 3 then
		return;	
	end
	
	local accountid = lualib:Player_GetAccountID(player)
	local account_name = lualib:AccountName(player)
	local serverid = lualib:GetZoneId()
	local role_name = lualib:Name(player);
	local level = lualib:Level(player);
	local job = lualib:Job(player);

	local url = string.format("http://api.hzyotoy.com:8800/api/putroleinfo.do?type=%d&zoneid=%d&userid=%d&role_guid=%s&level=%d&role_name=%s&job=%d"
								,request_type, serverid, accountid, player, level, lualib:UrlEncode(role_name), job);

	if request_type == nil  or account_name == "" or serverid == 0 then
		return
	else
		if request_type == 3 and level < 20 then
			return
		end

		if request_type == 2 then
			if times == 0 then
				lualib:GetURL(url, "do_nothing", player.."#".."0"..request_type, 30)
			elseif times == 1 then
				lualib:GetURL(url, "do_nothing", player.."#".. times ..request_type, 30)
			end
		elseif request_type == 3 then
			if times == 0 then
				lualib:GetURL(url, "do_nothing", player.."#".."0"..request_type, 30)
			elseif times == 1 then
				lualib:GetURL(url, "do_nothing", player.."#".. times ..request_type, 30)
			end
		end
	end
end

--�ϱ���ɫ��Ϣ�ص�
function do_nothing(param, errcode, result)
	local param_t = string.split(param, "#")
	local player = param_t[1]
	local times = tonumber(param_t[2])
	local request_type = tonumber(param_t[3])
	
	if tonumber(errcode) ~= 0 or result == nil then
		active_player(player, request_type, times + 1)
		return 
	end
	
	local result_find1, result_find2 = string.find(result,"%d|%d|%d|%d|%d")

	if result_find1 ~= nil and result_find2 ~= nil then
		local s = string.sub(result, result_find1, result_find2)
		local t = string.split(s, "|")
		local s1 = {"������ڼ�", "�ܱ���Ϣδ����", "�����Ϣδ��֤", "��ȫ�ֻ�δ��֤", "��ȫ����δ��֤"}
		
		local tip = [[                                    #COLORCOLOR_GREENG#�� �� �� ȫ#COLOREND#
				     �𾴵���ң������˺Ŵ��ڰ�ȫ������Ϊ��������Ϸ�Ʋ���ȫ���벹������]]
		local tip2 = [[        
				        ]]
		local req = false
		
		for i = 1, #t do
			if t[i] == "1" then
				req = true
			end
		end
			
		if req then
			lualib:SysMsg_SendBottomColor(player, "     #COLORCOLOR_ORANGE#�X�������������T�������������T�������������T�������������T�������������[#COLOREND#", 7, 11)
			lualib:SysMsg_SendBottomColor(player, tip, 7, 11)

			local num = 0
			for i = 1, #t do
				if t[i] == "1" then
					num = num + 1
					if num == 1 then
						tip2 = tip2..s1[i]
					else
						tip2 = tip2.."   "..s1[i]
					end
				end
			end
			
			lualib:SysMsg_SendBottomColor(player, tip2, 2, 11)
			lualib:SysMsg_SendBottomColor(player, "     #COLORCOLOR_ORANGE#�^�������������T�������������T�������������T�������������T�������������a#COLOREND#", 7, 11)
			
			lualib:SysMsg_SendBoardMsg(player, "���䰲ȫ����",  "\n#COLORCOLOR_GREENG##UILINK<WND:�ύ��,PARAM:С��ʿ;web;player,STR:����ҽ�����վ�����˺Ű�ȫ����##COLOREND#", 10000)   
		end
	end
end

function on_hack_check(player, a, b)
    if b > 10 then
       lualib:SysWarnMsg(player, "�벻Ҫʹ�����,���Ѿ���ϵͳ��¼�����������ֱ�ӷ�ţ�");
       lualib:Error(lualib:Name(player) .. "����ʹ�ùһ����");
    end
end

function on_hack_check2(player, param1)
    local PreTime = lualib:GetTempInt(player, "HackCheckTime");
    local NowTime = lualib:GetAllTime();
    if NowTime - PreTime < 600 then
        return;
    end
    lualib:SetTempInt(player, "HackCheckTime", NowTime);
    if param1 >= 1 then
        --���ʹ�����֤(���"��;��֤�빦��"),��ֱ��������
    end
end

function on_player_pre_die(self,target)
	local times = lualib:GetAllTime()
	local revive_times = lualib:GetInt(self,"revive_times")
	local timeCount = tonumber(times) - tonumber(revive_times)
	if timeCount < 10 then
		return true
	end
	
	local revive = true
	--if math.random(1, 100) > 80 then
	for i = 10, 11 do
		local guid = lualib:Player_GetItemGuid(self, i)
		if guid ~= "" and guid ~= nil then
			local name = lualib:KeyName(guid)
			if name == "�����ָ" then
				revive = false
				local Durabilit = lualib:Item_GetDurability("", guid)
				if Durabilit < 1000 then
					lualib:Item_Destroy(self, guid, "", "")
				else
					lualib:Item_SetDurability("", guid, Durabilit - 1000)
				end
			end
		end
	end
	
	
		
		if revive == false then
			local self_Hp = lualib:Hp(self, true)
			--lualib:SysMsg_SendWarnMsg(self, "ʱ��"..self_Hp)
			local set_hp = self_Hp
			lualib:SetHp(self, set_hp, false)
			
			lualib:SetInt(self, "revive_times", times)
			lualib:SysMsg_SendWarnMsg(self, "��غƵ�����Ʒ�������ָ�����㵲������һ�٣�")
			
			lualib:DelayCall(self,800, "on_player_pre_dietx", "");
			
			--lualib:SysMsg_SendWarnMsg(self, "��Ϊ�㣡")
			return false
		else
			return true
		end
	--else return	true
	--end
end
function on_player_pre_dietx(self)
	
	lualib:SendRoleHPNtf(self)
	
end
local is_skill_t = {
                            [1010] = 1,
                            [1011] = 1,
                            [1012] = 1,
                            [1013] = 1,
                            [1020] = 1,
                            [1021] = 1,
                            [1022] = 1,
                            [1023] = 1,
                            [1030] = 1,
                            [1031] = 1,
                            [1032] = 1,
                            [1033] = 1,
                            [1040] = 1,
                            [1041] = 1,
                            [1042] = 1,
                            [1043] = 1,
                            [1050] = 1,
                            [1051] = 1,
                            [1052] = 1,
                            [1053] = 1,
                            [1060] = 1,
                            [1061] = 1,
                            [1062] = 1,
                            [1063] = 1,
                            [25] = 1,
                        }

function on_post_equip(player, item)
    local itemName = lualib:KeyName(item)
    if itemName == "��Խ�ָ" then
        lualib:AddTrigger(player, lua_trigger_damage_process, "damage_process")
    elseif itemName == "�����ָ" then
        lualib:AddBuff(player, "�����ָ", 20000000)
    end
    return true
end

function damage_process(self, target, skill_id)        
    local ringGuid1, ringGuid2 = lualib:Player_GetItemGuid(self, 10), lualib:Player_GetItemGuid(self, 11)
    local ringName1, ringName2 = "", ""
    if ringGuid1 ~= "" then
        ringName1 = lualib:KeyName(ringGuid1)
    end
    
    if ringGuid2 ~= "" then
        ringName2 = lualib:KeyName(ringGuid2)
    end
    --�жϽ�ָλ���Ƿ�����ԣ�����������̣�û����ɾ��������
    if ringName1 == "��Խ�ָ" or ringName2 == "��Խ�ָ" then
        --�������buff���ʼ���
        if is_skill_t[skill_id] == 1 then
            if math.random(1, 100) > 70 then
                lualib:AddBuff(target, "�������3��", 0)
            end
        end
    else
        lualib:RemoveTrigger(self, lua_trigger_damage_process, "")
    end
    
    return true
end

function on_trigger_billin(player, yb) 
	local name = lualib:Name(player)
	lualib:SysWarnMsg(player, "���ֵ��"..yb.."Ԫ��")
	lualib:SysMsg_SendBroadcastMsg("��ϲ"..name.."���߳�ֵ���" .. yb ..  "Ԫ���������Ҳ��Ҫ������Ļ���½����̽��г�ֵ","[��ֵ��ʾ]")
end

function on_post_drop_one(map, role, item)
	local item_key = lualib:KeyName(item);
	local data = lualib:Item_DataRow(item_key);
	local isTip = data.TipDrop;
	if isTip == 1 then
		local map_name = lualib:Name(map);
		local item_name = lualib:Name(item);
		local item_x = lualib:X(item);
		local item_y = lualib:Y(item);
		if item_x < 10000 and item_y < 10000 then
			lualib:SysMsg_SendBroadcastColor("#IMAGE1900300001##COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#������#COLORCOLOR_BROWN#["..map_name.."]#COLORCOLOR_YELLOW#��["..item_x..","..item_y.."]������", "", 1, 12);
		end
	end
end