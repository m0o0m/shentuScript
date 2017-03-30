local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)

require("include/����ս�淨")
require("system/logic_def_lua")
require("system/forbid_role")
--require("system/����ϵͳ")
--require("system/master")
require("system/family")
--require("system/item_exp")
--require("system/horse")
--require("system/online_gift")
--require("system/marry")
--require("npc/����������Ա")
require("system/��ֵ���")
require("system/��ȡ����")
require("system/ÿ��ǩ��")
--require("campaign/��Ӣ�������������淨")
--require("campaign/��Ӣ������������淨")
require("system/��Ѩ̽��")
--require("system/Ŀ��ϵͳ")
--require("system/����")
require("system/ת��")
require("system/�ճ�")
require("system/�Զ����")
--require("system/��������")
--require("system/װ������")
require("system/��ȡ���")
--require("system/�ۺϹ���")
require("system/��������")
require("form/����������")
require("form/�ղ���Ϸ")
require("form/�ͻ�������")
require("form/�����")
--require("item/����")
--require("form/ʱ�����")
--require("buff/��ɽѩ��buff")
require("form/�׳����_s")
require("form/ÿ�ճ�ֵ_s")
require("form/�������")
require("form/TreasureHouse_s")
require("form/Marks2Item_s")
require("system/serializer")
--require("form/Gongcheng_s")
require("form/ChallengeBOSS")
require("system/ItemInit")
require("form/MarsWnd_s")
require("system/DummyAi")
require("form/�¿����")
require("form/���������")
require("system/BuyExp_sys")
require("form/BuyExp_s")
require("system/����ͼ��")
require("form/ActivityDegree_s")

local map_name_table = {{"��·��", "��·��"}, {"��·��", "��·��"}, {"����ڣ1", "����ڣ"}, {"������2", "������"}, {"��ɽ��Ѩ1", "��ɽ��Ѩ"}, {"�����1", "�����"}, {"а��4", "���а��"}}
local timer_table = {{9900, "15����"}, {10200, "10����"}, {10500, "5����"}, {10620, "3����"}, {10680, "2����"}, {10740, "1����"}}
local ma_timer_table = {{27000, "15����"}, {27300, "10����"}, {27600, "5����"}, {27720, "3����"}, {27780, "2����"}, {27840, "1����"}}
local npc_timer_table = {{3420, "3����"}, {3480, "2����"}, {3540, "1����"}}


local ysax_dgwf_call_back_func = "on_timer_ysax_dgwf_call_back_func"
function on_system_start()
	--��������һ������ִ��
	if lualib:IO_GetCustomVarInt("fuwuqishushihua") == 0 then
		lualib:IO_SetCustomVarInt("fuwuqishushihua",1)
		
		--�弶����������ݳ�ʼ��
		lualib:IO_SetCustomVarInt("chongjizhanshi45",20)
		lualib:IO_SetCustomVarInt("chongjifashi45",20)
		lualib:IO_SetCustomVarInt("chongjidaoshi45",20)
		lualib:IO_SetCustomVarInt("chongjizhanshi50",15)
		lualib:IO_SetCustomVarInt("chongjifashi50",15)
		lualib:IO_SetCustomVarInt("chongjidaoshi50",15)
		lualib:IO_SetCustomVarInt("chongjizhanshi55",10)
		lualib:IO_SetCustomVarInt("chongjifashi55",10)
		lualib:IO_SetCustomVarInt("chongjidaoshi55",10)
	end
	lualib:SetDBNum("ActivityUnderway",0)      --���������������ڽ��еĻ��������
	--ltszuduiqingli() --������Ӿ���������
	
	lualib:DelayCall("", 1, "OnFirstCastleWar", "");		--��һ�ι���ս
	lualib:DelayCall("", 1, "SetDBNum_consumeTerm", "");		--��ʼ����������consumeTerm����
	
	lualib:AddTrigger("0",  lua_trigger_first_in_game, "on_first_in_game")
	lualib:AddTrigger("0",  lua_trigger_login, "on_login")
	lualib:AddTrigger("0",  lua_trigger_billin, "on_billin")
	lualib:AddTrigger("0",  lua_trigger_logout, "on_logout")
	lualib:AddTrigger("0",  lua_trigger_castle_war_start, "on_castle_war_start")
	lualib:AddTrigger("0",  lua_trigger_castle_war_end, "on_castle_war_end")
	--lualib:AddTrigger("0",  lua_trigger_castle_war_init, "trigger_castle_war_init")
	lualib:AddTrigger("0",  lua_trigger_level_up, "on_level_up")
	lualib:AddTrigger("0",  lua_trigger_pre_join_family, "on_join_family")  ----�����������лᴥ��
	--lualib:AddTrigger("0",  lua_trigger_add_exp, "on_add_exp")
	lualib:AddTrigger("0",  lua_trigger_monster_post_die, "on_post_monster_die")
	lualib:AddTrigger("0",  lua_trigger_gp, "on_gp")
	--lualib:AddTimer("", 700, 60000, -1, "shijie_boss")
	--lualib:AddTrigger("0",  lua_trigger_post_equip, "chuandaiqian")
	--lualib:AddTrigger("0",  lua_trigger_post_un_equip, "tuozhuangbei")
	lualib:AddTrigger("0",  lua_trigger_kill, "on_trigger_kill")
	lualib:AddTrigger("0",  lua_trigger_add_skill, "on_add_skill")
	lualib:AddTrigger("0", lua_trigger_create, "on_create_item")
	lualib:AddTrigger("0", lua_trigger_pre_die, "on_pre_player_die")	
	lualib:AddTrigger("0", lua_trigger_role_pre_harm, "on_pre_harm")
	lualib:AddTrigger("0", lua_trigger_mall, "on_trigger_mall")
	lualib:AddTrigger("0", lua_trigger_player_change_name, "on_player_name_change")
	

	lualib:AddTrigger("0",  lua_trigger_pre_item_apply, "on_trigger_pre_item_apply")
	--lualib:AddTrigger("0",  363, "on_ride_request")  --������
	--lualib:AddTrigger("0",  364, "on_unride_request")  --������
	lualib:AddTrigger("0", lua_trigger_pre_equip, "on_pre_equip") --��װ��֮ǰ����
	lualib:AddTrigger("0", lua_trigger_post_equip, "on_post_equip") --��װ��֮�󴥷�
	lualib:AddTrigger("0", lua_trigger_post_un_equip, "on_post_un_equip") --��װ��֮�󴥷�
	lualib:AddTrigger("0", lua_trigger_family_ntf, "on_family_ntf") --�л�Ĵ��������ٴ��� 87������
	lualib:AddTrigger("0", lua_trigger_pre_spell, "on_pre_spell")
	lualib:AddTrigger("0", lua_trigger_enter_map, "on_enter_map") --�����ͼ����
	--lualib:AddTrigger("0", lua_trigger_item_pickup, "on_tem_pickup") --ʰȡ��Ʒ֮�󴥷�
	--lualib:AddTrigger("0",  lua_trigger_spell, "on_spell")
	--lualib:SetTriggerFilters("0",  lua_trigger_spell, "25,26")
	--lualib:AddTrigger("0",  lua_trigger_item_apply, "on_item_apply")
	
	--���ϵͳ��ʱ������ɽ��Ѩ�ع��淨��
	--[[if lualib:AddTimer("",  lua_ysax_dgwf_timer, 3600000, -1, ysax_dgwf_call_back_func) == false then
		lualib:Error("system.lua ��Ӷ�ʱ������ɽ��Ѩ�ع��淨 ʧ�ܣ�")
		return
	end
	if GenMonster_ysax_dgwf() == false then
		lualib:Error("system.lau ��ӹ����ɽ��Ѩ�ع��淨 ʧ�ܣ�")
		return
	end--]]

	--[[init_castle()
	lualib:AddTimerEx("0", 151, 60000, 1, "fanhuan", "")

	local CastleWar = lualib:GetConstVar("CastleWar")
	if CastleWar == "" then 
		return 
	end
	local CastleWarTime = lualib:Str2Time(CastleWar)
	local times = lualib:GetAllTime()
	if CastleWarTime > times then
		local addtimer = CastleWarTime - times - 80000
		--lualib:AddTimerEx("0", 155, addtimer, 1, "starWarTime", CastleWar)
	end
	return--]]
end

function on_enter_map(player)
	if 3 == lualib:Job(player) then
		local map = lualib:MapGuid(player)
		local x, y = lualib:X(player), lualib:Y(player)
		local tServant = {}
		tServant = lualib:Player_GetServantList(player)
		for i = 1, #tServant do
			lualib:Monster_JumpXY(map, tServant[i], x, y, 3)
		end
	end
end

function on_player_name_change(player,result,newName)
	if result ~= 0 then
		lualib:SysPromptMsg(player, "�����Ѵ���")
		lualib:AddItem(player, "������", 1, false, "����ʧ��", "system")
	else
		if lualib:Player_IsPlayer(player) then
			local heros = lualib:GetPlayerHeroList(player)          --��ȡ���ӵ�е�Ӣ���б�
			if #heros > 0 then
				local curHeroList = lualib:GetPlayerCurrentHeroList(player)
				--local heroNameTB = {["1"]="����ս��",["2"]="ʥ��ս��",["3"]="ŭ��ս��",["4"]="��Хս��",["5"]="�ȷ�սʥ",}
				for k = 1 , #heros do
					if curHeroList[1] ~= heros[k]["guid"] then
						local a = heros[k]["name"]
						local ending = string.find(a, "��") - 1
						local heroName = string.sub(a, 1, ending)
						if lualib:GenHeroForPlayer(player,tostring(heros[k]["guid"]),"ChangeHeroName",heros[k]["guid"].."?"..newName.."#"..heroName) then
							
						end
					else
						local a = heros[k]["name"]
						local ending = string.find(a, "��") - 1
						local heroName = string.sub(a, 1, ending)
						lualib:Player_ChangeName(curHeroList[1], heroName .."��"..newName.."��")
					end
				end
			end	
		end	
		lualib:SetInt(player, "nameChanged_notrelogin", 1)
		lualib:SysPromptMsg(player, "���ָ��ĳɹ����ص���Ϸ��Ч��")
	end
	lualib:ShowFormWithContent(player, "�ű���", "RenameCard.Close();")
end

function ChangeHeroName(player, err, param)
	
	local str = tostring(param)
	local a1 = string.find(str, "?")
	local heroGuid = string.sub(str, 1, a1-1)
	local a2 = string.find(str, "#")
	local newName = string.sub(str, a1+1, a2-1)
	local length = string.len(str)
	local heroName = string.sub(str, a2+1, length)
	--lualib:SysPromptMsg(player, "newName:::::"..tostring(newName))
	--lualib:SysPromptMsg(player, "heroName:::::"..tostring(heroName))
	--lualib:SysPromptMsg(player, "heroGuid:::::"..tostring(heroGuid))
	if lualib:Player_ChangeName(heroGuid, heroName .."��"..newName.."��") then
		--lualib:SysPromptMsg(player, "nameChangedSuccessfully:::::")
		lualib:DestroyDummy(heroGuid)
	else
		--lualib:SysPromptMsg(player, "failed:::::")
	end
	return ""
end




local true_skill_map = {
						 [25] = 1,
						 [2] = 1,
						 [10105] = 1,
						 [1010] = 1,
						 [1011] = 1,
						 [1012] = 1,
						 [1013] = 1,
						 [1000] = 1,
						 [1001] = 1,
						 [1002] = 1,
						 [1003] = 1,
						 [1030] = 1,
						 [1031] = 1,
						 [1032] = 1,
						 [1033] = 1,
						 [2100] = 1,
						 [2101] = 1,
						 [2102] = 1,
						 [2103] = 1,
						
						
					}			
					
function on_pre_spell(player, skill_id, skill_key)
	--lualib:SysPromptMsg(player, "skill_key="..skill_key);
	local map_name = lualib:KeyName(lualib:MapGuid(player))
	if map_name == "��ħ����" then
		if true_skill_map[tonumber(skill_id)] == nil then
			return false
		else
			return true
		end
	end

	if lualib:Job(player) == 3 then
		if skill_key == "�ظ�֮��" then
			local servant_t = lualib:Player_GetServantList(player) 
			if #servant_t ~= 0 then
				for i = 1 , #servant_t do 
					if lualib:Name(servant_t[i]) == "��è����" then
						
						return false
					end
				end
			end
		end
	end	
    return true
end

 function on_trigger_pre_item_apply(player, item, item_id, item_name)
	local itemlist = {
	["��ʯ�ᾧС"] = 1,
	["��ʯ�ᾧ��"] = 1 ,
	["��ʯ�ᾧ��"] = 1,
	["������ƬС"] = 1,
	["������Ƭ��"] = 1,
	["������Ƭ��"] = 1,
	["������ƬС"] = 1,
	["������Ƭ��"] = 1,
	["������Ƭ��"] = 1,
	["Ѫ����ƬС"] = 1,
	["Ѫ����Ƭ��"] = 1,
	["Ѫ����Ƭ��"] = 1,
	["��ʯ�ᾧ��"] = 1,
	["������Ƭ��"] = 1,
	["������Ƭ��"] = 1,
	["Ѫ����Ƭ��"] = 1,
	["��ʯ����С"] = 2,
	["��ʯ������"] = 2,
	["��ʯ������"] = 2,
	["��ש��"] = 3,
	["��שС"] = 3,
	["��ש��"] = 3,
	["������ש"] = 3,
	["���鵤��"] = 4,
	["���鵤С"] = 4,
	["���鵤��"] = 4,
	["500Ԫ��"] = 5,
	["2000Ԫ��"] = 5,
	["100Ԫ��"] = 5,
	["1000Ԫ��"] = 5,
	["500��Ԫ��"] = 6,
	["5000��Ԫ��"] = 6,
	["200��Ԫ��"] = 6,
	["2000��Ԫ��"] = 6,
	["1000��Ԫ��"] = 6,
	["100��Ԫ��"] = 6,
	["BOSS���־���С"] = 7,
	["����BOSS���־���"] = 7,
	["�߼�BOSS���־���"] = 7,
	["BOSS���־���"] = 7,
	["�߼��ɾ����ư�"] = 8,
	["�߼��ɾ�����"] = 8,
	["�ɾ�����"] = 8,
	["ת����"] = 9,
	["�м�ת����"] = 9,
	["�߼�ת����"] = 9,
	["����ת����"] = 9,
	}
	local itemtype = lualib:Item_GetType(player,item) 
	if itemtype == 5 or itemtype == 2 then
		local keyname = lualib:KeyName(item)
		if itemlist[keyname] == nil then
			return true
		else
			if itemlist[keyname] == 3 then
				if lualib:Player_IsGoldEnough(player, 1000000000, true) == true then
					lualib:SysCenterMsg( 0 , "����ϵͳ���ƣ����ֻ��ӵ��1000000000�󶨽��!" , player)
					return false
				end
				local vip_lv = lualib:GetVipLevel(player)
				local icounts = lualib:GetDayInt(player,"goldzdayints")
				local DatIntTbl = {
									[0]	=	20	,
									[1]	=	30	,
									[2]	=	50	,
									[3]	=	70	,
									[4]	=	100	,
									[5]	=	150	,
									[6]	=	200	,
									[7]	=	300	,
									[8]	=	400	,
									[9]	=	500	,
									[10] =	600	,
					}
				if icounts >= DatIntTbl[vip_lv] then
					--lualib:SysCenterMsg( 0 , "����ʹ�ý�ש�����ﵽ����" , player_guid )
					return false
				end
			end
			if itemlist[keyname] == 9 then
				local icounts = lualib:GetDayInt(player, keyname.."����")
				local zsdTbl = {
								["ת����"] = 20,
								["�м�ת����"] = 20,
								["�߼�ת����"] = 20,
								["����ת����"] = 10
				}
				if icounts >= zsdTbl[keyname] then
					--lualib:SysCenterMsg( 0 , "����ʹ��ת���������ﵽ����" , player_guid )
					return false
				end
			end
			local req = lualib:Item_GetSite(player, item) - 21
			req = req % 40
			if req == 0 then
				req = 40
			end
			local gamemainindex = itemlist[keyname]
			local percentage = lualib:GetExp(player)/lualib:Player_GetExpLimit(player)
			if gamemainindex == 4 then
				lualib:ShowFormWithContent(player,"�ű���","GameMainBar.ParticleEffect(".. req ..",".. gamemainindex ..","..percentage..") ;")
				return true
			end
			lualib:ShowFormWithContent(player,"�ű���","GameMainBar.ParticleEffect(".. req ..",".. gamemainindex ..") ;")
		end	
	end
	return true
 end

function on_create(object)
	lualib:SysMsg_SendBroadcastMsg(object, "ϵͳ")
end

local vip_table = {1000,10000,50000,100000,200000,500000,800000,1000000,2000000,5000000}

function on_billin(player,dc_yb)
	
	
	local vip_level = lualib:GetVipLevel(player)
	local yb = lualib:GetTotalBill(player)
	local vip_l = 0 
	for i = 1 , #vip_table do 
		if yb >= vip_table[i] then
			vip_l = i
			--lualib:SysPromptMsg(player,"viplevel=.."..vip_l)
		else
			break
		end
	end
	local pName = lualib:Name(player)
	--if yb >= vip_table[vip_level] then
	if vip_l > vip_level then
		lualib:ShowFormWithContent(player,"�ű���","PlayerHeaderInfo.addEffectToVIP()")	--���VIPͼ����Ч
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_DARKGOLD#��ϲ���#COLOREND##COLORCOLOR_BLUE#��"..pName.."��#COLOREND##COLORCOLOR_DARKGOLD#��Ϊ #COLOREND##COLORCOLOR_YELLOW#VIP"..vip_l.."#COLOREND#", 11, 2)
		if string.len(pName) < 6 then
			local s1 = "#COLORCOLOR_BGREENG#���#COLOREND##COLORCOLOR_BLUE#��"..pName.."��#COLOREND##COLORCOLOR_BGREENG#��ΪVIP������#COLOREND##COLORCOLOR_ORANGE#��VIP�������񡿣�\n#COLOREND##UILINK<STR:��ҲҪ��ΪVIP,WND:ִ�нű�,PARAM:UI:Lua_GenForm(\"VIPWnd\")>#"
			lualib:SysMsg_SendBroadcastColor(s1, "", 1, 0)
		else
			local s1 = "#COLORCOLOR_BGREENG#���#COLOREND##COLORCOLOR_BLUE#��"..pName.."��#COLOREND##COLORCOLOR_BGREENG#��ΪVIP������#COLOREND##COLORCOLOR_ORANGE#��VIP�������񡿣�#COLOREND##UILINK<STR:��ҲҪ��ΪVIP,WND:ִ�нű�,PARAM:UI:Lua_GenForm(\"VIPWnd\")>#"
			lualib:SysMsg_SendBroadcastColor(s1, "", 1, 0)
		end
	end
	
	if tonumber(dc_yb) >= 10000 then
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_DARKGOLD#���#COLOREND##COLORCOLOR_BLUE#��"..pName.."��#COLOREND##COLORCOLOR_DARKGOLD#��ֵ�� #COLOREND##COLORCOLOR_YELLOW#"..dc_yb.."Ԫ��#COLOREND#", 11, 2)
	end
	
	--�ж�VIP����BUFF��û����
	if lualib:GetDayInt(player,"����buff") == 0 then
		lualib:ShowFormWithContent(player,"�ű���","PlayerHeaderInfo.addEffectToVIP()")	--���VIPͼ����Ч
	end
	
	lualib:ShowFormWithContent(player,"�ű���","PlayerHeaderInfo.InitPlayerFundInfo()")

	vip_set(player)
	dailyConsume_billin(player, dc_yb)	--ÿ�ճ�ֵ
	--lualib:SetInt(player, "serviceActivityRechargeYb", lualib:GetInt(player, "serviceActivityRechargeYb")+tonumber(dc_yb))
	--local totalYb = lualib:GetInt(player, "serviceActivityRechargeYb")
	--RecordTop5Info(player, totalYb)
	chongzhi_talk_jt_ex(player)
	--lualib:SetDayInt(player, "IndividalDailyRecharge",tonumber(lualib:GetDayInt(player, "IndividalDailyRecharge")+dc_yb))  --��¼���ÿ�ճ�ֵԪ����

end

function on_trigger_mall(player, yb, isbind)
	--lualib:SysPromptMsg(player,"isbind="..tostring(isbind))
	--lualib:SysPromptMsg(player,"yb:"..tostring(yb))
	if isbind == 0 then                          --���Ѳ���Ԫ��
		local index = lualib:GetDBNum("consumeTerm")
		local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..index) + tonumber(yb)
		RecordTop10ConsumeInfo(player, totalYb)
	end
end
--��ɫ��Ӽ��ܴ���
function on_add_skill(player, skill_id)
	lualib:RunClientScript(player, "CommonScriptFun", "SkillJudge", ""..skill_id)
end



--���ݳ�ֵ����vip�ȼ�,�����Ӧ�ȼ�buff
function vip_set(player)
	--local vip_table = {100,1000,5000,10000,50000,100000,200000,500000,1000000,5000000}
	--local vip_table = {100,10000,50000,100000,200000,500000,800000,1000000,2000000,5000000}
	local vip_buff = {
		{"VIP1��","VIP1��","VIP1��"},
		{"VIP2��","VIP2��","VIP2��"},
		{"VIP3��","VIP3��","VIP3��"},
		{"VIP4��","VIP4��","VIP4��"},
		{"VIP5��","VIP5��","VIP5��"},
		{"VIP6��","VIP6��","VIP6��"},
		{"VIP7��","VIP7��","VIP7��"},
		{"VIP8��","VIP8��","VIP8��"},
		{"VIP9��","VIP9��","VIP9��"},
		{"VIP10��","VIP10��","VIP10��"},

	}
	local yb = lualib:GetTotalBill(player)
	if yb < vip_table[1] then
		return ""
	end
	local vip_level = lualib:GetVipLevel(player)
	
	local vip_l = 0 
	for i = 1 , #vip_table do 
		if yb >= vip_table[i] then
			vip_l = i
			--lualib:SysPromptMsg(player,"viplevel=.."..vip_l)
		else
			break
		end
	end
	
	if vip_level == vip_l then
		local job = lualib:Job(player)
		lualib:AddBuff(player,vip_buff[vip_level][job], 0)
	end
	if vip_level < vip_l then
		if vip_level == 0 then
			lualib:SetDBNumEx("vip_person",lualib:GetDBNum("vip_person") + 1,4)
		end
		lualib:SetVipLevel(player,vip_l)
		--lualib:ShowFormWithContent(player,"�ű���","GameMainBar.ShowVip("..vip_l..");") --GameMainBar���ܿ���

		local job = lualib:Job(player)
		if tonumber(vip_level) ~= 0 and job ~= 0 then
			if lualib:HasBuff(player, vip_buff[vip_level][job]) then
				lualib:DelBuff(player, vip_buff[vip_level][job])
			end
		end	
		lualib:AddBuff(player,vip_buff[vip_l][job], 0)
		
		if vip_l >= 3 and vip_l < 6 then
			if vip_level < 3 then
				lualib:SetInt(player, "cmDayNum", lualib:GetInt(player, "cmDayNum")+2)
			end
		elseif vip_l >= 6 then
			if vip_level < 3 then
				lualib:SetInt(player, "cmDayNum", lualib:GetInt(player, "cmDayNum")+4)
			elseif vip_level >= 3 and vip_level < 6 then
				lualib:SetInt(player, "cmDayNum", lualib:GetInt(player, "cmDayNum")+2)
			end
		end
		lualib:NotifyVar(player, "cmDayNum")
	end
	---���߳�ֵ��Ϊvip����Ӣ��
	createHeroViaVipLv(player)	
end	

local wall_table =
	{
		["����"] =
		{
			{"�����ʹ�", 6, "", "��ļ�����ؾ�", 100000, {{"north_wall_guard1", 348, 179}, {"north_wall_guard2", 358, 189}, {"north_wall_guard3", 345, 182}, {"north_wall_guard4", 355, 192}, {"north_wall_guard5", 342, 185}, {"north_wall_guard6", 352, 195}}, "��������2"},
			{"������ǽ", 6, "", "��ļ�����ؾ�", 100000, {{"west_wall_guard1", 288, 152}, {"west_wall_guard2", 299, 141}, {"west_wall_guard3", 284, 156}, {"west_wall_guard4", 303, 137}, {"west_wall_guard5", 280, 160}, {"west_wall_guard6", 307, 133}}, "��������2"},
			{"�ϲ���ǽ", 6, "", "��ļ�ϲ��ؾ�", 100000, {{"south_wall_guard1", 287, 238}, {"south_wall_guard2", 299, 250}, {"south_wall_guard3", 283, 234}, {"south_wall_guard4", 303, 254}, {"south_wall_guard5", 279, 230}, {"south_wall_guard6", 307, 258}}, "��������2"},
			{"������ǽ", 6, "", "��ļ�����ؾ�", 100000, {{"east_wall_guard1", 384, 250}, {"east_wall_guard2", 396, 238}, {"east_wall_guard3", 380, 254}, {"east_wall_guard4", 400, 234}, {"east_wall_guard5", 376, 258}, {"east_wall_guard6", 404, 230}}, "��������2"}
		},
	}

function fanhuan()
	--[[
	for i = 1, table.getn(zhandou) do
		for j = 1, table.getn(zhandou[i]) do
			local data = lualib:IO_GetCustomVarStr(zhandou[i][j][1])
			local data_table = string.split(data, "#")
			if data ~= "" and data ~= nil then
				if i == 1 then
					lualib:Mail("����������Ա", data_table[1], "��������ľ�����ս�ѹ��ڣ�ϵͳ�������Ľ�ң�", tonumber(data_table[2]), 0, {})
					if data_table[3] ~= nil and data_table[3] ~= "" then
						lualib:Mail("����������Ա", data_table[3], "��������ľ�����ս�ѹ��ڣ�ϵͳ�������Ľ�ң�", tonumber(data_table[2]), 0, {})
					end
					lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
					lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
				elseif i == 2 then
					lualib:Mail("����������Ա", data_table[1], "��������ľ�����ս�ѹ��ڣ�ϵͳ�������Ľ�ң�", tonumber(data_table[2]), 0, {})
					if data_table[7] ~= nil and data_table[7] ~= "" then
						lualib:Mail("����������Ա", data_table[7], "��������ľ�����ս�ѹ��ڣ�ϵͳ�������Ľ�ң�", tonumber(data_table[2]), 0, {})
					end
					lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
					lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
				elseif i == 3 then
					lualib:Mail("����������Ա", data_table[1], "��������ľ�����ս�ѹ��ڣ�ϵͳ�������Ľ�ң�", tonumber(data_table[2]), 0, {})
					if data_table[12] ~= nil and data_table[12] ~= "" then
						lualib:Mail("����������Ա", data_table[12], "��������ľ�����ս�ѹ��ڣ�ϵͳ�������Ľ�ң�", tonumber(data_table[2]), 0, {})
					end
					lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
					lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
				end
			end
		end
	end
	--]]
end

function init_castle()
	local castle_t = lualib:GetAllCastle()
	if castle_t == nil then return end

	local guard = ""
	for _, v in pairs(castle_t) do
		if wall_table[v] ~= nil then
			for _k, _v in pairs(wall_table[v]) do
				for __k, __v in pairs(_v[6]) do
					if lualib:GetCastleCustomVarStr(v, __v[1]) ~= "" then
						guard = lualib:Map_GenSingleMonster(lualib:GetCastleMapGuid(v), __v[2], __v[3], 0, 3, _v[7], false)
						lualib:SetCastleCustomVarStr(v, __v[1], guard)
						if guard ~= "" then
							lualib:AddTrigger(guard,  lua_trigger_post_die, "on_guard_post_die")
							lualib:Monster_SetCustomVarStr(guard, "castle_name", v)
							lualib:Monster_SetCustomVarInt(guard, "type", _k)
							lualib:Monster_SetCustomVarInt(guard, "index", __k)
						end
					end
				end
			end
		end
	end
end

function on_guard_post_die(actor, killer)
	local castle_name = lualib:Monster_GetCustomVarStr(actor, "castle_name")
	local type = lualib:Monster_GetCustomVarInt(actor, "type")
	local index = lualib:Monster_GetCustomVarInt(actor, "index")
	if wall_table[castle_name][type][6][index] == nil then return end
	lualib:SetCastleCustomVarStr(castle_name, wall_table[castle_name][type][6][index][1], "")
	lualib:RemoveTrigger(actor,  lua_trigger_post_die, "on_guard_post_die")
end

function on_castle_war_start(castle_name, dst_map_guid, basilica_map_guid)
--	lualib:SysMsg_SendBroadcastColor("["..castle_name.."]����ս��ʼ�ˣ�", "", 1, 12)
--	if not lualib:Map_ClearDgnItem(dst_map_guid) then
--		lualib:Error("�Ǳ���ͼGUID�����ڣ�")
--		return
--	end
--
--	local add_monster_table = {["����"] = {{"���ǳ���", 292, 247, 5}, {"���ǵ���1", 359, 164, 5},
--							   {"���ǵ���1", 363, 168, 5}, {"���ǵ���1", 367, 172, 5}, {"���ǲ����1", 390, 247, 3}, {"���ǲ����2", 294, 151, 3}}}
--	local remove_npc_table = {["����"] = {"����ҩ����", "��������", "���ǲ÷�", "�����ӻ���",
--							  "����������", "��������", "���ǽ̹�", "����ɮ��", "���ǹ�����"}}
--	local remove_monster_table = {["����"] = {"��������", "�����̻�", "���Ǿ�Ӫ"}}
--
--	for i = 1, table.getn(add_monster_table[castle_name]) do
--		if not lualib:Map_GenSingleMonster(dst_map_guid, add_monster_table[castle_name][i][2], add_monster_table[castle_name][i][3],
--										   1, add_monster_table[castle_name][i][4], add_monster_table[castle_name][i][1], false) then
--			lualib:Print(castle_name.."ˢ��"..add_monster_table[castle_name][i][1].."����")
--			return
--		end
--	end
--
--	for i = 1, table.getn(remove_npc_table[castle_name]) do
--		if not lualib:Map_RemoveNpc(dst_map_guid, remove_npc_table[castle_name][i]) then
--			lualib:Print(castle_name.."�Ƴ�NPC"..remove_npc_table[castle_name][i].."����")
--			return
--		end
--	end
--
--	for i = 1, table.getn(remove_monster_table[castle_name]) do
--		if not lualib:Map_RemoveMonster(dst_map_guid, remove_monster_table[castle_name][i]) then
--			lualib:Print(castle_name.."�Ƴ�����"..remove_monster_table[castle_name][i].."����")
--			return
--		end
--	end
end

function trigger_castle_war_init(castle_name, dst_map, basilica_map)
	--[[
	if not lualib:AddTimer(basilica_map, -1, 1000, -1, "on_timer_castle_start") then
		lualib:Error(castle_name.."�Ǳ���ʱ������ʧ�ܣ�")
	end
	lualib:Map_SetCustomVarStr(basilica_map, "castle_war_castle_name", castle_name)
	lualib:Debug(castle_name.."�Ǳ���ʱ�����óɹ���")
	--]]
end

function on_timer_castle_start(map, timer_id)
	--[[
	local castle_name = lualib:Map_GetCustomVarStr(map, "castle_war_castle_name")
	if castle_name == "" then return end

	local cur_timer = lualib:GetLocalTime()
	local start_time = lualib:CalcLocalTime(5, "20:00:00")
        local duration = 7200
	local end_time = start_time + duration

	local timer_t = {{-1800, 1, 30}, {-1200, 2, 20}, {-600, 3, 10}, {-300, 4, 5}, {-60, 5, 1}, {-1800, 6, 30}, {-1200, 7, 20}, {-600, 8, 10}, {-300, 9, 5}, {-60, 10, 1}}
	local cur_state = lualib:Map_GetCustomVarInt(map, "castle_war_castle_status")
	if cur_state >= table.getn(timer_t) then
		lualib:Map_SetCustomVarInt(map, "castle_war_castle_status", 0)
		lualib:DisableTimer(map, timer_id)
		return
	end

	if cur_state < 5 then
		if ((cur_timer >= (start_time + timer_t[cur_state + 1][1])) and ((cur_state + 1) == timer_t[cur_state + 1][2])) then
			if (cur_timer < (start_time + timer_t[cur_state + 1][1] + 10)) then
				lualib:SysMsg_SendBroadcastMsg("["..castle_name.."]�Ǳ�ս����"..timer_t[cur_state + 1][3].."���ӿ�ʼ���빥��˫������׼����", "ϵͳ֪ͨ")
			end
			lualib:Map_SetCustomVarInt(map, "castle_war_castle_status", cur_state + 1)F
		end
	else
		if ((cur_timer >= (end_time + timer_t[cur_state + 1][1])) and ((cur_state + 1) == timer_t[cur_state + 1][2])) then
			if (cur_timer < (end_time + timer_t[cur_state + 1][1] + 10)) then
				lualib:SysMsg_SendBroadcastMsg("["..castle_name.."]�Ǳ�ս����"..timer_t[cur_state + 1][3].."���ӽ������빥��˫��ץ��ʱ�䣡", "ϵͳ֪ͨ")
			end
			lualib:Map_SetCustomVarInt(map, "castle_war_castle_status", cur_state + 1)
		end
	end
	--]]
end

function on_castle_war_end(castle_name, dst_map_guid, basilica_map_guid)
--	local remove_monster_table = {["����"] = {"���ǳ���", "���ǵ���1", "���ǲ����1", "���ǲ����2"}}
--	local add_npc_table = {["����"] = {{"���ǹ�����", 335, 203}, {"����ҩ����", 308, 207}, {"��������", 346, 265}, {"���ǲ÷�", 285, 203}, {"�����ӻ���", 322, 234}, {"����������", 289, 181}}}
--	local add_monster_table = {["����"] = {{"��������", 330, 154}, {"�����̻�", 319, 198}, {"���Ǿ�Ӫ", 342, 221}}}
--	local remove_npc_table = {["����"] = {"�����赲1", "�����赲2", "�����赲3", "�����赲4", "�����赲5", "�����赲6", "�����赲7"}}
--
--	for i = 1, table.getn(remove_monster_table[castle_name]) do
--		if not lualib:Map_RemoveMonster(dst_map_guid, remove_monster_table[castle_name][i]) then
--			lualib:Print(castle_name.."�Ƴ�����"..remove_monster_table[castle_name][i].."����")
--			return
--		end
--	end
--
--	for i = 1, table.getn(add_npc_table[castle_name]) do
--		if not lualib:Map_GenNpc(dst_map_guid, add_npc_table[castle_name][i][1], add_npc_table[castle_name][i][2],
--								add_npc_table[castle_name][i][3], 1, 3) then
--			lualib:Print(castle_name.."ˢNPC"..add_npc_table[castle_name][i][1].."����")
--		end
--	end
--
--	for i = 1, table.getn(add_monster_table[castle_name]) do
--		if not lualib:Map_GenSingleMonster(dst_map_guid, add_monster_table[castle_name][i][2], add_monster_table[castle_name][i][3],
--										   1, 3, add_monster_table[castle_name][i][1], false) then
--			lualib:Print(castle_name.."ˢ��"..add_monster_table[castle_name][i][1].."����")
--			return
--		end
--	end
--
--	for i = 1, table.getn(remove_npc_table[castle_name]) do
--		if not lualib:Map_RemoveNpc(dst_map_guid, remove_npc_table[castle_name][i]) then
--			lualib:Print(castle_name.."�Ƴ�NPC"..remove_npc_table[castle_name][i].."����")
--			return
--		end
--	end
--
--	lualib:SysMsg_SendBroadcastColor("["..castle_name.."]����ս�����ˣ�", "", 1, 12)
--	local own_family = lualib:GetCastleOwnFamily(castle_name)
--
--	--���óǱ�ӵ���߱���
--		local family = lualib:IO_GetCustomVarStr("shengechengzhanling")
--		if own_family == family then
--			local abc = lualib:IO_GetCustomVarInt("zhanlingcishu")
--			lualib:IO_SetCustomVarInt("zhanlingcishu", abc + 1)
--		else
--			lualib:IO_SetCustomVarStr("shengechengzhanling", own_family)
--			lualib:IO_SetCustomVarInt("zhanlingcishu", 1)
--		end
--	--���óǱ�����
--
--
--	if own_family ~= "" then
--		lualib:IO_SetCustomVarInt("castlewar_sgc_flag", 1)          --��Ԫ�ؾ�Ҫʹ��
--		lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BROWN#["..castle_name.."] #COLORCOLOR_YELLOW#��".."#COLORCOLOR_BROWN#["..own_family.."] #COLORCOLOR_YELLOW#�л�ռ���ˣ�", "", 1, 12)
--		if lualib:IO_GetCustomVarInt("castlewar_sgc_flag") == 1 then
--			local tip = [[                                    #COLORCOLOR_GREENG#��Ԫ�ؾ�����#COLOREND##COLORCOLOR_SKYBLUE# 
--						  ���Ǳ�����ռ�죬��������Ԫ�ؾ��Ŀ��أ�
--						һ��ʢ����Ԫ������ܵ�ͼ���򿪡���      #COLOREND#]]
--			local tip2 = [[                                                                        ]]
--			lualib:SysMsg_SendBroadcastColor("     #COLORCOLOR_ORANGE#�X�������������T�������������T�������������T�������������T�������������[#COLOREND#", "", 7, 11)
--			lualib:SysMsg_SendBroadcastColor(tip, "", 7, 11)
--
--			lualib:SysMsg_SendBroadcastColor(tip2, "", 2, 11)
--			lualib:SysMsg_SendBroadcastColor("     #COLORCOLOR_ORANGE#�^�������������T�������������T�������������T�������������T�������������a#COLOREND#", "", 7, 11)
--		end
--
--	end
--
--	--����л�᳤��ȡ����
--	lualib:SetCastleCustomVarInt(castle_name, "award_leader_week_count", 0)
--
--	if castle_name == "����" then
--		--�������ʱ��
--		local castle_var = "����_atk_familys"
--		lualib:IO_SetCustomVarStr(castle_var, "")   --T+Nʱ�����
--
--		--�������������ȡ���
--		--lualib:IO_SetCustomVarStr("����_leader_weapon", "")
--	end
end

function notify_family_war(player)
	if lualib:Player_GetGuidProp(player, lua_role_guild_id) == "" then
		return
	end

	if lualib:GetFamilyName(player) == "" then
		return
	end

	local wars = lualib:GetRunningFamilyWar(player)
	if wars == nil then return end
	for k in pairs(wars) do
		lualib:SysMsg_SendPromptMsg(player, "�л�������"..wars[k].."�л����ս����")
	end

	lualib:NotifyRunningFamilyWar(player)
end

function on_first_in_game(player)
	
	lualib:Player_ChangeAttackMode(player,6) --������ҵĹ���ģʽΪ��Ӫ����ģʽ
	
	lualib:ShowFormWithContent(player, "form�ļ���", "��ʼ��Ϸ��")
	--lualib:ForceAcceptQuest(player, 1)
	--lualib:AddBuff(player, "���BUFF14", 7200)
	--lualib:AddBuff(player, "������300", 7200)
    --lualib:AddBuffEx(player, "������Ϣ", 7200, 300)
	
	local playername = lualib:KeyName(player)
	lualib:SysMsg_SendBottomColor(playername, "��������¼�ɹ�", 9, 11)
	lualib:SysMsg_SendBottomColor(playername, "��ӭ��������;����ף����Ϸ����", 1, 11)
	--//��ʾ  ���̲���
	lualib:ShowFormWithContent(player, "�ű���", "GameMainBar.Taskitem(11);")
	lualib:AddItem(player, "������", 1, true, "������", player)
	lualib:Player_AddGold(player, 0, true, "�ӽ�ң���һ�ν�����Ϸ��Ǯ����", player)
	lualib:Player_AddIngot(player, 0, true, "��Ԫ������һ�ν�����ϷԪ������", player)
end

function active_player(player, request_type, times)
	local accountid = lualib:Player_GetAccountID(player)
	local account_name = lualib:AccountName(player)
	local serverid = lualib:GetZoneId()
	local role_name = lualib:Name(player);
	local level = lualib:Level(player);
	local job = lualib:Job(player);

	local url = string.format("http://api.hzyotoy.com:8800/api/putroleinfo.do?type=%d&zoneid=%d&userid=%d&role_guid=%s&level=%d&role_name=%s&job=%d"
								,request_type, serverid, accountid, player, level, lualib:UrlEncode(role_name), job);

	if request_type == nil  or account_name == "" or serverid == nil then
		return
	else
		if request_type == 2 and level < 5 then
			return
		elseif request_type == 3 and level < 10 then
			return
		end
	--[[	
		if times == 0 then
			lualib:GetURL(url, "do_nothing_retry" .. request_type, player, 30)
		else
			lualib:GetURL(url, "do_nothing", player, 30)
		end]]
		
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


function do_nothing_retry2(player, errorcode, result)
	--[[
	if errorcode ~= 0 then
		active_player(player, 2, 1);  --���Ե�½����
	end
	]]--
end

function do_nothing_retry3(player, errorcode, result)
	--[[
	if errorcode ~= 0 then
		active_player(player, 3, 1);--������������
	end
	]]--
end

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

end


function on_msg_dlg_ack(dlg_id, player, button_id, param)
	if button_id ~= 0 then return end
	local x = lualib:X(player)
	if x > 280 then
		lualib:AcceptQuest(player, 1001)
	else
		lualib:AcceptQuest(player, 1101)
	end
end

function on_level_up(player, level)
--	level_yindao(player,level) --��������
	--��½��Ϣ����web����������վ���ɫ��Ҫ type=3���� ��������
	active_player(player, 3, 0)
	local level = tonumber(level)
	--�ع��¼
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)
	local times = lualib:GetAllTime()
	local timesStr = lualib:Time2Str( "%Y-%m-%d %H:%M:%S", times)

	if StartServerTime ~= "" and StartServerTime ~= nil then
		if times < StartServerTime_int then
			if tonumber(level) == 40 then
				local account_Name = tostring(lualib:AccountName(player))
				if lualib:IO_FileExists("fengcehuikui.txt") then
					if not lualib:IO_CheckTextInFile("fengcehuikui.txt", account_Name) then
						lualib:IO_TextFileInsertLine("fengcehuikui.txt", 1, account_Name)
					end
				else
					lualib:IO_CreateTextFile("fengcehuikui.txt", false)
					lualib:IO_TextFileInsertLine("fengcehuikui.txt", 1, account_Name)
				end
			end
		end
	end
	level_up_award(player, level) --�������
	--[[local tanbaoScore = lualib:GetInt(player,"tanbao_score")
	if level == 55 then
		if tanbaoScore > 0 then
			AddSEIcon(player, 2, -6, "ս��", 1800200055, "����ʱ", "openMarsPage","","")
		else
			AddSEIcon(player, 2, -5, "ս��", 1800200055, "����ʱ", "openMarsPage","","")
		end
	end--]]
	if level == 40 then
		Button_icon_show(player)
	elseif level == 46 then 
		lualib:ForceAcceptQuest(player, 500)
	elseif level == 50 then
		lualib:ShowFormWithContent(player, "�ű���","TaskWindow.AddExtraFun("..level..");GameMainBar.Taskitem(17)")
	elseif level == 55 then
		lualib:ShowFormWithContent(player, "form�ļ���","marsAwakenUI")
		lualib:ShowFormWithContent(player, "�ű���","GameMainBar.Taskitem(17)")
	elseif level == 60 then
		openChallengeBoss_show(player) --��սBOSS
		openTreasureHouse_show(player)	--̽��
		openExchangePage_show(player)	--����װ��	
		ShowIconOfNewServerGift(player)
	elseif level == 62 then 
		lualib:ForceAcceptQuest(player, 5000)   --ǿ�ƽ���5000������
	elseif level == 66 then 
		lualib:ForceAcceptQuest(player, 20000)   --ǿ�ƽ���20000������
	end	
	if level >= 57 and level < 60  then 
		lualib:ShowFormWithContent(player, "form�ļ���","Boss_tip")
	end
	
	if level >= 52 and level < 55  then 
		lualib:ShowFormWithContent(player, "form�ļ���","Mars_tip")
	end

	
	if level == 60 then
		--lualib:ShowFormWithContent(player, "�ű���","DisplayEffectForFirstShow(2)")	--���ž�������
		lualib:ShowFormWithContent(player, "�ű���","DisplayEffectForFirstShow(8)")   --����̽������
		lualib:ShowFormWithContent(player, "�ű���", "Boss_tip.Closed();")
		lualib:ShowFormWithContent(player, "form�ļ���","Wing_tip")  			--�������Ԥ��ʿ
		
	elseif level == 61 then --���ų����
		lualib:ShowFormWithContent(player, "form�ļ���","Wing_tip")  	
		lualib:ShowFormWithContent(player, "�ű���","DisplayEffectForFirstShow(4)")
		lualib:ShowFormWithContent(player, "form�ļ���","ShenLu_tip")
	elseif level == 62 then --������¯����
		lualib:ShowFormWithContent(player, "form�ļ���","ShenLu_tip")
		lualib:ShowFormWithContent(player, "�ű���","DisplayEffectForFirstShow(3)")
	elseif level == 69 then --�����������ƽ��沢��ʾͼ��
		if buyExp_IsWitinTime() then --�������ƻʱ��Ϊ����3����
			buyExp_addIcon_openUI(player)
			lualib:ShowFormWithContent(player, "�ű���", "DisplayEffectForFirstShow(7);")
		end
	elseif level == 70 then
		lualib:ShowFormWithContent(player, "�ű���", "GameMainBar.Taskitem(15)")
	
	elseif level == 75 then --���ű�ʯ����
		lualib:ShowFormWithContent(player, "�ű���","DisplayEffectForFirstShow(1)")
	end

	
	
	if lualib:HasQuest(player, 76) then 
		local level = lualib:Level(player)
		if level >= 63 then
			lualib:SetQuestGroupHuntingsCount(player, 76, 444, 1)	
		end
	elseif lualib:HasQuest(player, 79) then 
		
		local level = lualib:Level(player)
		if level >= 64 then
		
			lualib:SetQuestGroupHuntingsCount(player, 79, 444, 1)	
		end
	elseif lualib:HasQuest(player, 82) then 
		
		local level = lualib:Level(player)
		if level >= 65 then
		
			lualib:SetQuestGroupHuntingsCount(player, 82, 444, 1)	
		end
	elseif lualib:HasQuest(player, 85) then 
		local level = lualib:Level(player)
		if level >= 66 then
			lualib:SetQuestGroupHuntingsCount(player, 85, 444, 1)	
		end
	elseif lualib:HasQuest(player, 88) then 
		local level = lualib:Level(player)
		if level >= 67 then
			lualib:SetQuestGroupHuntingsCount(player, 88, 444, 1)	
		end
	elseif lualib:HasQuest(player, 91) then 
		local level = lualib:Level(player)
		if level >= 68 then
			lualib:SetQuestGroupHuntingsCount(player, 91, 444, 1)	
		end
		
	elseif lualib:HasQuest(player, 94) then 
		local level = lualib:Level(player)
		if level >= 69 then
			lualib:SetQuestGroupHuntingsCount(player, 94, 444, 1)	
		end
	elseif lualib:HasQuest(player, 96) then 
		
		local level = lualib:Level(player)
		if level >= 70 then
		
			lualib:SetQuestGroupHuntingsCount(player, 96, 444, 1)	
		end
	elseif lualib:HasQuest(player, 98) then 
		local level = lualib:Level(player)
		if level >= 75 then
			lualib:SetQuestGroupHuntingsCount(player, 98, 444, 1)	
		end
		
		
	elseif lualib:HasQuest(player, 99) then 
		local level = lualib:Level(player)
		if level >= 80 then
			lualib:SetQuestGroupHuntingsCount(player, 99, 444, 1)	
		end
			
		
	elseif lualib:HasQuest(player, 102) then 
		local level = lualib:Level(player)
		if level >= 85 then
			lualib:SetQuestGroupHuntingsCount(player, 102, 444, 1)	
		end
	end	
	
	login_levelUp(player,level)	
end

function on_join_family(applyer, family)  --������������л�
	local FamilyLeader =  lualib:GetFamilyLeader(family)
	if lualib:HasQuest(applyer, 97) then
		lualib:SetQuestGroupHuntingsCount(applyer, 97, 444, 1)
	end
	if FamilyLeader ~= "" then 
		if not lualib:Player_IsOnline(FamilyLeader) then
			return true              --�᳤������
		end
		lualib:SysPromptMsg(FamilyLeader, "�����������")
		lualib:ShowFormWithContent(FamilyLeader, "�ű���",[[GameMainBar.ApplyFamily()]])
	end
	return true
end

function achievement(player)
	local client_script = [[WndClick(nil,"GameMainInterface,LittleMap,Achieve")]]
	lualib:ShowFormWithContent(player, "�ű���", client_script)
	return ""
end	


function level(player, npc)
    return ""
end

--ÿ��ǩ����ʾ
function meiritishi(dlg_id, player, button_id, param)
	--if button_id ~= 0 then return end
end


function quest_jie(player)
	lualib:ShowFormWithContent(player, "form�ļ���", "��Ϸ��ʼ��")
--	lualib:ShowFormWithContent(player,"�ű���","GameStart.main()")
end

function UpdataSomeChartInfo(player)
	local theName = lualib:GetStr(player, "playerNameINchart")
	local playerName = lualib:Name(player)
	local t = 1
	if lualib:GetDBNum("consumeTerm") ~= 0 then
		t = lualib:GetDBNum("consumeTerm")
	end
	for index = 1, t do
		local str = lualib:GetDBStr("top10ConsumeChartInfo"..index)
		local Top10InfoArr = {{}}   --difine array record Top5 Information ;    Top10InfoArr[][1]=playerName    Top10InfoArr[][2]=yb
		if str ~= nil and str ~= "" then
			Top10InfoArr = json.decode(str)
			local l = 0
			for i = 1, #Top10InfoArr do
				if Top10InfoArr[i][1] == theName then       --�ҵ���ҵ�����������У�
					l = i
				end
			end
			if l ~= 0 then											--ԭ���ڰ��ϡ����ֱ�
				Top10InfoArr[l][1] = lualib:Name(player)
				lualib:SetDBStr("top10ConsumeChartInfo"..index, json.encode(Top10InfoArr))
			else  --ԭ�����ڰ���
				local individualConsume = lualib:GetInt(player, "IndividalTotalConsumeYB"..index)
				RecordTop10ConsumeInfo(player, individualConsume)
			end
		end
	end
	
	
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)  --����ʱ�䣨�룩
	local allDays = lualib:GetAllDays(0)
	local r = math.ceil(((allDays+1)*24*60*60-StartServerTime_int)/(24*60*60)) --�����ڼ���

	local str = lualib:GetDBStr("top5RechargeChartInfo"..r)
	local Top5InfoArr = {{}}   --difine array record Top5 Information ;    Top5InfoArr[][1]=playerName    Top5InfoArr[][2]=yb
	if str ~= nil and str ~= "" then
		Top5InfoArr = json.decode(str)
		local l = 0		
		for i = 1, #Top5InfoArr do
			if theName == Top5InfoArr[i][1] then
				l = i
			end
		end
		if l ~= 0 then
			Top5InfoArr[l][1] = lualib:Name(player)
			lualib:SetDBStr("top5RechargeChartInfo"..r,str)
		else
			local individualRecharge = lualib:GetDayInt(player, "IndividalDailyRecharge")
			RecordTop5Info(player, individualRecharge) ----��ֵ����
		end
	end

	return ""
end

--ÿ��ǩ����ʾ
function on_login(player)
	--lualib:ShowFormWithContent(player, "form�ļ���", "��ʼ��Ϸ��")
	
	--[[
	local reinNum = lualib:GetInt(player, "reinNum")
	local title = {
					{81, 83, 85},
					{82, 84, 86},
					}
	
	if reinNum > 0 then
		local gender = lualib:Gender(player)
		local job = lualib:Job(player)
		lualib:AddTitle(player, title[gender][job])
		lualib:SetStr(player, "_name_t", "ת���ȼ�:"..reinNum.."ת")
		lualib:SetStr(player, "_na_", "ת���ȼ�:"..reinNum.."ת")
		lualib:NotifyVar(player, "_name_t")
		lualib:NotifyVar(player, "_na_")
	end
	--]]
	if lualib:GetInt(player, "nameChanged_notrelogin") ~= 0 then
		lualib:SetInt(player, "nameChanged_notrelogin", 0)
	end
	if lualib:GetInt(player,"reinLevel") ~= 0 then
		lualib:NotifyVar(player, "reinLevel")
	end	
	
	
--ȡӲ����
	local playname = lualib:Name(player)
	local computer = lualib:HardwareCode(player)
	local yingjianma = lualib:GetStr(player, "yingjianma")
	
	if computer ~= "" and computer ~= "00-00-00-00-00" then
		local count = lualib:GetDBNum(computer);
		
		if count > 2 then 
		--	lualib:MsgBox(player, "һ̨����ֻ�ܿ�2���ţ�")
			lualib:Player_RunGMCmd(player, "kick", "playname")
		else
			lualib:SetDBNum(computer, count + 1);
		end
	end
--ȡӲ����

--[[	--����
	local TestServerTime = lualib:GetConstVar("TestServerTime")
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local QQQUN = lualib:GetConstVar("QQQUN")
	local QQ = lualib:GetConstVar("QQ")
	local web = lualib:GetConstVar("WEB")
	local TestServerTime_int = lualib:Str2Time(TestServerTime)
	local StartServerTime_int = lualib:Str2Time(StartServerTime)
	local times = lualib:GetAllTime()
	local timesStr = lualib:Time2Str( "%Y-%m-%d %H:%M:%S", times)
	if lualib:Player_IsGM(player) ~= true then
		if TestServerTime_int > StartServerTime_int or TestServerTime == "" or TestServerTime == nil then
			TestServerTime_int = 0
		end
		
		if StartServerTime == "" or StartServerTime == nil then
			StartServerTime_int = 0
		end
		local s = ""
		local s1 = "��������QQȺ��"..QQQUN.."�����½�ٷ���վ��"..web.."�˽�������Ϣ��������������ϵ��ѯ�ͷ�QQ:"..QQ.."��"
		if times < StartServerTime_int and  times > TestServerTime_int then
			s = "�𾴵�������ã���".. lualib:GetZoneName() .."�����������ڳﱸ�׶Σ��޷���½����Ϸ����"..StartServerTime.."��ʽ�����������ڴ���"
			for i = 1, 2 do
				lualib:SysMsg_SendBottomColor(player, s, 7, 2)
				lualib:SysMsg_SendBottomColor(player, s1, 7, 2)
			end
			lualib:AddTimer(player, 723, 2000, 1, "kaifutiren")
			return
			--lualib:Player_Kick(player)
		elseif times < TestServerTime_int then
			s = "�𾴵�������ã���".. lualib:GetZoneName() .."������"..TestServerTime.."�����׶Σ���ʱ��ɾ���������������ݣ���Ϸ����"..StartServerTime.."��ʽ�����������ڴ���\n"
			for i = 1, 2 do
				lualib:SysMsg_SendBottomColor(player, s, 7, 2)
				lualib:SysMsg_SendBottomColor(player, s1, 7, 2)
			end
		end
	end--]]



	local playerlevel = lualib:Level(player)
	local reinNum = lualib:GetInt(player,  "reinNum")
	--��½��Ϣ����web����������վ���ɫ��Ҫ type=2���� ��½����
	
	
	local xun_jifen = {60000,400000,1450000,2950000,4680000,7800000,14500000,25000000,38000000,50000000,70000000,95000000,0}
	local jifen = lualib:GetInt(player,"Ach_jifen")
	local medalLevel = lualib:GetInt(player,"Ach_xunz")
	local vis = 0 
	if jifen >= xun_jifen[medalLevel+1] and medalLevel ~= #xun_jifen - 1 then
		vis = 1
	end
	local num = lualib:GetInt(player,"GloryGetNum")
	if num >= 0 then
		lualib:ShowFormWithContent(player,"�ű���","GameMainBar.MedalNum = "..vis..";GameMainBar.AchNum("..num..")")
	end	
	active_player(player, 2, 0)

	--���Ͻǰ�ť
	check_forbid_role(player)
	--spirit_on_login(player)	--����ϵͳ
	family_on_login(player)
	check_player_login(player)
--	online_gift_login(player)
--	marry_load(player)
--	check_first_bill(player)
--	meiriqiandao_xianshi(player) --ÿ��ǩ��ͼ����ʾ
--	mubiao_xianshi(player) --Ŀ��
--	richang_xianshi(player) --�ճ�
	guaji_xianshi(player) --�һ�
--	libao_xianshi(player) --��ȡ���
	download_show(player)	--΢������
	openOnlineReward_show(player) --��������
	openServiceActivities_show(player)	--�����
	storeUp_show(player)	--�ղؽ���

	ShowIconOfNewServerGift(player)
	Button_icon_show(player)
	--------------------********************************************************************************
	UpdataSomeChartInfo(player)
	lualib:SetStr(player, "playerNameINchart",lualib:Name(player))
	--------------------*************************************************************************************
	local level = lualib:Level(player)
	if level >= 60 then
		openChallengeBoss_show(player) --��սBOSS
	end

	if level == 61 then
		lualib:ShowFormWithContent(player, "form�ļ���","ShenLu_tip")  --��¯��ʾ
	end
	
	if level == 60 then
		lualib:ShowFormWithContent(player, "form�ļ���","Wing_tip") --�����ʾ
	end
	
	if level >= 60 then
		openTreasureHouse_show(player)	--̽��
		openExchangePage_show(player)	--����װ��	
	end

	--openGongcheng_show(player) --����
	
	if level >= 55 then
		openMarsPage_show(player) --ս��
	end
	--if lualib:GetInt(player, "dailyConsume_reward") == 0 then
		dailyConsume_billin(player)
	--end
	
	
	local totalBill = lualib:GetTotalBill(player)
	--if totalBill == 0 then
	if lualib:GetInt(player, "firstConsume_reward") ~= 1 then
		firstConsume_show(player)	--�׳�
	else 

		dailyConsume_show(player)	--ÿ�ճ�ֵ

	end
	
	if level >= 70 then
		buyExp_icon_show(player) --��������(player) 
	end

	--�ж�VIP����BUFF��û����
	local vip_level = lualib:GetVipLevel(player)
	if 0 < vip_level then
		if lualib:GetDayInt(player,"����buff") == 0 then
			lualib:ShowFormWithContent(player,"�ű���","PlayerHeaderInfo.addEffectToVIP()")	--���VIPͼ����Ч
		else
			for i = 1, vip_level do
				local str = tostring(lualib:Player_GetAccountID(player)).."vipReward"..i
				if 0 == lualib:GetDBNum(str) then
					lualib:ShowFormWithContent(player,"�ű���","PlayerHeaderInfo.addEffectToVIP()")	--���VIPͼ����Ч
					break
				end
			end
		end
	end
	
	--��ӷ�ħÿ������
	if level >= 66 then
		local FMDayCount = lualib:GetDayInt(player, "fengmo_count")
		if FMDayCount < 3 then 
			if not lualib:HasQuest(player, 20000) then
				lualib:ForceAcceptQuest(player, 20000)   --ǿ�ƽ���20000������
			end
		end
	end
	
	--Ѻ������,�������ߺ����
	lualib:DelayCall(player, 5 * 1000, "IsDuringEscorter", "") 
    	

--	onlinegift_show(player)		--�ճ�ʱ�����
--	lingqujingyan_xianshi(player) --��ȡ����ͼ����ʾ
--	if playerlevel >= 23 then
--		gonglue_xianshi(player) --����
--	end
--
--	local chongzhi_number = lualib:GetGold(player)
--	if	chongzhi_number >= 0 then--
--		tanbao_xianshi(player) --��Ѩ̽��
--	end
	
	--�����������ı��������������ÿ�춼��
	local allday = lualib:GetAllDays(0)
	local meiri_day = lualib:GetInt(player, "meiri_day")
	if meiri_day ~= allday then
		lualib:SetInt(player, "meiri_day", allday)
		lualib:Player_SetCustomVarInt(player, "online_gift_level", 0)
		--online_gift_login(player)
	end
	RewardHall_resetSuperVip(player) --����ʱ���ж� ���ó�����Ա
	--�������ҳ��,��¼��½ʱ��	
	lualib:SetDayInt(player,"online_this",lualib:GetAllTime())
	
	if reinNum > 99 or playerlevel >= 99 then
		if reinNum >0 then
			zhuansheng_xianshi(player) --����system/ת��
		end
	end	
	lualib:SetLockSwitch(player, 1)
	lualib:SetInt(player, "set_lock_pwd", 0)
	lualib:NotifyVar(player, "set_lock_pwd")
	
	if lualib:Player_GetCustomVarInt(player, "vip6_suishen_cangku") == 1 then
		lualib:Player_SetCustomVarInt(player, "vip6_suishen_cangku", 0)
    end

	if lualib:Player_GetCustomVarInt(player, "vip7_ssyao") == 1 then
		lualib:Player_SetCustomVarInt(player, "vip7_ssyao", 0)
	end
    notify_family_war(player)

	local offline_times = lualib:GetAllTime() - lualib:Player_GetTimeProp(player,  lua_role_last_logout)
	offline_times = lualib:Player_GetCustomVarInt(player, "player_total_offline_times") + offline_times
	if offline_times > (1 * 24 * 3600) then offline_times = 1 * 24 * 3600 end
	lualib:Player_SetCustomVarInt(player, "player_total_offline_times", offline_times)

	lualib:AddTimer(player, -1, 1000, 1, "on_login_delay_timer")

	--���߿��������߼�����

--[[
	local mountguid = lualib:Player_GetItemGuid(player,  lua_site_mount) --��ȡ����λ����ƷGUID
	local mountdur = lualib:Item_GetDurability(player, mountguid)		--��ȡ����λ��������;�
	if  mountguid ~= nil then
			mountdur = mountdur - offline_times / 10
			lualib:Item_SetDurability(player, mountguid, mountdur)
			if mountdur <= 0 then
			lualib:Item_SetDurability(player, mountguid, 0)
			end
	end
]]--

--[[
	local offline_times1 = lualib:GetAllTime() - lualib:Player_GetTimeProp(player,  lua_role_last_logout)
	local zuoqi_table = lualib:ItemsByType(player, 1, 14,true,true,true,true)
	if zuoqi_table ~= nil and table.getn(zuoqi_table) > 0 then
		for i = 1, table.getn(zuoqi_table) do
			local mountdur = lualib:Item_GetDurability(player, zuoqi_table[i])
			mountdur = mountdur - offline_times1 / 100
			if mountdur <= 0 then
				mountdur = 0
			end
			lualib:Item_SetDurability(player, zuoqi_table[i], mountdur)
		end
	end

	local vip_shangxian = lualib:GetVipRemain(player, 13)
	if vip_shangxian ~= 0 then
		local vip_sx = lualib:GetInt(player, "shangxiangonggao")
		local vip_player_name = lualib:Name(player)
		if vip_sx == 1 then
			local s = "#COLORCOLOR_YELLOW#����VIP���#COLORCOLOR_BROWN#��"..vip_player_name.."�� #COLORCOLOR_YELLOW#�����ˣ�"
			lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		end
	end
	
	lualib:AddTimerEx(player, 116, 900000, -1, "fangchenmi", "")
	
    --����ʦͽ��¼����
    process_master_apprentice_login(player)
	lualib:AddTrigger(player,lua_trigger_add_exp,"add_exp") --ÿ�����Ӿ���ʱ����ã�vip����̳��е���Ҫ

]]--
	--���߹�����ɽѩ��BUFF
	--if lualib:GetInt( player , "��ɽѩ������" ) > 0 then
	--	lualib:AddTrigger( player , lua_trigger_add_buff , "on_add_buff" )
		--lualib:AddTrigger( player , lua_trigger_remove_buff , "on_remove_buff" )
		--lualib:AddBuff( player , "��ɽѩ����ʾ" , 0 )
	--else
		--lualib:DelBuff( player , "��ɽѩ����ʾ" )
		--lualib:DelBuff( player , "��ɽѩ���ָ�" )
	--end

	--�����������ʰȡ���ܳ�ʼ������
	local PickUp = lualib:GetStr(player,"PickUp")
	if PickUp == "" or PickUp == nil then 
		local PickUp_tab = {["PickMedicines"]=1,["PickGlod"]=1,["PickMaterial"]=1,["PickItem"]=1,["PickEquipped"]=1,["PickRedEquipped"]=1,["level"]=1}
		PickUp = json.encode(PickUp_tab)
	end	
    lualib:SetStr(player,"PickUp", PickUp)
	lualib:NotifyVar(player, "PickUp")

	--�������� �������ܵĵ�¼ʱ��
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local strTime = lualib:Now() 
	local all_week = math.floor((lualib:Str2Time(strTime)-lualib:Str2Time(StartServerTime))/(60*60*24*7))	
	local last_week = lualib:GetInt(player,"week_num") 
	lualib:SetInt(player,"week_times",all_week )
	if all_week == last_week+1 and all_week ~= 1 then   
		local allweektime = lualib:GetInt(player,"online_times_week") 
		lualib:SetInt(player,"week_last",allweektime)

		lualib:SetInt(player,"online_times_week", 0)
	end 
	
	--����ǻ᳤�����ÿͻ�����ʾ���������Ա����
	if lualib:GuildGuid(player) ~= "" then
		if lualib:Player_IsGuildLeader(player) then	
			lualib:ShowFormWithContent(player, "�ű���",[[GameMainBar.ApplyFamily()]])
		end
	end
	
	lualib:SetInt(player,"autoattack", 0)
	lualib:SetInt(player,"autorun", 0)
	
	
	-- ��¯���п�������װ��
	local varTb = {"xuefu_chip", "hudun_chip", "baoshi_chip", "hunzhu_chip"}
	local equipLvTb = {"xuefu_level", "hudun_level", "baoshi_level", "hunzhu_level"}
	local count = 0
	local varRequireTb = {
						["xuefu_chip"]= {200,200,500,1000,2000,4000,7000,11000,16000,22000,29000,37000,46000,56000,68000,82000,98000,116000,136000,160000,188000,220000,260000,308000,364000,99999999},
						["hudun_chip"]= {100,100,200,350,550,800,1100,1450,1850,2300,99999999},
						["baoshi_chip"]= {40,90,150,220,375,935,2340,4400,7020,11705,99999999},
						["hunzhu_chip"]= {40,70,120,230,810,1190,1550,1820,2630,3590,4010,4690,5660,5980,6440,7070,14010,17270,20890,24930,30250,99999999},
					}
	for i = 1, 4 do
		if lualib:GetInt(player, varTb[i]) > varRequireTb[varTb[i]][lualib:GetInt(player, equipLvTb[i])+1] then
			count = count + 1
		end
		if i == 4 then 
			lualib:ShowFormWithContent(player,"�ű���","GameMainBar.SlNum("..count..")")
		end
	end
	
	--С��80����ʾ����ٻ�ս��
	local playerLevel = lualib:Level(player)
	local x_offset = -68

	--[[local _days = lualib:GetInt(player,"login_days")
	if playerLevel < 80 and playerLevel >= 55 and _days <= 2 then
		local heros = lualib:GetPlayerCurrentHeroList(player)
		if #heros == 0 then
			lualib:ShowFormWithContent(player, "form�ļ���", "GuideDlg_mars#"..x_offset)
		end
	end--]]
		--52-54 ��ʾս���� ����
	if playerLevel <= 54 and playerLevel >= 52 then
		lualib:ShowFormWithContent(player, "form�ļ���","Mars_tip")
	end 
	if playerLevel >= 57 and playerLevel < 60  then 
		lualib:ShowFormWithContent(player, "form�ļ���","Boss_tip")
	end
	local reinLevel = lualib:GetInt(player, "reinLevel")
	--lualib:ShowFormWithContent(player,"�ű���","GameMainBar.JudgeLv("..playerLevel..","..reinLevel..")") --GameMainBar���ܿ���
	local viplv = lualib:GetVipLevel(player)
	--lualib:ShowFormWithContent(player,"�ű���","GameMainBar.ShowVip("..viplv..");") --GameMainBar���ܿ���
	if lualib:GetBagFree(player) <= 0 then
		lualib:ShowFormWithContent(player,"�ű���","GameMainBar.PackageIsFull()")
	end
	local ActivityVar = lualib:GetDBNum("ActivityUnderway")          --��ǰ���ڽ����еĻ ��ť��˸
	if ActivityVar > 0 then
		local str = lualib:GetDBStr("nowActivityName")
		str = serialize(str)																  
		lualib:ShowFormWithContent(player,"�ű���","LittleMap.AddActivityMagic();LittleMap.ShowActivitySchedule("..str..");" )
	end
	lualib:ShowFormWithContent(player,"�ű���","TaskWindow.AddExtraFun("..playerLevel..");") --LittleMap Function ��Recycle��....��
	------------------------------------ÿ�ձ�������start---------------------------
	if lualib:GetDayInt(player, "isResetVar") == 0 then
		for i=5,10 do 
			local int = lualib:GetDayInt(player, "qianwang".. i)  
			lualib:SetInt(player, "qianwang".. i,int)
			lualib:NotifyVar(player, "qianwang"..i)
		end
		
		local dayIntNameTb = {"62�����鸱��","63����ë����","64�����Ƹ���","65�����鸱��","65�����鸱��","67����ʯ����"}
		if lualib:GetDayInt(player, "dailyFbDayFlag") == 0 then
			for i = 1, #dayIntNameTb do
				lualib:SetInt(player, dayIntNameTb[i], 0)
				lualib:NotifyVar(player, dayIntNameTb[i])
			end
			lualib:SetDayInt(player, "dailyFbDayFlag", 1)
		end	
		lualib:SetInt(player, "fengmo_count", 0)
		if lualib:GetDayInt(player,"resetDayNum") == 0 then  --ÿ�������������
			local vl = lualib:GetVipLevel(player)
			if vl < 3 then
				lualib:SetInt(player,"cmDayNum",12)
			elseif vl >= 3 and vl < 6 then
				lualib:SetInt(player,"cmDayNum",14)
			else
				lualib:SetInt(player,"cmDayNum",16)
			end
			lualib:NotifyVar(player, "cmDayNum")
			lualib:SetDayInt(player,"resetDayNum",1)
		end
		local id = tostring(lualib:Player_GetAccountID(player))
		lualib:SetDBNum("dailyConsume_reward"..id, 0)
		lualib:SetDayInt(player, "isResetVar", 1)
	end
	-----------------------------------ÿ�ձ�������end------------------------------------
	if lualib:GetTotalBill(player) ~= 0 then
		vip_set(player)
	end
	-----------------------------��ȡ�ճ�����ı���ֵ֪ͨ�ͻ���start--------------------------------------
	for i = 5, 10 do
		lualib:NotifyVar(player, "qianwang"..i)
	end
	local dayIntNameTb = {"62�����鸱��","63����ë����","64�����Ƹ���","65�����鸱��","65�����鸱��","67����ʯ����"}
	for i = 1, #dayIntNameTb do
		lualib:NotifyVar(player, dayIntNameTb[i])
	end
	lualib:NotifyVar(player, "cmDayNum")
	lualib:NotifyVar(player, "fengmo_count")
	-----------------------------��ȡ�ճ�����ı���ֵ֪ͨ�ͻ���end-----------------------------------------
	
	chongzhi_talk_jt_ex(player)
	if playerLevel >= 60  then 
		if lualib:GetDayInt(player,"sign_today") == 0 then
			lualib:DelayCall(player, 8000, "DelayCall_OpenRewardHall", "")
		end
	end
	login_levelUp(player,level)
	
	--������Ч
	local ServerTime = lualib:QueryCastleStart("����")+1
	ServerTime =lualib:Time2Str("%Y-%m-%d",ServerTime)
	local strdTime = lualib:Now()
	local strTime = lualib:Str2Time(strdTime)  
	strTime =lualib:Time2Str("%Y-%m-%d",strTime)
	if strTime == ServerTime then
		lualib:SetDBNum("wasActivityUnderway", 1)
		--lualib:SetDBNum("ActivityUnderway", 1)		
		lualib:GSRunScript("IsActivityUnderWay:AddAtivityMagic", "")
	else
		lualib:SetDBNum("wasActivityUnderway", 0)	
		--lualib:SetDBNum("ActivityUnderway", 0)			
		lualib:GSRunScript("IsActivityUnderWay:DelAtivityMagic", "")
	end
	--������Чend
	
	----------�������������˻�������--�����ʼ�����----------
	local hasPlayerBought = lualib:GetInt(player, "hasBoughtGrowthFund")
	if hasPlayerBought == 1 then 
		local startServerTime = lualib:GetConstVar("StartServerTime")
		local startServerTime_int = lualib:Str2Time(startServerTime)  --����ʱ�䣨�룩
		local activityEndTime_int = startServerTime_int + 3*24*60*60
		local nowTime_int = lualib:GetAllTime()
		if nowTime_int < activityEndTime_int then 
			local bool = lualib:GetDayInt(player, "IsFundMailToPlayer")
			if bool == 0 then 
				local deadline_str = lualib:Time2Str("%Y-%m-%d %H:%M", activityEndTime_int)
				lualib:MailToPlayer("�ɳ�����", player, "�ɳ���������"..deadline_str.."��������������޷���ȡ����������������", 0, 0, {})
				lualib:SetDayInt(player, "IsFundMailToPlayer", 1)
			end
		end
	end
end

function IsDuringEscorter(player)
	if not lualib:IsEscorterDied(player) then
		--lualib:SysPromptMsg(player, "IsEscorterDied");
        local escorter = lualib:GetEscorter(player)
		if escorter ~= "" then 
			--lualib:SysPromptMsg(player, "escorter");
			local AwardList =
			{
				{
					--����, 	 ���, 	 	��ѫ
					{357500,   	 500000,    3000},--һ���ڳ�
					{572000,   	 800000,    4800},--�����ڳ�
					{893750,   	 1250000,   7500},--�����ڳ�
					{1287000,  	 1800000,   10800},--�ļ��ڳ�
					{1787500,    2500000,   15000},--�弶�ڳ�
				},
				{250000, 	 400000, 	600000, 	900000, 	1250000},--Ѻ��
				{500000, 	 800000, 	1250000, 	1800000, 	2500000},--���ڽ���(���)
			}
			local count = lualib:GetInt(escorter, "count");
			local remain = 600 - count;
			--lualib:SysPromptMsg(player, "remain="..remain);
			if remain > 0 then
				local DATA = {}
				DATA[1] = 4;  --�򿪿ͻ������4
				
				--�Ƿ��ǻ�ڼ�˫������
				local IsInCampaign = lualib:GetInt("", "Ѻ���淨����");

				DATA[2] = IsInCampaign;
				
				local EscorterLevel = lualib:GetDayInt(player, "EscorterLevel"); 
				local index = EscorterLevel + 1;
				local AWARD = AwardList[1][index];
				DATA[3] = AWARD;
				DATA[4] = index;
				DATA[5] = remain; --����ʱ
				lualib:ShowFormWithContent(player, "form�ļ���", "EscorterNPC#".. serialize(DATA))
				lualib:ShowFormWithContent(player,"�ű���","EscorterNPC:ChangeWnd()")
			end
		end
	end
end

function DelayCall_OpenRewardHall(player)
	lualib:ShowFormWithContent(player, "�ű���", "CLOnOpenRewardHall()")
end

function login_levelUp(player,level)
	
	AddKaiFuMagicOnLevelUp(player)  --�¿�����Ƿ����Ч
	if lualib:GetInt(player,"�����ڿ�") ==1 then 
		local num1 = 2 - lualib:GetDayInt(player,"�ڿ����")
		if level >= 65 then
			if num1>0 then
				if not lualib:HasQuest(player, 800) then
					if not lualib:HasQuest(player, 810) then
						lualib:AcceptQuest(player, 810)
					end
				end
			end
		end
	end
end

--[[function fangchenmi(player)

	local msg = ""
	local AntiIndulge = lualib:Player_GetAntiIndulge(player)
	
	if AntiIndulge == 2 then
		return 
	elseif AntiIndulge == 1 then
		msg = "�㵱ǰ�Ѿ����������״̬����ľ���������룬�뾡�콫���з�������֤��\n"
		msg = msg.."<@InfoIndulge *01*������>\n"
		msg = msg.."<@VerifyIndulge *01*��������֤>\n"
		lualib:NPCTalk(player, msg)
	elseif AntiIndulge == 0 then
		msg = "�㵱ǰ�Ѿ����������״̬���޾������棬�뾡�콫���з�������֤��"
		msg = msg.."<@InfoIndulge *01*������>\n"
		msg = msg.."<@VerifyIndulge *01*��������֤>\n"
		lualib:NPCTalk(player, msg)
	end

end

function InfoIndulge(player)
    lualib:ShowForm(player, "�����Ա�")
    return ""
end

function VerifyIndulge(player)
	local userid = lualib:Player_GetAccountID(player)
	local times = lualib:GetAllTime()
	lualib:SysMsg_SendWebMsg(player, "��������֤", "http://www.hzyotoy.com/index.do?mod=account&act=info&sign=<SIGNSTR>&ct="..times.."", "")
	return ""
end--]]


------------------------------------��þ���ʱ����------------------------------------
function add_exp(player,exp)
	lualib:SetInt(player,"vip20_jinriexp",lualib:GetInt(player,"vip20_jinriexp")+exp)
end

--[[function notify_spouse(player)
    local player_name = lualib:Player_GetStrProp(player,  lua_role_user_name)
    local spouse = lualib:Player_GetCustomVarStr(player, "��żGUID")

    if lualib:Player_GetIntProp(player,  lua_role_gender) ==  lua_gender_male then
        lualib:SysPromptMsg(spouse, "����ɷ������ˡ�")
    else
        lualib:SysPromptMsg(spouse, "������������ˡ�")
    end

end--]]

function on_pre_player_die(player, killer)
	if not lualib:Player_IsPlayer(player) then  
		
		return true
	else
		local name = lualib:Name(killer)
		--lualib:SysPromptMsg(player, name)
		lualib:ShowFormWithContent(player, "�ű���", "CL:LogicAddToBlackList(\""..name.."\")")
		return true
	end
end

function on_login_delay_timer(player, timer_id)
	if lualib:Player_IsGM(player) then
        lualib:Player_SetGhost(player, true)
        lualib:SysMsg_SendWarnMsg(player, "���ѽ�������״̬��")
        lualib:Player_SetInvincible(player, true)
        lualib:SysMsg_SendWarnMsg(player, "���ѽ����޵�״̬��")
    end
	--����ʱ���¼
	local curTime = lualib:GetAllTime()
	local logout_time = lualib:LastLogoutTime(player)
	local logout_timer = curTime - logout_time
	local hour_now = math.floor(logout_timer / 3600)
	local hour = lualib:GetInt(player,"logout_hour")
	if hour > 72 then
		hour = 0
	end	
	if hour_now > 72 then
		hour_now = 72
	end	
	if hour_now > hour then
		lualib:SetInt(player,"logout_hour",hour_now) 
	end	
	
	
	local seconds = lualib:Player_GetCustomVarInt(player, "player_total_offline_times")
	local day = math.floor(seconds / 3600 / 24)
	local hour = math.floor((seconds - day * 24 * 3600) / 3600)
	local minute = math.floor((seconds - math.floor(seconds / 3600) * 3600) / 60)
	local second = math.floor(seconds - math.floor(seconds / 60) * 60)

	if seconds < 3600 then
	--lualib:SysMsg_SendWarnMsg(player, "��ӭ�����������Ҽ���������еġ����顿�鿴��Ϸָ�ϣ��������Ͻ�ͼ�꡾���ԡ����ٻ��߷���http://www.shentu5.com/s4/")
		return
	end

	--lualib:SysMsg_SendWarnMsg(player, "��ӭ�����������Ҽ���������еġ����顿�鿴��Ϸָ�ϣ��������Ͻ�ͼ�꡾���ԡ����ٻ��߷���http://www.shentu5.com/s4/")
	--[[notify_spouse(player)--]]
end

function on_logout(player)
	--ҳ�������������������ʱ��ͳ��
	local day_time = lualib:GetDayInt(player,"online_times")
	local this_time = lualib:OnlineTimeEx(player)
	lualib:SetDayInt(player,"online_times",day_time + this_time)
	local this = lualib:GetInt(player,"��򼶴����")+1
	lualib:SetInt(player,"��򼶴����",this)
	local npc_guid_cangku = lualib:Player_GetCustomVarStr(player, "yang_cangkuguid_name")
	local npc_guid_shangdian = lualib:Player_GetCustomVarStr(player, "yang_shangdianguid_name")
	--�������� ��ȡ���ܵļ�¼���ܵĵ�¼ʱ��
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local strTime = lualib:Now()
	local all_week = math.floor((lualib:Str2Time(strTime)-lualib:Str2Time(StartServerTime))/(60*60*24*7))
	lualib:SetInt(player,"week_times",all_week )
	local last_week = lualib:GetInt(player,"week_num")    --ȡ����һ��ȡ��ʱ�ġ��ܡ� 
	local allweektime = lualib:GetInt(player,"online_times_week")    
	if all_week == last_week+1 and all_week ~= 1 then 
		lualib:SetInt(player,"week_last",allweektime)
		lualib:SetInt(player,"online_times_week", this_time)
	else
		lualib:SetInt(player,"online_times_week",allweektime + this_time)
	end 
	lualib:SetInt(player,"week_num",all_week) 
	
	--�жϽ�ɫ�Ƿ����һ��������һ�������Ƿ��ǿɽ�״̬
	if lualib:HasQuest(player,1) == false and lualib:CanAcceptQuest(player,1) == true then
		lualib:ForceAcceptQuest(player, 1)
	end
	
    --����ʦͽ�ǳ�����
--[[	
	process_master_apprentice_logout(player)
	if "" ~= npc_guid_cangku then
	lualib:Npc_Remove(npc_guid_cangku)
    end
	if "" ~= npc_guid_shangdian then
	lualib:Npc_Remove(npc_guid_shangdian)
    end
--]]
    --online_gift_logout(player)
    local heros = lualib:GetPlayerCurrentHeroList(player)   --��������ٻ�Ӣ��
	if #heros ~= 0 then
		lualib:DestroyDummy(heros[1])
	end
	--ͳ��ս���ٻ�����
	--[[local dayNum = lualib:GetDayInt(player, "daynum")   
	local a = 0
	if dayNum < 5 then
		local t1me = lualib:GetDayInt(player,"online_times") + lualib:OnlineTime(player) - 60*30*(dayNum-1)
		a = math.floor(t1me/(60*30))
		if a > 1 then
			local cishu = lualib:GetInt(player,"callnumber")
			if (a+dayNum-1) <= 4 then
				lualib:SetInt(player,"callnumber",cishu+a)
				lualib:SetDayInt(player,"daynum",dayNum + a)
			else
				lualib:SetInt(player,"callnumber",cishu+5-dayNum)
				lualib:SetDayInt(player,"daynum",5)
			end
		end
	end--]]
	lualib:SetInt(player,"personBosssDayF",0)   --����boss�����������
end


function on_timer_ysax_dgwf_call_back_func(guid, timer_id)
    if timer_id ==  lua_ysax_dgwf_timer then
        GenMonster_ysax_dgwf()
    end
end


function on_post_monster_die(monster, killer)
	
	local mName = lualib:KeyName(monster)
	local mt1_type = lualib:Monster_Type(mName)
	if mt1_type == 4 then
		local player = ""
		if lualib:Player_IsPlayer(killer) then  
			player = killer
		elseif lualib:Player_IsPlayer(lualib:GetHeroLord(killer)) then  
			player = lualib:GetHeroLord(killer)
		elseif lualib:Player_IsPlayer(lualib:Name2Guid(lualib:Monster_GetMaster(killer))) then  
			player = lualib:Name2Guid(lualib:Monster_GetMaster(killer))
		end
		if player ~= "" then 
			local  boss_points = tonumber(lualib:GetInt(player,"boss_points"))
			local plevel = lualib:Level(monster)
			boss_points =boss_points+plevel
			lualib:SetInt(player,"boss_points",boss_points)
			openChallengeBoss_magic(player)
		end
	end
	
	if lualib:Player_IsPlayer(killer) then
		lualib:SetInt(killer, "kill_monster", lualib:GetInt(killer, "kill_monster") + 1);
		
	--[[	--ͼ�������¼�Start
		local handBookTb = lualib:GetStr(killer, "player_monsterBook")
		if handBookTb == "" then
			handBookTb = {}
			handBookTb[1] = mName
		else
			handBookTb = json.decode(handBookTb)
			for i = 1, #handBookTb do
				if handBookTb[i] == mName then return "" end
			end
			table.insert(handBookTb, mName)
		end
		lualib:SetStr(killer, "player_monsterBook", json.encode(handBookTb))
		--ͼ��End--]]
		
	else
		local player = lualib:GetHeroLord(killer)
		if player ~= "" and player ~= nil then
			lualib:SetInt(player, "kill_monster", lualib:GetInt(player, "kill_monster") + 1);
		else
			local name = lualib:Monster_GetMaster(killer)
			if name ~= "" then 
				player = lualib:Name2Guid(name)
				lualib:SetInt(player, "kill_monster", lualib:GetInt(player, "kill_monster") + 1);
			end
		end
	end
	-----------------ÿ�ջ�Ծ��BOSS��ɱͳ��-----------------------
	if 4 == lualib:Monster_Type(lualib:KeyName(monster)) then
		local targetNumber = 3
		local gainActDgr = 10
		local player = killer
		if not lualib:Player_IsPlayer(player) then
			player = lualib:GetHeroLord(killer)
			if not lualib:Player_IsPlayer(player) then
				player = lualib:Name2Guid(lualib:Monster_GetMaster(killer))
			end
		end
		local count = lualib:GetDayInt(player, "activityDgr_BOSS") + 1
		if targetNumber > count then
			lualib:SetDayInt(player, "activityDgr_BOSS", count)
		elseif targetNumber == count then
			lualib:SetDayInt(player, "activityDgr_BOSS", targetNumber)
			lualib:SetDayInt(player, "totalActivityDegree", lualib:GetDayInt(player, "totalActivityDegree") + gainActDgr )
			ActivityDegree_setFlag(player)
		end
	end
	-----------------ÿ�ջ�Ծ��BOSS��ɱͳ��END--------------------
	
end	



function GenMonster_ysax_dgwf()
    --�ж��м��ŵ�ͼ�ڱ�GS��
--[[
    local map_table = {{"����ڣ1", 0, 181, 59,  "Ѱ��С��1"},
                       {"������2", 0, 156, 274, "Ѱ��С��2"},
                       {"��ɽ��Ѩ1", 0, 280, 184,  "Ѱ��С��3"},
                       {"�����1", 0, 279, 240, "Ѱ��С��4"},
                       {"а��4", 0, 350, 161, "Ѱ��С��5"}}
    local map_count = 0
    for i = 1, table.getn(map_table) do
        if lualib:Map_IsInGS(map_table[i][1]) == true then
            map_count = map_count + 1
            map_table[i][2] = map_count
        end
    end
]]--

    if map_count == 0 then return "" end

    --�Ӵ����ڱ�GS�ĵ�ͼ�����ѡһ��
    lualib:GenRandom(1, map_count)
    local cur_map_index = lualib:GenRandom(1, map_count)
    local cur_map_keyname = ""
    for i = 1, table.getn(map_table) do
        if map_table[i][2] == cur_map_index then
            cur_map_keyname = map_table[i][1]
            cur_map_index = i
            break
        end
    end

    if cur_map_keyname == "" then return "" end

    --��������ĵ�ͼ��ˢ��
    local map = lualib:Map_GetMapGuid(cur_map_keyname)
    if map == "" then return "" end

    local monster = lualib:Map_GenSingleMonster(map, map_table[cur_map_index][3],map_table[cur_map_index][4], 16, 3,map_table[cur_map_index][5], true)
    if monster == "" then return "" end
    lualib:Print(cur_map_keyname.."��"..map_table[cur_map_index][5].."���ɳɹ������꣺["..map_table[cur_map_index][3].."��"..map_table[cur_map_index][4].."]��")
    return ""
end


function on_gp(player, gp_runtime, gp, diff_avg_tick)
    local content = "�밮����Ϸ������["..lualib:Name(player).."] ʹ����ң��ѱ�ϵͳ��¼�ڰ���"
    --lualib:SysMsg_SendWarnMsg(player, content)
    --lualib:SetFbdLogin(lualib:Name(player), 2, 600, content)
    --lualib:Player_Kick(player)
end

--[[function shijie_boss(guid, timer_id)
	
	local a = lualib:GenRandom(1, #map_name_table)
	local b = lualib:GenRandom(1, #map_name_table)
	local g = lualib:GenRandom(1, #map_name_table)
	local mon_name = "��ħ�����"
	local map_name = "����"
	local map_guid =  lualib:Map_GetMapGuid(map_name)
	local map_time_zdy = lualib:Map_GetCustomVarInt(map_guid, "map_time_zdy")
	local npc_time_zdy = lualib:Map_GetCustomVarInt(map_guid, "npc_time_zdy")

	local mon_ma_name1 = "��ѪҰ��"
	local mon_ma_name2 = "ϡ������"
	local map_time_ma_zdy = lualib:Map_GetCustomVarInt(map_guid, "map_time_ma_zdy")
	local quxiao_duyu_jc = lualib:Map_GetCustomVarInt(map_guid, "quxiao_duyu_jc")

	--local npc_guid = lualib:Map_GenNpc(map, "����ֿ����Ա", player_x, player_y, 1, 3)

	map_time_zdy = map_time_zdy + 60
	lualib:Map_SetCustomVarInt(map_guid, "map_time_zdy", map_time_zdy)

	map_time_ma_zdy = map_time_ma_zdy + 60
	lualib:Map_SetCustomVarInt(map_guid, "map_time_ma_zdy", map_time_ma_zdy)

	npc_time_zdy = npc_time_zdy + 60
	lualib:Map_SetCustomVarInt(map_guid, "npc_time_zdy", npc_time_zdy)

	for q, r in pairs(npc_timer_table) do
		if npc_time_zdy == r[1] then
			lualib:SysMsg_SendBroadcastColor("�����������������˽���"..r[2].."������ش�½��", "", 1, 12)
		end
	end

	if npc_time_zdy > 3593 then
		for n, m in pairs(map_name_table) do
			if a == n then
				local map = lualib:Map_GetMapGuid(m[1])
				local map_xy_table = lualib:MapRndPos(m[1])
				local map_x = map_xy_table["x"]
				local map_y = map_xy_table["y"]
				local npc_guid = lualib:Map_GenNpc(map, "��������", map_x, map_y, 1, 3)
				lualib:SysMsg_SendBroadcastColor("�����������������˽�����ش�½����Ե�����߿ɹ��������ֵ�ɽ��������������������ڡ�"..m[2].."���ȴ���Ե�ˣ���", "", 1, 12)
				lualib:Map_SetCustomVarInt(map_guid, "npc_time_zdy", 0)
			end
		end
	end

	if quxiao_duyu_jc == 0 then
		for i, p in pairs(timer_table) do
			if map_time_zdy == p[1] then
				lualib:SysMsg_SendBroadcastColor("����BOSS["..mon_name.."]����"..p[2].."������ش�½������ս����ʿ������׼����", "", 1, 12)
			end
		end

		if map_time_zdy == 10800 then
			for k, v in pairs(map_name_table) do
				if b == k then
					local map = lualib:Map_GetMapGuid(v[1])
					local map_xy_table = lualib:MapRndPos(v[1])
					local map_x = map_xy_table["x"]
					local map_y = map_xy_table["y"]
					lualib:Map_GenSingleMonster(map, map_x, map_y, 1, 1, mon_name, false)
					lualib:SysMsg_SendBroadcastColor("����BOSS["..mon_name.."]�����ڵ�ͼ"..v[2].."������ս����ʿ��Ѹ��ǰ����ɱ��", "", 1, 12)
					lualib:Map_SetCustomVarInt(map_guid, "quxiao_duyu_jc", 1)
				end
			end
		end
	end

	for c, d in pairs(ma_timer_table) do
		if map_time_ma_zdy == d[1] then
			lualib:SysMsg_SendBroadcastColor("����ϡ�����ｫ��"..d[2].."���Ӻ�����ش�½��ֻ��һֻŶ������ǲ�׽���ĺ�ʱ��Ŷ��", "", 1, 12)
		end
	end

	if map_time_ma_zdy > 27898 then	--7.75Сʱ
		for e, f in pairs(map_name_table) do
			if g == e then
				local map = lualib:Map_GetMapGuid(f[1])
				lualib:Map_BatchGenMonster(map, mon_ma_name1, 0, false)
				lualib:Map_BatchGenMonster(map, mon_ma_name2, 1, false)
				lualib:SysMsg_SendBroadcastColor("����ϡ�������������ش�½�ġ�"..f[2].."����ֻ��һֻŶ����Ҫ��׽����Ӣ��ץ��ʱ���ˡ�", "", 1, 12)
				lualib:Map_SetCustomVarInt(map_guid, "map_time_ma_zdy", 0)
			end
		end
	end
	
end--]]


function on_add_exp(player, exp)
    process_item_add_exp(player, tonumber(exp))
    process_horse_add_exp(player, tonumber(exp))
end

function check_player_login(player)
	--lualib:SysPromptMsg(player, "player first login")
    local last_login_day = lualib:Player_GetCustomVarInt(player, "last_login_day")

    local now = lualib:GetAllDays(0)

    local off_day = now - last_login_day

    if off_day >= 1 then
  
        --��¼���ۼ�
        local cur_days = lualib:Player_GetCustomVarInt(player, "login_days")
        lualib:Player_SetCustomVarInt(player, "login_days", cur_days + 1)
    end
	
    lualib:Player_SetCustomVarInt(player, "last_login_day", now)
	lualib:OnGloryTrigger(player, lua_glory_trigger_Login, "", 0, "", "")

	lualib:AddTimer(player, 0, 60000, -1, "CheckOnlineTimer")

	local player_guild = lualib:GuildGuid(player)

	if player_guild ~= "0" and player_guild ~= "" then--��ɫ����ʱ�ж��Ƿ����л�
		lualib:OnGloryTrigger(player, lua_glory_trigger_join_family, "", 0, "", "")
		--lualib:Print("��ҵ��л�"..player_guild.."")
	end
	-----������ҵ�¼��������Ӣ��
	local heroTB = {"������", "ʥ����", "ŭ����", "��Х��"}
	local loginDaynum = lualib:GetInt(player,"login_days")
	local player_Name = lualib:Name(player)
	
	------��¼�����ﵽҪ�󴴽�Ӣ��
	if lualib:GetDayInt(player,"is_Created") == 0 then           
		if loginDaynum <=3 or loginDaynum == 5 then
			if loginDaynum == 5 then
				loginDaynum = 4
			end
			if lualib:CreateHeroForPlayer(player,heroTB[loginDaynum].."��"..player_Name.."��",1,1, "","") then
				--lualib:SysPromptMsg(player, "create?????")
				lualib:SetInt(player,"viaVipLv_CreateHero"..loginDaynum,1)
			end
		end
		lualib:SetDayInt(player,"is_Created",1)
	end
	-----vip�ȼ��ﵽҪ�󴴽�Ӣ��
	createHeroViaVipLv(player)
end

function createHeroViaVipLv(player)
	-----vip�ȼ��ﵽҪ�󴴽�Ӣ��
	local player_Name = lualib:Name(player)
	local heroTB = {
				{"������","����ս��","����ս��","����ͷ��","��������","��������"},
				{"ʥ����","ʥ��ս��","ʥ��ս��","ʥ��ͷ��","ʥ������","ʥ������"},
				{"ŭ����","����ս��","����ս��","����ͷ��","��������","��������"},
				{"��Х��","��������ս��","��������ս��","��������ͷ��","������������","������������"}
					}
	local vipLevel = lualib:GetVipLevel(player)
	if lualib:GetInt(player,"viaVipLv_CreateHero2") == 0 then
		if vipLevel >= 1 then
			if lualib:CreateHeroForPlayer(player,heroTB[2][1].."��"..player_Name.."��",1,1, "","") then
				lualib:SetInt(player,"viaVipLv_CreateHero2",1)
			end
		end
	end	
	if lualib:GetInt(player,"viaVipLv_CreateHero3") == 0 then
		if vipLevel >= 2 then
			if lualib:CreateHeroForPlayer(player,heroTB[3][1].."��"..player_Name.."��",1,1, "","") then
				lualib:SetInt(player,"viaVipLv_CreateHero3",1)
			end
		end
	end
	if lualib:GetInt(player,"viaVipLv_CreateHero4") == 0 then
		if vipLevel >= 3 then
			if lualib:CreateHeroForPlayer(player,heroTB[4][1].."��"..player_Name.."��",1,1, "","") then
				lualib:SetInt(player,"viaVipLv_CreateHero4",1)
			end
		end
	end
end

function CheckOnlineTimer(player, timer_id)
    lualib:OnGloryTrigger(player, lua_glory_trigger_OnlineTime, "", 0, "", "")
end


--[[function chuandaiqian(player, item, item_id, item_keyname)
	if lualib:Item_GetSubType(player, item) == 10 then
		if item_keyname == "�����ر����" then
			lualib:AddBuff(player, "����", 0)
		elseif item_keyname == "������������" then
			lualib:AddBuff(player, "����", 0)
		end
	else
		return
	end
end--]]

--[[function tuozhuangbei(player, item, item_id, item_keyname)
	if lualib:Item_GetSubType(player, item) == 10 then
		if item_keyname == "�����ر����" then
			lualib:DelBuff(player, "����")
		elseif item_keyname == "������������" then
			lualib:DelBuff(player, "����")
		end
	end
	
	--ͬ��ѫ��
	local xz_table = {"ͬ��ѫ��һ��", "ͬ��ѫ�¶���", "ͬ��ѫ������", "ͬ��ѫ���ļ�", "ͬ��ѫ���弶", "ͬ��ѫ������" }
	for i = 1, #xz_table do
		if item_keyname == xz_table[i] then
			lualib:DelBuff(player, "ͬ������")
			break
		end
	end
	return
end
--]]

function starWarTime(guid, id, times)
    local familys = lualib:GetAllFamilys()
    local familys_str = ""
    for _, v in pairs(familys) do
        familys_str = familys_str..v.."&"
    end
    
    if not lualib:StartCastleWar("����", familys_str, times, 7200) == false then
        return false
    end
end

--------------ɱ�˻ص�------------------
function on_trigger_kill(killer, victim)
	victim_name = lualib:KeyName(victim)
	local kill_ren_name = lualib:Name(killer)
	local victim_ren_name = lualib:Name(victim)
	
	if lualib:Player_IsPlayer(victim) == true	then
		victim_family_name = lualib:GetFamilyName(victim)
	end
	
	if 	victim_family_name ~= "" then
		if lualib:Player_IsPlayer(victim) == true then
			local killnotice = "���⣡#COLORCOLOR_BROWN#["..kill_ren_name.."]#COLORCOLOR_YELLOW#���ɽ�����#COLORCOLOR_BROWN#��"..victim_family_name.."��#COLORCOLOR_YELLOW#�л��#COLORCOLOR_BROWN#["..victim_ren_name.."]#COLORCOLOR_YELLOW#�̵��ڽ��£�"
			local killnotice1 = "���⣡#COLORCOLOR_BROWN#["..kill_ren_name.."]#COLORCOLOR_YELLOW#���ɽ�����#COLORCOLOR_BROWN#��"..victim_family_name.."��#COLORCOLOR_YELLOW#�л��#COLORCOLOR_BROWN#["..victim_ren_name.."]#COLORCOLOR_YELLOW#�̵��ڽ���"
			--lualib:SysMsg_SendCenterMsg(1, killnotice, "")
			lualib:SysMsg_SendBroadcastColor(killnotice1, "", 1, 0)
		end
	else
		if lualib:Player_IsPlayer(victim) == true then
			local killnotice = "���⣡#COLORCOLOR_BROWN#["..kill_ren_name.."]#COLORCOLOR_YELLOW#���ɽ�����#COLORCOLOR_BROWN#["..victim_ren_name.."]#COLORCOLOR_YELLOW#�̵��ڽ��£�"
			local killnotice1 = "���⣡#COLORCOLOR_BROWN#["..kill_ren_name.."]#COLORCOLOR_YELLOW#���ɽ�����#COLORCOLOR_BROWN#["..victim_ren_name.."]#COLORCOLOR_YELLOW#�̵��ڽ���"
			--lualib:SysMsg_SendCenterMsg(1, killnotice, "")
			lualib:SysMsg_SendBroadcastColor(killnotice1, "", 1, 0)
		end
	end
	
	------�ж��Ƿ�Ϊ������
	if lualib:Player_IsPlayer(killer) == true then
		shaguaichufa(killer,victim) --����ɱ��ִ��
	elseif lualib:Monster_IsMonster(killer) == true then
		local player_name = lualib:Monster_GetMaster(killer)
		if player_name ~= "" then
			local player_guild = lualib:Name2Guid(player_name)
			shaguaichufa(player_guild,victim) --����ɱ��ִ��
		end
	end
	
end


function shaguaichufa(killer,victim)
--[[
	local victim_name = lualib:KeyName(victim)
	local kill_ren_name = lualib:Name(killer)
	local victim_ren_name = lualib:Name(victim)
	
	if lualib:Monster_IsMonster(victim) and lualib:Monster_Type(victim_name) == 2 then
		--Ŀ��ϵͳ����ɱ1ֻ��Ӣ��
		if lualib:GetInt(killer,"mubiao_chumo_1") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_chumo_shuliang") + 1
			
			if shuliang >= 1 then
				lualib:SetInt(killer,"mubiao_chumo_1",1)
				lualib:SysMsg_SendBoardMsg(killer, "Ŀ��׷��", "����ɱ1ֻ��Ӣ�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"����ɱ1ֻ��Ӣ�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�")
				lualib:SetInt(killer,"mubiao_chumo",lualib:GetInt(killer,"mubiao_chumo")+1) --��ħ����+1
			end
			lualib:SetInt(killer,"mubiao_chumo_shuliang",shuliang)
		--Ŀ��ϵͳ����ɱ10ֻ��Ӣ��
		elseif lualib:GetInt(killer,"mubiao_chumo_2") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_chumo_shuliang") + 1
			
			if shuliang >= 10 then
				lualib:SetInt(killer,"mubiao_chumo_2",1)
				lualib:SysMsg_SendBoardMsg(killer, "Ŀ��׷��", "����ɱ10ֻ��Ӣ�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"����ɱ10ֻ��Ӣ�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�")
				lualib:SetInt(killer,"mubiao_chumo",lualib:GetInt(killer,"mubiao_chumo")+1) --��ħ����+1
			end
			lualib:SetInt(killer,"mubiao_chumo_shuliang",shuliang)
		--Ŀ��ϵͳ����ɱ100ֻ��Ӣ��
		elseif lualib:GetInt(killer,"mubiao_chumo_3") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_chumo_shuliang") + 1
			
			if shuliang >= 100 then
				lualib:SetInt(killer,"mubiao_chumo_3",1)
				lualib:SysMsg_SendBoardMsg(killer, "Ŀ��׷��", "����ɱ100ֻ��Ӣ�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"����ɱ100ֻ��Ӣ�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�")
				lualib:SetInt(killer,"mubiao_chumo",lualib:GetInt(killer,"mubiao_chumo")+1) --��ħ����+1
			end
			lualib:SetInt(killer,"mubiao_chumo_shuliang",shuliang)
		--Ŀ��ϵͳ����ɱ500ֻ��Ӣ��
		elseif lualib:GetInt(killer,"mubiao_chumo_4") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_chumo_shuliang") + 1
			
			if shuliang >= 500 then
				lualib:SetInt(killer,"mubiao_chumo_4",1)
				lualib:SysMsg_SendBoardMsg(killer, "Ŀ��׷��", "����ɱ500ֻ��Ӣ�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"����ɱ500ֻ��Ӣ�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�")
				lualib:SetInt(killer,"mubiao_chumo",lualib:GetInt(killer,"mubiao_chumo")+1) --��ħ����+1
			end
			lualib:SetInt(killer,"mubiao_chumo_shuliang",shuliang)
		--Ŀ��ϵͳ����ɱ1000ֻ��Ӣ��
		elseif lualib:GetInt(killer,"mubiao_chumo_5") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_chumo_shuliang") + 1
			
			if shuliang >= 1000 then
				lualib:SetInt(killer,"mubiao_chumo_5",1)
				lualib:SysMsg_SendBoardMsg(killer, "Ŀ��׷��", "����ɱ1000ֻ��Ӣ�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"����ɱ1000ֻ��Ӣ�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�")
				lualib:SetInt(killer,"mubiao_chumo",lualib:GetInt(killer,"mubiao_chumo")+1) --��ħ����+1
			end
			lualib:SetInt(killer,"mubiao_chumo_shuliang",shuliang)
		--Ŀ��ϵͳ����ɱ2000ֻ��Ӣ��
		elseif lualib:GetInt(killer,"mubiao_chumo_6") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_chumo_shuliang") + 1
			
			if shuliang >= 2000 then
				lualib:SetInt(killer,"mubiao_chumo_6",1)
				lualib:SysMsg_SendBoardMsg(killer, "Ŀ��׷��", "����ɱ2000ֻ��Ӣ�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"����ɱ2000ֻ��Ӣ�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�")
				lualib:SetInt(killer,"mubiao_chumo",lualib:GetInt(killer,"mubiao_chumo")+1) --��ħ����+1
			end
			lualib:SetInt(killer,"mubiao_chumo_shuliang",shuliang)
		--Ŀ��ϵͳ����ɱ5000ֻ��Ӣ��
		elseif lualib:GetInt(killer,"mubiao_chumo_7") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_chumo_shuliang") + 1
			
			if shuliang >= 5000 then
				lualib:SetInt(killer,"mubiao_chumo_7",1)
				lualib:SysMsg_SendBoardMsg(killer, "Ŀ��׷��", "����ɱ5000ֻ��Ӣ�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"����ɱ5000ֻ��Ӣ�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�")
				lualib:SetInt(killer,"mubiao_chumo",lualib:GetInt(killer,"mubiao_chumo")+1) --��ħ����+1
			end
			lualib:SetInt(killer,"mubiao_chumo_shuliang",shuliang)
		--Ŀ��ϵͳ����ɱ10000ֻ��Ӣ��
		elseif lualib:GetInt(killer,"mubiao_chumo_8") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_chumo_shuliang") + 1
			
			if shuliang >= 10000 then
				lualib:SetInt(killer,"mubiao_chumo_8",1)
				lualib:SysMsg_SendBoardMsg(killer, "Ŀ��׷��", "����ɱ10000ֻ��Ӣ�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"����ɱ10000ֻ��Ӣ�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�")
				lualib:SetInt(killer,"mubiao_chumo",lualib:GetInt(killer,"mubiao_chumo")+1) --��ħ����+1
			end
			lualib:SetInt(killer,"mubiao_chumo_shuliang",shuliang)
		end
	end
	
	if lualib:Monster_IsMonster(victim) and lualib:Monster_Type(victim_name) == 4 then
		--Ŀ��ϵͳ����ɱ1ֻboss��
		if lualib:GetInt(killer,"mubiao_boss_1") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_boss_shuliang") + 1
			
			if shuliang >= 1 then
				lualib:SetInt(killer,"mubiao_boss_1",1)
				lualib:SysMsg_SendBoardMsg(killer, "Ŀ��׷��", "����ɱ1ֻboss�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"����ɱ1ֻboss�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�")
				lualib:SetInt(killer,"mubiao_boss",lualib:GetInt(killer,"mubiao_boss")+1) --boss����+1
			end
			lualib:SetInt(killer,"mubiao_boss_shuliang",shuliang)
		--Ŀ��ϵͳ����ɱ10ֻboss��
		elseif lualib:GetInt(killer,"mubiao_boss_2") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_boss_shuliang") + 1
			
			if shuliang >= 10 then
				lualib:SetInt(killer,"mubiao_boss_2",1)
				lualib:SysMsg_SendBoardMsg(killer, "Ŀ��׷��", "����ɱ10ֻboss�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"����ɱ10ֻboss�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�")
				lualib:SetInt(killer,"mubiao_boss",lualib:GetInt(killer,"mubiao_boss")+1) --boss����+1
			end
			lualib:SetInt(killer,"mubiao_boss_shuliang",shuliang)
		--Ŀ��ϵͳ����ɱ50ֻboss��
		elseif lualib:GetInt(killer,"mubiao_boss_3") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_boss_shuliang") + 1
			
			if shuliang >= 50 then
				lualib:SetInt(killer,"mubiao_boss_3",1)
				lualib:SysMsg_SendBoardMsg(killer, "Ŀ��׷��", "����ɱ50ֻboss�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"����ɱ50ֻboss�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�")
				lualib:SetInt(killer,"mubiao_boss",lualib:GetInt(killer,"mubiao_boss")+1) --boss����+1
			end
			lualib:SetInt(killer,"mubiao_boss_shuliang",shuliang)
		--Ŀ��ϵͳ����ɱ100ֻboss��
		elseif lualib:GetInt(killer,"mubiao_boss_4") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_boss_shuliang") + 1
			
			if shuliang >= 100 then
				lualib:SetInt(killer,"mubiao_boss_4",1)
				lualib:SysMsg_SendBoardMsg(killer, "Ŀ��׷��", "����ɱ100ֻboss�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"����ɱ100ֻboss�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�")
				lualib:SetInt(killer,"mubiao_boss",lualib:GetInt(killer,"mubiao_boss")+1) --boss����+1
			end
			lualib:SetInt(killer,"mubiao_boss_shuliang",shuliang)
		--Ŀ��ϵͳ����ɱ200ֻboss��
		elseif lualib:GetInt(killer,"mubiao_boss_5") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_boss_shuliang") + 1
			
			if shuliang >= 200 then
				lualib:SetInt(killer,"mubiao_boss_5",1)
				lualib:SysMsg_SendBoardMsg(killer, "Ŀ��׷��", "����ɱ200ֻboss�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"����ɱ200ֻboss�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�")
				lualib:SetInt(killer,"mubiao_boss",lualib:GetInt(killer,"mubiao_boss")+1) --boss����+1
			end
			lualib:SetInt(killer,"mubiao_boss_shuliang",shuliang)
		--Ŀ��ϵͳ����ɱ500ֻboss��
		elseif lualib:GetInt(killer,"mubiao_boss_6") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_boss_shuliang") + 1
			
			if shuliang >= 500 then
				lualib:SetInt(killer,"mubiao_boss_6",1)
				lualib:SysMsg_SendBoardMsg(killer, "Ŀ��׷��", "����ɱ500ֻboss�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"����ɱ500ֻboss�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�")
				lualib:SetInt(killer,"mubiao_boss",lualib:GetInt(killer,"mubiao_boss")+1) --boss����+1
			end
			lualib:SetInt(killer,"mubiao_boss_shuliang",shuliang)
		--Ŀ��ϵͳ����ɱ1000ֻboss��
		elseif lualib:GetInt(killer,"mubiao_boss_7") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_boss_shuliang") + 1
			
			if shuliang >= 1000 then
				lualib:SetInt(killer,"mubiao_boss_7",1)
				lualib:SysMsg_SendBoardMsg(killer, "Ŀ��׷��", "����ɱ1000ֻboss�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"����ɱ1000ֻboss�֡��Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�")
				lualib:SetInt(killer,"mubiao_boss",lualib:GetInt(killer,"mubiao_boss")+1) --boss����+1
			end
			lualib:SetInt(killer,"mubiao_boss_shuliang",shuliang)
		end
	end
]]--
end



--���������

-- �����ж�

 --[[function on_ride_request(player)
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

local rongyaozhuangbei = {
["ս��֤֮1"] = 1000,
["ս��֤֮2"] = 5000,
["ս��֤֮3"] = 15000,
["Ѫ��֮ѥ"] = 15000,
["ս��֤֮4"] = 32000,
["Ѫ�껤��(��)"] = 32000,
["Ѫ�껤��(ʥ)"] = 32000,
["Ѫ��ͷ��"] = 32000,
["ս��֤֮5"] = 55000,
["Ѫ������"] = 55000,
["Ѫ���ָ(��)"] = 55000,
["Ѫ���ָ(ʥ)"] = 55000,
["ս��֤֮"] = 88000,
["����"] = 88000,
["ս�񱦼�(��)"] = 88000,
["ս�񱦼�(Ů)"] = 88000,
["����֤֮1"] = 1000,
["����֤֮2"] = 5000,
["����֤֮3"] = 15000,
["����֮ѥ"] = 15000,
["����֤֮4"] = 32000,
["���ǻ���(��)"] = 32000,
["���ǻ���(ʥ)"] = 32000,
["����ͷ��"] = 32000,
["����֤֮5"] = 55000,
["��������"] = 55000,
["���ǽ�ָ(��)"] = 55000,
["���ǽ�ָ(ʥ)"] = 55000,
["����֤֮"] = 88000,
["ŭ��"] = 88000,
["������(��)"] = 88000,
["������(Ů)"] = 88000,
["����֤֮1"] = 1000,
["����֤֮2"] = 5000,
["����֤֮3"] = 15000,
["����֮ѥ"] = 15000,
["����֤֮4"] = 32000,
["���令��(��)"] = 32000,
["���令��(ʥ)"] = 32000,
["����ͷ��"] = 32000,
["����֤֮5"] = 55000,
["��������"] = 55000,
["�����ָ(��)"] = 55000,
["�����ָ(ʥ)"] = 55000,
["����֤֮"] = 88000,
["��ʸ"] = 88000,
["������(��)"] = 88000,
["������(��)"] = 88000,
}
--]]
function GetPlayerPrompt(player)  --��ȡ���� 6������
	--local str = lualib:GetStr("epuip_dressed")
	local tb = {
				["a1"] = {}, --�﹥
				["a2"] = {}, --ħ��
				["a3"] = {},	--����
				["a4"] = {},	--���
				["a5"] = {}, --ħ��
				["a6"] = {}	--����
	}
	tb["a1"][1] = lualib:Attr(player, 11)
	tb["a1"][2] = lualib:Attr(player, 10)
	tb["a2"][1] = lualib:Attr(player, 13)
	tb["a2"][2] = lualib:Attr(player, 12)
	tb["a3"][1] = lualib:Attr(player, 15)
	tb["a3"][2] = lualib:Attr(player, 14)
	tb["a4"][1] = lualib:Attr(player, 7)
	tb["a4"][2] = lualib:Attr(player, 6)
	tb["a5"][1] = lualib:Attr(player, 9)
	tb["a5"][2] = lualib:Attr(player, 8)
	tb["a6"][1] = lualib:Attr(player, 3) 
	tb["a6"][2] = 0 
	return tb
end
--------------------------����װ��֮ǰ����-------------------------------------
function on_pre_equip(player,item,item_id,item_key)
	if lualib:Player_IsPlayer(player) then 
		local rein_level = lualib:GetInt(player,"reinLevel")
		local item_rein = lualib:GetInt(item,"item_rein")
		if rein_level < item_rein then
			lualib:SysMsg_SendBottomColor(player, "ת���ȼ�����,��Ʒʹ��ʧ����", 1, 11) 
			return false
		else
			local tb = GetPlayerPrompt(player)
			lualib:SetStr(player, "epuip_dressed", json.encode(tb))
			return true
		end	
	else	
		return true
	end
end
--------------------------����װ��֮�󴥷�-------------------------------------
function on_post_equip(player,item,item_id,item_key)

	--lualib:SysMsg_SendBottomColor(player, "����on_post_equip1", 1, 11)
    local item_subtype = lualib:Item_GetSubType("",item)  
    if item_subtype == 13 then
		local p_burstharm = lualib:GetInt(player,"burstharm")
		local i_burstharm = lualib:GetInt(item,"burstharm")
		lualib:SetInt(player,"burstharm", p_burstharm + i_burstharm)
		--lualib:NotifyVar(player, "burstharm")
		--lualib:SysMsg_SendBottomColor(player, ""..lualib:GetInt(player,"burstharm"), 1, 11)
    end
	----------------------��װ������������ʾSTART------------------------
	local Upgrade_Packs_Tab = {
["��˪������"] = 1, ["����ս������"] = 1, ["����������"] = 1, ["������������"] = 1, ["��ͭͷ��ս����"] = 1, ["���ָ����"] = 1, ["����ս������"] = 1,
["��������"] = 1, ["ħ������������"] = 1, ["��̴��������"] = 1, ["������������"] = 1, ["��ͭͷ��������"] = 1, ["���ǽ�ָ����"] = 1, ["ħ������Ů����"] = 1,
["��������"] = 1, ["���͵�������"] = 1, ["��ʿ��������"] = 1, ["�׽���������"] = 1, ["��ͭͷ��������"] = 1, ["�����ָ����"] = 1, ["���͵�������"] = 1,
["����������"] = 1, ["��������������"] = 1, ["������������"] = 1, ["ħ����������"] = 1, ["����ͷ��ս����"] = 1, ["������ħ��ָ����"] =1 , ["��������Ů����"] = 1,
["ħ������"] =1 , ["ħ������������"] = 1, ["˼������������"] = 1, ["��ħ����С����"] = 1, ["����ͷ��������"] = 1, ["���۽�ָ����"] = 1, ["ħ������Ů����"] = 1,
["��������"] = 1,["�����������"] = 1,["������������"] = 1,["��ɫˮ����������"] = 1,["��ʿͷ������"] = 1,["���½�ָ����"] = 1,["�����������"] = 1,
["�þ�����"] = 1,["ս������������"] = 1,["�����������"] = 1,["�������������"] = 1,["����ͷ������"] = 1,["������ָ����"] = 1,["ս������Ů����"] = 1,
["Ѫ������"] = 1,["��ħ����������"] = 1,["��֮��������"] = 1,["��ħ����������"] = 1,["ħ��ͷ������"] = 1,["�ϱ�������"] = 1,["��ħ����Ů����"] = 1,
["��������"] = 1,["���ɵ�������"] = 1,["������������"] = 1,["�����������"] = 1,["����ͷ��������"] = 1,["̩̹��ָ����"] = 1,["���ɵ�������"] = 1,
["��ʹ֮��"] = 1}
	
	if lualib:Player_IsPlayer(player) then 
		if Upgrade_Packs_Tab[tostring(item_key)] ~= 1 then
			local str = lualib:GetStr(player, "epuip_dressed")
			if str ~= "" then
				local pre_tb = json.decode(str)
				local post_tb = GetPlayerPrompt(player) 
				local phy_atk_min_D_value = 0   --��ֵ
				local phy_atk_max_D_value = 0   --��ֵ
				local mag_atk_min_D_value = 0   --��ֵ
				local mag_atk_max_D_value = 0   --��ֵ
				local tao_atk_min_D_value = 0   --��ֵ
				local tao_atk_max_D_value = 0   --��ֵ
				local phy_def_min_D_value = 0   --��ֵ
				local phy_def_max_D_value = 0   --��ֵ
				local mag_def_min_D_value = 0   --��ֵ
				local mag_def_max_D_value = 0   --��ֵ
				local HP_D_value = 0   --��ֵ
				if post_tb["a1"][1] - pre_tb["a1"][1] > 0 then
					phy_atk_min_D_value = post_tb["a1"][1] - pre_tb["a1"][1] --�﹥����
				end
				if post_tb["a1"][2] - pre_tb["a1"][2] > 0 then
					phy_atk_max_D_value = post_tb["a1"][2] - pre_tb["a1"][2] --�﹥����
				end
				if post_tb["a2"][1] - pre_tb["a2"][1] > 0 then
					mag_atk_min_D_value = post_tb["a2"][1] - pre_tb["a2"][1] --ħ������
				end
				if post_tb["a2"][2] - pre_tb["a2"][2] > 0 then
					mag_atk_max_D_value = post_tb["a2"][2] - pre_tb["a2"][2] --ħ������
				end
				if post_tb["a3"][1] - pre_tb["a3"][1] > 0 then
					tao_atk_min_D_value = post_tb["a3"][1] - pre_tb["a3"][1] --��������
				end
				if post_tb["a3"][2] - pre_tb["a3"][2] > 0 then
					tao_atk_max_D_value = post_tb["a3"][2] - pre_tb["a3"][2] --��������
				end
				if post_tb["a4"][1] - pre_tb["a4"][1] > 0 then
					phy_def_min_D_value = post_tb["a4"][1] - pre_tb["a4"][1] --�������
				end
				if post_tb["a4"][2] - pre_tb["a4"][2] > 0 then
					phy_def_max_D_value = post_tb["a4"][2] - pre_tb["a4"][2] --�������
				end
				if post_tb["a5"][1] - pre_tb["a5"][1] > 0 then
					mag_def_min_D_value = post_tb["a5"][1] - pre_tb["a5"][1] --ħ������
				end
				if post_tb["a5"][2] - pre_tb["a5"][2] > 0 then
					mag_def_max_D_value = post_tb["a5"][2] - pre_tb["a5"][2] --ħ������
				end
				if post_tb["a6"][1] - pre_tb["a6"][1] > 0 then
					HP_D_value = post_tb["a6"][1] - pre_tb["a6"][1] --����
				end
				
				local tb = {
							["a1"] = {}, --�﹥(���ޣ�����)
							["a2"] = {}, --ħ��
							["a3"] = {},	--����
							["a4"] = {},	--���
							["a5"] = {}, --ħ��
							["a6"] = {}	--����
				}

				tb["a1"][1] = phy_atk_min_D_value
				tb["a1"][2] = phy_atk_max_D_value
				tb["a2"][1] = mag_atk_min_D_value
				tb["a2"][2] = mag_atk_max_D_value
				tb["a3"][1] = tao_atk_min_D_value
				tb["a3"][2] = tao_atk_max_D_value
				tb["a4"][1] = phy_def_min_D_value
				tb["a4"][2] = phy_def_max_D_value
				tb["a5"][1] = mag_def_min_D_value
				tb["a5"][2] = mag_def_max_D_value
				tb["a6"][1] = HP_D_value
				tb["a6"][2] = 0	
				if not (tb["a1"][1] <= 0 and tb["a1"][2] <= 0 and tb["a2"][1] <= 0 and tb["a2"][2] <= 0 and tb["a3"][1] <= 0 and tb["a3"][2] <= 0 and tb["a4"][1] <= 0 and tb["a4"][2] <= 0 and tb["a5"][1] <= 0 and tb["a5"][2] <= 0 and tb["a6"][1] <= 0) then
					
					local tab = ""
					for i=1,6 do
						tab = tab .. i .. ","
						tab = tab .. tb["a"..i][1] .. ","
						if i == 6 then
							tab = tab .. tb["a"..i][2]
						else
							tab = tab .. tb["a"..i][2] .. "#"
						end
					end
					
					local param = tab
					local loadnum = lualib:GetInt(player,"loadnum")
					loadform(player,""..param)
					lualib:SetInt(player,"loadnum",loadnum + 1)
				end
			end	
		end
	end
	
	if lualib:HasQuest(player, 74) then
		--lualib:SysPromptMsg(player, "��76������") 
		local wing_l = lualib:GetInt(player,"wing_level")
		if wing_l >= 1 then
			lualib:SetQuestGroupHuntingsCount(player, 74, 444, 1)	
		end
		
	elseif lualib:HasQuest(player, 78) then
		--lualib:SysPromptMsg(player, "��76������") 
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 50 then 
					counts = counts + 1
					if counts >= 2 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 78, 444, counts)	
	elseif lualib:HasQuest(player, 81) then
		--lualib:SysPromptMsg(player, "��76������") 
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts >= 1 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 81, 444, counts)
		
	elseif lualib:HasQuest(player, 86) then
		--lualib:SysPromptMsg(player, "��76������") 
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts >= 2 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 86, 444, counts)
	elseif lualib:HasQuest(player, 87) then
		--lualib:SysPromptMsg(player, "��76������") 
		local level = lualib:GetInt(player,"xuefu_level")
		if level >= 2 then
			lualib:SetQuestGroupHuntingsCount(player, 87, 444, 1)	
		end
	elseif lualib:HasQuest(player, 89) then
		--lualib:SysPromptMsg(player, "��76������") 
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts >= 4 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 89, 444, counts)
			
	
	elseif lualib:HasQuest(player, 89) then
		--lualib:SysPromptMsg(player, "��76������") 
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts >= 4 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 88, 444, counts)
		
	elseif lualib:HasQuest(player, 90) then
		--lualib:SysPromptMsg(player, "��76������") 
		local level = lualib:GetInt(player,"Ach_xunz")
		if level >= 2 then
			lualib:SetQuestGroupHuntingsCount(player, 90, 444, 1)	
		end
	elseif lualib:HasQuest(player, 92) then
		--lualib:SysPromptMsg(player, "��76������") 
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts >= 6 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 92, 444, counts)
	elseif lualib:HasQuest(player, 93) then
		--lualib:SysPromptMsg(player, "��76������") 
		local level = lualib:GetInt(player,"hudun_level")
		if level >= 2 then
			lualib:SetQuestGroupHuntingsCount(player, 93, 444, 1)	
		end
	elseif lualib:HasQuest(player, 10001) then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:Equip_GetRefineLevel(player, Guid)
				if Level >= 6 then 
					counts = counts + 1
					if counts >= 1 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 10001, 444, counts)
		
	end		
	
	
	--[[
	if lualib:HasQuest(player, 74) then
		--lualib:SysPromptMsg(player, "��76������") 
		local wing_l = lualib:GetInt(player,"wing_level")
		if wing_l >= 1 then
			lualib:SetQuestGroupHuntingsCount(player, 74, 444, 1)	
		end
		
	elseif lualib:HasQuest(player, 87) then
		--lualib:SysPromptMsg(player, "��76������") 
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts >= 2 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 87, 444, counts)
	elseif lualib:HasQuest(player, 89) then
		--lualib:SysPromptMsg(player, "��76������") 
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts >= 4 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 89, 444, counts)
		
	elseif lualib:HasQuest(player, 91) then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:Equip_GetRefineLevel(player, Guid)
				if Level > 6 then 
					counts = counts + 1
					if counts >= 1 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 91, 444, counts)
		
	elseif lualib:HasQuest(player, 94) then
		
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts >= 6 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 94, 444, counts)
		
	elseif lualib:HasQuest(player, 95) then
		--lualib:SysPromptMsg(player, "��76������") 
		local level = lualib:GetInt(player,"xuefu_level")
		if level >= 2 then
			lualib:SetQuestGroupHuntingsCount(player, 95, 444, 1)	
		end
		
	elseif lualib:HasQuest(player, 100) then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:Equip_GetRefineLevel(player, Guid)
				if Level >= 8 then 
					counts = counts + 1
					if counts >= 1 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 100, 444, counts)
		
	elseif lualib:HasQuest(player, 102) then
		--lualib:SysPromptMsg(player, "��76������") 
		local level = lualib:GetInt(player,"hudun_level")
		if level >= 2 then
			lualib:SetQuestGroupHuntingsCount(player, 102, 444, 1)	
		end
		
	elseif lualib:HasQuest(player, 103) then
		
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 70 then 
					counts = counts + 1
					if counts >= 2 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 103, 444, counts)
		
	elseif lualib:HasQuest(player, 105) then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:Equip_GetRefineLevel(player, Guid)
				if Level >= 8 then 
					counts = counts + 1
					if counts >= 2 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 105, 444, counts)
		
	elseif lualib:HasQuest(player, 107) then
		
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 70 then 
					counts = counts + 1
					if counts >= 4 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 107, 444, counts)
		
	elseif lualib:HasQuest(player, 109) then
		--lualib:SysPromptMsg(player, "��76������") 
		local level = lualib:GetInt(player,"Ach_xunz")
		if level >= 2 then
			lualib:SetQuestGroupHuntingsCount(player, 109, 444, 1)	
		end
		
	elseif lualib:HasQuest(player, 110) then
		--lualib:SysPromptMsg(player, "��76������") 
		local level = lualib:GetInt(player,"ach_level")
		if level >= 2 then
			lualib:SetQuestGroupHuntingsCount(player, 110, 444, 1)	
		end
		
	elseif lualib:HasQuest(player, 112) then
		
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 70 then 
					counts = counts + 1
					if counts >= 6 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 112, 444, counts)
		
	elseif lualib:HasQuest(player, 123) then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:Equip_GetRefineLevel(player, Guid)
				if Level >= 9 then 
					counts = counts + 1
					if counts >= 1 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 123, 444, counts)
		
	elseif lualib:HasQuest(player, 127) then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 80 then 
					counts = counts + 1
					if counts >= 2 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 127, 444, counts)
		
	elseif lualib:HasQuest(player, 134) then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 80 then 
					counts = counts + 1
					if counts >= 4 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 134, 444, counts)
		
	elseif lualib:HasQuest(player, 138) then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 80 then 
					counts = counts + 1
					if counts >= 6 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 138, 444, counts)
		
	elseif lualib:HasQuest(player, 142) then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:GetInt(Guid, "item_rein")
				if Level >= 1 then 
					counts = counts + 1
					if counts >= 2 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 142, 444, counts)
		
	elseif lualib:HasQuest(player, 144) then
		
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:GetInt(Guid, "item_rein")
				if Level >= 1 then 
					counts = counts + 1
					if counts >= 4 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 144, 444, counts)
		
	elseif lualib:HasQuest(player, 146) then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
			if Guid ~= "" then
				local Level = lualib:GetInt(Guid, "item_rein")
				if Level >= 1 then 
					counts = counts + 1
					if counts >= 6 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 146, 444, counts)
		
	elseif lualib:HasQuest(player, 148) then
		local Guid = lualib:Player_GetItemGuid(player,  5) --��ȡװ��λ����ƷGUID
		if Guid ~= "" then
			local Level = lualib:GetInt(Guid, "item_rein")
			if Level >= 1 then 
				lualib:SetQuestGroupHuntingsCount(player, 148, 444, 1)	
			end
		end
		
	elseif lualib:HasQuest(player, 150) then
		local Guid = lualib:Player_GetItemGuid(player,  1) --��ȡװ��λ����ƷGUID
		if Guid ~= "" then
			local Level = lualib:GetInt(Guid, "item_rein")
			if Level >= 1 then 
				lualib:SetQuestGroupHuntingsCount(player, 150, 444, 1)	
			end
		end
		
	end
	--]]
	
	
	----------------------��װ������������ʾEND--------------------------
	return true
end

function on_family_ntf(guid, name, type, player)
	if lualib:HasQuest(player, 97) then
		lualib:SetQuestGroupHuntingsCount(player, 97, 444, 1)
	end
end

function loadform(player,param)

	lualib:ShowFormWithContent(player, "���Ըı��", param)
end	
--------------------------��װ��֮�󴥷�-------------------------------------
function on_post_un_equip(player,item,item_id,item_key)
	--lualib:SysMsg_SendBottomColor(player, "����on_post_un_equip1", 1, 11)
    local item_subtype = lualib:Item_GetSubType("",item)
    if item_subtype == 13 then
		local p_burstharm = lualib:GetInt(player,"burstharm")
		local i_burstharm = lualib:GetInt(item,"burstharm")
		lualib:SetInt(player,"burstharm", p_burstharm - i_burstharm)
		--lualib:NotifyVar(player, "burstharm")
		--lualib:SysMsg_SendBottomColor(player, ""..lualib:GetInt(player,"burstharm"), 1, 11)
    end
	return true
end

--[[
function kaifutiren(player)
	lualib:Player_Kick(player)
	return true
end
--]]
--------------------------ʰȡ��Ʒ֮�󴥷�-------------------------------------
function on_tem_pickup(player,item,item_id,item_keyname)
	huanzhuang_yindao(player,item)
end


local hurt_map = {
					["��������һ��"] = 1,
					["�����������"] = 1,
					
					["��һ��"] = 1,
					["������"] = 1,
					["������"] = 1,
					
					["�°����ִ�"] = 1,
					
					["��򼶴һ��"] = 1,
					["��򼶴����"] = 1,
					["��򼶴����"] = 1,
					
					["��������һ��"] = 1,
					["�����������"] = 1,
					
					
				}

	--------�ܵ��˺�ǰ����-------------
function on_pre_harm(role, attacker, hp, defense, skill_key,isBurst)  --�������ߣ������ߣ�Ѫ�������Ӹ��ۣ�������ֵ�����ܣ�����
	
	if lualib:Player_IsPlayer(attacker) and tonumber(hp) < 0 and isBurst == 1 then      
		local _dv = lualib:GetInt(attacker,"burstharm") --������ 
		hp = tonumber(hp)-_dv 
		local job = lualib:Job(attacker)
		local hashorse = 0 
		if tonumber(job)== 1 then 
			hashorse = lualib:Attr(role, 124)
		else 
			hashorse = lualib:Attr(role, 122)
		end 
		hp = hp*(1-  hashorse/100)    
	end
	
	if lualib:Player_IsPlayer(attacker) and lualib:Player_IsPlayer(role) then 
		local att_level = lualib:Level(attacker)
		local role_level = lualib:Level(role)
		if att_level < 60 or role_level < 60 then  
			return -1
		end
	end
	
	
	local map_name = lualib:KeyName(lualib:MapGuid(role))
	if hurt_map[map_name] == nil then
		if hp > -50 then
			if lualib:Player_IsPlayer(role) then
				if lualib:Job(role) == 2 then
					hp = -math.random(15, 50)
				else
					hp = -math.random(50, 100)
				end
			end
		end
	end
	
	
	local role_name = lualib:KeyName(role)
	if role_name == "������������" or role_name == "����ħ������" then 
		return -1
	end
	return hp
end 


function SetDBNum_consumeTerm()
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	startServerTime_str = startServerTime_str:gsub("%d%d:%d%d:%d%d", "00:00:00")
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --����ʱ�䣨�룩
end