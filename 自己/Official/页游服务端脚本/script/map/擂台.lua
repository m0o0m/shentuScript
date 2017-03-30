local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local zhandou = {
					{
						{"1v1Name1", "1v1guid1"},
						{"1v1Name2", "1v1guid2"},
						{"1v1Name3", "1v1guid3"},
						{"1v1Name4", "1v1guid4"},
						{"1v1Name5", "1v1guid5"},
					},
					{
						{"5v5Name1", "5v5guid1"},
						{"5v5Name2", "5v5guid2"},
						{"5v5Name3", "5v5guid3"},
						{"5v5Name4", "5v5guid4"},
						{"5v5Name5", "5v5guid5"},
					},
					{
						{"10v10Name1", "10v10guid1"},
						{"10v10Name2", "10v10guid2"},
						{"10v10Name3", "10v10guid3"},
						{"10v10Name4", "10v10guid4"},
						{"10v10Name5", "10v10guid5"},
					},
				}

function on_map_create(map)
	lualib:AddTrigger(map,  lua_trigger_enter_map, "on_trigger_enter_map")
	lualib:AddTimerEx(map, 1, 60000, 50, "panding", "")
	lualib:SysMsg_SendMapMsg(map, "ս��ʱϵͳ���ظ��ж�����ս�������ʤ������������ڳ��ڵȴ�ϵͳʤ��������")
	return
end

function on_trigger_enter_map(player)
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.��Ӯ���֣�����Ӯ�ö��ֵĽ�ң�\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.���𽫻�ͨ���ʼ�����ʽ���͸���!\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.��Ӯ˭�Ľ�ң��Ͱ�˭�н����ɣ����еģ�����Եģ�^_^#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 310)
    return true
end

function on_map_destroy(map)
	local xinxi = lualib:GetStr(map, "shit")
	local xinxi_tbale = string.split(xinxi,"#")
	if xinxi ~= "" then
		lualib:Debug("��������ͼ���٣�")
		if types == 3 then
				lualib:MailToPlayer("��̨������Ա", xinxi_tbale[1], "ս������������ս��ƽ�֣�������Ѻע90%�Ĳʽ�", tonumber(xinxi_tbale[2])*90/100, 0, {})
				lualib:MailToPlayer("��̨������Ա", xinxi_tbale[3], "ս������������ս��ƽ�֣�������Ѻע90%�Ĳʽ�", tonumber(xinxi_tbale[2])*90/100, 0, {})
				for i = 1, #zhandou do
					for j = 1, #zhandou[i] do
						local value = lualib:IO_GetCustomVarStr(zhandou[i][j][2])
						if value == xinxi then
							lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
							lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
							break
						end
					end
				end	
			elseif types ==11 then
				lualib:MailToPlayer("��̨������Ա", xinxi_tbale[1], "ս������������ս��ƽ�֣�������Ѻע90%�Ĳʽ�", tonumber(xinxi_tbale[6])*90/100, 0, {})
				lualib:MailToPlayer("��̨������Ա", xinxi_tbale[7], "ս������������ս��ƽ�֣�������Ѻע90%�Ĳʽ�", tonumber(xinxi_tbale[6])*90/100, 0, {})
				for i = 1, #zhandou do
					for j = 1, #zhandou[i] do
						local value = lualib:IO_GetCustomVarStr(zhandou[i][j][2])
						if value == xinxi then
							lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
							lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
							break
						end
					end
				end	
			elseif types == 21 then
				lualib:MailToPlayer("��̨������Ա", xinxi_tbale[1], "ս������������ս��ƽ�֣�������Ѻע90%�Ĳʽ�", tonumber(xinxi_tbale[11])*90/100, 0, {})
				lualib:MailToPlayer("��̨������Ա", xinxi_tbale[12], "ս������������ս��ƽ�֣�������Ѻע90%�Ĳʽ�", tonumber(xinxi_tbale[11])*90/100, 0, {})
				for i = 1, #zhandou do
					for j = 1, #zhandou[i] do
						local value = lualib:IO_GetCustomVarStr(zhandou[i][j][2])
						if value == xinxi then
							lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
							lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
							break
						end
					end
				end	
			end
		end
	lualib:ClearTrigger(map)	
    return
end

function panding(map, id)
	local xinxi = lualib:GetStr(map, "shit")
	local xinxi_tbale = string.split(xinxi,"#")
	local ybweizhi = table.getn(xinxi_tbale)/2 + 1
	local a = lualib:GetInt(map, map) + 1
	lualib:SetInt(map, map, a)
	local a_renshu = 0
	local b_renshu = 0
	for k, v in pairs(xinxi_tbale) do
		local m_p = lualib:MapGuid(v)
		if map == m_p then
			if k < ybweizhi then
				a_renshu = a_renshu + 1
			elseif k > ybweizhi then
				b_renshu = b_renshu + 1
			end
		end
	end
	
	lualib:SysMsg_SendMapMsg(map, "ս��ʱϵͳ���ظ��ж�����ս�������ʤ������������ڳ��ڵȴ�ϵͳʤ��������")
	
	local types = table.getn(xinxi_tbale)
	--print(types)
	if types == 3 then
		--print(a)
		if a == 10 then
			lualib:AddTimerEx(map, 2, 10000, -1, "jiasu", "")
		end
	elseif types == 11 then
		if a == 20 then
			lualib:AddTimerEx(map, 2, 10000, -1, "jiasu", "")
		end
	elseif types == 21 then
		if a == 30 then
			lualib:AddTimerEx(map, 2, 10000, -1, "jiasu", "")
		end
	end
	
	
	if a_renshu > 0 and b_renshu <= 0 then
		--print(tonumber(xinxi_tbale[2]))
		lualib:MailToPlayer("��̨������Ա", xinxi_tbale[1], "ս����������Ӯ����ս����", tonumber(xinxi_tbale[2])*1.8, 0, {})
		for i = 1, #zhandou do
			for j = 1, #zhandou[i] do
				local value = lualib:IO_GetCustomVarStr(zhandou[i][j][2])
				if value == xinxi then
					lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
					lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
					break
				end
			end
		end	
		--print("aʤ��")
		lualib:Map_DestroyDgn(map)
		return 
	elseif b_renshu > 0 and a_renshu <= 0 then
		if types == 3 then
			lualib:MailToPlayer("��̨������Ա", xinxi_tbale[3], "ս����������Ӯ����ս����", tonumber(xinxi_tbale[2])*180/100, 0, {})
			for j = 1, #zhandou[1] do
				local value = lualib:IO_GetCustomVarStr(zhandou[1][j][2])
				if value == xinxi then
					lualib:IO_SetCustomVarStr(zhandou[1][j][2], "")
					lualib:IO_SetCustomVarStr(zhandou[1][j][1], "")
					break
				end
			end	
		elseif types == 11 then
			lualib:MailToPlayer("��̨������Ա", xinxi_tbale[7], "ս����������Ӯ����ս����", tonumber(xinxi_tbale[6])*180/100, 0, {})
			for j = 1, #zhandou[2] do
				local value = lualib:IO_GetCustomVarStr(zhandou[2][j][2])
				if value == xinxi then
					lualib:IO_SetCustomVarStr(zhandou[2][j][2], "")
					lualib:IO_SetCustomVarStr(zhandou[2][j][1], "")
					break
				end
			end
		elseif types == 21 then
			lualib:MailToPlayer("��̨������Ա", xinxi_tbale[12], "ս����������Ӯ����ս����", tonumber(xinxi_tbale[11])*180/100, 0, {})
			for j = 1, #zhandou[3] do
				local value = lualib:IO_GetCustomVarStr(zhandou[3][j][2])
				if value == xinxi then
					lualib:IO_SetCustomVarStr(zhandou[3][j][2], "")
					lualib:IO_SetCustomVarStr(zhandou[3][j][1], "")
					break
				end
			end
		end
		--print("bʤ��")
		lualib:Map_DestroyDgn(map)
		return
	elseif b_renshu == 0 and a_renshu == 0 then
		if types == 3 then
			lualib:MailToPlayer("��̨������Ա", xinxi_tbale[1], "ս������������ս��ƽ�֣�������Ѻע90%�Ĳʽ�", tonumber(xinxi_tbale[2])*90/100, 0, {})
			lualib:MailToPlayer("��̨������Ա", xinxi_tbale[3], "ս������������ս��ƽ�֣�������Ѻע90%�Ĳʽ�", tonumber(xinxi_tbale[2])*90/100, 0, {})
			for i = 1, #zhandou do
				for j = 1, #zhandou[i] do
					local value = lualib:IO_GetCustomVarStr(zhandou[i][j][2])
					if value == xinxi then
						lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
						lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
						break
					end
				end
			end	
		elseif types ==11 then
			lualib:MailToPlayer("��̨������Ա", xinxi_tbale[1], "ս������������ս��ƽ�֣�������Ѻע90%�Ĳʽ�", tonumber(xinxi_tbale[6])*90/100, 0, {})
			lualib:MailToPlayer("��̨������Ա", xinxi_tbale[7], "ս������������ս��ƽ�֣�������Ѻע90%�Ĳʽ�", tonumber(xinxi_tbale[6])*90/100, 0, {})
			for i = 1, #zhandou do
				for j = 1, #zhandou[i] do
					local value = lualib:IO_GetCustomVarStr(zhandou[i][j][2])
					if value == xinxi then
						lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
						lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
						break
					end
				end
			end	
		elseif types == 21 then
			lualib:MailToPlayer("��̨������Ա", xinxi_tbale[1], "ս������������ս��ƽ�֣�������Ѻע90%�Ĳʽ�", tonumber(xinxi_tbale[11])*90/100, 0, {})
			lualib:MailToPlayer("��̨������Ա", xinxi_tbale[12], "ս������������ս��ƽ�֣�������Ѻע90%�Ĳʽ�", tonumber(xinxi_tbale[11])*90/100, 0, {})
			for i = 1, #zhandou do
				for j = 1, #zhandou[i] do
					local value = lualib:IO_GetCustomVarStr(zhandou[i][j][2])
					if value == xinxi then
						lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
						lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
						break
					end
				end
			end	
		end
		lualib:Map_DestroyDgn(map)
		return
	end
	return
end
			
function jiasu(map, id)
	local player_table = lualib:Map_GetRegionPlayers(map, 32, 45, 30, true)
	if  #player_table == 0 then return end
	
	for _, v in pairs(player_table) do
		--print("aaaaa"..v)
		local CostHp = lualib:Hp(v, true) * 0.1
		local Hp = lualib:Hp(v, false) - CostHp
		local CostMp = lualib:Mp(v, true) * 0.1
		local Mp = lualib:Mp(v, false) - CostMp
		
		if Hp > 0 then
			lualib:SetHp(v, Hp, false)
		elseif Hp <= 0 then
			lualib:Kill(v)
		end
		
		if Mp > 0 then
			lualib:SetMp(v, Mp, false)
		end
	end
	return 
end