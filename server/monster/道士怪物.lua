function on_create(monster)																	--ս����ʼ����
	lualib:AddTrigger(monster, lua_trigger_monster_in_fight, "on_enter_fight");				--ս����ʼ����
	lualib:AddTrigger(monster, lua_trigger_monster_out_fight, "on_leave_fight");				--ս����������
end

function on_enter_fight(monster)
	lualib:AddTimer(monster, 1, 5000, -1, "do_skill");											--����ʹ�ö�ʱ��
	lualib:AddTimer(monster, 2, 1500, 1, "do_create_shenshou");								--�ٻ����޶�ʱ��
	lualib:AddTimer(monster, 3, 3000, -1, "do_buff");											--���ƶ�ʱ��
end

function do_skill(monster)
	local mubiao = lualib:Monster_GetCurTarget(monster)											--��ȡ����Ŀ��GUID
	local juli = lualib:Distance(monster,mubiao) 												--��ȡ����Ŀ�����
	if juli < 10 then																			--����С��10ִ��������ж�
		if lualib:HasBuff(mubiao,"ʩ������Ѫ4��") == true then									--�ж�Ŀ�������Ƿ��йƶ���BUFF
		else
			lualib:Monster_SpellTarget(monster,79,mubiao)										--�����Ŀ��ʩչ�ƶ��似��
		end
	end
end

function do_create_shenshou(master)
	local x, y, strMap = lualib:X(master), lualib:Y(master), lualib:MapGuid(master);			--��ȡ���������ͼ����
	local strservant = lualib:GetStr(master, "servant")											--���ݱ����ڹ������ϵ������ַ��ͱ�����ȡ����GUID
	if strservant ~= "" then																	--��������GUID�ж������Ƿ����
		lualib:Monster_Remove(strservant)														--������޴������Ƴ�������
	end
	local mubiao1 = lualib:Monster_GetCurTarget(master)											--��ȡ�����Ŀ���GUID
	local name = lualib:Name(mubiao1)															--����Ŀ���GUID��ȡ��ҵ�����
    lualib:SysRoleTalk(master, "�����ҵ��ٻ��������ɣ��ҵ�����!���� ["..name.."] !");			--����ͷ��˵��
	local servant = lualib:Map_GenSingleMonster(strMap, x, y, 2, lualib:GenRandom(0, 7), "����", false);		--ˢ������
	assert(servant ~= "", "ϵͳ����:ˢ��ʧ��,�Ƿ����û�г�����?");							--�������û��ˢ���򱨳�����Ϣ
	lualib:SetStr(master, "servant",servant)													--�����޵�GUID�浽��������
	lualib:SetStr(servant, "master", master);													--�������GUID�浽��������
	lualib:AddTrigger(servant, lua_trigger_monster_post_die, "on_servant_post_die");			--������������
	lualib:AddTrigger(master, lua_trigger_monster_post_die, "on_master_post_die");				--������������
end

function on_servant_post_die(servant)															--��������
	local strmaster = lualib:GetStr(servant,"master");											--����������ȡ������Ĺ���GUID
	if strmonster ~= "" then																	--���ݹ���GUID�жϹ����Ƿ����
		do_create_shenshou(strmaster);														--�����򷵻��ٻ����޵ĺ���
	end
end 

function on_master_post_die(master)															--��������
	local strservant = lualib:GetStr(master, "servant")											--�ӹ�������ȡ�����������GUID
	if strservant ~= "" then																	--�����ж�����GUID�ж������Ƿ����
		lualib:Monster_Remove(strservant)														--�������Ƴ�����
	end
end

function do_buff(master)																		--�����ж�
	local x1, y1, strMap1 = lualib:X(master), lualib:Y(master), lualib:MapGuid(master);		--��ȡ���������ͼ����
	local tmpTable = {0, x1, y1, 9, 9};														--�����������9��뾶��Χ
	local allmonster = lualib:Map_GetRegionMonstersEx(strMap1, "", tmpTable, true, true)		--��ȡ����9��Χ�ڵĹ����б�
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

function on_leave_fight(monster)																--ս������
	lualib:ClearTimer(monster);																	--�ر����ж�ʱ��
end