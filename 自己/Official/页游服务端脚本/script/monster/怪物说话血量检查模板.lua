local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_create(monster)
    lualib:SysMsg_SendRoleTalk(monster, "出生！")
    lualib:AddTrigger(monster,  lua_trigger_attack, "on_attack")
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
end

function on_trigger_post_die(actor, killer)
    lualib:SysMsg_SendRoleTalk(actor, "死亡！")
end						

function on_attack(self, actor)
    lualib:SysMsg_SendRoleTalk(self, "挨打！")
    local hp_mul = get_hp_mul(self)
    if hp_mul == -1 then return end
    if hp_mul <= 30 then
        lualib:Print("白狼血量降到危险线！")
        if lualib:Monster_IsHasBuff(self, 10036) then
            lualib:Print("白狼施法：BUFF已存在！")
            return
        end
        if not lualib:Monster_SpellTarget(self, 10036, self) then
            lualib:Print("白狼施法失败！")
        end
        lualib:Print("白狼施法成功！")   
    end
end

function get_hp_mul(monster)
    local max_hp = lualib:Monster_GetIntProp(monster,  lua_role_max_hp)
    local hp = lualib:Monster_GetIntProp(monster,  lua_role_hp)
    if max_hp == -1 or hp == -1 then
        lualib:Print("取得白狼的血量出错！")
        return -1
    end
    return hp / max_hp * 100
end
