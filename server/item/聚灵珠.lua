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

--�����鳣����
local bead_const = 
{
	["������(С)"] = 
	{
		max_exp = 200000,		--���ӵľ�������
		in_pct = 100,			--�Ǿ��鱶��
		out_pct = 100,			--�����鱶��
		slz_amount = 1,			--��Ϣ���������
		gold_cost = 100000,		--���ѽ�Ҹ���
		for_dummy =	false,		--�Ƿ�Ӣ��ʹ�� 
	},
	["������(��)"] = 
	{
		max_exp = 600000,
		in_pct = 200,
		out_pct = 200,
		slz_amount = 2,
		gold_cost = 100000,
		for_dummy =	false,		--�Ƿ�Ӣ��ʹ�� 
	},
	["������(��)"] = 
	{
		max_exp = 1600000,
		in_pct = 400,
		out_pct = 400,
		slz_amount = 4,
		gold_cost = 100000,
		for_dummy =	false,		--�Ƿ�Ӣ��ʹ�� 
	},
	["Ӣ�۾�����(С)"] = 
	{
		max_exp = 200000,		--���ӵľ�������
		in_pct = 100,			--�Ǿ��鱶��
		out_pct = 100,			--�����鱶��
		slz_amount = 1,			--��Ϣ���������
		gold_cost = 100000,		--���ѽ�Ҹ���
		for_dummy =	true,		--�Ƿ�Ӣ��ʹ�� 
	},
	["Ӣ�۾�����(��)"] = 
	{
		max_exp = 600000,
		in_pct = 200,
		out_pct = 200,
		slz_amount = 2,
		gold_cost = 100000,
		for_dummy =	true,		--�Ƿ�Ӣ��ʹ�� 
	},
	["Ӣ�۾�����(��)"] = 
	{
		max_exp = 1600000,
		in_pct = 400,
		out_pct = 400,
		slz_amount = 4,
		gold_cost = 100000,
		for_dummy =	true,		--�Ƿ�Ӣ��ʹ�� 
	},
	bead_free = "������",		--�ͷž���ĵ���
	bead_type = 5, 				--���ӵ�����Ϊ�ӻ�
	bead_subtype = 0,
};

--�����������
local bead_var = 
{
	var_cur = "cur_exp",		--���ӵĵ�ǰ����
	var_max = "max_exp"			--���ӵ������(�ͻ�����ʾ��)
};

--��������ұ���
local bead_inst = 
{
	var = "bead_inst"			--�Ż����������ٶ�
}

function bead_const:find(player)	
								--����ϴ�ʹ�ù������Ӵ����򷵻��ϴ�ʹ�ù�������
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
	assert(t, "ϵͳ����!");	
								--�ж����ӵľ����Ƿ�ﵽ������
	return lualib:GetInt(bead, bead_var.var_cur) >= t.max_exp;
end

function bead_const:push(player, bead, expv)	
	local keyname = lualib:KeyName(bead);
	local t = self[keyname];
	assert(t, "ϵͳ����!");	--У������Ƿ�Ϸ�
	
	expv = math.floor(expv * t.in_pct / 100);	--���鱶��
	local expvs = lualib:GetInt(bead, bead_var.var_cur) + expv;
	expvs = (expvs > t.max_exp) and t.max_exp or expvs;	
	
	lualib:SetInt(bead, bead_var.var_cur, expvs);
	lualib:NotifyVar(bead, bead_var.var_cur);
	
	local dummy = DummyClosure(player)();
	if dummy.isdummy then
		lualib:SysMsg_SendTriggerMsg(dummy.dummylord, 
		"���Ӣ��"..lualib:Name(dummy.myself).."��"..keyname.."�õ���"..expv.."�㾭��,��ǰ����Ϊ"..expvs.."!");
	else
		lualib:SysMsg_SendTriggerMsg(player, "���"..keyname.."�õ���"..expv.."�㾭��,��ǰ����Ϊ"..expvs.."!");
	end
end

function bead_const:pop(player, keyname)
	local t = self[keyname];
	assert(t, "ϵͳ����!");
	
	local expvs = math.floor(t.max_exp * t.out_pct / 100);
	assert(lualib:AddExp(player, expvs, "�Ӿ���:������Ӿ���", "������ű�"), "ϵͳ����,��Ӿ��鲻����ʧ��.");
end

function bead_const:costitem(player, bead)
	local t = self[lualib:KeyName(bead)];
	assert(t, "ϵͳ����!");
	
	if lualib:ItemCount(player, self.bead_free) < t.slz_amount then
		return false;
	end
	
	return lualib:TakeItem(player, self.bead_free, t.slz_amount, "ɾ������:�������ͷž���", "������ű�");
end

function bead_const:costgold(player, bead)
	local t = self[lualib:KeyName(bead)];
	assert(t, "ϵͳ����!");
	
	return lualib:SubGold(player, t.gold_cost, "�۽��:�������ͷž���", "������ű�");
end
-------------------------------------------------------------------------------

function on_create(item)
	local t = bead_const[lualib:KeyName(item)];
	assert(t, "ϵͳ����,��������Ʒ�Ҵ��˽ű�.");
	
    lualib:SetInt(item, bead_var.var_cur, 0);
	lualib:SetInt(item, bead_var.var_max, t.max_exp);
	
	lualib:NotifyVar(item, bead_var.var_max);
	lualib:NotifyVar(item, bead_var.var_cur);
end

function on_add_exp(player, expv)
	expv = tonumber(expv);
	
	local bead = bead_const:find(player); --���Ҿ�����
	if bead == "" then
		return;
	end
	
	bead_const:push(player, bead, expv);
end

function main(player, item)
	local keyname = lualib:KeyName(item);
	assert(bead_const[keyname], "ϵͳ����,��������Ʒ�Ҵ��˽ű�.");
	
	local dummy = DummyClosure(player)();
	if lualib:Level(player) < lualib:Item_GetLevel(item) then
		if dummy.isdummy then
			lualib:NPCTalk(dummy.dummylord, lualib:Name(item).."��ʹ�õȼ�����.\n\n <@Leave#"..dummy.myself.." *01* �뿪>");
		else
			lualib:NPCTalk(player, lualib:Name(item).."��ʹ�õȼ�����.\n\n <@Leave *01* �뿪>");	
		end
		return false;
	end
	
	if not bead_const:full(item) then
		if dummy.isdummy then
			lualib:NPCTalk(dummy.dummylord, lualib:Name(item).."�Ĵ洢������,�޷��ͷž���.\n\n <@Leave#"..dummy.myself.." *01* �뿪>");
		else
			lualib:NPCTalk(player, lualib:Name(item).."�Ĵ洢������,�޷��ͷž���.\n\n <@Leave *01* �뿪>");	
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
		assert(lualib:Item_Destroy("", item, "ɾ������:�������ͷž���", "������ű�"), "ϵͳ����:����Ʒ������ɾ��ʧ��!");
		bead_const:pop(player, keyname);
		return true;
	end
	
	if dummy.isdummy then
		lualib:NPCTalk(dummy.dummylord, lualib:Name(item).."��Ҫһ���Ļ��Ѳ����ͷž���.\n\n <@Leave#"..dummy.myself.." *01* �뿪>");
	else
		lualib:NPCTalk(player, lualib:Name(item).."��Ҫһ���Ļ��Ѳ����ͷž���.\n\n <@Leave *01* �뿪>");
	end
    return false;
end

function Leave(player, dummy)
	return "";
end