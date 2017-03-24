local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)

require("system/master")

function rcs(player, script)
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	lualib:ShowFormWithContent(player, "form文件表单", ""..script)
	return true
end

function stra(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	local script, param1 = param:match("(.+)".." ".."(.+)");
	param1 = tostring(param1);
	local active_t = {
		["挑战BOSS玩法"] = 1,
		["天降红包玩法"] = 1,
		["行会争霸活动"] = 1,
	}
	if active_t[script] ~= 1 then
		return false
	end
	
	require("campaign/"..script.."")
	local map = lualib:Map_GetMapGuid("天怒之城")
	on_start_decl(1, map, param1)
	return true
end

function enda(player, script)
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	
	local active_t = {
		["挑战BOSS玩法"] = 1,
		["天降红包玩法"] = 1,
		["行会争霸活动"] = 1,
	}
	if active_t[script] ~= 1 then
		return false
	end
	
	require("campaign/"..script.."")
	local map = lualib:Map_GetMapGuid("天怒之城")
	on_end_decl(1, map, 0)
	return true
end
function trim(s)
    return (string.gsub(s, "^%s*(.-)%s*$", "%1"))
end

function jiaren(player)
	--local weap = lualib:Weapon(player)
	local Dguid = lualib:GenDummy("你麻痹2",1,2,lualib:MapGuid(player),443,358,player,1000000)
	--lualib:SetDummyState(Dguid,3)
	--黄金屠龙刀（动画）
	--lualib:AddItem(Dguid,"黄金屠龙刀（动画）",1,false,"施舍乞丐得物品", player)
	--lualib:ApplyEquipEx(Dguid, "黄金屠龙刀（动画）")
	lualib:SysWarnMsg(player,"刷假人什么鬼"..Dguid)
	local weapon = lualib:Weapon(player)  --武器
	local wq_name = lualib:KeyName(weapon) --武器keyname
	local hair_color = lualib:HairColor(player) --发色
	local hair = lualib:Hair(player)  --发型
	lualib:SetBagLock(Dguid,false)
	
	lualib:SetDummyState(Dguid,3)
	lualib:SetLevel(Dguid, 60)
	lualib:AddItem(Dguid,wq_name,1,false,"人物分身装备获取", player)
	lualib:ApplyEquipEx(Dguid, wq_name)
lualib:SysWarnMsg(player,"刷假人什么鬼"..Dguid)
	return true
end

function haha(player)
	local user_id = lualib:UserID(player)
	lualib:AddFamilyMember(player,"第三审图","move","")
	lualib:SysMsg_SendWarnMsg(player, "账号id"..user_id)
	return true

end

function move(player)
	lualib:SysMsg_SendWarnMsg(player, "加入成功")
	return true
end

function userid(player)
	local user_id = lualib:UserID(player)

	lualib:SysMsg_SendWarnMsg(player, "账号id"..user_id)
	return true

end

function cangku(player)
	lualib:OpenWarehouseEx(player)
	lualib:SysMsg_SendWarnMsg(player, "服务器上没有行会！")
	return true

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

function gonggao(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	lualib:SysMsg_SendBroadcastMsg(param, "");

	return true;
end

function StartCastleWarEx(player, param)
	local castle_var = "神歌城_atk_familys"

    if not lualib:Player_IsGM(player) then
        lualib:SysMsg_SendWarnMsg(player, "你不是GM，无权执行该指令！")
        return false
    end
	
	param = trim(param)
	
	if param == "" then
		lualib:SysMsg_SendWarnMsg(player, "格式：@StartCastleWarEx 攻城时间(2013-11-15 20:00:00)")
        return false
    end
	
	local key = param:match("(%d+)-(%d+)-(%d+) (%d+):(%d+):(%d+)")
	if key == nil then
		lualib:SysMsg_SendWarnMsg(player, "时间格式错误(2013-11-15 20:00:00)")
        return false
    end
    
    local familys = lualib:GetAllFamilys()
    if #familys == 0 then 
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

function StartCastleWar(player, param)	
	if param == "" or param == nil then
		lualib:SysMsg_SendWarnMsg(player, "格式：StartCastleWar 城堡名");
		return false;
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
	
	lualib:StartCastleWarEx(param, familys_str, lualib:GetAllTime(), 7200);
	return true;
end

function StopCastleWar(player, param)	
    if not lualib:StopCastleWar(param) then
        lualib:SysMsg_SendWarnMsg(player, "停止攻城战失败！")
        return false
    end
    
    lualib:SysMsg_SendWarnMsg(player, "停止攻城战成功！")
    return true
end

function 传(player, param)
	if param == "" or param == nil then
		lualib:SysMsg_SendPromptMsg(player, "消息内容为空！")
		return false
	end
	
	local name = lualib:Name(player)
	if lualib:IsBanString(param) == true then 
		lualib:SysMsg_SendPromptMsg(player, "输入的名称不合法，请重新输入！");
		return false
	end
	
	if not lualib:Player_SubGold(player, 50000, false, "", "") then
		lualib:SysMsg_SendPromptMsg(player, "你的金币不足50000，无法发送！");
	end
	
	local s = name..":"..param
	lualib:SysMsg_SendBroadcastColor(s, "", 7, 3)
	return true
end

function move(player, param)
	local ringGuid1, ringGuid2 = lualib:Player_GetItemGuid(player, 10), lualib:Player_GetItemGuid(player, 11)
	local ringName1, ringName2 = "", ""
	if ringGuid1 ~= "" then
		ringName1 = lualib:KeyName(ringGuid1)
	end
	
	if ringGuid2 ~= "" then
		ringName2 = lualib:KeyName(ringGuid2)
	end
	
	if ringName1 == "传送戒指" or ringName2 == "传送戒指" then
		local p = split(trim(param), " ")
		if #p ~= 2 then
			lualib:Player_MapMove(player, "")
		end
		
		local x = tonumber(p[1])
		local y = tonumber(p[2])
		
		local map = lualib:MapGuid(player)
		if lualib:GridAttr(map, x, y, 1) then
			lualib:Player_MapMove(player, "")
lualib:SysMsg_SendPromptMsg(player, "移动到"..x..y);
		end
	else
		lualib:SysMsg_SendPromptMsg(player, "你没有传送戒指！");
		return false
	end
	return true
end

function 探测(player, name)
	local necklace = lualib:Player_GetItemGuid(player, 9)
	local necklace = ""
	if necklace ~= "" then
		necklace_name = lualib:KeyName(ringGuid1)
	else
		lualib:SysMsg_SendTriggerMsg(player, "你没有探测项链")
		return false
	end
	
	if ringName1 == "探测项链" then
		local target_Guid = lualib:Name2Guid(name)
		if target_Guid == "" then 
			lualib:SysMsg_SendTriggerMsg(player, "目标玩家不在线!")
			return false
		end
		
		local t_map = lualib:Name(lualib:MapGuid(target_Guid))
		local t_x = lualib:X(target_Guid)
		local t_y = lualib:Y(target_Guid)
		lualib:SysMsg_SendTriggerMsg(player, "对方所在位置【"..t_map.."："..t_x..","..t_y.."】")
		return true
	else
		lualib:SysMsg_SendTriggerMsg(player, "你没有探测项链")
		return false
	end
end


function tiandiheyi(player)
	local equip_table = {"记忆头盔", "记忆项链", "记忆手镯", "记忆戒指"}
	local equip_tableTo = {}
	
	for i = 1, 20 do
		local equipGuid = lualib:Player_GetItemGuid(player, i)
		local name = lualib:KeyName(equipGuid)
		for j = 1, #equip_table do
			if name == equip_table[j] then
				equip_tableTo[name] = equipGuid
			end
		end
	end
	
	local equipCount = 0
	for k, v in pairs(equip_tableTo) do
		equipCount = equipCount + 1
	end
	
	if equipCount == 4 then
		lualib:SysMsg_SendPromptMsg(player, "天地合一")
		local TeamList = lualib:Player_GetTeamList(player)
		local player_map = lualib:MapGuid(player)
		local player_x = lualib:X(player)
		local player_y = lualib:Y(player)
		if #TeamList > 0 then
			for i = 1, #TeamList do
				if not lualib:Player_MapMoveXY(TeamList[i],lualib:KeyName(player_map), player_x, player_y, 5) then
					lualib:SysMsg_SendPromptMsg(player, "你所在地图不能进行天地合一！")
					return false
				end
			end
		else
			lualib:SysMsg_SendPromptMsg(player, "你还没组队！")
		end	
	else
		lualib:SysMsg_SendPromptMsg(player, "你没有记忆套装")
	end
	return true
end


function 鲜花(player, param)
    local p = split(trim(param), " ")
   
    if table.getn(p) ~= 2 then
        lualib:SysMsg_SendPromptMsg(player, "格式：@鲜花 赠送人 数量  备注:赠送一朵鲜花100万金币");
		return false
    end
	
	if string.len(p[1]) > 14 or string.len(p[1]) < 1 then
		lualib:SysMsg_SendPromptMsg(player, "赠送的对象不正确！");
		return false
	end
	
	local count =  tonumber(p[2])
	if count < 1 then
		lualib:SysMsg_SendPromptMsg(player, "请输入正确的数量！");
		return false
	end
	
	
	local gold = count * 1000000
	
	if not lualib:Player_SubGold(player, gold, false, "", "") then
		lualib:SysMsg_SendPromptMsg(player, "你的金币不足"..gold.."，无法赠送！");
		return false
	end
	
	
	local name = lualib:Name(player)
	
	for i = 1, count do
		local s = "(*)玩家["..name.."]向"..p[1].."赠送了"..i.."朵鲜花！"
		lualib:SysMsg_SendBroadcastMsg(s, "")
	end
    return true
end

function test11a(player, param)
    lualib:SysMsg_SendWebMsg(player, "防沉迷验证", "http://passport.173uu.com/verifygame/index.html?uid=1", "")
    return true;
end

function test1(player, param)
     for i = 1, 100000 do
       lualib:SetInt(player, "int_" .. i, 0)
     end

     return true;
end

function test2(player, param)
     for i = 1, 100000 do
       local i = lualib:GetInt(player, "int_" .. i)
     end

     return true;
end

function test3(player, param)
     for i = 1, 100000 do
       --lualib:BagFree(player, true, false, false)
       lualib:ItemCount(player, "强效金创药")
     end

     return true;
end

function test31(player, param)
     for i = 1, 10000 do
       local list = lualib:BagItemList(player, true, false, false)
     end

     return true;
end

function test4(player, param)
     for i = 1, 1000 do
       lualib:GiveItem(player, "回城卷轴", 1, "测试", "")
       lualib:TakeItem(player, "回城卷轴", 1, "测试", "")
     end

     return true;
end

function test5(player, param)
     for i = 1, 100000 do
       local guid = lualib:Item_GetBySite(player, 1);

       if guid ~= "" then
          lualib:SetInt(guid, "name", 1)
       end
     end

     return true;
end

function test6(player, param)
     lualib:ClearTimer(player);

     for i = 1, 100000 do
         lualib:AddTimer(player, i,1000, -1, "on_timer")
     end

     return true;
end

function test7(player, param)
     for i = 1, 100000 do
         lualib:Print("test")
     end

     return true;
end

function test8(player, param)
     local map = lualib:MapGuid(player)
     local x = lualib:X(player)
     local y = lualib:Y(player)

     for i = 1, 100000 do
         local players = lualib:Map_GetRegionPlayersEx(map, {0, x, y, 1, 1}, true)
     end

     return true;
end

function test9(player, param)
     local map = lualib:MapGuid(player)
     local x = lualib:X(player)
     local y = lualib:Y(player)


     lualib:SysWarnMsg(player, "map:" .. map .. "x:" .. x .. "y:" .. y);

     local arr = lualib:Map_GetRegionMonstersEx(map, "", {0, x, y, 5, 5}, true, true);

     lualib:SysWarnMsg(player, "count2:" .. #arr);

     local players = {}
     for i = 1, 100000 do
         players = lualib:Map_GetRegionMonstersEx(map, "", {1, x, y, 5, 5}, true, true)
     end

     lualib:SysWarnMsg(player, "count:" .. #players);
     return true;
end

function on_timer(player, timerId)
       local guid = lualib:Item_GetBySite(player, 1);

       if guid ~= "" then
          lualib:SetInt(guid, "name", 1)
       end
end

function test7(player, param)
     for i = 1, 100000 do
         lualib:Print("test")
     end

     return true;
end

function test13(player, param)
     for i = 1, 100000 do
       local guid = lualib:Item_GetBySite(player, 1);

       if guid ~= "" then
          lualib:SetInt(guid, "name", 1)
       end
     end

     return true;
end


function test11(player, param)
     local a = 0;
     for i = 1, 10000000 do
        a = a+1
     end

     return true;
end


function test12(player, param)
     for i = 1, 10000000 do
        local ascii = string.chr(97)
     end

     return true;
end

function test14(player, param)
     local t = {}
     for i = 1, 10000000 do
        local a = t[i]
     end

     return true;
end


function test15(player, param)
     local map = lualib:Map_GetMapGuid("龙城")

     for i = 1, 100000 do
         local players = lualib:Map_GetMapPlayers(map, false)
     end

     return true;
end


function test16(player, param)
     for i = 1, 100000 do
         local rnd = lualib:GenRandom(1, 1000000)
     end

     return true;
end

lualib:SetScriptTimeout(30000);

function test17(player, param)
     for i = 1, 100000 do
         local rnd = math.random(1, 1000000)
     end

     return true;
end

function test18(player, param)
     for i = 1, 100000 do
         local rnd = lualib:Player_GetTeamGuid(player)
     end

     return true;
end

function apply(player, param)
	param = tonumber(param);
	local item = lualib:Player_GetItemGuid(player, param);
	lualib:ApplyItem(player, item, true);
	return true;
end

function test20(player)
   lualib:Error("");
   lualib:Error(" ");
   return true;
end