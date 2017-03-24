--
--��Դ��ͼָ�������ͼ������һ����ת�㣨��ת��Ŀ���ͼָ�����꣩
--
function GenDoor(strSourMap, strDestMap, sX, sY, dX, dY, strLiveKey, strDieKey, dwDura, strBuffKey)
	local strDieMonster = lualib:Map_GenSingleMonster(strSourMap, sX, sY, 0, 3, strDieKey, false);
	assert(strDieMonster ~= "", "ϵͳ����:ˢ��ʧ��!");
	assert(lualib:Kill(strDieMonster), "ϵͳ����:ɱ������ʧ��!");
	
	local strLiveMonster = lualib:Map_GenSingleMonster(strSourMap, sX, sY, 0, 3, strLiveKey, false);
	assert(strLiveMonster ~= "", "ϵͳ����:ˢ��ʧ��!");
	
	assert(lualib:Map_AddJumpPoint(strSourMap, strDestMap, sX, sY, dX, dY), "ϵͳ����:������ת��ʧ��!");
	lualib:SetStr(strSourMap, "DelayDoor", json.encode({x = sX, y = sY, m = strDieMonster}));
	lualib:DelayCall(strSourMap, dwDura * 1000, "on_delay_del_door", "");
	
	lualib:DelayCall(strLiveMonster, 30000, "on_delay_del_buff", strBuffKey);
end

function on_delay_del_buff(strMonster, strBuffKey)
	if lualib:Monster_IsExist(strMonster) and not lualib:Monster_IsDie(strMonster) then
		lualib:DelBuff(strMonster, strBuffKey);
	end
end

function on_delay_del_door(strSourMap, ...)
	local pos = json.decode(lualib:GetStr(strSourMap, "DelayDoor"));
	assert(lualib:Monster_IsExist(pos.m), "ϵͳ����:�����Ѿ���������!");
	assert(lualib:Monster_Remove(pos.m), "ϵͳ����:����ɾ��ʧ��!");
	
	assert(lualib:Map_DelJumpPoint(strSourMap, pos.x, pos.y), "ϵͳ����:ɾ����ת��ʧ��!");
end