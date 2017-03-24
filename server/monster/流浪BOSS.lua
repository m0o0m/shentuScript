function on_create(monster)																	--ս����ʼ����
	lualib:AddTrigger(monster, lua_trigger_monster_in_fight, "on_enter_fight");				--ս����ʼ����
	lualib:AddTrigger(monster, lua_trigger_monster_out_fight, "on_leave_fight");				--ս����������
end

function on_enter_fight(monster)
	lualib:AddTimer(monster, 1, 1500, -1, "do_skill");											--����ʹ�ö�ʱ��
	lualib:AddTimer(monster, 2, 1500, -1, "do_create_yueling");								--�ٻ����鶨ʱ��
	lualib:AddTimer(monster, 3, 3000, -1, "do_buff");											--���ƶ�ʱ��
	--lualib:AddTimer(monster, 4, 5000, -1, "do_debuff");										--ʩ����ʱ��
end

function do_skill(master)
	if not lualib:HasBuff(master,"�����4��") then												--�жϸù��������Ƿ���ħ���ܵ�BUFF
		lualib:Monster_SpellTarget(master,76,master)											--�����Ŀ��ʩչħ���ܼ���
	else
	end
	local x, y, strMap = lualib:X(master), lualib:Y(master), lualib:MapGuid(master);			--��ȡ���������ͼ����
	local tmpTable = {0, x, y, 9, 9};															--�����������9��뾶��Χ
	local allplayer = lualib:Map_GetRegionPlayersEx(strMap, tmpTable, true)					--��ȡ��Χ����ҵ�GUID�б�
	local index = 1;																			--�����ͷΪ1
	for i = 1, #allplayer do																	--������б����ѭ��
		for j = index, #allplayer do															--��ĳ�����1���������ҽ���ƥ��
			if i ~= j then																		--������ҵ�ID����ͬ
				local distance = lualib:Distance(allplayer[i], allplayer[j])					--�����������֮��ľ���
				if distance < 3 then															--�жϾ���С��3
					lualib:Monster_SpellTarget(master,77,allplayer[i])							--������һ��Ŀ��ʩ�ű���������
				end
			end
		end
		index = index + 1;																		--������һ�ֲ�ͬ�����ƥ�����
	end
end

function do_create_yueling(master)

	local x, y, strMap = lualib:X(master), lualib:Y(master), lualib:MapGuid(master);			--��ȡ���������ͼ����
	local tmpTable = {0, x1, y1, 9, 9};														--�����������9��뾶��Χ
	local mubiao = lualib:Monster_GetCurTarget(master)											--��ȡ�����Ŀ���GUID
	local name = lualib:Name(mubiao)															--����Ŀ���GUID��ȡ��ҵ�����
	local hp = lualib:Hp(master,false) 															--��ȡ�ù���ĵ�ǰHPֵ
	if hp > 14000 then
		local get1 = lualib:GetInt(master, "ser1")
		if get1 == 1 then
			lualib:SetInt(master, "ser1", 0)
		else
			local get2 = lualib:GetInt(master, "ser2")
			if get2 == 2 then
				lualib:SetInt(master, "ser2", 0)
			else
				local get3 = lualib:GetInt(master, "ser3")
				if get3 == 3 then
					lualib:SetInt(master, "ser3", 0)
				else
					local get4 = lualib:GetInt(master, "ser4")
					if get4 == 4 then
						lualib:SetInt(master, "ser4", 0)
					else
						local get5 = lualib:GetInt(master, "ser5")
						if get5 == 5 then
							lualib:SetInt(master, "ser5", 0)
						else
							local get6 = lualib:GetInt(master, "ser6")
							if get6 == 6 then
								lualib:SetInt(master, "ser6", 0)
							else
								local get7 = lualib:GetInt(master, "ser7")
								if get7 == 7 then
									lualib:SetInt(master, "ser7", 0)
								else
								end
							end
						end
					end
				end
			end
		end
	end

	if hp <= 14000 then
		local get = lualib:GetInt(master, "ser1")
		if get ~= 1 then
			lualib:SysRoleTalk(master, "��������ˣ��ҵĳ�����!���� ["..name.."] !");					--����ͷ��˵��
			local servant1 = lualib:Map_GenMonster(strMap, x, y, 5, lualib:GenRandom(0, 7), "����", 1, false);		--ˢ������
			assert(servant1 ~= "", "ϵͳ����:ˢ��ʧ��,�Ƿ����û�г�����?");							--�������û��ˢ���򱨳�����Ϣ
			lualib:SetInt(master, "ser1", 1) 
			local allmonster = lualib:Map_GetRegionMonstersEx(strMap, "", tmpTable, true, true)		--��ȡ����9��Χ�ڵĹ����б�
			for i = 1,#allmonster do															--�ӹ����б���˳��ѭ���õ�һ�������GUID
				lualib:Monster_SetAttackTarget(allmonster[i], mubiao)												--��������Ĺ���Ŀ��
			end
		end
	end

	if hp <= 12000 then
		local get = lualib:GetInt(master, "ser2")
		if get ~= 2 then
			lualib:SysRoleTalk(master, "����ļһ�ҵĳ�����!���� ["..name.."] !");					--����ͷ��˵��
			local servant2 = lualib:Map_GenMonster(strMap, x, y, 5, lualib:GenRandom(0, 7), "����", 2, false);		--ˢ������
			assert(servant2 ~= "", "ϵͳ����:ˢ��ʧ��,�Ƿ����û�г�����?");							--�������û��ˢ���򱨳�����Ϣ
			lualib:SetInt(master, "ser2", 2) 
			local allmonster = lualib:Map_GetRegionMonstersEx(strMap, "", tmpTable, true, true)		--��ȡ����9��Χ�ڵĹ����б�
			for i = 1,#allmonster do															--�ӹ����б���˳��ѭ���õ�һ�������GUID
				lualib:Monster_SetAttackTarget(allmonster[i], mubiao)												--��������Ĺ���Ŀ��
			end
		end
	end

	if hp <= 10000 then
		local get = lualib:GetInt(master, "ser3")
		if get ~= 3 then
			lualib:SysRoleTalk(master, "������Щ���ӣ������޷�սʤ�ҵģ��ҵĳ�����!���� ["..name.."] !");					--����ͷ��˵��
			local servant3 = lualib:Map_GenMonster(strMap, x, y, 5, lualib:GenRandom(0, 7), "����", 3, false);		--ˢ������
			assert(servant3 ~= "", "ϵͳ����:ˢ��ʧ��,�Ƿ����û�г�����?");							--�������û��ˢ���򱨳�����Ϣ
			lualib:SetInt(master, "ser3", 3) 
			local allmonster = lualib:Map_GetRegionMonstersEx(strMap, "", tmpTable, true, true)		--��ȡ����9��Χ�ڵĹ����б�
			for i = 1,#allmonster do															--�ӹ����б���˳��ѭ���õ�һ�������GUID
				lualib:Monster_SetAttackTarget(allmonster[i], mubiao)												--��������Ĺ���Ŀ��
			end
		end
	end

	if hp <= 8000 then
		local get = lualib:GetInt(master, "ser4")
		if get ~= 4 then
			lualib:SysRoleTalk(master, "�쵰����Ҫ��ŭ�ˣ��ҵĳ�����!�������ң����� ["..name.."] !");					--����ͷ��˵��
			local servant4 = lualib:Map_GenMonster(strMap, x, y, 5, lualib:GenRandom(0, 7), "����", 4, false);		--ˢ������
			assert(servant4 ~= "", "ϵͳ����:ˢ��ʧ��,�Ƿ����û�г�����?");							--�������û��ˢ���򱨳�����Ϣ
			lualib:SetInt(master, "ser4", 4) 
			local allmonster = lualib:Map_GetRegionMonstersEx(strMap, "", tmpTable, true, true)		--��ȡ����9��Χ�ڵĹ����б�
			for i = 1,#allmonster do															--�ӹ����б���˳��ѭ���õ�һ�������GUID
				lualib:Monster_SetAttackTarget(allmonster[i], mubiao)												--��������Ĺ���Ŀ��
			end
		end
	end

	if hp <= 6000 then
		local get = lualib:GetInt(master, "ser5")
		if get ~= 5 then
			lualib:SysRoleTalk(master, "��������������ֹ�ľ����������ɣ�������!���� ["..name.."] !");					--����ͷ��˵��
			local servant5 = lualib:Map_GenMonster(strMap, x, y, 5, lualib:GenRandom(0, 7), "����", 5, false);		--ˢ������
			assert(servant5 ~= "", "ϵͳ����:ˢ��ʧ��,�Ƿ����û�г�����?");							--�������û��ˢ���򱨳�����Ϣ
			lualib:SetInt(master, "ser5", 5) 
			local allmonster = lualib:Map_GetRegionMonstersEx(strMap, "", tmpTable, true, true)		--��ȡ����9��Χ�ڵĹ����б�
			for i = 1,#allmonster do															--�ӹ����б���˳��ѭ���õ�һ�������GUID
				lualib:Monster_SetAttackTarget(allmonster[i], mubiao)												--��������Ĺ���Ŀ��
			end
		end
	end
		
	if hp <= 4000 then
		local get = lualib:GetInt(master, "ser6")
		if get ~= 6 then
			lualib:SysRoleTalk(master, "�����޵еģ����ǲ���սʤ�ģ�������!���� ["..name.."] !");					--����ͷ��˵��
			local servant6 = lualib:Map_GenMonster(strMap, x, y, 5, lualib:GenRandom(0, 7), "����", 6, false);		--ˢ������
			assert(servant6 ~= "", "ϵͳ����:ˢ��ʧ��,�Ƿ����û�г�����?");							--�������û��ˢ���򱨳�����Ϣ
			lualib:SetInt(master, "ser6", 6) 
			local allmonster = lualib:Map_GetRegionMonstersEx(strMap, "", tmpTable, true, true)		--��ȡ����9��Χ�ڵĹ����б�
			for i = 1,#allmonster do															--�ӹ����б���˳��ѭ���õ�һ�������GUID
			lualib:Monster_SetAttackTarget(allmonster[i], mubiao)												--��������Ĺ���Ŀ��
				lualib:AddBuff(master, "����ɮ��", 60)														--��BOSS��ӿ�BUFF
			end
		end
	end

	if hp <= 2000 then
		local get = lualib:GetInt(master, "ser7")
		if get ~= 7 then
			lualib:SysRoleTalk(master, "���ǵ�̰���������ҳ��׵ط�ŭ�ˣ������ɣ��־�ɣ�������!�����ҳ����ɣ����� ["..name.."] !");					--����ͷ��˵��
			local servant7 = lualib:Map_GenMonster(strMap, x, y, 9, lualib:GenRandom(0, 7), "����", 7, false);		--ˢ������
			assert(servant7 ~= "", "ϵͳ����:ˢ��ʧ��,�Ƿ����û�г�����?");							--�������û��ˢ���򱨳�����Ϣ
			lualib:SetInt(master, "ser7", 7) 
			local allmonster = lualib:Map_GetRegionMonstersEx(strMap, "", tmpTable, true, true)		--��ȡ����9��Χ�ڵĹ����б�
			for i = 1,#allmonster do															--�ӹ����б���˳��ѭ���õ�һ�������GUID
				lualib:Monster_SetAttackTarget(allmonster[i], mubiao)												--��������Ĺ���Ŀ��
			end
		end
	end

end

function do_buff(master)																		--�����ж�
	local x1, y1, strMap = lualib:X(master), lualib:Y(master), lualib:MapGuid(master);		--��ȡ���������ͼ����
	local tmpTable = {0, x1, y1, 9, 9};														--�����������9��뾶��Χ
	local allmonster = lualib:Map_GetRegionMonstersEx(strMap, "", tmpTable, true, true)		--��ȡ����9��Χ�ڵĹ����б�
	for i = 1,#allmonster do																	--�ӹ����б���˳��ѭ���õ�һ�������GUID
		local ahp = lualib:Hp(allmonster[i],false) 											--��ȡ�ù���ĵ�ǰHPֵ
		local bhp = lualib:Hp(allmonster[i],true)												--��ȡ�ù����HPֵ����
		if ahp < bhp then																		--�жϸù����Ƿ��Ѫ
			if not lualib:HasBuff(allmonster[i],"������(����)") then							--�жϸù��������Ƿ�����������BUFF
				lualib:Monster_SpellTarget(master,78,allmonster[i])							--��Ѫ����ù���ʩչ������
				break																			--ֹͣѭ��
			end
		end
	end
end

--[[function do_debuff(monster)
	local mubiao = lualib:Monster_GetCurTarget(monster)											--��ȡ����Ŀ��GUID
	local juli = lualib:Distance(monster,mubiao) 												--��ȡ����Ŀ�����
	if juli < 10 then																			--����С��10ִ��������ж�
		if lualib:HasBuff(mubiao,"ʩ������Ѫ4��") == true then									--�ж�Ŀ�������Ƿ��йƶ���BUFF
		else
			lualib:Monster_SpellTarget(monster,79,mubiao)										--�����Ŀ��ʩչ�ƶ��似��
		end
	end
end--]]

function on_leave_fight(monster)																--ս������
	lualib:ClearTimer(monster);																	--�ر����ж�ʱ��
end