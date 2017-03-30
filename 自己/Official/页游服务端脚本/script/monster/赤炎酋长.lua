local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local var_t = {"xs_flag30", "xs_flag50", "xs_flag80"}

function on_create(monster)																								--������Ӵ�����
	lualib:SetInt("0","boss_shuaxin8",0)
	lualib:AddTrigger(monster,  lua_trigger_monster_born, "on_trigger_boss_born")
    lualib:AddTrigger(monster,  lua_trigger_attack, "on_attack")
	lualib:AddTrigger(monster,  lua_trigger_pre_die , "on_trigger_pre_die")
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
end

function on_trigger_boss_born(monster)																					--����ʱ
	lualib:SysMsg_SendBroadcastColor("�������������˰����ϼ�Ʒ���������ˣ�", "", 1, 12)				--���纰��
    lualib:SysMsg_SendRoleTalk(monster, "�������������˰����ϼ�Ʒ��")													--����ͷ��˵��
	lualib:AddBuff(monster, "������������Ѫ", 0)																		--Ϊ�������BUFF
	
	for _, v in pairs(var_t) do
		lualib:Monster_SetCustomVarInt(monster, v, 0)
	end
end


function on_trigger_pre_die(actor, killer)																				--����ǰ
	local monster_die_x = lualib:X(actor)
	local monster_die_y = lualib:Y(actor)
	if not lualib:Map_ClearMonster(map, monster_die_x, monster_die_y, 100, "������������", true, true) == true then		--ɾ��������������
		lualib:Error("������������ɾ��������������ʧ�ܣ�")
	end
	return true
end


function on_trigger_post_die(actor, killer)																				--������
	lualib:ClearTrigger(actor)
	lualib:SysMsg_SendBroadcastColor("���������������죬������Ҫ���ģ�����ѧ�����и⣬��һ����������µģ�", "", 1, 12)		--ϵͳ����
	lualib:Monster_SetCustomVarInt(actor, "talk_flag", 0)
	
	if lualib:KeyName(lualib:MapGuid(actor)) == "���׽���" then
		local killername = lualib:Name(killer)
		lualib:SetInt("0","boss_shuaxin8",240)
		lualib:SetStr("0","boss_killer8",killername)
		lualib:AddTimerEx("0",308,60000,-1,"chongshengshijian","")
	end
end

-----------------------------------------------bossˢ�µ���ʱ----------------------------------------------------------
function chongshengshijian()
	if lualib:GetInt("0","boss_shuaxin8") > 0 then
		lualib:SetInt("0","boss_shuaxin8",lualib:GetInt("0","boss_shuaxin8")-1)
		lualib:AddTimerEx("0",308,60000,1,"chongshengshijian","")
	end
end

function on_attack(self, actor)																										--�ܵ��˺�����
	local x = lualib:X(self)
	local y = lualib:Y(self)
	local x2 = {x+10, x+11, x+12, x+13, x+14, x+15, x-10, x-12, x-13, x-14, x-15}
	local y2 = {y+10, y+11, y+12, y+13, y+14, y+15, y-10, y-12, y-13, y-14, y-15}
	local tiao_x = lualib:GenRandom(1,  table.getn(x2))
	local tiao_y = lualib:GenRandom(1,  table.getn(y2))
	local buff_table = {"�ƶ����Ѫ1��","�ƶ����Ѫ2��","�ƶ����Ѫ3��","�ƶ����Ѫ4��","�ƶ������1��","�ƶ������2��","�ƶ������3��","�ƶ������4��"}
	map = lualib:MapGuid(self)
	if lualib:Monster_GetCustomVarInt(self, "talk_flag") ~= 0 then return end
    local hp_mul = get_hp_mul(self)
	
	if x == -1 or y == -1 or map == "" or hp_mul == -1 then return end

	local summon_t = {{30, 3}, {50, 2}, {80, 1}}
	for k, v in pairs(summon_t) do
		if hp_mul <= v[1] then
			if lualib:Monster_GetCustomVarInt(self, var_t[k]) ~= 0 then return end
			for i = 1, v[2] do
				local servant_monster = lualib:Map_GenSingleMonster(map, x, y, 20, lualib:GenRandom(0, 7), "������������", false)
				if "" == servant_monster  then
					lualib:Error("���������ٻ�����ʧ�ܣ�")
					return
				end
				lualib:Monster_JumpXY(map, self, x2[tiao_x], y2[tiao_y], 20)
				for z = 1, #buff_table do																								--���BOSS�ж�������ж�BUFF
					if lualib:HasBuff(self, buff_table[z]) == true then
						lualib:DelBuff(self, buff_table[z])
					end
				end
				local fenshen_table = lualib:Map_GetRegionMonsters(map, "������������", x, y, 20, true, true)
				for u = 1, #fenshen_table do
					if fenshen_table[u] ~= nil then 
						for o = 1, #buff_table do																								--���BOSS�ж�������ж�BUFF
							if lualib:HasBuff(fenshen_table[u], buff_table[o]) == true then
								lualib:DelBuff(fenshen_table[u], buff_table[o])
							end
						end
					cyqzguid = fenshen_table[u]
					end
				end
				lualib:Monster_SetCustomVarStr(servant_monster, "master_guid", self)
			end
			lualib:Debug("��������Ѫ��������"..v[1].."�����ٻ�"..v[2].."������")
			lualib:SysMsg_SendBroadcastColor("��������:�����Ѳ�������Ƥ�־�˼�ܴ�~", "", 1, 12)
			lualib:SysMsg_SendRoleTalk(self, "��������:�����Ѳ�������Ƥ�־�˼�ܴ�~")
			lualib:Monster_SetCustomVarInt(self, var_t[k], 1)
			break
		end
	end
end


function get_hp_mul(monster)
    local max_hp = lualib:Monster_GetIntProp(monster,  lua_role_max_hp)
    local hp = lualib:Monster_GetIntProp(monster,  lua_role_hp)
    if max_hp == -1 or hp == -1 then
        lualib:Print("ȡ��BOSS��Ѫ������")
        return -1
    end
    return hp / max_hp * 100
end
