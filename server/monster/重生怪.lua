local relive_t = {--�������������� = �����µĹ���������
	["��ħ��BOSS1"] = "��ħ��BOSS2",
	["��ħ��BOSS2"] = "��ħ��BOSS3",
	["��ħ��BOSS3"] = "��ħ��BOSS4",
	["��ħ��BOSS5"] = "��ħ��BOSS6",
	["��ħ��BOSS6"] = "��ħ��BOSS7",
	["��ħ��BOSS7"] = "��ħ��BOSS8",
	["��ħ��BOSS9"] = "��ħ��BOSS10",
	["��ħ��BOSS10"] = "��ħ��BOSS11",
	["��ħ��BOSS11"] = "��ħ��BOSS12",
	["�����BOSS1"] = "�����BOSS2",
	["�����BOSS2"] = "�����BOSS3",
	["�����BOSS3"] = "�����BOSS4",
	["�����BOSS5"] = "�����BOSS6",
	["�����BOSS6"] = "�����BOSS7",
	["�����BOSS7"] = "�����BOSS8",
	["�����BOSS9"] = "�����BOSS10",
	["�����BOSS10"] = "�����BOSS11",
	["�����BOSS11"] = "�����BOSS12",
	["�����BOSS13"] = "�����BOSS14",
	["�����BOSS14"] = "�����BOSS15",
	["�����BOSS15"] = "�����BOSS16",
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