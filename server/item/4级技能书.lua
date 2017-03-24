function main(player, item)	
	local skill_books = 
	{
		["四级攻杀剑法"] = {"攻杀剑术5级", "攻杀剑术4级", "3级攻杀剑术", },
		["四级刺杀剑法"] = {"刺杀剑术5级", "刺杀剑术4级", "3级刺杀剑术", },
		["四级半月弯刀"] = {"半月弯刀5级", "半月弯刀4级", "3级半月弯刀", },
		["四级烈火剑法"] = {"烈火剑法5级", "烈火剑法4级", "3级烈火剑法", },
		["四级开天斩"] = {"开天斩5级", "开天斩4级", "3级开天斩", },
		["四级魔法盾"] = {"魔法盾5级", "魔法盾4级", "3级魔法盾",},
		["四级火墙"] = {"火墙5级", "火墙4级", "3级火墙",},
		["四级灭天火"] = {"灭天火5级", "灭天火4级", "3级灭天火",},
		["四级冰咆哮"] = {"冰咆哮5级", "冰咆哮4级", "3级冰咆哮",},
		["四级流星火雨"] = {"流星火雨5级", "流星火雨4级", "3级流星火雨",},
		["四级灵魂火符"] = {"灵魂火符5级", "灵魂火符4级", "3级灵魂火符",},
		["四级幽灵盾"] = {"幽灵盾5级", "幽灵盾4级", "3级幽灵盾",},
		["四级召唤神兽"] = {"召唤神兽5级", "召唤神兽4级", "3级召唤神兽",},
		["四级召唤月灵"] = {"召唤月灵5级", "召唤月灵4级", "3级召唤月灵",},
		["四级神圣战甲术"] = {"神圣战甲术5级", "神圣战甲术4级", "3级神圣战甲术",},
		["四级群体治疗术"] = {"群体治愈术5级", "群体治愈术4级", "3级群体治愈术",},

	}
		
	local keyname = lualib:KeyName(item);
	local skill_tbl = skill_books[keyname];
	assert(skill_tbl, "系统错误:技能书道具挂错了脚本.");
	
	local to_skill_k = skill_tbl[1]
	local require_skill_k = skill_tbl[2]
	
	if lualib:HasSkill(player, to_skill_k, false) == true then
		lualib:SysMsg_SendWarnMsg(player, "你已经学会"..keyname.."，不必重复学习！");
		return false
	end	
	
	if not lualib:HasSkill(player, require_skill_k, false) then
		local require_skill_name = skill_tbl[3]
		lualib:SysMsg_SendWarnMsg(player, "你需要先学会"..require_skill_name.."！");
		return false
	end
	
	
	local data_row = lualib:Item_DataRow(keyname);
	
	if lualib:Level(player) < data_row.Level then
		lualib:SysMsg_SendWarnMsg(player, "等级不足,无法学习!");
		return false;
	end
	
	if data_row.Job ~= 0 and lualib:Job(player) ~= data_row.Job then
		lualib:SysMsg_SendWarnMsg(player, "职业不符,无法学习!");
		return false;
	end
	
	if data_row.User ~= 2 and data_row.User ~= lualib:GUIDType(player) then
		lualib:SysMsg_SendWarnMsg(player, "该技能书不是为你准备的!");
		return false;
	end
	
	
	if not lualib:Item_Destroy("", item, "删除道具:使用技能书", "技能书脚本.") then
		lualib:SysMsg_SendWarnMsg(player, "技能书似乎已经损坏,请联系我们吧.")
        return false
	end
	
	assert(lualib:AddSkill(player, to_skill_k), "系统错误:技能配置信息似乎不存在!");
	lualib:SysMsg_SendWarnMsg(player, "你学会"..keyname)
	
	return true;
end