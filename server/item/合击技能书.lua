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
	local job_bits = {1--[[1 << 0]], 2--[[1 << 1]], 4--[[1 << 2]]};--ְҵλģʽ
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
		-- 1 = սʿ 2 = ��ʦ 3 = ��ʿ
		--������KeyName		ְҵλģʽ				����KeyName							����KeyName				    
		["�ƻ�ն"] =   {Mask = JobBit.Mask(1, 1), [JobBit.Bit(1, 1)] = "սս�ϻ�1��"},
		["�ɻ�����"] = {Mask = JobBit.Mask(3, 3), [JobBit.Bit(3, 3)] = "�����ϻ�1��"},
		["��������"] = {Mask = JobBit.Mask(2, 2), [JobBit.Bit(2, 2)] = "�����ϻ�1��"},
		["����һ��"] = {Mask = JobBit.Mask(1, 2), [JobBit.Bit(1, 2)] = "ս���ϻ�1��", [JobBit.Bit(2, 1)] = "��ս�ϻ�1��"},
		["ĩ������"] = {Mask = JobBit.Mask(3, 2), [JobBit.Bit(3, 2)] = "�����ϻ�1��", [JobBit.Bit(2, 3)] = "�����ϻ�1��"},
		["����ն"] =   {Mask = JobBit.Mask(1, 3), [JobBit.Bit(1, 3)] = "ս���ϻ�1��", [JobBit.Bit(3, 1)] = "��ս�ϻ�1��"},
	}
	
	local keyname = lualib:KeyName(item);
	local skill = skill_books[keyname];
	assert(skill, "ϵͳ����:��������߹Ҵ��˽ű�.");
	
	dummy = DummyClosure(dummy)();
	if not dummy.isdummy then
		lualib:SysMsg_SendWarnMsg(dummy.myself, "ֻ��Ӣ�۲���ѧϰ�ü���!");
		return false;
	end
	
	local data_row = lualib:Item_DataRow(keyname);
	
	if lualib:Level(dummy.myself) < data_row.Level then
		lualib:SysMsg_SendWarnMsg(dummy.dummylord, "���Ӣ�۵ȼ�����,�޷�ѧϰ!");
		return false;
	end
	
	local dummyJob, lordJob = lualib:Job(dummy.myself), lualib:Job(dummy.dummylord);
	if JobBit.Mask(dummyJob, lordJob) ~= skill.Mask then
		lualib:SysMsg_SendWarnMsg(dummy.dummylord, "Ӣ�������˵�ְҵ����,�޷�ѧϰ!");
		return false;
	end
	
	local skill_key = skill[JobBit.Bit(lordJob, dummyJob)];
	assert(skill_key, "ϵͳ����:�ϻ����ܹ�ϵ�������!");
	
	if lualib:HasSkill(dummy.myself, skill_key, true) then
		lualib:SysMsg_SendWarnMsg(dummy.dummylord, "���Ӣ����ѧϰ�˸ü��ܣ�");
        return false;
	end
	
	if not lualib:Item_Destroy("", item, "ɾ������:ʹ�ü�����", "������ű�.") then
		lualib:SysMsg_SendWarnMsg(dummy.dummylord, "Ӣ�ۼ������ƺ��Ѿ���,����ϵ���ǰ�.");
        return false;
	end
	
	assert(lualib:AddSkill(dummy.myself, skill_key), "ϵͳ����:����������Ϣ�ƺ�������!");
	lualib:SysMsg_SendTriggerMsg(dummy.dummylord, "���Ӣ���ѳɹ�ϰ�ü���:"..lualib:Name(item)..".");
	return true;
end