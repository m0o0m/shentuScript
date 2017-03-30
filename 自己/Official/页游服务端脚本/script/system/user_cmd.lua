local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/master")

function trim(s)
    return (string.gsub(s, "^%s*(.-)%s*$", "%1"))
end

-------------------------------------------------------
-- 参数:待分割的字符串,分割字符
-- 返回:子串表.(含有空串)
function lua_string_split(str, split_char)
    local sub_str_tab = {};
    while (true) do
        local pos = string.find(str, split_char);
        if (not pos) then
            sub_str_tab[#sub_str_tab + 1] = str;
            break;
        end
        local sub_str = string.sub(str, 1, pos - 1);
        sub_str_tab[#sub_str_tab + 1] = sub_str;
        str = string.sub(str, pos + 1, #str);
    end

    return sub_str_tab;
end

function split(str,delim)  
    local i,j,k  
    local t = {}  
    k = 1  
    while true do  
        i,j = string.find(str,delim,k)  
        if i == nil then  
            table.insert(t,string.sub(str,k))  
            return t  
        end  
        table.insert(t,string.sub(str,k,i - 1))  
        k = j + 1  
    end  
end  

--用户指令例子
function refine(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	
    local item = lualib:Item_GetBySite(player, 22)
    if item == nil then
        lualib:SysMsg_SendPromptMsg(player, "物品不存在")
        return false
    end

    if lualib:Item_GetType(player, item) ~= 1 then
        return false
    end
	
    local p = split(trim(param), " ")
   
    if table.getn(p) ~= 3 then
        lualib:SysMsg_SendPromptMsg(player, "格式：@refine 等级 属性名 属性值");
		return true
    end
 
    local level = tonumber(p[1])
    local attr_name = tonumber(p[2])
    local attr_value  = tonumber(p[3])
    
    lualib:Equip_SetRefineLevel(player, item, level)
    lualib:Equip_SetRefineProp(player, item, attr_name, attr_value)

    lualib:Item_NotifyUpdate(player, item)
        
    return true
end

function identify(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

    local item = lualib:Item_GetBySite(player, 22)
    if item == nil then
        lualib:SysMsg_SendPromptMsg(player, "物品不存在")
        return false
    end

    if lualib:Item_GetType(player, item) ~= 1 then
        return false
    end
	
    local p = split(trim(param), " ")
   
    if table.getn(p) ~= 6 then
        lualib:SysMsg_SendPromptMsg(player, "格式：@identify 属性名1, 属性值1, 属性名2, 属性值2, 属性名3, 属性值3");
		return true
    end
 
    if not lualib:Equip_SetIdentifyProp(player, item, tonumber(p[1]), tonumber(p[2]), tonumber(p[3]), tonumber(p[4]), tonumber(p[5]), tonumber(p[6])) then
        lualib:SysMsg_SendPromptMsg(player, "装备鉴定失败")
        return false
    end
    
    lualib:Item_NotifyUpdate(player, item)

    return true
end

function set_lc(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

    local item = lualib:Item_GetBySite(player, 22)
    if item == nil then
        lualib:SysMsg_SendPromptMsg(player, "物品不存在")
        return false
    end

    if lualib:Item_GetType(player, item) ~= 1 then
        return "不是装备不可精炼"
    end
	
    local p = split(trim(param), " ")
   
    if table.getn(p) ~= 1 then
        lualib:SysMsg_SendPromptMsg(player, "格式：@set_lc 幸运值")
		return true
    end

    lualib:Equip_SetLuckCurse(player, item, tonumber(p[1]))
    lualib:Item_NotifyUpdate(player, item)

    return true
end
--用户指令例子
function cur_pos(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	
    local cur_map = lualib:Player_GetStrProp(player,  lua_role_current_map)
    if cur_map == "" then return false end

    local cur_posx = lualib:Player_GetPosX(player)
    local cur_posy = lualib:Player_GetPosY(player)
    if cur_posx == -1 or cur_posy == -1 then return false end

    lualib:SysMsg_SendPromptMsg(player, "当前地图："..cur_map.." [x, y] = ".."["..cur_posx..", "..cur_posy.."]")
    return true
end

function gonggao(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	lualib:SysMsg_SendBroadcastMsg(param, "");

	return true;
end

function sw(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	local shengwang = tonumber(param)
    lualib:Player_SetCustomVarInt(player, "shengwang", shengwang)
    lualib:Player_NotifyCustomParam(player, "shengwang")
	
	return true
end

function info(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	param = trim(param);

	if param == "" then
		lualib:SysMsg_SendPromptMsg(player, "格式：@item_count 角色名称 物品名称");

		return true;
	end

	local guid = lualib:Player_GetGuid(param);

	local job_map = {"战", "法", "道"}

	if guid ~= "" then
		local str_info = string.format("%s(%s) 的信息 登录帐号:%s IP: %s 地图:%s[%d:%d] 等级: %d 职业:%s 攻击:%d-%d 魔法:%d-%d 道术:%d-%d 防御:%d-%d 魔防:%d-%d 幸运:%d移动速度:%d 攻击速度:%d 命中:%d 闪避:%d PK: %d 金币: %d/%d 元宝: %d/%d",
			param, guid, lualib:Player_GetStrProp(guid,  lua_role_account_name), lualib:Player_GetStrProp(guid, lua_role_ip),
			lualib:Player_GetStrProp(guid,  lua_role_current_map_key), lualib:Player_GetPosX(guid), lualib:Player_GetPosX(guid),
			lualib:Player_GetIntProp(guid,  lua_role_level), job_map[lualib:Player_GetIntProp(guid,  lua_role_job)],
			lualib:Player_GetIntProp(guid,  lua_role_min_phy_atk), lualib:Player_GetIntProp(guid,  lua_role_max_phy_atk),
			lualib:Player_GetIntProp(guid,  lua_role_min_mag_atk), lualib:Player_GetIntProp(guid,  lua_role_max_mag_atk),
			lualib:Player_GetIntProp(guid,  lua_role_min_tao_atk), lualib:Player_GetIntProp(guid,  lua_role_max_tao_atk),
			lualib:Player_GetIntProp(guid,  lua_role_min_phy_def), lualib:Player_GetIntProp(guid,  lua_role_max_phy_def),
			lualib:Player_GetIntProp(guid,  lua_role_min_mag_def), lualib:Player_GetIntProp(guid,  lua_role_max_mag_def),
			lualib:Player_GetIntProp(guid,  lua_role_luck_curse), lualib:Player_GetIntProp(guid,  lua_role_move_speed),  lualib:Player_GetIntProp(guid,

 lua_role_attack_speed),
			lualib:Player_GetIntProp(guid,  lua_role_hit), lualib:Player_GetIntProp(guid,  lua_role_miss),
			lualib:Player_GetIntProp(guid,  lua_role_pk),
			lualib:Player_GetIntProp(guid,  lua_role_bind_gold),lualib:Player_GetIntProp(guid,  lua_role_gold),
			lualib:Player_GetIntProp(guid,  lua_role_bind_ingot),lualib:Player_GetIntProp(guid,  lua_role_ingot)
			);

		lualib:SysMsg_SendPromptMsg(player, str_info);
	else
		lualib:SysMsg_SendPromptMsg(player, "无法查找到玩家： " .. param .. " ，可能它不在线或不在当前GS");
	end

	return true;
end

function uvar(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	local ipos = string.find(param, " ");

	local target = "";
	local var_name = "";

	if ipos ~= nil then
		target = trim(string.sub(param, 1, ipos));
		var_name = trim(string.sub(param, ipos + 1));
	else
		target = trim(param);
		var_name = "";
	end

	if (target == "") or (var_name == "") then
		lualib:SysMsg_SendPromptMsg(player, "格式：@item_count 角色名称 物品名称");

		return true;
	end

	local guid = lualib:Player_GetGuid(target);

	if guid ~= "" then
		local str_info = string.format("INT_VAR: %d STR_VAR: %s",
							lualib:Player_GetCustomVarInt(guid, var_name), lualib:Player_GetCustomVarStr(guid, var_name)
						 );

		lualib:SysMsg_SendPromptMsg(player, str_info);
	else
		lualib:SysMsg_SendPromptMsg(player, "无法查找到玩家： " .. target .. " ，可能它不在线或不在当前GS");
	end

	return true;
end


function item_count(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	param = trim(param);

	if param == "" then
		lualib:SysMsg_SendPromptMsg(player, "格式：@item_count 角色名称 物品名称");

		return true;
	end

	local ipos = string.find(param, " ");

	local target = "";
	local item_name = "";

	if ipos ~= nil then
		target = trim(string.sub(param, 1, ipos));
		item_name = trim(string.sub(param, ipos + 1));
	else
		target = trim(param);
		item_name = "none";
	end

	local guid = lualib:Player_GetGuid(target);

	if guid ~= "" then
		local str_info = string.format("%s(%s) 包裹里 %s 数量：%d 仓库中数量：%d", target, guid, item_name,
						lualib:Player_GetItemCount(guid, item_name),
						lualib:Player_GetWarehouseItemCount(guid, item_name));

		lualib:SysMsg_SendPromptMsg(player, str_info);
	else
		lualib:SysMsg_SendPromptMsg(player, "无法查找到玩家： " .. param .. " ，可能它不在线或不在当前GS");
	end

	return true;
end

function side(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	local range = tonumber(trim(param));

	local player_table = lualib:Map_GetRegionPlayers(lualib:Player_GetGuidProp(player,  lua_role_current_map_id), 
	lualib:Player_GetPosX(player), lualib:Player_GetPosY(player),range, true);

	if player_table == nil then
		lualib:SysMsg_SendPromptMsg(player, "旁边没有任何玩家");

		return true;
	end

	local total = table.getn(player_table)

	local msg = "";

	local guid = ""
	local i = 1;

	for i = 1,total do
		guid = tostring(player_table[i]);

		if guid ~= "" and guid ~= nil then
			msg = msg .. lualib:Player_GetStrProp(guid,  lua_role_user_name) .. "(" .. guid .. "),";
			--msg = msg .. guid;

			if i % 3 == 0 then
				lualib:SysMsg_SendPromptMsg(player, msg);
				msg = "";
			end

			if i % 9 == 0 then
				lualib:SysMsg_SendPromptMsg(player, msg);
				msg = "";
			end
		end
	end

	if msg ~= "" then
		lualib:SysMsg_SendPromptMsg(player, msg);
	end

	msg = "周边" .. range .. "格玩家总数: " .. total;
	lualib:SysMsg_SendPromptMsg(player, msg);

	return true;
end

function sidem(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	local range = tonumber(trim(param));

	local monster_table = lualib:Map_GetRegionMonsters(lualib:Player_GetGuidProp(player,  lua_role_current_map_id), "", lualib:Player_GetPosX(player), 
	lualib:Player_GetPosY(player),range, true, false);

	if monster_table == nil then
		lualib:SysMsg_SendPromptMsg(player, "旁边没有任何怪物");

		return true;
	end

	local total = table.getn(monster_table)

	local msg = "";

	local guid = ""
	local i = 1;

	for i = 1,total do
		guid = tostring(monster_table[i]);

		if guid ~= "" and guid ~= nil then
			msg = msg .. lualib:Monster_GetKeyName(guid) .. "(" .. guid .. "),";
			--msg = msg .. guid;

			if i % 3 == 0 then
				lualib:SysMsg_SendPromptMsg(player, msg);
				msg = "";
			end

			if i % 9 == 0 then
				lualib:SysMsg_SendPromptMsg(player, msg);
				msg = "";
			end
		end
	end

	msg = "周边" .. range .. "格怪物总数: " .. total;
	lualib:SysMsg_SendPromptMsg(player, msg);

	return true;
end

function StartCastleWarEx(player, param)
	local castle_var = "神歌城_atk_familys"

    if not lualib:Player_IsGM(player) then
        lualib:SysMsg_SendWarnMsg(player, "你不是GM，无权执行该指令！")
        return false
    end
    
    local familys = lualib:GetAllFamilys()
    if familys == nil then 
        lualib:SysMsg_SendWarnMsg(player, "服务器上没有行会！")
        return true
    end
    
    local familys_str = ""
    for _, v in pairs(familys) do
        familys_str = familys_str..v.."&"
    end
    
    if not lualib:StartCastleWar("神歌城", familys_str, param, 7200) == false then
		lualib:SysMsg_SendWarnMsg(player, "发起攻城失败")
        return false
    end
    
    for _, v in pairs(familys) do
        lualib:SysMsg_SendPromptMsg(player, "发起攻城战成功，攻城行会为："..v)
    end
	
	lualib:IO_SetCustomVarStr(castle_var, param)
	return true
end

function StopCastleWarEx(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	
    if not lualib:StopCastleWar("神歌城") then
        lualib:SysMsg_SendWarnMsg(player, "停止攻城战失败！")
        return false
    end
    
    lualib:SysMsg_SendWarnMsg(player, "停止攻城战成功！")
    return true
end


function t_j(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	
	local born_pos = {"巫山城", 502, 691, "鸡", 50}
	local map = lualib:Map_GetMapGuid(born_pos[1])
	if map == "" or not lualib:Map_IsInGS(born_pos[1]) then
		lualib:SysMsg_SendWarnMsg(player, "你不在刷怪地图的服务器上，请重新刷怪！")
		lualib:Player_MapMove(player, born_pos[1])
		return false
	end
	if not lualib:Map_GenMonster(map, born_pos[2], born_pos[3], 15, lualib:GenRandom(0, 7),
								born_pos[4], 50, false) then
		lualib:SysMsg_SendWarnMsg(player, "刷怪失败！")
		return false
	end
	lualib:SysMsg_SendWarnMsg(player, "刷怪成功！")
	return true
end

function t_l(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	local born_pos = {"巫山城", 478, 694, "鹿", 50}
	local map = lualib:Map_GetMapGuid(born_pos[1])
	if map == "" or not lualib:Map_IsInGS(born_pos[1]) then
		lualib:SysMsg_SendWarnMsg(player, "你不在刷怪地图的服务器上，请重新刷怪！")
		lualib:Player_MapMove(player, born_pos[1])
		return false
	end
	if not lualib:Map_GenMonster(map, born_pos[2], born_pos[3], 15, lualib:GenRandom(0, 7),
								born_pos[4], 50, false) then
		lualib:SysMsg_SendWarnMsg(player, "刷怪失败！")
		return false
	end
	lualib:SysMsg_SendWarnMsg(player, "刷怪成功！")
	return true
end

function t_b(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	local born_pos = {"巫山城", 470, 612, "白茅人", 50}
	local map = lualib:Map_GetMapGuid(born_pos[1])
	if map == "" or not lualib:Map_IsInGS(born_pos[1]) then
		lualib:SysMsg_SendWarnMsg(player, "你不在刷怪地图的服务器上，请重新刷怪！")
		lualib:Player_MapMove(player, born_pos[1])
		return false
	end
	if not lualib:Map_GenMonster(map, born_pos[2], born_pos[3], 15, lualib:GenRandom(0, 7),
								born_pos[4], 50, false) then
		lualib:SysMsg_SendWarnMsg(player, "刷怪失败！")
		return false
	end
	lualib:SysMsg_SendWarnMsg(player, "刷怪成功！")
	return true
end

function p_j(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	
	local born_pos = {"巫山城", 194, 677, "鸡", 50}
	local map = lualib:Map_GetMapGuid(born_pos[1])
	if map == "" or not lualib:Map_IsInGS(born_pos[1]) then
		lualib:SysMsg_SendWarnMsg(player, "你不在刷怪地图的服务器上，请重新刷怪！")
		lualib:Player_MapMove(player, born_pos[1])
		return false
	end
	if not lualib:Map_GenMonster(map, born_pos[2], born_pos[3], 15, lualib:GenRandom(0, 7),
								born_pos[4], 50, false) then
		lualib:SysMsg_SendWarnMsg(player, "刷怪失败！")
		return false
	end
	lualib:SysMsg_SendWarnMsg(player, "刷怪成功！")
	return true
end

function p_l(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	local born_pos = {"巫山城", 153, 631, "鹿", 50}
	local map = lualib:Map_GetMapGuid(born_pos[1])
	if map == "" or not lualib:Map_IsInGS(born_pos[1]) then
		lualib:SysMsg_SendWarnMsg(player, "你不在刷怪地图的服务器上，请重新刷怪！")
		lualib:Player_MapMove(player, born_pos[1])
		return false
	end
	if not lualib:Map_GenMonster(map, born_pos[2], born_pos[3], 15, lualib:GenRandom(0, 7),
								born_pos[4], 50, false) then
		lualib:SysMsg_SendWarnMsg(player, "刷怪失败！")
		return false
	end
	lualib:SysMsg_SendWarnMsg(player, "刷怪成功！")
	return true
end

function p_b(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	local born_pos = {"巫山城", 156, 611, "白茅人", 50}
	local map = lualib:Map_GetMapGuid(born_pos[1])
	if map == "" or not lualib:Map_IsInGS(born_pos[1]) then
		lualib:SysMsg_SendWarnMsg(player, "你不在刷怪地图的服务器上，请重新刷怪！")
		lualib:Player_MapMove(player, born_pos[1])
		return false
	end
	if not lualib:Map_GenMonster(map, born_pos[2], born_pos[3], 15, lualib:GenRandom(0, 7),
								born_pos[4], 50, false) then
		lualib:SysMsg_SendWarnMsg(player, "刷怪失败！")
		return false
	end
	lualib:SysMsg_SendWarnMsg(player, "刷怪成功！")
	return true
end

function lua_test(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	local players = lualib:Map_GetRegionPlayers(lualib:Player_GetGuidProp(player,  lua_role_current_map_id),
								lualib:Player_GetPosX(player), lualib:Player_GetPosY(player), 5, true)
	if players == nil then return true end
	for _, v in pairs(players) do
		lualib:SysMsg_SendPromptMsg(player, lualib:Player_GetStrProp(v,  lua_role_user_name))
	end
	
	lualib:Player_Summon(player, "神兽", 1)
	return true
end

--单个玩家脱装备
function DisableEquip(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	
    local name_t = lualib:StrSplit(param, "#")
    if #name_t < 2 then
        lualib:SysMsg_SendWarnMsg(player, "指令格式：@DisableEquip 目标角色名字#装备keyname1#...#装备keynameN")
        return false 
    end
    
    local other = lualib:Name2Guid(name_t[1])
    if other == "" then
        lualib:SysMsg_SendWarnMsg(player, "目标角色"..name_t[1].."不在线，操作无法进行！")
        return false
    end
    
    if not lualib:Player_IsInGS(other) then
        lualib:SysMsg_SendWarnMsg(player, "目标角色"..name_t[1].."与你不在同一个GS上，请跳到他旁边再执行操作！")
        return false
    end
    
    for i = 2, #name_t do
        if lualib:DisableEquip(other, name_t[i]) then
            lualib:SysMsg_SendWarnMsg(player, "目标角色"..name_t[1].."脱掉装备"..name_t[i].."成功！")
        else
            lualib:SysMsg_SendWarnMsg(player, "目标角色"..name_t[1].."脱掉装备"..name_t[i].."失败，该角色没有装备这个道具！")
        end
    end

    return true
end

--全区玩家脱备
function DisableEquipEx(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	
    if param == "" then
        lualib:SysMsg_SendWarnMsg(player, "指令格式：@DisableEquipEx 装备keyname1&...&装备keynameN")
        return false 
    end
    
    lualib:GSRunScript("DisableEquipImpl", param)
    return true
end

--脚本回调用，用户不能调
function DisableEquipImpl(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

    local name_t = lualib:StrSplit(param, "&")
    for i = 1, #name_t do
        if lualib:DisableEquip(player, name_t[i]) then
            lualib:SysMsg_SendWarnMsg(player, "脱掉装备"..name_t[i].."成功！")
        else
            lualib:SysMsg_SendWarnMsg(player, "脱掉装备"..name_t[i].."失败，该角色没有装备这个道具！")
        end
    end
end

--给玩家聚灵珠冲满经验
function PearlExp(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	
    if param == "" then
        lualib:SysMsg_SendWarnMsg(player, "指令格式：@PearlExp 角色名")
        return false 
    end
    
    local other = lualib:Name2Guid(param)
    if other == "" then
        lualib:SysMsg_SendWarnMsg(player, "目标角色"..param.."不在线，操作无法进行！")
        return false
    end
    
    if not lualib:Player_IsInGS(other) then
        lualib:SysMsg_SendWarnMsg(player, "目标角色"..param.."与你不在同一个GS上，请跳到他旁边再执行操作！")
        return false
    end
    
    local item_n_t = {"聚灵珠(小)", "聚灵珠(中)", "聚灵珠(大)"}
    for _, v in pairs(item_n_t) do
        local item_t = lualib:GetItemsByKeys(other, v, false, true, false, false)
        if item_t ~= nil then
            for _, _v in pairs(item_t) do
                lualib:SetInt(_v, "cur_exp", lualib:GetInt(_v, "max_exp"))
                lualib:NotifyVar(_v, "cur_exp")
                lualib:SysMsg_SendPromptMsg(player, "目标角色"..param..v.."冲能成功，背包格子"..lualib:Item_GetSite(other, _v).."！")
            end
        end
    end
    
    return true
end
--怪物攻城
function monsterattack(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	if (param == "1") then
		require("campaign/怪物攻城1")
		siege();
	elseif (param == "2") then
		require("campaign/怪物攻城2")
		siege();
	elseif (param == "3") then
		require("campaign/怪物攻城3")
		siege();
	end
	return true;
end

--[[
function jump(player, param)
    local map_t = 
    {
        "巫山城",
        "龙城",
        "绝路岭",
        "绝路谷",
        "废弃矿洞1",
        "废弃矿洞2",
        "废弃矿洞3",
        "废弃矿洞4",
        "废弃矿洞5",
        "废弃矿洞6",
        "将军冢1",
        "将军冢2",
        "将军冢3",
        "将军冢boss",
        "将军冢密室",
        "妖山暗穴1",
        "妖山暗穴2",
        "妖山暗穴3",
        "妖山暗穴4",
        "妖山暗穴5",
        "妖山暗穴6",
        "妖山暗穴7",
        "妖山暗穴8",
        "妖山暗穴boss",
        "邪庙1",
        "邪庙2",
        "邪庙3",
        "邪庙4",
        "邪庙5",
        "邪庙6-1",
        "邪庙6-2",
        "邪庙6-3",
        "邪庙6-4",
        "邪庙6-5",
        "邪庙6-6",
        "邪庙6-7",
        "邪庙6-8",
        "邪庙6-9",
        "邪庙6-10",
        "邪庙6-11",
        "邪庙6-12",
        "邪庙6-13",
        "邪庙6-14",
        "邪庙6-15",
        "邪庙6-16",
        "邪庙7-1",
        "邪庙7-2",
        "邪庙7-3",
        "邪庙boss",
        "天荒阵1",
        "天荒阵2",
        "天荒阵3",
        "天荒阵4",
        "天荒阵5",
        "天荒阵6",
        "天荒阵7-1",
        "天荒阵7-2",
        "天荒阵7-3",
        "天荒阵7-4",
        "天荒阵7-5",
        "天荒阵7-6",
        "天荒阵7-7",
        "天荒阵7-8",
        "天荒阵7-9",
        "天荒阵boss",
        "绝路城1",
        "绝路城2",
        "绝路城3",
        "绝路城boss",
        "神歌城皇宫",
        "神歌城",
        "神歌城密道",
        "红名村",
        "服装店",
        "书店",
        "武器店",
        "药店",
        "首饰店",
        "龙城服装店",
        "龙城书店",
        "龙城武器店",
        "龙城药店",
        "龙城首饰店",
        "尸王大殿",
        "天荒古阵",
        "第三重天秘洞",
        "天下第一战场",
        "漂流岛",
        "初级试炼场",
        "中级试炼场",
        "高级试炼场",
        "克星挑战场1",
        "克星挑战场2",
        "克星挑战场3",
        "锁魔宫",
        "引灵寺",
        "亡灵禁地",
        "灵山",
        "玉完天幻境",
        "封魔阵",
        "古墓",
        "夺宝大厅",
        "地下城",
        "武斗场",
        "灵韵阁",
        "封魔台",
        "小黑屋",
    }
    
    lualib:Player_MapMove(player, map_t[lualib:GenRandom(1, #map_t)])
end

function JUMP(player, param)
    lualib:GSRunScript("jump", player)
end
]]


function tiyankaiqi(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	local map_guid = lualib:Map_GetMapGuid("巫山城")
	if param == "开启" then
		if map_guid ~= "" then
			lualib:SetInt(map_guid, "experience", 1)
		end
		return true
	elseif param == "关闭" then
		if map_guid ~= "" then
			lualib:SetInt(map_guid, "experience", 0)
		end
		return true
	else
		lualib:SysMsg_SendPromptMsg(player, "格式：@tiyankaiqi 开启/关闭")
	end
	return false
end

function jiechumima(player, name)
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	
	local guid = lualib:Name2Guid(name)
	if guid == nil or guid == "" then
		return false
	end
	
	lualib:SetStr(guid, "_lock_pwd", "")
	lualib:SetInt(guid, "set_lock_pwd", 1)
	
	return true
end

function start_active(player, script)
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	
	local active_t = {
					["龙魂之刃玩法"] = 1,
					["无尽深渊"] = 1,
					["元宝嘉年华玩法"] = 1,
					["每日夺宝玩法"] = 1,
					["谁与争锋玩法"] = 1,
					["夜袭巫山城玩法"] = 1,
					["魔族入侵玩法"] = 1,
					["镇魔宝塔玩法"] = 1,
					["膜拜城主玩法"] = 1

				}
	if active_t[script] ~= 1 then
		return false
	end
	
	require("campaign/"..script.."")
	local map = lualib:Map_GetMapGuid("巫山城")
	on_start_decl(1, map, 0)
	return true
end

function end_active(player, script)
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	
	local active_t = {
					["龙魂之刃玩法"] = 1,
					["无尽深渊"] = 1,
					["元宝嘉年华玩法"] = 1,
					["每日夺宝玩法"] = 1,
					["谁与争锋玩法"] = 1,
					["夜袭巫山城玩法"] = 1,
					["魔族入侵玩法"] = 1,
					["镇魔宝塔玩法"] = 1,
					["膜拜城主玩法"] = 1

				}
	if active_t[script] ~= 1 then
		return false
	end
	
	require("campaign/"..script.."")
	local map = lualib:Map_GetMapGuid("巫山城")
	on_end_decl(1, map, 0)
	return true
end

function abcde(player)
		local t_map = lualib:Map_GetMapGuid("土城")
		lualib:Map_GenCampMonster(t_map, 86, 143, 1, 8, "元宝BOSS", 1, false, 0)
return true
end

function rcs(player, script)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	lualib:ShowFormWithContent(player, "form文件表单", ""..script)
	return true
end

function add_buff(player, param)
	
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	local p = split(trim(param), " ")
	local role_guid = p[1]
    local keyname = p[2]
	if not lualib:HasBuff(role_guid, keyname) then 
		lualib:AddBuff(role_guid, keyname, 0);
	end
	return true
end

function add_magic(player, param)
	
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	local p = split(trim(param), " ")
	local id = p[1]
	local x = p[2]
    local y = p[3]
	local map = lualib:MapGuid(player);
	lualib:RunClientScript(map, "mapeffect", "texiao", id.."#"..x.."#"..y.."#150#2000");
	return true
end


function mobx(player, param)
	
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	--local p = split(trim(param), " ")
    --local x = tonumber(p[2])
    --local y  = tonumber(p[3])
	local num = tonumber(param)
	local map = lualib:MapGuid(player)
	local x, y = lualib:X(player), lualib:Y(player);
	local TABLE = 
	{
		"鸡","白茅人","木器人","花蜘蛛","顽猴","山洞蝙蝠","飞蛾","稻草人","多钩猫","洞蛆","暗殿骷髅长枪兵","骷髅","骷髅战将","骷髅战士","爬尸1","腐尸1","尸卫1",
		"爬尸2","腐尸2","尸卫2","僵尸","残肢僵尸","墓穴僵尸","蝎子","牛魔侍卫","副本沃玛勇士","副本沃玛战将","副本沃玛护卫","副本火焰沃玛","牛魔将军","闪避","矿物1",
		"深渊蛟龙","测试","矿物2","矿物3","矿物4","矿物5","暗夜女巫","雪域侍卫副本","雪域力士副本","雪域战将副本","雪域卫士副本","雪域天将副本","蟒蛇1","蛇蛟1",
		"沙石魔2","沙石魔3","沙石魔4","沙石魔5","妖僧1","白茅怪人","白茅邪人","毒蜘蛛","牛魔战士","泼猴","赤面猴","食人花","凶暴猿猴","苍狼","青蛇","方向测试怪",
		"白蛇","大斧骷髅1","牛魔王","鹿","毒蛾","魔狼","魔蛇","魔猿","天魔奴仆2","天魔奴仆说话1","天魔奴仆说话2","天魔奴仆说话3","天魔奴仆说话4","天魔密探",
		"牛魔祭司","牛魔法师","恶灵尸王","恶灵僵尸","尸霸","弓箭手副本2","弓箭手副本3","弓箭手副本4","暗殿牛魔将军","暗殿牛魔祭司","暗殿牛魔战士","暗殿虹魔蝎卫",
		"暗殿恶灵僵尸","暗殿恶灵尸王","暗殿祖玛卫士","暗殿祖玛弓箭手","暗殿祖玛雕像","暗殿火焰沃玛","暗殿沃玛卫士","暗殿沃玛战将","暗殿骷髅刀斧手","暗之双头金刚",
		"暗之黄泉教主","暗之尸霸","暗之骷髅精灵","暗之牛魔王","暗之沃玛教主","暗之虹魔教主","蜈蚣","黑色恶蛆","食人妖精","食人恶魔","食人蝎蛇","食人毒蛾","白色恶猪",
		"天荒杂兵","天荒战士","天荒卫士","天荒勇士","天荒战将","天荒护卫","天荒都统","沃玛教主","蜈蚣副本","跳跳蜂副本","巨型蠕虫副本","钳虫副本","邪恶钳虫副本",
		"触龙神副本","食人妖精副本","食人恶魔副本","食人蝎蛇副本","白色恶猪副本","副本魔龙巨蛾","祖玛雕像","祖玛弓箭手","祖玛卫士","蝙蝠与角蝇","角蝇","虹魔猪卫",
		"恶魔弓箭","千年树妖","虹魔教主","虹魔蝎卫","骷髅战士道1","骷髅战士道2","骷髅战士道3","骷髅战士道4","素狐","赤狐","黑狐","弧月角虫","弧月虎虫","火尾黑狐王",
		"金爪赤狐王","玉面素狐王","狂热火蜥蜴","巨镰蜘蛛","金杖蜘蛛","圣殿卫士","雷炎蛛王","雪域侍卫","雪域力士","雪域战将","雪域卫士","雪域天将","雪域魔王",
		"披甲神龟","恶魔蝙蝠","火龙守护兽","白蛇妖","红蛇妖","黑蛇妖","三头蛇王","蛇妖王","魔神修罗","黑袍修罗","暗影修罗","阿修罗神","螃蟹","龙虾守卫","海龟",
		"三头蛇王1","深海巨魔","寒荒海兽","巫妖王","黑锷蜘蛛","月魔蜘蛛","副本暴牙蜘蛛","爆裂蜘蛛","幻影蜘蛛","天狼蜘蛛","邪恶巨人","血巨人","双头金刚","双头血魔",
		"赤月恶魔","弓箭手副本1","副本城主","副本副城主","副本战神","副本法神","副本道尊","暗之白蛇妖","毁灭战神","骷髅锤兵","骷髅刀斧手","骷髅弓箭手","骷髅长枪兵",
		"牛头魔","黄泉教主","火龙测试","天荒教主副本","暗之祖玛教主","祖玛教主副本","副本月魔蜘蛛","副本天狼蜘蛛","副本双头血魔","副本双头金刚","副本牛魔侍卫",
		"副本牛魔战士","副本牛魔将军","副本牛魔祭司","副本魔龙力士","副本祖玛雕像","副本祖玛弓箭手","副本祖玛卫士","副本蝙蝠和角蝇","副本祖玛力士","副本牛魔法师",
		"钢牙蜘蛛","火龙","魔龙刺蛙","魔龙血蛙","魔龙刀兵","魔龙破甲兵","魔龙邪眼","魔龙巨蛾","魔龙力士","魔龙战将","魔龙射手","魔龙教主","祖玛教主",
		"普通挂机魔龙力士","副本火焰沃玛1","普通挂机沃玛卫士","普通挂机圣殿卫士","普通挂机牛头魔","普通挂机魔龙血蛙","普通挂机祖玛卫士","普通挂机魔龙战将",
		"魔化沃玛勇士","魔化沃玛卫士","魔化沃玛护卫","灭世魔君","炼狱巨魔","铁血魔王","红色恶猪","黑色恶猪","花吻蜘蛛","神兽1级","神兽2级","神兽3级","神兽4级",
		"火龙测试测试","测试鸡","副本恶魔蝙蝠","原副本魔龙巨蛾","副本大老鼠","转生神殿白蛇妖1","转生神殿白蛇妖墓碑","转生神殿白蛇妖2","转生神殿白蛇妖3",
		"转生神殿白蛇妖4","转生神殿白蛇妖5","转生神殿白蛇妖6","转生神殿白蛇妖7","转生神殿白蛇妖8","城主雕像","护体法宝","晕眩技能测试员","怪物测试1","怪物测试2",
		"怪物测试3","怪物测试4","掉落测试","怪物测试6","怪物测试7","怪物测试8","怪物测试9","怪物测试10","怪物测试11","怪物测试12","怪物测试13","怪物测试14",
		"怪物测试16","怪物测试17","怪物测试18","怪物测试19","怪物测试20","神威狱一层BOSS","怪物测试5","怪物测试15","怪物测试21","怪物测试22","怪物测试23",
		"神威狱二层BOSS","神威狱三层BOSS","神威狱四层BOSS","神威狱五层BOSS","神威狱六层BOSS","神威狱七层BOSS","神威狱八层BOSS","神威狱九层BOSS","神威狱十层BOSS",
		"神威狱十一层BOSS","神威狱十三层BOSS","神威狱十二层BOSS","神威统领","玛雅一白色恶猪","玛雅一沃玛教主","玛雅一祖玛教主","玛雅一赤月恶魔","夜袭巫山城怪物",
		"塔防鸡","塔防鹿","塔防羊","塔防苍狼","塔防沙虫","塔防蜈蚣","塔防蠕虫","塔防钳虫","塔防邪恶钳虫","塔防恶灵僵尸","塔防牛魔战士","塔防牛魔法师","塔防牛魔祭司",
		"塔防骷髅长枪兵","塔防牛魔将军1","塔防祖玛卫士","塔防祖玛弓箭手","塔防祖玛雕像","塔防白色恶猪","塔防牛魔王","塔防弓箭侍卫","塔防魔法侍卫","寒荒海兽测试",
		"魔族入侵火龙","赤月恶魔副本","魔族入侵怪物","魔族入侵沃玛教主","魔族入侵祖玛教主","魔族入侵赤月恶魔","魔族入侵黄泉教主","魔族入侵雷炎蛛王","魔族入侵牛魔王",
		"火龙副本","魔龙教主副本","牛魔王副本","皇宫门3","皇宫门2","皇宫门1","城堡门","城堡门2","城堡门3","镇魔宝塔牛魔王","镇魔宝塔虹魔教主","镇魔宝塔深海巨魔",
		"镇魔宝塔寒荒海兽","镇魔宝塔炼狱巨魔","挖矿鸡","固定测试","盗矿贼","元宝BOSS","巨型蠕虫","跳跳蜂","邪恶钳虫","钳虫","堕落者1","堕落者2","堕落者3","大苍狼",
		"邪庙密使","密使护卫","骷髅精灵","神兽之王","绝道白猿","白狼","巨蛇","幽冥尸王","牛魔将军1","千年树魔","真尸王","假尸王","天魔神","海魔","副本骷髅王",
		"触龙神","赤炎酋长","尸王","赤炎酋长分身","夜灵","练功师","神兽","镖车·普","镖车·极","镖车·珍","镖车·绝","镖车·神","夺宝魔龙","练宝宝怪","花妖",
		"树妖","默认宝宝","经验小鸡",
	};
	if num then 
		
		for i = 1, num do 
			local ran = math.random(1, #TABLE);
			if not lualib:Map_GenMonster(map, x, y, 10, 0, TABLE[ran], 1, false) then
				lualib:SysMsg_SendWarnMsg(player, "刷怪失败！")
				return false
			end
		end
	end
	--[[
	local kind = math.floor(num/10);
	for i = 1, kind do 
		local ran = math.random(1, #TABLE);
		if not lualib:Map_GenMonster(map, x, y, 20, 0, TABLE[ran], 10, false) then
			lualib:SysMsg_SendWarnMsg(player, "刷怪失败！")
			return false
		end
	end
	local ran = math.random(1, #TABLE);
	local rest = num%10;
	if not lualib:Map_GenMonster(map, x, y, 20, 0, TABLE[ran], rest, false) then
		lualib:SysMsg_SendWarnMsg(player, "刷怪失败！")
		return false
	end
	--]]
	lualib:SysMsg_SendWarnMsg(player, "刷怪成功！")
	return true
end


function AddTitle(player, id)
	
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	id = tonumber(id)
	if not lualib:HasTitle(player, id) then 
		lualib:AddTitle(player, id) 
	end
	lualib:ApplyTitle(player, id) 
	return true
end

function SetVip(player, level)
	
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	lualib:SetVipLevel(player,tonumber(level))
	return true
end

function DeletTitle(player, id)
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	id = tonumber(id)
	if lualib:HasTitle(player, id) then
		lualib:RemoveTitle(player, id) 
		return true
	else
		lualib:SysMsg_SendPromptMsg(player, "玩家没有这个"..id.."称号")
		return false
	end 
end



function setdbnum(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	lualib:SysMsg_SendWarnMsg(player, "setdbnum")
	local varName = p[1]
    local num = tonumber(p[2])
	if not num then 
		local old = lualib:GetDBNum(varName)
		lualib:SysMsg_SendWarnMsg(player, varName.."值为"..old)
		return true
	end  
	lualib:SetDBNum(player, varName, num)
	lualib:SysMsg_SendWarnMsg(player, "修改成功")
	return true
end

--[[
function becomegod(player)
	lualib:God(player)
	return true
end
--]]

function test_mob(player)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	local x = lualib:X(player)
	local y = lualib:Y(player)
	local map = lualib:MapGuid(player)
	lualib:Map_GenMonster(map, x+2, y, 0, 0, "城堡门", 1, false) 
	lualib:Map_GenMonster(map, x+4, y, 0, 2, "城堡门", 1, false) 
	lualib:Map_GenMonster(map, x+6, y, 0, 4, "城堡门", 1, false) 
	lualib:Map_GenMonster(map, x+8, y, 0, 6, "城堡门", 1, false) 
	lualib:SysMsg_SendWarnMsg(player, "刷怪成功！")
	return true
end

function zhanglaoban(player)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	local guid = lualib:Name2Guid("森老板威武")
	lualib:Player_ChangeName(guid, "张老板仙福永享")
	lualib:Player_Kick(guid)
	return true
end

function abcdefg(player)
	--local g = lualib:Player_GetServantList(player)
	--lualib:SysMsg_SendBroadcastMsg("状态:"..lualib:GetServantState(g[1]), "")
	return ""
end