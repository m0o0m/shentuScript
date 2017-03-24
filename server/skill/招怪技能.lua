local skill_list = {
						[33016] = "òùòð",
						[33017] = "±¬ÁÑÖ©Öë",
						servant = 30
					}
					
function post_apply(actor, skillid)
	local map = lualib:MapGuid(actor)

	local monster_key = skill_list[skillid];

	if monster_key == nil then
	    return;
	end

	if lualib:GetInt(actor, "servant") >= skill_list.servant then
		return;
	end
	
    lualib:DelayCall(map, 1000, "delay_recall", actor .. "#" .. skillid)
end					

function delay_recall(map, actor, skillid)
	local x = lualib:X(actor)
	local y = lualib:Y(actor)

	local monster_key = skill_list[tonumber(skillid)];

	if monster_key == nil then
		return;
	end
	
	local strMonster = lualib:Map_GenSingleMonster(map, x, y, 1, 0, monster_key, false);
	if strMonster == "" then
		return;
	end
	
	lualib:SetStr(strMonster, "master", actor);
	lualib:SetInt(actor, "servant", lualib:GetInt(actor, "servant") + 1);
	lualib:AddTrigger(strMonster, lua_trigger_monster_post_die, "on_monster_post_die");
end

function on_monster_post_die(strMonster, strKiller)
	local strMaster = lualib:GetStr(strMonster, "master");
	if strMaster == "" or not lualib:Monster_IsExist(strMonster) then
		return;
	end
	
	lualib:SetInt(strMaster, "servant", lualib:GetInt(strMaster, "servant") - 1);
end