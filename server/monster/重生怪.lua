local relive_t = {--死亡怪物索引名 = 生成新的怪物索引名
	["超魔界BOSS1"] = "超魔界BOSS2",
	["超魔界BOSS2"] = "超魔界BOSS3",
	["超魔界BOSS3"] = "超魔界BOSS4",
	["超魔界BOSS5"] = "超魔界BOSS6",
	["超魔界BOSS6"] = "超魔界BOSS7",
	["超魔界BOSS7"] = "超魔界BOSS8",
	["超魔界BOSS9"] = "超魔界BOSS10",
	["超魔界BOSS10"] = "超魔界BOSS11",
	["超魔界BOSS11"] = "超魔界BOSS12",
	["超神界BOSS1"] = "超神界BOSS2",
	["超神界BOSS2"] = "超神界BOSS3",
	["超神界BOSS3"] = "超神界BOSS4",
	["超神界BOSS5"] = "超神界BOSS6",
	["超神界BOSS6"] = "超神界BOSS7",
	["超神界BOSS7"] = "超神界BOSS8",
	["超神界BOSS9"] = "超神界BOSS10",
	["超神界BOSS10"] = "超神界BOSS11",
	["超神界BOSS11"] = "超神界BOSS12",
	["超神界BOSS13"] = "超神界BOSS14",
	["超神界BOSS14"] = "超神界BOSS15",
	["超神界BOSS15"] = "超神界BOSS16",
}

function on_create(monster)
	local key = lualib:KeyName(monster)
	if relive_t[key] ~= nil then
		lualib:AddTrigger(monster, lua_trigger_post_die, "on_post_die")
	end
end


function on_post_die(monster, killer)
	local key = lualib:KeyName(monster)
	if relive_t[key] ~= nil then
		local x = lualib:X(monster)
		local y = lualib:Y(monster)
		local map = lualib:MapGuid(monster)
		lualib:Map_GenMonster(map, x, y, 2, 4, relive_t[key], 1, false)
		lualib:Monster_Remove(monster)
	end
end