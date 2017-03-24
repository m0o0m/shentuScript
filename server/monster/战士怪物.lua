function on_create(monster)																	--ս����ʼ
	lualib:AddTrigger(monster, lua_trigger_monster_in_fight, "on_enter_fight");				--ս����ʼ����
	lualib:AddTrigger(monster, lua_trigger_monster_out_fight, "on_leave_fight");				--ս����������
end

function on_enter_fight(monster)
	lualib:AddTimer(monster, 1, 1000, -1, "do_skill1");											--����ʹ�ö�ʱ��
	lualib:AddTimer(monster, 2, 6000, -1, "do_lieyan");											--ʹ������ն��ʱ��
end

function do_skill1(monster)
	local mubiao = lualib:Monster_GetCurTarget(monster)											--��ȡ����Ŀ��GUID
	local juli = lualib:Distance(monster,mubiao) 												--��ȡ����Ŀ�����
	if juli == 2 then																			--�жϾ������2
		lualib:Monster_SpellTarget(monster,73,mubiao)											--ʩչ��̽�������
	end
end

function do_lieyan(monster)
	local mubiao = lualib:Monster_GetCurTarget(monster)											--��ȡ����Ŀ��GUID
	local juli = lualib:Distance(monster,mubiao) 												--��ȡ����Ŀ�����
	if juli == 1 then																			--�жϾ������1
		lualib:Monster_SpellTarget(monster,83,mubiao)											--ʩչ����ն����
	end
end	
	
function on_leave_fight(monster)																--ս������
	lualib:ClearTimer(monster);																	--�ر����ж�ʱ��
end