local effect_times = {
						["��䵰��"] = 10, 
					 }
					
local effect_funcs = {};	--��Ч���ܺ���
effect_funcs["õ�廨"] = function (player, item)
	lualib:SysMsg_SendInputDlg(player, 3, "��������Ҫ���͵�����ǳ�.", 45, 14, "effect_rose", item.."#1");
end

effect_funcs["9��õ�廨"] = function (player, item)
	lualib:SysMsg_SendInputDlg(player, 3, "��������Ҫ���͵�����ǳ�.", 45, 14, "effect_rose", item.."#9");
end

effect_funcs["99��õ�廨"] = function (player, item)
	lualib:SysMsg_SendInputDlg(player, 3, "��������Ҫ���͵�����ǳ�.", 45, 14, "effect_rose", item.."#99");
end

effect_funcs["999��õ�廨"] = function (player, item)
	lualib:SysMsg_SendInputDlg(player, 3, "��������Ҫ���͵�����ǳ�.", 45, 14, "effect_rose", item.."#999");
end

effect_funcs["��䵰��"] = function (player, item)
	local times = effect_times[lualib:KeyName(item)];
	assert(times, "ϵͳ����:�ű��쳣!");
	
	local buff, buff_var, timer = "����", "cake_buff_time", "firework_timer";
	
	if lualib:HasBuff(player, buff) then
		lualib:SetInt(player, buff_var, lualib:GetInt(player, buff_var) + times);
	else
		assert(lualib:AddBuff(player, buff, 10000), "ϵͳ����:���BUFF"..buff.."ʧ��.");
		
		lualib:SetInt(player, buff_var, times);
		lualib:AddTimerEx(player, lualib:GenTimerId(player), 1000, -1, timer, buff.."#"..buff_var);
	end
	
	assert(lualib:Item_Destroy(player, item, "ɾ������:����", "�̻��ű�"), "ϵͳ����:ɾ����Ʒʧ��.");
end


function effect_rose(id, player, target, params)
	params = string.split(params, "#");
	assert(#params == 2, "ϵͳ����:�ű��쳣!");
	
	local item, value = params[1], params[2];
	local role = lualib:Name2Guid(target);
	if role == "" then
		lualib:SysMsg_SendTriggerMsg(player, "����Ľ�Ķ���"..target.."������.");
		return;
	end
	
	if role == player then
		lualib:SysMsg_SendTriggerMsg(player, "���˻��ǲ�Ҫ̫�����ĺ�...");
		return;
	end
	
	if (not lualib:HasItem(player, item)) or (not lualib:InBag(player, item)) then
		lualib:SysMsg_SendTriggerMsg(player, "���õ�廨�ǲ���Ū����?");
		return;
	end
	
	assert(lualib:Item_Destroy(player, item, "ɾ������:��õ�廨", "�̻��ű�"), "ϵͳ����:ɾ����Ʒõ�廨ʧ��.");

	local effect_params = 
	{
		["1"] = "#15#1#1#2#3#1#2#30#30",
		["9"] = "#15#1#1#2#3#1#2#30#30",
		["99"] = "#99#1#1#3#3#1#2#30#30",
		["999"] = "#200#1#1#4#3#1#3#30#30",
	};
	
	local param = effect_params[value];
	assert(param, "ϵͳ����,�ű��쳣!");
	
	lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000)..param);
	lualib:RunClientScript(role, "ItemEffect","piaoluo_client", tostring(1078600000)..param);
	
	lualib:SysMsg_SendTriggerMsg(player, "õ�廨�ѳɹ��ͳ�!");
	lualib:SysMsg_SendTriggerMsg(role, "���յ���"..lualib:Name(player).."�ͳ���õ�廨!");
	
	local spouse = lualib:GetStr(player, "��żGUID");
	if spouse ~= role then
		return;
	end
	
	lualib:DelayCall(player, 1, "marry:add_intimacy_ex", param);
	lualib:DelayCall(spouse, 1, "marry:add_intimacy_ex", param);
		
	return true
end

function firework_timer(player, id, buff, buff_var)
	if lualib:GetInt(player, buff_var) > 0 then
		lualib:SetInt(player, buff_var, lualib:GetInt(player, buff_var) - 1);
	else
		assert(lualib:DelBuff(player, buff), "ϵͳ����:ɾ��BUFFʧ��.");
		assert(lualib:DisableTimer(player, id), "ϵͳ����:�����ʱ��ʧ��.");
	end
end


function main(player, item)
	local func = effect_funcs[lualib:KeyName(item)];
	assert(func, "ϵͳ����:��Ʒ�Ҵ��˽ű�.");
	
	func(player, item);	
	return true
end