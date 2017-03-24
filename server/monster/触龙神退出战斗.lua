
function on_create(monster)
	lualib:AddTrigger(monster, lua_trigger_monster_out_fight, "out_fight");
end

function out_fight(monster)
	lualib:SetHp(monster, lualib:Hp(monster, true), false);
end