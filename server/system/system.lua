local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("include/����ս�淨")
-- require("system/�Զ����")
require("system/online_gift")
require("system/��ֵ���")
require("form/ChallengeBOSS")
require("system/horse")
require("system/marry")
require("system/master")

function on_system_start()
	lualib:AddTrigger("", lua_trigger_login, "on_player_login");
	lualib:AddTrigger("", lua_trigger_add_exp, "on_player_add_exp");		--��������ʱ
	lualib:AddTrigger("", lua_trigger_logout, "on_player_logout");
	lualib:DelayCall("", 1, "OnFirstCastleWar", "");		--��һ�ι���ս
	lualib:AddTrigger("0",  lua_trigger_first_in_game, "on_first_in_game")
	lualib:AddTrigger("0",  lua_trigger_level_up, "on_level_up")				--��������
	lualib:AddTrigger("0",  lua_trigger_gp, "on_gp")				--����Ҵ���
	lualib:AddTrigger("0",  363, "on_ride_request")  --������
	lualib:AddTrigger("0",  364, "on_unride_request")  --������
	lualib:AddTrigger("0",	lua_trigger_role_pre_harm, "on_pre_harm")
	lualib:AddTrigger("0",  lua_trigger_post_equip, "on_post_equip")
	lualib:AddTrigger("0",  lua_trigger_post_un_equip, "on_post_un_equip")
	lualib:AddTrigger("0",  lua_trigger_player_pre_die, "on_pre_player_die")
end

-- �����ж�

 function on_ride_request(player)
	local buff_table = {"��é�˱���", "ľ���˱���", "��֩�����", "������", "���˱���", "����ս������", "��â����", "аħ��ż����", "��������", "������������", "����๤����", "����๤����", "������������", "��������", "������Գ����", "�޶����", "Ұ�Ǳ���", "���ޱ���", "����ţħ����", "ţħ��������", "���߱���", "��ˮ�߱���", "���Ǳ���", "��ū����", "ɢ������", "ɳʯħ����", "��ħ����", "ҹ��ɮ����", "�ڰ��̿ͱ���", "����ɮ����", "��ԭ��ʿ����", "Ѫ��ʦ����", "����������", "�ɵ����ñ���", "����ս������", "ʬū��ͷ����", "��ʬ����", "�ױ���ʬ����", "Ĺ���������", "��ڤʬ������", "¹����", "ǧ����ħ����", "��é���˱���", "��éа�˱���", "��֩�����", "����֩�����", "�ú����", "�ױ�Գ�����", "Գ�����", "�ɶ����", "�������", "���Ǳ���", "���߱���", "���߱���", "���߱���", "���߱���", "���Ա���", "�Źֵ��ͱ���", "���浶�ֱ���", "˫�������ֱ���", "ħ������", "���ޱ���", "��ɮ����", "�������߱���", "Ӱ�̱���", "����սʿ����", "�������ñ���", "�����ñ���", "��ө����", "ħө����", "а�����", "ʳ�˻�����", "��ԭ��ʿ����", "��ԭ��ʿ����", "����ţħ����", "ţħ��ʿ����", "ţħ��������", "��ʬ����", "ʬ������", "��ʬ����", "���ʬū����", "����ʬū����", "ʬū����", "���ñ�������", "��ĸ�����", "С�����", "�����", "ţ����", "������", "���������", "�綾�����", "ħ�߱���", "ħ�Ǳ���", "ħԳ����", "��ʯ���ܱ���", "ţħ��������", "ħ���������", "ħ��Ы�ӱ���", "ħ��ɳ�����", "��ħ��������", "��ս��ħ����", "��ħū�ͱ���", "ҹ�����", "��ħͳ�����", "��ħ��������", "��ħ��������", "��ħ�ȷ����", "��ħ�����", "������ֱ���", "ʯ�������", "�ؾ���������", "��ǯз����", "��ħ�̴ӱ���", "��ħ��������", "�ؾ���������", "���������", "�����ֱ���", "����ҩ��", "�䶷���鲼����", "�䶷���鲼��Ů", "�䶷������ս����", "�䶷������ս��Ů", "�䶷��Ԫ��������", "�䶷��Ԫ������Ů", "�䶷�����������", "�䶷���������Ů", "�䶷���ƽ�������", "�䶷���ƽ�����Ů", "�䶷�����ս����", "�䶷�����ս��Ů", "�䶷������ս����", "�䶷������ս��Ů", "�䶷������ս����", "�䶷������ս��Ů", "�䶷������ս����", "�䶷������ս��Ů", "�䶷����ϰ��ʦ����", "�䶷����ϰ��ʦ��Ů", "�䶷���ϳ�����", "�䶷���ϳ���Ů", "�䶷��ħ��������", "�䶷��ħ������Ů", "�䶷�����޳�����", "�䶷�����޳���Ů", "�䶷��ʥ�鷨����", "�䶷��ʥ�鷨��Ů", "�䶷�����뷨����", "�䶷�����뷨��Ů", "�䶷�����η�����", "�䶷�����η���Ů", "�䶷��Ǭ��������", "�䶷��Ǭ������Ů", "�䶷�����ĵ�����", "�䶷�����ĵ���Ů", "�䶷����ħ������", "�䶷����ħ����Ů", "�䶷������������", "�䶷����������Ů", "�䶷��̫��������", "�䶷��̫������Ů", "�䶷�����������", "�䶷���������Ů", "�䶷���춦������", "�䶷���춦����Ů", "�䶷������", "��Сҩ��", "����2", "������", "�������"}
	local hashorse = lualib:Attr(player, 200)
	
	if hashorse == 1 then
		lualib:MsgBox(player, "���Ѿ��������״̬�ˣ�")
		return
	end
	--ӵ�б���BUFF�޷�����
	for i = 1, #buff_table do
		if lualib:HasBuff(player, buff_table[i]) == true then
			lualib:MsgBox(player, "����״̬�޷��������Ҽ����BUFFͼ��ȡ��BUFF���ٽ��г���")
			return
		end
	end
	--�������
	lualib:ProgressBarStart(player, 1000, "������", "on_Horse_true", "on_Horse_false", "")	
end

--����
function on_Horse_true(player)
	lualib:Ride(player)
	return true
end

--�������
function on_Horse_false(player)
	lualib:SysMsg_SendTriggerMsg(player, "�������")
	return true
end


-- ����
 function on_unride_request(player)
 	local hashorse = lualib:Attr(player, 200)
	if hashorse == 2 then--
		lualib:MsgBox(player, "�㻹û����ˣ���������״̬�ˣ�")
	else
		lualib:UnRide(player)
	end

	return true
end


function on_player_login(player)
	if lualib:GetInt(player, "petlv") == 0 then
		lualib:SetInt(player, "petlv", 1)
	end


lualib:ShowFormWithContent(player, "form�ļ���", "������ʱ���#"..lualib:GetAllTime());
--lualib:OpenWarehouseEx(player)
	lualib:AddItem(player, "���ĳǴ���ʯ", 1, true, "����Ʒ", player)
	lualib:DelayCall(player, 1, "�׳������:first_show", "");
	lualib:DelayCall(player, 1, "��½�ű�:main", "");
        lualib:DelayCall(player, 1, "ħ��Ѫʯ:on_login", "");
	active_player(player, 2, 0)	--��¼ʱ����վ���ͽ�ɫ������Ϣ����Ҫɾ������Ӱ��ͳ�ƹ���
sure(player)
	 --GM��½
	if lualib:Player_IsGM(player) then
		lualib:Player_SetGhost(player, true)
		lualib:SysMsg_SendTriggerMsg(player, "���ѽ�������״̬��")
		lualib:Player_SetInvincible(player, true)
		lualib:SysMsg_SendTriggerMsg(player, "���ѽ����޵�״̬��")
		lualib:AddBuff(player, "����", 60*60*24)
		lualib:SysMsg_SendTriggerMsg(player, "���ѽ��뼲��״̬��")
	end
	lualib:DelayCall(player, 1000, "�������ɾ���:addtimer", "")
	
	--���Ͻ�ͼ����ʾ
	online_gift_login(player)	--�������
	-- guaji_xianshi(player)		--�Զ����
	check_first_bill(player)	--�׳����ֵ���
	-- FamilyWar(player); 			--�л�����
	openChallengeBoss_show(player);

	--���ܵ���
	marry_load(player)			--�����Ƿ����/����۳����ܶ�	
	process_master_apprentice_login(player)	--����ʦͽ��¼����
end
local timeId = 12582	--��ʱ��ID

local second = 1	--�������һ�ξ���

local limit = 200	--���ټ���ʼ����ʹ���ݵ�


function sure(player)

	if lualib:Level(player) >= 200 then

		return ""
    end
	
	if lualib:HasTimer(player, timeId) then

		return ""
	end
	lualib:AddTimer(player, timeId, second * 1000, -1, "on_time_exp")
	lualib:Player_MapMoveXY(player,"��ŭ֮��",255,405,5)
	
	return ""
end


function on_time_exp(player, id)
	if lualib:Level(player) >= limit then
		lualib:DisableTimer(player, id)
		lualib:SysWarnMsg(player, "�ȼ��ﵽ"..limit.."���޷��ٽ��������ݵ㡣")
		return false
	end
	if lualib:IsOffline(player) then
		lualib:DisableTimer(player, id)
		return false
	end
	
	local temp = lualib:GetTempInt(player, "tbingot") + 1

	lualib:AddExp(player, 100000, "�Ӿ���:�����ݵ�", player)

end


function on_login_delay_timer(player, timer_id)    
	local caller = (lualib:Gender(player) == 1) and "�ɷ�" or "����"
	local spouse = lualib:Player_GetCustomVarStr(player, "��żGUID")
	lualib:SysPromptMsg(spouse, "���"..caller.."�����ˡ�")
end

function on_player_logout(player)
	lualib:DelayCall(player, 1, "�˳��ű�:main", "");
	online_gift_logout(player)						--��������˳�
end

function on_player_add_exp(player, expv)
	lualib:DelayCall(player, 1, "����ű�:main", tostring(expv));
	process_horse_add_exp(player, tonumber(exp))
end

function on_level_up(player, level)	    
	active_player(player, 3, 0)	--����ʱ����վ���ͽ�ɫ������Ϣ����Ҫɾ������Ӱ��ͳ�ƹ���
	process_apprentice_level_up(player, level)			--����ͽ����������
end

--------[[��ҵ�һ�ν�����Ϸ]]
function on_first_in_game(player)
	
	local item_k = {"ľ��", "��ҩ(С)��", }
	local item_n = {1, 1, }
	local item_b = {1, 1, }
	local item_o = {0, 0, }
	
	if not lualib:Player_ItemRequest(player, item_k, item_n, item_b, item_o, "����Ʒ����һ�ν���Ϸ", "") then
		lualib:SysMsg_SendTriggerMsg(player, "������Ʒ����ʧ�ܣ�")	
	end
	
	local Gender = lualib:Gender(player)	
	local award_item = {"����(��)", "����(Ů)"}
	if not lualib:AddItem(player, award_item[Gender], 1, true, "", "") then
		lualib:SysMsg_SendTriggerMsg(player, "���Ͳ���ʧ�ܣ�")
	end	
         lualib:Player_AddGold(player, 300000, true, "�ӽ�ң���һ�ν�����Ϸ��Ǯ����", player)
	local player_name = lualib:Name(player)
	lualib:SysMsg_SendBroadcastMsg("��ҡ�"..player_name.."��������Ϸ,Ϊ��;������һ������", "[ϵͳ��ʾ]")
end

function on_gp(player, gp_runtime, gp, diff_avg_tick)
    if lualib:GetTempInt(player, "SetNetCheck") == 0  then
        lualib:SetTempInt(player, "SetNetCheck", 1)
        lualib:SetNetCheckEx(player, true, true)
        lualib:DelayCall(player, 1200 * 1000, "CancelCheck", "")
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


---------------------------------------------------------------319
	--------�ܵ��˺�ǰ����-------------
function on_pre_harm(role, attacker, hp, defense, skill_key,isBurst)  --�������ߣ������ߣ�Ѫ�������Ӹ��ۣ�������ֵ�����ܣ�����
	
	-- if lualib:Player_IsPlayer(attacker) and tonumber(hp) < 0 and isBurst == 1 then      
		-- local _dv = lualib:GetInt(attacker,"burstharm") --������ 
		-- hp = tonumber(hp)-_dv 
		-- local job = lualib:Job(attacker)
		-- local hashorse = 0 
		-- if tonumber(job)== 1 then 
			-- hashorse = lualib:Attr(role, 124)
		-- else 
			-- hashorse = lualib:Attr(role, 122)
		-- end 
		-- hp = hp*(1-  hashorse/100)    
	-- end
	
	-- if lualib:Player_IsPlayer(attacker) and lualib:Player_IsPlayer(role) then 
		-- local att_level = lualib:Level(attacker)
		-- local role_level = lualib:Level(role)
		-- if att_level < 60 or role_level < 60 then  
			-- return -1
		-- end
	-- end
	local Wing_KeyName = {
		["���1"] 	=	0.02 	,
		["���2"]	=	0.04 	,
		["���3"]	=	0.06 	,
		["���4"]	=	0.08 	,
		["���5"]	=	0.1		,
		["���6"]	=	0.12	,
		["���7"]	=	0.14	,
		["���8"]	=	0.16	,
		["���9"]	=	0.18	,
		["���10"]	=	0.2		,
		["���11"]	=	0.22	,
		["���12"]	=	0.24	,
	}
	if lualib:Player_IsPlayer(attacker) then 
		local wings = lualib:Wings(attacker);
		if wings ~= "" then
			local KeyName = lualib:KeyName(wings);
			-- lualib:SysPromptMsg(attacker, ""..KeyName);
			local random = math.random(1, 100);
			if random <= 20 then 
				local percent = Wing_KeyName[KeyName];
				if percent then
					local phy_att = lualib:PhyAtk(attacker, true)    --ȡ����
					local sorb_HP = phy_att * percent;
					sorb_HP = math.ceil(sorb_HP);
					-- local str = string.format("%q", "#COLORCOLOR_GREENG##COLORCOLOR_YELLOW#"..lualib:Name(wings).."#COLORCOLOR_GREENG#��Ѫ��Ч,#COLORCOLOR_MAGENTA#Ѫ������"..sorb_HP);
					-- lualib:ShowFormWithContent(attacker, "�ű���", "win_msg_up("..str..")");
					lualib:SysCenterMsg(0, ""..lualib:Name(wings).."��Ѫ��Ч,Ѫ������"..sorb_HP.."����", attacker);
					lualib:SetHp(attacker, lualib:Hp(attacker, false) + sorb_HP, false);
					
				end
			end
		end
	end
	
	local Hat_KeyName = {--�������ֵ�˺�  	����ǰ����ֵ�˺�
		
		["����1-1"] =	{ 	5,	0.01,		10,	0.01},
		["����1-2"]	=	{	5,  0.02,		10,	0.02},
		["����2-1"]	=	{	5,  0.03,		10,	0.03},
		["����2-2"]	=	{	5,  0.04,		10,	0.04},
		["����3-1"]	=	{	5,  0.05,		10,	0.05},
		["����3-2"]	=	{	5,  0.06,		10,	0.06},
		["����4-1"]	=	{	5,  0.07,		10,	0.07},
		["����4-2"]	=	{	5,  0.08,		10,	0.08},
	}
	if lualib:Player_IsPlayer(attacker) and lualib:Monster_IsMonster(role) then
		local mon_keyname =  lualib:KeyName(role);
		if mon_keyname ~= "����BOSS" then 
		
			local hat = lualib:Player_GetItemGuid(attacker, lua_site_hat)  
			if hat == "" then
				return hp
			end
			local KeyName = lualib:KeyName(hat);
			
			local percent1 = Hat_KeyName[KeyName][1];
			local percent2 = Hat_KeyName[KeyName][3];
			local subPercent1 = Hat_KeyName[KeyName][2];
			local subPercent2 = Hat_KeyName[KeyName][4];
			if percent1 and percent2 and subPercent1 and subPercent2 then
				local random = math.random(1, 100);
				local subHp = 0
				if random <= percent1 then 
					local max_hp = lualib:Hp(role, true);
					subHp = max_hp * subPercent1
					subHp = math.ceil(subHp);
					lualib:SysCenterMsg(0, ""..lualib:Name(hat).."�и�֮��,����������ֵ��"..subHp.."������˺�����", attacker);
					return hp - subHp;
				elseif random <= percent2 then
					local cur_hp = lualib:Hp(role, false);
					subHp = cur_hp * subPercent2
					subHp = math.ceil(subHp);
					lualib:SysCenterMsg(0, ""..lualib:Name(hat).."�и�֮��,��ɵ�ǰ����ֵ��"..subHp.."������˺�����", attacker);
					return hp - subHp;
				end
			end
		end
	end
	
	--�������
	if lualib:Player_IsPlayer(attacker) then 
		local mb_rate = lualib:GetInt(attacker, "dizziness");
		if mb_rate ~= 0 then 
			local random = math.random(1, 100);
			local sub_rate = 0
			if lualib:Player_IsPlayer(role) then
				local num = lualib:GetEquipSuitCount(role, "", 0, 479);
				if num == 12 then 
					sub_rate = 0.7;
				elseif num == 0 then 	
					num = lualib:GetEquipSuitCount(role, "", 0, 480);
					if num == 12 then 
						sub_rate = 0.4;
					elseif num == 0 then
						num = lualib:GetEquipSuitCount(role, "", 0, 481);
						if num == 12 then 
							sub_rate = 0.1;
						end
					end
				end
				if sub_rate ~= 0 then
					mb_rate = mb_rate * sub_rate;
				end
				-- lualib:SysPromptMsg(role, "sub_rate============"..sub_rate);
				-- lualib:SysPromptMsg(attacker, "sub_rate============"..sub_rate);
			end
			
			if random <= mb_rate then 
				lualib:AddBuff(role, "�ű����", 2);
			end
		end
	end
	return hp
end 


local GEM_KEYNAME = {
	["��ʯ1"] 	={	0.10 	,	100		},
	["��ʯ2"]	={	0.20 	,   95      },
	["��ʯ3"]	={	0.30 	,   85      },
	["��ʯ4"]	={	0.40 	,   80      },
	["��ʯ5"]	={	0.50	,   75      },
	["��ʯ6"]	={	0.60	,   70      },
	["��ʯ7"]	={	0.70	,   65      },
	["��ʯ8"]	={	0.75	,   60      },
	["��ʯ9"]	={	0.80	,   55	    },
	["��ʯ10"]	={	0.85	,   50      },
	["��ʯ11"]	={	0.90	,   40      },
	["��ʯ12"]	={	0.95	,   30      },
}

function on_post_equip(player, item, item_id, KeyName)
	-- lualib:SysPromptMsg(player, ""..KeyName);
	if GEM_KEYNAME[KeyName] then 
		local second = GEM_KEYNAME[KeyName][2];
		lualib:AddBuff(player, "����ʯ����", second);
		lualib:ShowFormWithContent(player, "�ű���", "PlayerHeaderInfo:ReliveCD("..second..")");
	end
end
function on_post_un_equip(player, item, item_id, KeyName)
	--����Ҫ������
	-- lualib:SysPromptMsg(player, ""..KeyName);
	-- if GEM_KEYNAME[KeyName] then 
		-- lualib:DelBuff(player, "����ʯ����");
		-- lualib:ShowFormWithContent(player, "�ű���", "PlayerHeaderInfo:RemoveReliveCD()");
	-- end
end


function on_pre_player_die(player, killer)
    local gem = lualib:Gem(player)
	if gem == "" then
		return true
	end
	local gem_KeyName = lualib:KeyName(gem);
	if not GEM_KEYNAME[gem_KeyName] then 	
		return true
	end 
	if lualib:HasBuff(player, "����ʯ����") then 
		return true
	end
	-- local x, y = lualib:X(player), lualib:Y(player);
	-- lualib:Player_Relive(player, "", x, y, 5, GEM_KEYNAME[gem_KeyName][1]);
	local max_hp = lualib:Hp(player, true);
	local hp = max_hp * GEM_KEYNAME[gem_KeyName][1];
	lualib:SetHp(player, hp, false)     --���õ�ǰHP
	local second = GEM_KEYNAME[gem_KeyName][2];
	lualib:AddBuff(player, "����ʯ����", second);
	lualib:SysCenterMsg(0, ""..lualib:Name(gem).."����֮��,ԭ�ظ����", player);
	lualib:SysMsg_SendPromptMsg(player, "#COLORCOLOR_GREENG#����#COLORCOLOR_YELLOW#"..lualib:Name(gem).."#COLORCOLOR_GREENG#����֮��,#COLORCOLOR_MAGENTA#ԭ�ظ����");
	lualib:ShowFormWithContent(player, "�ű���", "PlayerHeaderInfo:ReliveCD("..second..")");
	return false
end

-- function on_pre_drop(role)
    -- local map = lualib:MapGuid(role)
    -- if lualib:KeyName(map) == "����" then
        -- print("�õ�ͼ��������")
        -- return false
    -- end
    
    -- return true
-- end