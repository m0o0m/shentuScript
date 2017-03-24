local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

lualib:SetFormAllowFunc({"summon", "showlist", "quit", "setdefault"});

function Invoke(player, func, p1, p2, p3, p4, p5, p6, p7, p8, p9, pA, pB, pC, pD, pE, pF)
	if type(func) ~= "string" or func == "" then
		print("Invoke��������ʧ�ܣ����������ݴ���")
	return end
	
	local t = {p1, p2, p3, p4, p5, p6, p7, p8, p9, pA, pB, pC, pD, pE, pF}
	local num = 0
	for i = 15, 1, -1 do
		if t[i] ~= nil then
			num = i
		break end
	end
	
	local pre_table_name = "server_unname"
	local pre_table_index = 1
	local pre_table_define = ""
	local script_param = ""
	
	for i = 1, num do
		local v = t[i]
		local val_type = type(v)
		
		local pre_param = ""
		local param = ""
		if val_type == "nil" then
			param = "nil"
		elseif val_type == "number" then
			param = tostring(v)
		elseif val_type == "string" then
			param = string.format("%q", v)
		elseif val_type == "table" then
			pre_param = "local "..pre_table_name..pre_table_index.."="..serialize(v)..";"
			param = pre_table_name..pre_table_index
			pre_table_index = pre_table_index + 1
		elseif val_type == "function" then
			print("Invoke�������ô��󣬺������Ͳ�����֧�֣�")
		else
			print("Invoke�������ô���δ֪�Ĳ������ͣ�")
		end
		if pre_param ~= "" then
			pre_table_define = pre_table_define..pre_param
		end
		if param ~= "" then
			if script_param == "" then
				script_param = script_param..param
			else
				script_param = script_param..","..param
			end
		end
	end
	
	local script = pre_table_define
	script = script..func.."("..script_param..")"
	
	lualib:ShowFormWithContent(player, "�ű���", script)
end

--�����ű���
function ValScript(val)
	local val_type = type(val)
	if val_type == "number" then
		return tostring(val)
	elseif val_type == "string" then
		return string.format("%q", val)
	elseif val_type == "table" then
		return serialize(val)
	elseif val_type == "nil" then
		return "nil"
	else
		print("ValScript��������ʧ�ܣ���������δ֪��"..val_type)
	end
	return "nil"
end

--���������͵��ͻ���
function SendDataToClient(player, var_name, var_value)
	if type(var_name) ~= "string" or var_name == "" then
		print("SendDataToClient��������ʧ�ܣ����������ݴ���")
	return end
	
	local script = var_name.."="..ValScript(var_value)
	lualib:ShowFormWithContent(player, "�ű���", script)
end

function summon(player, hero)
	local hero_guid = hero;
	
    local heros = lualib:GetPlayerCurrentHeroList(player)
    if table.getn(heros) >= 1 then
        lualib:SysMsg_SendWarnMsg(player, "�����ջص�ǰӢ��")
        return ""
    end

    if hero_guid  == 0 or hero_guid  == "" or hero_guid  == "0" then
       hero_guid = lualib:GetStr(player, "dfhero")

       if hero_guid ~= "" then
			-- ���Ĭ��Ӣ���Ƿ���� begin --
			local b_find = false
			local heros = lualib:GetPlayerHeroList(player)
			for i = 1, #heros do
			   if heros[i]["guid"] == hero_guid then
				   b_find = true
			   end
			end

			if b_find == false and table.getn(heros) > 0 then
			   hero_guid = heros[1]["guid"]
			   lualib:SetStr(player, "dfhero", hero_guid);
			end
			-- ���Ĭ��Ӣ���Ƿ���� end --
       end
	
       if hero_guid == "" then
           lualib:SysWarnMsg(player, "���ȵ�Ӣ���б����棬����Ĭ���ٻ���Ӣ�ۣ�")
           return ""
       end
    end

    local diff_tick = lualib:GetAllTime() - lualib:GetTempInt(player, "last_hero_tick");

    if diff_tick < 60 then
        lualib:SysWarnMsg(player, "Ӣ�ۻ���" .. (60 - diff_tick) .. "������ٻ�!")
        return ""
    end

    lualib:GenHeroForPlayer(player, tostring(hero_guid), "SummonHeroResult", hero_guid)

    return ""
end

function SummonHeroResult(player, err, hero)
    if err == 0 then -- �ٻ��ɹ�
        lualib:SysPromptMsg(player, "�ٻ�Ӣ�۳ɹ�")
        lualib:SysPromptMsg(player, "��ʾ��(Ӣ��)״̬���ģ�CTRL+E ָ������Ŀ�꣺CTRL+W  �ػ�λ�ã�CTRL+Q")

        lualib:SetHeroState(player, hero, 3)
        lualib:AddTrigger(hero, 317, "on_hero_die")
        lualib:DelayCall(hero, 1, "ħ��Ѫʯ:on_login", "")
    else -- �ٻ�ʧ��
        lualib:SysMsg_SendWarnMsg(player, "�ٻ�Ӣ��ʧ�ܣ�" .. err)
    end
end

function on_hero_die(hero)
    lualib:DelayCall(hero, 3000, "on_hero_die_delay", "")
end

function on_hero_die_delay(hero)
    local player = lualib:GetHeroLord(hero)

    if player ~= "" then
        lualib:SetTempInt(player, "last_hero_tick", lualib:GetAllTime())
    end
end

function showlist(player)
	local heros = lualib:GetPlayerHeroList(player)
	local default_hero = lualib:GetStr(player, "dfhero");
	Invoke(player, "HeroList.OnRecvData", heros, default_hero)
	--lualib:ShowFormWithContent(player, "herolist", serialize(heros))
	return ""
end

function quit(player, hero)
    local heros = lualib:GetPlayerCurrentHeroList(player)
    local ret = false
    for i = 1, #heros do
        if hero == heros[i] then
            lualib:SetTempInt(player, "last_hero_tick", lualib:GetAllTime())
            lualib:DestroyDummy(hero)
            ret = true
        end
    end
    
    if ret == false then -- �ջ�ʧ�ܣ����û���Ӣ��
        lualib:SysMsg_SendWarnMsg(player, "���Ӣ��û�м���,��С���³���")
    end

    return ""
end

function setdefault(player, hero)
    lualib:SetStr(player, "dfhero", hero);
    showlist(player)
    return ""
end