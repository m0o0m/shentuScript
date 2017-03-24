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

-------------------------------------------------------------------------------

--聚灵珠常量表
local bead_const = 
{
	["聚灵珠(小)"] = 
	{
		max_exp = 200000,		--珠子的经验上限
		in_pct = 100,			--涨经验倍数
		out_pct = 100,			--迭经验倍数
		slz_amount = 1,			--消息释灵珠个数
		gold_cost = 100000,		--花费金币个数
		for_dummy =	false,		--是否英雄使用 
	},
	["聚灵珠(中)"] = 
	{
		max_exp = 600000,
		in_pct = 200,
		out_pct = 200,
		slz_amount = 2,
		gold_cost = 100000,
		for_dummy =	false,		--是否英雄使用 
	},
	["聚灵珠(大)"] = 
	{
		max_exp = 1600000,
		in_pct = 400,
		out_pct = 400,
		slz_amount = 4,
		gold_cost = 100000,
		for_dummy =	false,		--是否英雄使用 
	},
	["英雄聚灵珠(小)"] = 
	{
		max_exp = 200000,		--珠子的经验上限
		in_pct = 100,			--涨经验倍数
		out_pct = 100,			--迭经验倍数
		slz_amount = 1,			--消息释灵珠个数
		gold_cost = 100000,		--花费金币个数
		for_dummy =	true,		--是否英雄使用 
	},
	["英雄聚灵珠(中)"] = 
	{
		max_exp = 600000,
		in_pct = 200,
		out_pct = 200,
		slz_amount = 2,
		gold_cost = 100000,
		for_dummy =	true,		--是否英雄使用 
	},
	["英雄聚灵珠(大)"] = 
	{
		max_exp = 1600000,
		in_pct = 400,
		out_pct = 400,
		slz_amount = 4,
		gold_cost = 100000,
		for_dummy =	true,		--是否英雄使用 
	},
	bead_free = "释灵珠",		--释放经验的道具
	bead_type = 5, 				--珠子的类型为杂货
	bead_subtype = 0,
};

--聚灵珠变量表
local bead_var = 
{
	var_cur = "cur_exp",		--珠子的当前经验
	var_max = "max_exp"			--珠子的最大经验(客户端显示用)
};

--聚灵珠玩家变量
local bead_inst = 
{
	var = "bead_inst"			--优化查找珠子速度
}

function bead_const:find(player)	
								--如果上次使用过的珠子存在则返回上次使用过的珠子
	local item = lualib:GetStr(player, bead_inst.var);
	if item ~= "" and lualib:HasItem(player, item) and lualib:InBag(player, item) then
		if not self:full(item) then
			return item;
		end
	end
	
	local beads = lualib:ItemsByType(player, self.bead_type, 
				self.bead_subtype, false, true, false, false);
	
	local dummy = DummyClosure(player)();		
	for i = #beads, 1, -1 do
		local bead = self[lualib:KeyName(beads[i])];
		if not bead or dummy.isdummy ~= bead.for_dummy or self:full(beads[i]) then
			table.remove(beads, i);
		end
	end
	
	item = (0 == #beads) and "" or beads[1];

	lualib:SetStr(player, bead_inst.var, item);
	return item;	
end

function bead_const:full(bead)
	local t = self[lualib:KeyName(bead)];
	assert(t, "系统错误!");	
								--判断珠子的经验是否达到上限了
	return lualib:GetInt(bead, bead_var.var_cur) >= t.max_exp;
end

function bead_const:push(player, bead, expv)	
	local keyname = lualib:KeyName(bead);
	local t = self[keyname];
	assert(t, "系统错误!");	--校验参数是否合法
	
	expv = math.floor(expv * t.in_pct / 100);	--经验倍数
	local expvs = lualib:GetInt(bead, bead_var.var_cur) + expv;
	expvs = (expvs > t.max_exp) and t.max_exp or expvs;	
	
	lualib:SetInt(bead, bead_var.var_cur, expvs);
	lualib:NotifyVar(bead, bead_var.var_cur);
	
	local dummy = DummyClosure(player)();
	if dummy.isdummy then
		lualib:SysMsg_SendTriggerMsg(dummy.dummylord, 
		"你的英雄"..lualib:Name(dummy.myself).."的"..keyname.."得到了"..expv.."点经验,当前经验为"..expvs.."!");
	else
		lualib:SysMsg_SendTriggerMsg(player, "你的"..keyname.."得到了"..expv.."点经验,当前经验为"..expvs.."!");
	end
end

function bead_const:pop(player, keyname)
	local t = self[keyname];
	assert(t, "系统错误!");
	
	local expvs = math.floor(t.max_exp * t.out_pct / 100);
	assert(lualib:AddExp(player, expvs, "加经验:聚灵珠加经验", "聚灵珠脚本"), "系统错误,添加经验不可能失败.");
end

function bead_const:costitem(player, bead)
	local t = self[lualib:KeyName(bead)];
	assert(t, "系统错误!");
	
	if lualib:ItemCount(player, self.bead_free) < t.slz_amount then
		return false;
	end
	
	return lualib:TakeItem(player, self.bead_free, t.slz_amount, "删除道具:聚灵珠释放经验", "聚灵珠脚本");
end

function bead_const:costgold(player, bead)
	local t = self[lualib:KeyName(bead)];
	assert(t, "系统错误!");
	
	return lualib:SubGold(player, t.gold_cost, "扣金币:聚灵珠释放经验", "聚灵珠脚本");
end
-------------------------------------------------------------------------------

function on_create(item)
	local t = bead_const[lualib:KeyName(item)];
	assert(t, "系统错误,聚灵珠物品挂错了脚本.");
	
    lualib:SetInt(item, bead_var.var_cur, 0);
	lualib:SetInt(item, bead_var.var_max, t.max_exp);
	
	lualib:NotifyVar(item, bead_var.var_max);
	lualib:NotifyVar(item, bead_var.var_cur);
end

function on_add_exp(player, expv)
	expv = tonumber(expv);
	
	local bead = bead_const:find(player); --查找聚灵珠
	if bead == "" then
		return;
	end
	
	bead_const:push(player, bead, expv);
end

function main(player, item)
	local keyname = lualib:KeyName(item);
	assert(bead_const[keyname], "系统错误,聚灵珠物品挂错了脚本.");
	
	local dummy = DummyClosure(player)();
	if lualib:Level(player) < lualib:Item_GetLevel(item) then
		if dummy.isdummy then
			lualib:NPCTalk(dummy.dummylord, lualib:Name(item).."的使用等级不够.\n\n <@Leave#"..dummy.myself.." *01* 离开>");
		else
			lualib:NPCTalk(player, lualib:Name(item).."的使用等级不够.\n\n <@Leave *01* 离开>");	
		end
		return false;
	end
	
	if not bead_const:full(item) then
		if dummy.isdummy then
			lualib:NPCTalk(dummy.dummylord, lualib:Name(item).."的存储量不足,无法释放经验.\n\n <@Leave#"..dummy.myself.." *01* 离开>");
		else
			lualib:NPCTalk(player, lualib:Name(item).."的存储量不足,无法释放经验.\n\n <@Leave *01* 离开>");	
		end
		return false;
	end
	
	local ret = nil;
	if dummy.isdummy then
		ret = bead_const:costitem(dummy.dummylord, item) or bead_const:costgold(dummy.dummylord, item);
	else
		ret = bead_const:costitem(player, item) or bead_const:costgold(player, item);
	end
	
	if ret then
		assert(lualib:Item_Destroy("", item, "删除道具:聚灵珠释放经验", "聚灵珠脚本"), "系统错误:该物品不可能删除失败!");
		bead_const:pop(player, keyname);
		return true;
	end
	
	if dummy.isdummy then
		lualib:NPCTalk(dummy.dummylord, lualib:Name(item).."需要一定的花费才能释放经验.\n\n <@Leave#"..dummy.myself.." *01* 离开>");
	else
		lualib:NPCTalk(player, lualib:Name(item).."需要一定的花费才能释放经验.\n\n <@Leave *01* 离开>");
	end
    return false;
end

function Leave(player, dummy)
	return "";
end