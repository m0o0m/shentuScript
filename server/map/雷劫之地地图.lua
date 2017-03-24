local data = {	--�ȼ�  = ÿ�ο۳��������ްٷֱȡ�����ͻ�Ƶȼ���ͬ�۳��ٷֱȲ�ͬ���������á�
	[1] = 5,
	[2] = 10,
	[3] = 15,
	[4] = 20,
	[5] = 25,
	[6] = 30,
	[7] = 35,
	[8] = 45,
	[9] = 50,
	[10] = 55,
	[11] = 60,
	[12] = 65,
}

local item = "�ɽٵ�"--�ɼ����˺��ĵ���������

local times = 9--ִ�м����׻�

local second = 10	--������ִ��һ���׻�

local buffs = "�ֻضɽ�����"	--�յ��׻��Ǹ������BUFF��������ʵ���׻���Ч����������buff��

--��ͼģ������н�ֹ��ʹ�õĵ��ߣ�����������س�ɶ��


function on_map_create(map, key)
	lualib:AddTrigger(map, lua_trigger_enter_map, "on_enter_map")
	lualib:AddTrigger(map, lua_trigger_leave_map, "on_leave_map")
end

function on_timer(player, id)
	local leijinum = lualib:GetInt(player, "leijinum")
	if not lualib:DelItem(player, item, 1, 2, "�ɽ�����", player) then
		local is = lualib:GetInt(player, "exerciselv") + 1
		local pct = data[is]
		local maxhp = lualib:Hp(player, true)
		local curhp = lualib:Hp(player, false)
		local subs = math.floor(maxhp * pct / 100)
		if curhp - subs > 0 then
			lualib:SetHp(player, curhp - subs, false)
			lualib:ShowRoleHPRef("", player, -subs)
			lualib:SetInt(player, "leijinum", leijinum + 1)
		else
			lualib:Kill(player)
			lualib:SysWarnMsg(player, "���ź��������ڹ�ͻ��ʧ���ˡ�")
		end
		lualib:AddBuff(player, buffs, 0)
	else
		lualib:SetInt(player, "leijinum", leijinum + 1)
		lualib:SysWarnMsg(player, "��ϲ������һ�š��ɽٵ��������ܱ����׻��˺���")
	end
	if leijinum + 1 >= times then
		lualib:DelayCall(player, 1, "�������ɾ���:success", "")
	end
end

function on_enter_map(player)
	if lualib:GetInt(player, "dujieing") ~= 0 then
		lualib:AddTimer(player, 1, second * 1000, times, "on_timer")
	end
	lualib:SetInt(player, "dujieing", 0)
	lualib:SetInt(player, "leijinum", 0)
end

function on_leave_map(player)
	local leijinum = lualib:GetInt(player, "leijinum")
	if leijinum < times then
		lualib:SysWarnMsg(player, "���ź��������ڹ�ͻ��ʧ���ˡ�")
	end
	lualib:SetInt(player, "dujieing", 0)
	lualib:SetInt(player, "leijinum", 0)
end