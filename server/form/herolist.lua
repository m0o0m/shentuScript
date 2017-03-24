local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

lualib:SetFormAllowFunc({"summon", "showlist", "quit", "setdefault"});

function Invoke(player, func, p1, p2, p3, p4, p5, p6, p7, p8, p9, pA, pB, pC, pD, pE, pF)
	if type(func) ~= "string" or func == "" then
		print("Invoke函数调用失败，函数名传递错误！")
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
			print("Invoke函数调用错误，函数类型参数不支持！")
		else
			print("Invoke函数调用错误，未知的参数类型！")
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
	
	lualib:ShowFormWithContent(player, "脚本表单", script)
end

--变量脚本化
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
		print("ValScript函数调用失败，参数类型未知："..val_type)
	end
	return "nil"
end

--将变量发送到客户端
function SendDataToClient(player, var_name, var_value)
	if type(var_name) ~= "string" or var_name == "" then
		print("SendDataToClient函数调用失败，参数名传递错误！")
	return end
	
	local script = var_name.."="..ValScript(var_value)
	lualib:ShowFormWithContent(player, "脚本表单", script)
end

function summon(player, hero)
	local hero_guid = hero;
	
    local heros = lualib:GetPlayerCurrentHeroList(player)
    if table.getn(heros) >= 1 then
        lualib:SysMsg_SendWarnMsg(player, "请先收回当前英雄")
        return ""
    end

    if hero_guid  == 0 or hero_guid  == "" or hero_guid  == "0" then
       hero_guid = lualib:GetStr(player, "dfhero")

       if hero_guid ~= "" then
			-- 检查默认英雄是否存在 begin --
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
			-- 检查默认英雄是否存在 end --
       end
	
       if hero_guid == "" then
           lualib:SysWarnMsg(player, "请先到英雄列表里面，设置默认召唤的英雄！")
           return ""
       end
    end

    local diff_tick = lualib:GetAllTime() - lualib:GetTempInt(player, "last_hero_tick");

    if diff_tick < 60 then
        lualib:SysWarnMsg(player, "英雄还有" .. (60 - diff_tick) .. "秒才能召唤!")
        return ""
    end

    lualib:GenHeroForPlayer(player, tostring(hero_guid), "SummonHeroResult", hero_guid)

    return ""
end

function SummonHeroResult(player, err, hero)
    if err == 0 then -- 召唤成功
        lualib:SysPromptMsg(player, "召唤英雄成功")
        lualib:SysPromptMsg(player, "提示：(英雄)状态更改：CTRL+E 指定攻击目标：CTRL+W  守护位置：CTRL+Q")

        lualib:SetHeroState(player, hero, 3)
        lualib:AddTrigger(hero, 317, "on_hero_die")
        lualib:DelayCall(hero, 1, "魔气血石:on_login", "")
    else -- 召唤失败
        lualib:SysMsg_SendWarnMsg(player, "召唤英雄失败：" .. err)
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
    
    if ret == false then -- 收回失败，玩家没这个英雄
        lualib:SysMsg_SendWarnMsg(player, "这个英雄没有激活,请小退下尝试")
    end

    return ""
end

function setdefault(player, hero)
    lualib:SetStr(player, "dfhero", hero);
    showlist(player)
    return ""
end