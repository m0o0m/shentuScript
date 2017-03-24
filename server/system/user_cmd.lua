local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)

require("system/master")

function rcs(player, script)
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	lualib:ShowFormWithContent(player, "form�ļ���", ""..script)
	return true
end

function stra(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	local script, param1 = param:match("(.+)".." ".."(.+)");
	param1 = tostring(param1);
	local active_t = {
		["��սBOSS�淨"] = 1,
		["�콵����淨"] = 1,
		["�л����Ի"] = 1,
	}
	if active_t[script] ~= 1 then
		return false
	end
	
	require("campaign/"..script.."")
	local map = lualib:Map_GetMapGuid("��ŭ֮��")
	on_start_decl(1, map, param1)
	return true
end

function enda(player, script)
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	
	local active_t = {
		["��սBOSS�淨"] = 1,
		["�콵����淨"] = 1,
		["�л����Ի"] = 1,
	}
	if active_t[script] ~= 1 then
		return false
	end
	
	require("campaign/"..script.."")
	local map = lualib:Map_GetMapGuid("��ŭ֮��")
	on_end_decl(1, map, 0)
	return true
end
function trim(s)
    return (string.gsub(s, "^%s*(.-)%s*$", "%1"))
end

function jiaren(player)
	--local weap = lualib:Weapon(player)
	local Dguid = lualib:GenDummy("�����2",1,2,lualib:MapGuid(player),443,358,player,1000000)
	--lualib:SetDummyState(Dguid,3)
	--�ƽ���������������
	--lualib:AddItem(Dguid,"�ƽ���������������",1,false,"ʩ����ؤ����Ʒ", player)
	--lualib:ApplyEquipEx(Dguid, "�ƽ���������������")
	lualib:SysWarnMsg(player,"ˢ����ʲô��"..Dguid)
	local weapon = lualib:Weapon(player)  --����
	local wq_name = lualib:KeyName(weapon) --����keyname
	local hair_color = lualib:HairColor(player) --��ɫ
	local hair = lualib:Hair(player)  --����
	lualib:SetBagLock(Dguid,false)
	
	lualib:SetDummyState(Dguid,3)
	lualib:SetLevel(Dguid, 60)
	lualib:AddItem(Dguid,wq_name,1,false,"�������װ����ȡ", player)
	lualib:ApplyEquipEx(Dguid, wq_name)
lualib:SysWarnMsg(player,"ˢ����ʲô��"..Dguid)
	return true
end

function haha(player)
	local user_id = lualib:UserID(player)
	lualib:AddFamilyMember(player,"������ͼ","move","")
	lualib:SysMsg_SendWarnMsg(player, "�˺�id"..user_id)
	return true

end

function move(player)
	lualib:SysMsg_SendWarnMsg(player, "����ɹ�")
	return true
end

function userid(player)
	local user_id = lualib:UserID(player)

	lualib:SysMsg_SendWarnMsg(player, "�˺�id"..user_id)
	return true

end

function cangku(player)
	lualib:OpenWarehouseEx(player)
	lualib:SysMsg_SendWarnMsg(player, "��������û���лᣡ")
	return true

end

-------------------------------------------------------
-- ����:���ָ���ַ���,�ָ��ַ�
-- ����:�Ӵ���.(���пմ�)
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
	local castle_var = "����_atk_familys"

    if not lualib:Player_IsGM(player) then
        lualib:SysMsg_SendWarnMsg(player, "�㲻��GM����Ȩִ�и�ָ�")
        return false
    end
	
	param = trim(param)
	
	if param == "" then
		lualib:SysMsg_SendWarnMsg(player, "��ʽ��@StartCastleWarEx ����ʱ��(2013-11-15 20:00:00)")
        return false
    end
	
	local key = param:match("(%d+)-(%d+)-(%d+) (%d+):(%d+):(%d+)")
	if key == nil then
		lualib:SysMsg_SendWarnMsg(player, "ʱ���ʽ����(2013-11-15 20:00:00)")
        return false
    end
    
    local familys = lualib:GetAllFamilys()
    if #familys == 0 then 
        lualib:SysMsg_SendWarnMsg(player, "��������û���лᣡ")
        return true
    end
    
    local familys_str = ""
    for _, v in pairs(familys) do
        familys_str = familys_str..v.."&"
    end
    
    if not lualib:StartCastleWar("����", familys_str, param, 7200) == false then
		lualib:SysMsg_SendWarnMsg(player, "���𹥳�ʧ��")
        return false
    end
    
    for _, v in pairs(familys) do
        lualib:SysMsg_SendPromptMsg(player, "���𹥳�ս�ɹ��������л�Ϊ��"..v)
    end
	
	lualib:IO_SetCustomVarStr(castle_var, param)
	return true
end

function StopCastleWarEx(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	
    if not lualib:StopCastleWar("����") then
        lualib:SysMsg_SendWarnMsg(player, "ֹͣ����սʧ�ܣ�")
        return false
    end
    
    lualib:SysMsg_SendWarnMsg(player, "ֹͣ����ս�ɹ���")
    return true
end

function StartCastleWar(player, param)	
	if param == "" or param == nil then
		lualib:SysMsg_SendWarnMsg(player, "��ʽ��StartCastleWar �Ǳ���");
		return false;
	end
    
    local familys = lualib:GetAllFamilys()
    if familys == nil then 
        lualib:SysMsg_SendWarnMsg(player, "��������û���лᣡ")
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
        lualib:SysMsg_SendWarnMsg(player, "ֹͣ����սʧ�ܣ�")
        return false
    end
    
    lualib:SysMsg_SendWarnMsg(player, "ֹͣ����ս�ɹ���")
    return true
end

function ��(player, param)
	if param == "" or param == nil then
		lualib:SysMsg_SendPromptMsg(player, "��Ϣ����Ϊ�գ�")
		return false
	end
	
	local name = lualib:Name(player)
	if lualib:IsBanString(param) == true then 
		lualib:SysMsg_SendPromptMsg(player, "��������Ʋ��Ϸ������������룡");
		return false
	end
	
	if not lualib:Player_SubGold(player, 50000, false, "", "") then
		lualib:SysMsg_SendPromptMsg(player, "��Ľ�Ҳ���50000���޷����ͣ�");
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
	
	if ringName1 == "���ͽ�ָ" or ringName2 == "���ͽ�ָ" then
		local p = split(trim(param), " ")
		if #p ~= 2 then
			lualib:Player_MapMove(player, "")
		end
		
		local x = tonumber(p[1])
		local y = tonumber(p[2])
		
		local map = lualib:MapGuid(player)
		if lualib:GridAttr(map, x, y, 1) then
			lualib:Player_MapMove(player, "")
lualib:SysMsg_SendPromptMsg(player, "�ƶ���"..x..y);
		end
	else
		lualib:SysMsg_SendPromptMsg(player, "��û�д��ͽ�ָ��");
		return false
	end
	return true
end

function ̽��(player, name)
	local necklace = lualib:Player_GetItemGuid(player, 9)
	local necklace = ""
	if necklace ~= "" then
		necklace_name = lualib:KeyName(ringGuid1)
	else
		lualib:SysMsg_SendTriggerMsg(player, "��û��̽������")
		return false
	end
	
	if ringName1 == "̽������" then
		local target_Guid = lualib:Name2Guid(name)
		if target_Guid == "" then 
			lualib:SysMsg_SendTriggerMsg(player, "Ŀ����Ҳ�����!")
			return false
		end
		
		local t_map = lualib:Name(lualib:MapGuid(target_Guid))
		local t_x = lualib:X(target_Guid)
		local t_y = lualib:Y(target_Guid)
		lualib:SysMsg_SendTriggerMsg(player, "�Է�����λ�á�"..t_map.."��"..t_x..","..t_y.."��")
		return true
	else
		lualib:SysMsg_SendTriggerMsg(player, "��û��̽������")
		return false
	end
end


function tiandiheyi(player)
	local equip_table = {"����ͷ��", "��������", "��������", "�����ָ"}
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
		lualib:SysMsg_SendPromptMsg(player, "��غ�һ")
		local TeamList = lualib:Player_GetTeamList(player)
		local player_map = lualib:MapGuid(player)
		local player_x = lualib:X(player)
		local player_y = lualib:Y(player)
		if #TeamList > 0 then
			for i = 1, #TeamList do
				if not lualib:Player_MapMoveXY(TeamList[i],lualib:KeyName(player_map), player_x, player_y, 5) then
					lualib:SysMsg_SendPromptMsg(player, "�����ڵ�ͼ���ܽ�����غ�һ��")
					return false
				end
			end
		else
			lualib:SysMsg_SendPromptMsg(player, "�㻹û��ӣ�")
		end	
	else
		lualib:SysMsg_SendPromptMsg(player, "��û�м�����װ")
	end
	return true
end


function �ʻ�(player, param)
    local p = split(trim(param), " ")
   
    if table.getn(p) ~= 2 then
        lualib:SysMsg_SendPromptMsg(player, "��ʽ��@�ʻ� ������ ����  ��ע:����һ���ʻ�100����");
		return false
    end
	
	if string.len(p[1]) > 14 or string.len(p[1]) < 1 then
		lualib:SysMsg_SendPromptMsg(player, "���͵Ķ�����ȷ��");
		return false
	end
	
	local count =  tonumber(p[2])
	if count < 1 then
		lualib:SysMsg_SendPromptMsg(player, "��������ȷ��������");
		return false
	end
	
	
	local gold = count * 1000000
	
	if not lualib:Player_SubGold(player, gold, false, "", "") then
		lualib:SysMsg_SendPromptMsg(player, "��Ľ�Ҳ���"..gold.."���޷����ͣ�");
		return false
	end
	
	
	local name = lualib:Name(player)
	
	for i = 1, count do
		local s = "(*)���["..name.."]��"..p[1].."������"..i.."���ʻ���"
		lualib:SysMsg_SendBroadcastMsg(s, "")
	end
    return true
end

function test11a(player, param)
    lualib:SysMsg_SendWebMsg(player, "��������֤", "http://passport.173uu.com/verifygame/index.html?uid=1", "")
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
       lualib:ItemCount(player, "ǿЧ��ҩ")
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
       lualib:GiveItem(player, "�سǾ���", 1, "����", "")
       lualib:TakeItem(player, "�سǾ���", 1, "����", "")
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
     local map = lualib:Map_GetMapGuid("����")

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