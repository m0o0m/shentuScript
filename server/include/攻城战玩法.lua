--
--**注意事项** 
--所有攻城怪必须配成BOSS怪(防止刷点被占用).
--城门怪的生命/魔法恢复必须为0(生命做为破损度),并且尸体永不消失,所有攻城怪不可移动.
--请不要修改标记为不可更改的字段名.
--**注意事项** 
--
local tCastleWarConst = 
{
	Castle = --城堡信息 				--字段名不可更改
	{
		CastleName = "神歌城",  		--字段名不可更改
		CastleMap = "龙城",				--字段名不可更改
		
		--城堡城门信息
		CastleDoor = 					--字段名不可更改
		{
			KeyName = "城堡门",			--字段名不可更改
			X = 569,					--字段名不可更改
			Y = 278,					--字段名不可更改
			Dir = 3,					--字段名不可更改
			Blocks =  --场景阻挡格4个	--字段名不可更改
			{
				{KeyName = "城门阻挡", X = 568, Y = 278, Dir = 3},
				{KeyName = "城门阻挡", X = 568, Y = 277, Dir = 3},
				{KeyName = "城门阻挡", X = 569, Y = 277, Dir = 3},
				{KeyName = "城门阻挡", X = 569, Y = 276, Dir = 3},
			}
		},
		CastleGuard = --城堡守卫		--字段名不可更改
		{
			{KeyName = "弓箭守卫", X = 560, Y = 278, Dir = 3},
			{KeyName = "弓箭守卫", X = 558, Y = 280, Dir = 3},
			{KeyName = "弓箭守卫", X = 556, Y = 282, Dir = 3},
			{KeyName = "弓箭守卫", X = 575, Y = 263, Dir = 3},
			{KeyName = "弓箭守卫", X = 577, Y = 261, Dir = 3},
			{KeyName = "弓箭守卫", X = 579, Y = 259, Dir = 3},
		},
		CastleNpc = --城堡NPC			--字段名不可更改
		{
			{KeyName = "龙城老兵", X = 480, Y = 245, Dir = 2, Map = "龙城"},
			{KeyName = "龙城老兵", X = 488, Y = 250, Dir = 1, Map = "龙城"},
			{KeyName = "龙城老兵", X = 509, Y = 276, Dir = 2, Map = "龙城"},
			{KeyName = "龙城老兵", X = 523, Y = 263, Dir = 2, Map = "龙城"},
			{KeyName = "龙城老兵", X = 521, Y = 233, Dir = 2, Map = "龙城"},
			{KeyName = "龙城老兵", X = 537, Y = 273, Dir = 2, Map = "龙城"},
			{KeyName = "龙城老兵", X = 525, Y = 285, Dir = 2, Map = "龙城"},
			{KeyName = "龙城老兵", X = 548, Y = 236, Dir = 2, Map = "龙城"},
			{KeyName = "龙城老兵", X = 562, Y = 218, Dir = 2, Map = "龙城"},
			{KeyName = "龙城老兵", X = 561, Y = 248, Dir = 2, Map = "龙城"},
			{KeyName = "龙城老兵", X = 575, Y = 235, Dir = 2, Map = "龙城"},
		},
	},
	Palace = --皇宫信息					--字段名不可更改
	{
		PalaceDoor = --皇宫门3个		--字段名不可更改
		{
			{KeyName = "皇宫门1", X = 505, Y = 223, Dir = 5},
			{KeyName = "皇宫门2", X = 509, Y = 222, Dir = 3},
			{KeyName = "皇宫门3", X = 515, Y = 216, Dir = 3},
			BuffKey = "无敌",			--字段名不可更改
			MainDoorJump = {1, 510, 221, 1, 1}	
										--字段名不可更改
		}
	},
	Version = 1	--表结构版本号,如果修改表结构了,请将版本号加1	--字段名不可更改
};

-------------------------------------------------------------------------------

CCastle = 
{
	tCastleWarVar = "tCastleWarVar",
	tCastleName = "神歌城"
};

function CCastle:GenVarTable()
	local tCastleWarVar = 		--根据常量表自动生成变量表,减少配表错误
	{
		Castle = 
		{
			CastleDoor = 
			{
				Guid = 0,
				Life = 1,
				Blocks = {}
			},
			CastleGuard = {},
			CastleNpc = {},
		},
		Palace = 
		{
			PalaceDoor = {},
		},
	};

	local tConst = tCastleWarConst;
	
	for i = 1, #tConst.Castle.CastleDoor.Blocks do
		table.insert(tCastleWarVar.Castle.CastleDoor.Blocks, {Guid = 0});
	end
	
	for i = 1, #tConst.Castle.CastleGuard do
		table.insert(tCastleWarVar.Castle.CastleGuard, {Life = 1, Guid = 0});
	end
	
	for i = 1, #tConst.Castle.CastleNpc do
		table.insert(tCastleWarVar.Castle.CastleNpc, {Guid = 0});
	end
	
	for i = 1, #tConst.Palace.PalaceDoor do
		table.insert(tCastleWarVar.Palace.PalaceDoor, {Life = 1, Guid = 0});
	end
	
	return tCastleWarVar;
end

function CCastle:GetVarTable()
	local tConst = tCastleWarConst;
	
	local tVar = lualib:GetDBStr(self.tCastleWarVar);
	if tVar == "" then 
		tVar = self:GenVarTable();
	else
		tVar = json.decode(tVar);
		if tVar.Version ~= tConst.Version then
			tVar = self:GenVarTable();
		end
	end
	
	return tVar;
end

function CCastle:SetVarTable(tVar)
	local tConst = tCastleWarConst;
	tVar["Version"] = tConst.Version;			--加入版本号
	
	local strVar = json.encode(tVar);
	lualib:SetDBStr(self.tCastleWarVar, strVar);
end

function CCastle:Init(strMap)
	local tVar = self:GetVarTable();
	
	self:CastleDoorBorn(strMap, tVar);
	self:CastleNpcBorn(strMap, tVar);
	self:CastleGuardBorn(strMap, tVar);
	self:PalaceDoorBorn(strMap, tVar);
	self:PalaceDoorAddBuff(tVar);
	self:SetVarTable(tVar);
	
	self:TriggerInit(strMap);
end

function CCastle:CastleWarStart()
	local tConst = tCastleWarConst;
	
	self:CastleNpcClear();
	self:PalaceDoorDelBuff();
	
	lualib:SysMsg_SendBroadcastMsg(tConst.Castle.CastleName.."攻城战开始了.", "【系统】");
end

function CCastle:QueryCastleStart()
	return lualib:QueryCastleStart(self.tCastleName);
end

function CCastle:CastleWarStop()
	local tVar = self:GetVarTable();
	
	local tConst = tCastleWarConst;
	
	self:CastleNpcBorn(lualib:Map_GetMapGuid(tConst.Castle.CastleMap), tVar);
	self:PalaceDoorAddBuff(tVar);
	self:SetVarTable(tVar);
	
	lualib:SysMsg_SendBroadcastMsg(tConst.Castle.CastleName.."攻城战结束了.", "【系统】");
	
	local strOwner = self:GetOwner();
	if strOwner ~= "" then
		lualib:SysMsg_SendBroadcastMsg(tConst.Castle.CastleName.."被"..strOwner.."行会占领了.", "【系统】");
	end
end

function CCastle:SetCastleTempOwner(strFamily)
	local tConst = tCastleWarConst;	
	
	lualib:SetCastleTempFamily(tConst.Castle.CastleName, strFamily);
end

function CCastle:IsBattleStart()
	local tConst = tCastleWarConst;
	
	return lualib:IsCastleWarStart(tConst.Castle.CastleName);
end

function CCastle:IsDefenceSide(strPlayer)
	return self:IsDefenceFamily(lualib:Name(lualib:GuildGuid(strPlayer)));
end

function CCastle:IsDefenceFamily(strMy)
	if strMy == "" then
		return false;
	end
	
	local tConst = tCastleWarConst;
	local strOwner = lualib:GetCastleOwnFamily(tConst.Castle.CastleName);
	if strOwner == "" then
		return false;
	end
	
    return strOwner == strMy;
end

function CCastle:IsAttackSide(strPlayer)
	return self:IsAttackFamily(lualib:Name(lualib:GuildGuid(strPlayer)));
end

function CCastle:IsAttackFamily(strMy)
	if strMy == "" then
		return false;
	end
	
	local tConst = tCastleWarConst;
    local strAttackFamilys = lualib:GetCastleAttackFamily(tConst.Castle.CastleName);
	if strAttackFamilys == "" then
		return false;
	end
	
    local tAttackFamilys = string.split(strAttackFamilys, "&");
    for _, v in pairs(tAttackFamilys) do
        if v == strMy then
            return true;
        end
    end

    return false;
end

function CCastle:RegisterBattle(strPlayer, dwStartTime, dwDuration)
	local tConst = tCastleWarConst;
	
    local strAttack = lualib:Name(lualib:GuildGuid(strPlayer));

    if lualib:IsCastleWarNull(tConst.Castle.CastleName) then
        return lualib:StartCastleWarEx(tConst.Castle.CastleName, strAttack, dwStartTime, dwDuration);
    else
        local tAttacks = {strAttack};
        return lualib:ModifyCastleAttacks(tConst.Castle.CastleName, tAttacks, false);
    end
end

--T+N算法返回明天晚上八点的秒数
function CCastle:GenTNTime()  
    local T = 72000;        --从00:00:00到20:00:00的秒数
    local N = 86400;        --24小时的秒数
	
    local strTodayDate = lualib:Time2Str("%Y-%m-%d", lualib:GetAllTime());
    return lualib:Str2Time(strTodayDate) + T + N;
end

--WEEK算法返回每周五晚上八点的秒数,如果该周五晚八点时间已过则返回下周五晚八点
function CCastle:GenWeekTime()
    local N = 86400;                    --24小时的秒数 
    local T = N * 6 + 72000;            --周五晚八点的秒数
    local dwWeek = lualib:GetWeek(0);   --返回今天的周
    local dwTime = lualib:Str2Time(lualib:Time2Str("%Y-%m-%d", lualib:GetAllTime())); --返回今天00:00:00的秒数

    dwTime = dwTime - ((dwWeek + 1) * N) + T;--算出本周五晚八点的秒数
    if dwTime < lualib:GetAllTime() then
        return dwTime + N * 7;
    end

    return dwTime;
end

function CCastle:TriggerInit(strMap)
	lualib:AddTrigger(strMap, lua_trigger_pre_enter_jump, "OnEnterJumpPos");
	lualib:AddTrigger(strMap, lua_trigger_castle_war_start, "OnCastleWarStart");
	lualib:AddTrigger(strMap, lua_trigger_castle_war_end, "OnCastleWarStop");
end

function CCastle:GetOwner()
	local tConst = tCastleWarConst;
	
	return lualib:GetCastleOwnFamily(tConst.Castle.CastleName);
end

function CCastle:GetTempOwner()
	local tConst = tCastleWarConst;
	
	return lualib:GetCastleTempFamily(tConst.Castle.CastleName);
end

function CCastle:GetAttacker()
	local tConst = tCastleWarConst;
	
    return lualib:GetCastleAttackFamily(tConst.Castle.CastleName);
end

function CCastle:GetBattleTime()
	local tConst = tCastleWarConst;
	
    return lualib:QueryCastleStart(tConst.Castle.CastleName);
end

function CCastle:MaxCastleGuardCount()
	local tVar = self:GetVarTable();
	
	assert(tVar.Castle and tVar.Castle.CastleGuard, "系统错误,tCastleWarConst表格式有误!");
	
	return #tVar.Castle.CastleGuard;
end

function CCastle:CurCastleGuardCount()
	local tVar = self:GetVarTable();
	
	assert(tVar.Castle and tVar.Castle.CastleGuard, "系统错误,tCastleWarConst表格式有误!");
	
	local iCount = 0;
	for i = 1, #tVar.Castle.CastleGuard do
		if tVar.Castle.CastleGuard[i].Life ~= 0 then
			iCount = iCount + 1;
		end
	end
	
	return iCount;
end

function CCastle:ReliveCastleGuard()
	local tVar = self:GetVarTable();
	
	assert(tVar.Castle and tVar.Castle.CastleGuard, "系统错误,tCastleWarConst表格式有误!");
	
	local tConst = tCastleWarConst;
	
	local strMap = lualib:Map_GetMapGuid(tConst.Castle.CastleMap);
	for i = 1, #tVar.Castle.CastleGuard do
		if tVar.Castle.CastleGuard[i].Life == 0 then
			tVar.Castle.CastleGuard[i].Guid = lualib:Map_GenSingleMonster(strMap, tConst.Castle.CastleGuard[i].X,
				tConst.Castle.CastleGuard[i].Y, 0, tConst.Castle.CastleGuard[i].Dir, tConst.Castle.CastleGuard[i].KeyName, false);
		
			assert(tVar.Castle.CastleGuard[i].Guid ~= "", "城门守卫刷新失败!");
			
			tVar.Castle.CastleGuard[i].Life = 1;
			lualib:AddTrigger(tVar.Castle.CastleGuard[i].Guid, lua_trigger_post_die, "OnCastleGuardDie");
			break;
		end
	end
	
	self:SetVarTable(tVar);
end

function CCastle:IsCastleDoorDie()
	local tVar = self:GetVarTable();
	
	assert(tVar.Castle and tVar.Castle.CastleDoor, "系统错误,tCastleWarConst表格式有误!");
	assert(tVar.Castle.CastleDoor.Guid ~= 0 and tVar.Castle.CastleDoor.Guid ~= "", "系统错误,城门数据异常!");
	
	return tVar.Castle.CastleDoor.Life == 0;
end

function CCastle:IsCastleDoorBreak()
	local tVar = self:GetVarTable();
	
	assert(tVar.Castle and tVar.Castle.CastleDoor, "系统错误,tCastleWarConst表格式有误!");
	assert(tVar.Castle.CastleDoor.Guid ~= 0 and tVar.Castle.CastleDoor.Guid ~= "", "系统错误,城门数据异常!");
	
	return lualib:Hp(tVar.Castle.CastleDoor.Guid, true) > lualib:Hp(tVar.Castle.CastleDoor.Guid, false);
end

function CCastle:RepairCastleDoor()
	local tVar = self:GetVarTable();
	
	assert(tVar.Castle and tVar.Castle.CastleDoor, "系统错误,tCastleWarConst表格式有误!");
	assert(tVar.Castle.CastleDoor.Guid ~= 0 and tVar.Castle.CastleDoor.Guid ~= "", "系统错误,城门数据异常!");
	
	lualib:SetHp(tVar.Castle.CastleDoor.Guid, lualib:Hp(tVar.Castle.CastleDoor.Guid, true), false);
end

function CCastle:ReliveCastleDoor()
	local tVar = self:GetVarTable();
	
	assert(tVar.Castle and tVar.Castle.CastleDoor, "系统错误,tCastleWarConst表格式有误!");
	assert(tVar.Castle.CastleDoor.Guid ~= 0 and tVar.Castle.CastleDoor.Guid ~= "", "系统错误,城门数据异常!");
	
	lualib:Monster_Remove(tVar.Castle.CastleDoor.Guid);
	
	local tConst = tCastleWarConst;
	local strMap = lualib:Map_GetMapGuid(tConst.Castle.CastleMap);
	
	--重刷城门
	tVar.Castle.CastleDoor.Guid = lualib:Map_GenSingleMonster(strMap, tConst.Castle.CastleDoor.X,
		tConst.Castle.CastleDoor.Y, 0, tConst.Castle.CastleDoor.Dir, tConst.Castle.CastleDoor.KeyName, false);
	
	assert(tVar.Castle.CastleDoor.Guid ~= 0 and tVar.Castle.CastleDoor.Guid ~= "", "系统错误,重刷城门失败!");
	tVar.Castle.CastleDoor.Life = 1;
	
	--刷新城门阻挡
	for i = 1, #tConst.Castle.CastleDoor.Blocks do
		tVar.Castle.CastleDoor.Blocks[i].Guid = lualib:Map_GenNpc(strMap, tConst.Castle.CastleDoor.Blocks[i].KeyName,
			tConst.Castle.CastleDoor.Blocks[i].X, tConst.Castle.CastleDoor.Blocks[i].Y, 0, tConst.Castle.CastleDoor.Blocks[i].Dir);
			
			assert(tVar.Castle.CastleDoor.Blocks[i].Guid ~= "", "系统错误,城堡城门阻挡NPC刷新失败!");
	end
	
	lualib:AddTrigger(tVar.Castle.CastleDoor.Guid, lua_trigger_post_die, "OnCastleDoorDie");
		
	self:SetVarTable(tVar);
end

function CCastle:IsPalaceDoorDie(iDoorIdx)
	local tVar = self:GetVarTable();
	
	assert(tVar.Palace and tVar.Palace.PalaceDoor, "系统错误,tCastleWarConst表格式有误!");
	assert(tVar.Palace.PalaceDoor[iDoorIdx].Guid ~= 0 and tVar.Palace.PalaceDoor[iDoorIdx].Guid ~= "", "系统错误,皇宫门数据异常!");
	
	return tVar.Palace.PalaceDoor[iDoorIdx].Life == 0;	
end

function CCastle:IsPalaceDoorBreak(iDoorIdx)
	local tVar = self:GetVarTable();
	
	assert(tVar.Palace and tVar.Palace.PalaceDoor, "系统错误,tCastleWarConst表格式有误!");
	assert(tVar.Palace.PalaceDoor[iDoorIdx].Guid ~= 0 and tVar.Palace.PalaceDoor[iDoorIdx].Guid ~= "", "系统错误,皇宫门数据异常!");
	
	return lualib:Hp(tVar.Palace.PalaceDoor[iDoorIdx].Guid, true) > lualib:Hp(tVar.Palace.PalaceDoor[iDoorIdx].Guid, false);
end

function CCastle:RepairPalaceDoor(iDoorIdx)
	local tVar = self:GetVarTable();
	
	assert(tVar.Palace and tVar.Palace.PalaceDoor, "系统错误,tCastleWarConst表格式有误!");
	assert(tVar.Palace.PalaceDoor[iDoorIdx].Guid ~= 0 and tVar.Palace.PalaceDoor[iDoorIdx].Guid ~= "", "系统错误,皇宫门数据异常!");

	lualib:SetHp(tVar.Palace.PalaceDoor[iDoorIdx].Guid, lualib:Hp(tVar.Palace.PalaceDoor[iDoorIdx].Guid, true), false);	
end

function CCastle:RelivePalaceDoor(iDoorIdx)
	local tVar = self:GetVarTable();
	
	assert(tVar.Palace and tVar.Palace.PalaceDoor, "系统错误,tCastleWarConst表格式有误!");
	assert(tVar.Palace.PalaceDoor[iDoorIdx].Guid ~= 0 and tVar.Palace.PalaceDoor[iDoorIdx].Guid ~= "", "系统错误,皇宫门数据异常!");
	
	lualib:Monster_Remove(tVar.Palace.PalaceDoor[iDoorIdx].Guid);
	
	local tConst = tCastleWarConst;
	
	--重刷城门
	tVar.Palace.PalaceDoor[iDoorIdx].Guid = lualib:Map_GenSingleMonster(lualib:Map_GetMapGuid(tConst.Castle.CastleMap), tConst.Palace.PalaceDoor[iDoorIdx].X,
		tConst.Palace.PalaceDoor[iDoorIdx].Y, 0, tConst.Palace.PalaceDoor[iDoorIdx].Dir, tConst.Palace.PalaceDoor[iDoorIdx].KeyName, false);
	
	assert(tVar.Palace.PalaceDoor[iDoorIdx].Guid ~= 0 and tVar.Palace.PalaceDoor[iDoorIdx].Guid ~= "", "系统错误,重刷皇宫门失败!");
	assert(lualib:AddBuff(tVar.Palace.PalaceDoor[iDoorIdx].Guid, tConst.Palace.PalaceDoor.BuffKey, 0), "系统错误,皇宫门添加无敌BUFF失败!");
	
	tVar.Palace.PalaceDoor[iDoorIdx].Life = 1;
	
	lualib:AddTrigger(tVar.Palace.PalaceDoor[iDoorIdx].Guid, lua_trigger_post_die, "OnPalaceDoorDie");	
	self:SetVarTable(tVar);
end

function CCastle:CastleDoorBorn(strMap, tVar)
	assert(tVar.Castle and tVar.Castle.CastleDoor, "系统错误,tCastleWarConst表格式有误!");
	
	local tConst = tCastleWarConst;
	
	--先刷城门
	tVar.Castle.CastleDoor.Guid = lualib:Map_GenSingleMonster(strMap, tConst.Castle.CastleDoor.X,
		tConst.Castle.CastleDoor.Y, 0, tConst.Castle.CastleDoor.Dir, tConst.Castle.CastleDoor.KeyName, false);
		
	assert(tVar.Castle.CastleDoor.Guid ~= "", "系统错误,城堡城门怪刷新失败!");
	
	--城门已破损?
	if tVar.Castle.CastleDoor.Life == 0 then
		lualib:Kill(tVar.Castle.CastleDoor.Guid);
		return;		
	end
	
	--设置城门血量
	--local iHp = math.floor(lualib:Hp(tVar.Castle.CastleDoor.Guid, true) * tVar.Castle.CastleDoor.Life / 100);
	--lualib:SetHp(tVar.Castle.CastleDoor.Guid, iHp, false);
	
	--刷新城门阻挡
	for i = 1, #tConst.Castle.CastleDoor.Blocks do
		tVar.Castle.CastleDoor.Blocks[i].Guid = lualib:Map_GenNpc(strMap, tConst.Castle.CastleDoor.Blocks[i].KeyName,
			tConst.Castle.CastleDoor.Blocks[i].X, tConst.Castle.CastleDoor.Blocks[i].Y, 0, tConst.Castle.CastleDoor.Blocks[i].Dir);
			
			assert(tVar.Castle.CastleDoor.Blocks[i].Guid ~= "", "系统错误,城堡城门阻挡NPC刷新失败!");
	end
	
	lualib:AddTrigger(tVar.Castle.CastleDoor.Guid, lua_trigger_post_die, "OnCastleDoorDie");
end

--[[
function CCastle:CastleDoorAttack(strCastleDoor)
	local tVar = self:GetVarTable();
		
	assert(tVar.Castle and tVar.Castle.CastleDoor, "系统错误,tCastleWarConst表格式有误!");
	assert(tVar.Castle.CastleDoor.Guid == strCastleDoor, "系统错误,城门数据异常!");
	
	tVar.Castle.CastleDoor.Life = math.floor(lualib:Hp(strCastleDoor, false) / lualib:Hp(strCastleDoor, true) * 100);
	
	if tVar.Castle.CastleDoor.Life < 1 then	--为避免除法取整误差,只有死亡时生命百分比才会为0
		tVar.Castle.CastleDoor.Life = 1;
	end
	
	self:SetVarTable(tVar);
end
]]

function CCastle:CastleDoorDie(strCastleDoor)
	local tVar = self:GetVarTable();
		
	assert(tVar.Castle and tVar.Castle.CastleDoor, "系统错误,tCastleWarConst表格式有误!");
	assert(tVar.Castle.CastleDoor.Guid == strCastleDoor, "系统错误,城门数据异常!");
	
	tVar.Castle.CastleDoor.Life = 0;
	
	for i = 1, #tVar.Castle.CastleDoor.Blocks do
		assert(tVar.Castle.CastleDoor.Blocks[i].Guid ~= "" and tVar.Castle.CastleDoor.Blocks[i].Guid ~= 0, "系统错误,阻挡数据异常");
		
		lualib:Npc_Remove(tVar.Castle.CastleDoor.Blocks[i].Guid);
		tVar.Castle.CastleDoor.Blocks[i].Guid = 0;
	end
	
	lualib:ClearTrigger(strCastleDoor);
	self:SetVarTable(tVar);
end

function CCastle:CastleGuardBorn(strMap, tVar)
	assert(tVar.Castle and tVar.Castle.CastleGuard, "系统错误,tCastleWarConst表格式有误!");
	
	local tConst = tCastleWarConst;
	
	for i = 1, #tVar.Castle.CastleGuard do	--守卫没死亡过就刷出守卫
		if tVar.Castle.CastleGuard[i].Life ~= 0 then
			tVar.Castle.CastleGuard[i].Guid = lualib:Map_GenSingleMonster(strMap, tConst.Castle.CastleGuard[i].X,
				tConst.Castle.CastleGuard[i].Y, 0, tConst.Castle.CastleGuard[i].Dir, tConst.Castle.CastleGuard[i].KeyName, false);
		
			assert(tVar.Castle.CastleGuard[i].Guid ~= "", "城门守卫刷新失败!");
			lualib:AddTrigger(tVar.Castle.CastleGuard[i].Guid, lua_trigger_post_die, "OnCastleGuardDie");
		end
	end
end

function CCastle:CastleGuardDie(strCastleGuard)
	local tVar = self:GetVarTable();
	
	local iDieIdx = nil;
	for i = 1, #tVar.Castle.CastleGuard do	--找出死亡的守卫
		if tVar.Castle.CastleGuard[i].Life ~= 0 then
			if tVar.Castle.CastleGuard[i].Guid == strCastleGuard then
				iDieIdx = i;
				break;
			end
		end
	end
	
	assert(iDieIdx, "系统错误,守卫数据异常!");
	tVar.Castle.CastleGuard[iDieIdx].Life = 0;
	tVar.Castle.CastleGuard[iDieIdx].Guid = 0;
	
	lualib:ClearTrigger(strCastleGuard);
	self:SetVarTable(tVar);
end

function CCastle:CastleNpcBorn(strMap, tVar)
	assert(tVar.Castle and tVar.Castle.CastleNpc, "系统错误,tCastleWarConst表格式有误!");
	
	local tConst = tCastleWarConst;
	
	--刷新城堡NPC
	for i = 1, #tVar.Castle.CastleNpc do		
		tVar.Castle.CastleNpc[i].Guid = lualib:Map_GenNpc(
			lualib:Map_GetMapGuid(tConst.Castle.CastleNpc[i].Map), 
			tConst.Castle.CastleNpc[i].KeyName,
			tConst.Castle.CastleNpc[i].X, 
			tConst.Castle.CastleNpc[i].Y, 0, 
			tConst.Castle.CastleNpc[i].Dir);
			
		assert(tVar.Castle.CastleNpc[i].Guid ~= "", "系统错误,城堡NPC刷新失败!");
	end
end

function CCastle:CastleNpcClear()
	local tVar = self:GetVarTable();
	
	assert(tVar.Castle and tVar.Castle.CastleNpc, "系统错误,tCastleWarConst表格式有误!");
	
	--城战开始后清除城堡NPC
	for i = 1, #tVar.Castle.CastleNpc do
		assert(tVar.Castle.CastleNpc[i].Guid ~= "" and tVar.Castle.CastleNpc[i].Guid ~= 0, "系统错误,城堡NPC数据异常!");
		lualib:Npc_Remove(tVar.Castle.CastleNpc[i].Guid);
		tVar.Castle.CastleNpc[i].Guid = 0;
	end
	
	self:SetVarTable(tVar);
end

function CCastle:PalaceDoorBorn(strMap, tVar)
	assert(tVar.Palace and tVar.Palace.PalaceDoor, "系统错误,tCastleWarConst表格式有误!");
	
	local tConst = tCastleWarConst;
	
	--local iHp = 0;
	for i = 1, #tVar.Palace.PalaceDoor do --刷新皇宫三道门
		tVar.Palace.PalaceDoor[i].Guid = lualib:Map_GenSingleMonster(strMap, tConst.Palace.PalaceDoor[i].X,
			tConst.Palace.PalaceDoor[i].Y, 0, tConst.Palace.PalaceDoor[i].Dir, tConst.Palace.PalaceDoor[i].KeyName, false);
			
		assert(tVar.Palace.PalaceDoor[i].Guid ~= "", "皇宫门刷新失败!");
		
		if tVar.Palace.PalaceDoor[i].Life == 0 then
			lualib:Kill(tVar.Palace.PalaceDoor[i].Guid);
		else
			--iHp = math.floor(lualib:Hp(tVar.Palace.PalaceDoor.Guids[i], true) * tVar.Palace.PalaceDoor.Lifes[i] / 100);
			--lualib:SetHp(tVar.Palace.PalaceDoor.Guids[i], iHp, false);
			
			lualib:AddTrigger(tVar.Palace.PalaceDoor[i].Guid, lua_trigger_post_die, "OnPalaceDoorDie");
		end
	end
end

function CCastle:PalaceDoorAddBuff(tVar)
	assert(tVar.Palace and tVar.Palace.PalaceDoor, "系统错误,tCastleWarConst表格式有误!");
	
	local tConst = tCastleWarConst;
	
	for i = 1, #tVar.Palace.PalaceDoor do --皇宫门添加无敌BUFF
		if tVar.Palace.PalaceDoor[i].Life ~= 0 then
			assert(lualib:AddBuff(tVar.Palace.PalaceDoor[i].Guid, tConst.Palace.PalaceDoor.BuffKey, 0), "系统错误,皇宫门添加无敌BUFF失败!");
		end
	end
end

function CCastle:PalaceDoorDelBuff()
	local tVar = self:GetVarTable();
	
	assert(tVar.Palace and tVar.Palace.PalaceDoor, "系统错误,tCastleWarConst表格式有误!");
	
	local tConst = tCastleWarConst;
	
	for i = 1, #tVar.Palace.PalaceDoor do --删除皇宫门的无敌BUFF
		if tVar.Palace.PalaceDoor[i].Life ~= 0 then
			lualib:DelBuff(tVar.Palace.PalaceDoor[i].Guid, tConst.Palace.PalaceDoor.BuffKey);
		end
	end
end

--[[
function CCastle:PalaceDoorAttack(strPalaceDoor)
	local tVar = self:GetVarTable();
		
	assert(tVar.Palace and tVar.Palace.PalaceDoor, "系统错误,tCastleWarConst表格式有误!");
	
	local iDoorIdx = nil;
	for i = 1, #tVar.Palace.PalaceDoor.Guids do --皇宫门受到攻击
		if tVar.Palace.PalaceDoor.Lifes[i] ~= 0 then
			if tVar.Palace.PalaceDoor.Guids[i] == strPalaceDoor then
				iDoorIdx = i;
			end
		end
	end
	
	assert(iDoorIdx, "系统错误,皇宫门数据异常!");
	
	tVar.Palace.PalaceDoor.Lifes[iDoorIdx] = math.floor(lualib:Hp(strPalaceDoor, false) / lualib:Hp(strPalaceDoor, true) * 100);
	
	if tVar.Palace.PalaceDoor.Lifes[iDoorIdx] < 1 then	--为避免除法取整误差,只有死亡时生命百分比才会为0
		tVar.Palace.PalaceDoor.Lifes[iDoorIdx] = 1;
	end
	
	self:SetVarTable(tVar);
end
]]

function CCastle:PalaceDoorDie(strPalaceDoor)
	local tVar = self:GetVarTable();
		
	assert(tVar.Palace and tVar.Palace.PalaceDoor, "系统错误,tCastleWarConst表格式有误!");

	local iDoorIdx = nil;
	for i = 1, #tVar.Palace.PalaceDoor do --皇宫门死亡
		if tVar.Palace.PalaceDoor[i].Life ~= 0 then
			if tVar.Palace.PalaceDoor[i].Guid == strPalaceDoor then
				iDoorIdx = i;
			end
		end
	end
	
	assert(iDoorIdx, "系统错误,皇宫门数据异常!");
	
	tVar.Palace.PalaceDoor[iDoorIdx].Life = 0;
	
	lualib:ClearTrigger(strPalaceDoor);
	self:SetVarTable(tVar);
end

function CCastle:PalaceDoorJump(strPlayer)
	local tConst = tCastleWarConst;
	
	if not lualib:IsInRegion(tConst.Palace.PalaceDoor.MainDoorJump, lualib:X(strPlayer), lualib:Y(strPlayer)) then
		return true;
	end
	
	local strCastleOwner = nil;
	if CCastle:IsBattleStart() then
		strCastleOwner = self:GetTempOwner();
	else
		strCastleOwner = self:GetOwner();
	end
	
	local strMyFamily = lualib:GetFamilyName(strPlayer);
	if strCastleOwner == "" or strMyFamily == "" then
		return false;
	end
	
	return strCastleOwner == strMyFamily;
end

-------------------------------------------------------------------------------

function OnCastleDoorDie(strCastleDoor, strKiller)
	CCastle:CastleDoorDie(strCastleDoor);
end

--[[
function OnCastleDoorAttack(strCastleDoor, strAttacker, iHp, strSkillKey)
	CCastle:CastleDoorAttack(strCastleDoor);
end
]]

function OnCastleGuardDie(strCastleGuard, strKiller)
	CCastle:CastleGuardDie(strCastleGuard);
end

function OnPalaceDoorDie(strPalaceDoor, strKiller)
	CCastle:PalaceDoorDie(strPalaceDoor);
end

--[[
function OnPalaceDoorAttack(strPalaceDoor, strKiller)
	CCastle:PalaceDoorAttack(strPalaceDoor);
end
]]

function OnEnterJumpPos(strPlayer, strFromMap, strDestMap)
	return CCastle:PalaceDoorJump(strPlayer);
end

function OnCastleWarStart(strCastleName, strCastle, strPalace)
	CCastle:CastleWarStart();
end

function OnCastleWarStop(strCastleName, strCastle, strPalace)
	CCastle:CastleWarStop();
end

function OnFirstCastleWar()
	local strCastleWar = lualib:GetConstVar("CastleWar");
    if strCastleWar == "" then 
        return;
    end
	
	local dwCastleWar = lualib:Str2Time(strCastleWar);
	local dwCurTimes = lualib:GetAllTime();
	if dwCastleWar < dwCurTimes then
		return;
	end
	
	lualib:DelayCall("", (dwCastleWar - dwCurTimes) * 1000, "DoFirstCastleWar", "");
end

function DoFirstCastleWar()
	if CCastle:IsBattleStart() then
        assert(false, "系统错误:开服第一次攻城异常,攻城已经开始!");
		return;
    end
	
	local tConst = tCastleWarConst;
	if not lualib:IsCastleWarNull(tConst.Castle.CastleName) then
		assert(false, "系统错误:开服第一次攻城异常,攻城战已经被注册过了!");
		return;
	end
	
	local tAllFamilys = lualib:GetAllFamilys();
	local strAllFamilys = table.concat(tAllFamilys, "&");
	if strAllFamilys == "" then
		assert(false, "系统错误:开服第一次攻城异常,该区没有创建任何行会!");
		return;
	end
	
    assert(lualib:StartCastleWarEx(tConst.Castle.CastleName, strAllFamilys, lualib:GetAllTime(), 7200), 
	"系统错误:开服第一次攻城异常,开启攻城失败!");
end