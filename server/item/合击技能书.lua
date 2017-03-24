function DummyClosure(player)
	local dummy = 
	{
		isdummy = (lualib:GUIDType(player) == 1), 
		dummylord = lualib:GetHeroLord(player), 
		myself = player
	};
	
	return function()
		return dummy;
	end
end

function JobBitClosure()
	local job_bits = {1--[[1 << 0]], 2--[[1 << 1]], 4--[[1 << 2]]};--职业位模式
	function JobMask(x, y)
		return bit32.bor(job_bits[x], job_bits[y]);
	end
	
	function JobBit(x, y)
		return bit32.bor(bit32.lshift(job_bits[x], 1), job_bits[y]);
	end
	
	local t = {Mask = JobMask, Bit = JobBit};
	return function()
		return t;
	end
end

-------------------------------------------------------------------------------

function main(dummy, item)
	local JobBit = JobBitClosure()();
	local skill_books = 
	{
		-- 1 = 战士 2 = 法师 3 = 道士
		--技能书KeyName		职业位模式				技能KeyName							技能KeyName				    
		["破魂斩"] =   {Mask = JobBit.Mask(1, 1), [JobBit.Bit(1, 1)] = "战战合击1级"},
		["噬魂沼泽"] = {Mask = JobBit.Mask(3, 3), [JobBit.Bit(3, 3)] = "道道合击1级"},
		["火龙气焰"] = {Mask = JobBit.Mask(2, 2), [JobBit.Bit(2, 2)] = "法法合击1级"},
		["雷霆一击"] = {Mask = JobBit.Mask(1, 2), [JobBit.Bit(1, 2)] = "战法合击1级", [JobBit.Bit(2, 1)] = "法战合击1级"},
		["末日审判"] = {Mask = JobBit.Mask(3, 2), [JobBit.Bit(3, 2)] = "道法合击1级", [JobBit.Bit(2, 3)] = "法道合击1级"},
		["劈星斩"] =   {Mask = JobBit.Mask(1, 3), [JobBit.Bit(1, 3)] = "战道合击1级", [JobBit.Bit(3, 1)] = "道战合击1级"},
	}
	
	local keyname = lualib:KeyName(item);
	local skill = skill_books[keyname];
	assert(skill, "系统错误:技能书道具挂错了脚本.");
	
	dummy = DummyClosure(dummy)();
	if not dummy.isdummy then
		lualib:SysMsg_SendWarnMsg(dummy.myself, "只有英雄才能学习该技能!");
		return false;
	end
	
	local data_row = lualib:Item_DataRow(keyname);
	
	if lualib:Level(dummy.myself) < data_row.Level then
		lualib:SysMsg_SendWarnMsg(dummy.dummylord, "你的英雄等级不足,无法学习!");
		return false;
	end
	
	local dummyJob, lordJob = lualib:Job(dummy.myself), lualib:Job(dummy.dummylord);
	if JobBit.Mask(dummyJob, lordJob) ~= skill.Mask then
		lualib:SysMsg_SendWarnMsg(dummy.dummylord, "英雄与主人的职业不符,无法学习!");
		return false;
	end
	
	local skill_key = skill[JobBit.Bit(lordJob, dummyJob)];
	assert(skill_key, "系统错误:合击技能关系表配错了!");
	
	if lualib:HasSkill(dummy.myself, skill_key, true) then
		lualib:SysMsg_SendWarnMsg(dummy.dummylord, "你的英雄已学习了该技能！");
        return false;
	end
	
	if not lualib:Item_Destroy("", item, "删除道具:使用技能书", "技能书脚本.") then
		lualib:SysMsg_SendWarnMsg(dummy.dummylord, "英雄技能书似乎已经损坏,请联系我们吧.");
        return false;
	end
	
	assert(lualib:AddSkill(dummy.myself, skill_key), "系统错误:技能配置信息似乎不存在!");
	lualib:SysMsg_SendTriggerMsg(dummy.dummylord, "你的英雄已成功习得技能:"..lualib:Name(item)..".");
	return true;
end