local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local ysax_dgwf_xbxy_timer = 1
local destroy_monster = "on_timer_destroy_monster"
--local path_table = {}
--path_table["Ѱ��С��1"] = {181, 59, 337, 204, 171,282 ,144,209, 181, 59}
--path_table["Ѱ��С��2"] = {156, 274, 63, 171, 145, 32, 317, 245, 156, 274}
--path_table["Ѱ��С��3"] = {250, 57, 277, 255, 123, 327, 53, 109, 250, 57}
--path_table["Ѱ��С��4"] = {279, 240, 263, 61, 36, 42, 160, 302, 279, 240}
--path_table["Ѱ��С��5"] = {350, 161, 173, 318, 25, 205, 112, 85, 350, 161}

local talk = {
              "�Ҳ����ñ���֪���������г������صģ�", 
              "��ֻ����Ѱ��������Ҫ׷ɱ�ң�" ,
              "�ҽ����ҵ��˺ö౦��ѽ�������������ˣ������ˣ�"
             }	


function on_create(monster)
	 lualib:AddTrigger(monster,  lua_trigger_attack, "on_attack")
	 local map = lualib:Name(lualib:MapGuid(monster))
	 local x = lualib:X(monster)
	 local y = lualib:Y(monster)
	 local s = "Ѱ��С��Я�������������س�����["..map.."]"
	 local s1 = "Ѱ��С��Я�������������س�����["..map.."]"
	 lualib:SysMsg_SendCenterMsg(1, s, "")
	 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
    --local monster_name = lualib:Monster_GetKeyName(monster)
    --if monster_name == "" or path_table[monster_name] == nil then
        --lualib:Print("Ѱ·С��.lua Ѱ·С����û���ҵ���Ӧ�Ĺ�������")
        --return
    --end

	if lualib:AddTimer(monster, ysax_dgwf_xbxy_timer, 3600000, 1, destroy_monster) == false then
        lualib:Print("Ѱ·С��.lua ������ٶ�ʱ��ʧ�ܣ�") 
        return
    end
    
    --if lualib:Monster_SetSeeker(monster, path_table[monster_name], 1, true) == false then 
        --lualib:Print("Ѱ·С��.lua ��ΪѰ·��ʧ�ܣ�") 
        --return
    --end
end

function on_timer_destroy_monster(monster, player)
    if lualib:Monster_IsExist(monster) == false then return end
    lualib:Monster_Remove(monster)
end


function on_attack(self, actor)
    local x
    local y
	local xr = 10
	local yr = 10
    if lualib:Monster_IsMonster(actor) then
        x = lualib:Monster_GetPosX(actor) + xr
        y = lualib:Monster_GetPosY(actor) + yr
    elseif lualib:Player_IsPlayer(actor) then
        x = lualib:Player_GetPosX(actor)  + xr
        y = lualib:Player_GetPosY(actor)  + yr
    else
        return
    end
	


    local point = lualib:Monster_GetEscapePoint(self, x, y, 10)
    local path = {point["x"], point["y"]}
    lualib:Monster_SetSeeker(self, path, 1, true)

    local rnd = lualib:GenRandom(1, 3)
    if rnd == 3 then
        rnd = lualib:GenRandom(1, 3)
        local str;

            str = talk[rnd]


        lualib:SysMsg_SendRoleTalk(self, str)
    end
end