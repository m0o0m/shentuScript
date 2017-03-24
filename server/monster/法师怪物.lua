function on_create(monster)																	--ս����ʼ����
	lualib:AddTrigger(monster, lua_trigger_monster_in_fight, "on_enter_fight");				--ս����ʼ����
	lualib:AddTrigger(monster, lua_trigger_monster_out_fight, "on_leave_fight");				--ս����������
end

function on_enter_fight(monster)
	lualib:AddTimer(monster, 1, 1500, -1, "do_skill");											--����ʹ�ö�ʱ��
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

function on_leave_fight(monster)																--ս������
	lualib:ClearTimer(monster);																	--�ر����ж�ʱ��
end