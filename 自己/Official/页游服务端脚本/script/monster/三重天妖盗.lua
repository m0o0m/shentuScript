local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_create(monster)
    lualib:AddTrigger(monster,  lua_trigger_attack, "on_attack")
end

local talk = {
              "好不容易从第三重天逃出来，结果这里一群土匪来抢我！好歹我也是个文艺盗贼，同行给点面子啊！", 
              "别追我啊，只要你不追杀我，我会给你指引一条财路！" ,
              "身上的装备好像很值钱哦，干了他，我们一起分了他的装备吧！"
             }							

function on_attack(self, actor)
    local x
    local y
    if lualib:Monster_IsMonster(actor) then
        x = lualib:Monster_GetPosX(actor)
        y = lualib:Monster_GetPosY(actor)
    elseif lualib:Player_IsPlayer(actor) then
        x = lualib:Player_GetPosX(actor)
        y = lualib:Player_GetPosY(actor)
    else
        return
    end

    local point = lualib:Monster_GetEscapePoint(self, x, y, 16)
    local path = {point["x"], point["y"]}
    lualib:Monster_SetSeeker(self, path, 0, false)

    local rnd = lualib:GenRandom(1, 5)
    if rnd == 3 then
        rnd = lualib:GenRandom(1, 3)
        local str;
        if rnd < 3 then
            str = talk[rnd]
        else
            local player_table = lualib:Map_GetRegionPlayers(lualib:Monster_GetMap(self), lualib:Monster_GetPosX(self), lualib:Monster_GetPosY(self), 12, true)
            if player_table == nil or #player_table == 0 then return end
            local total = table.getn(player_table)
            if total == 0 then return end
            local index = lualib:GenRandom(1, total)
            local name = lualib:Player_GetStrProp(player_table[index],  lua_role_user_name)
            str = "["..name.."]"..talk[rnd]
        end
        lualib:SysMsg_SendRoleTalk(self, str)
    end
end
