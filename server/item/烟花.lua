local effect_times = {
						["庆典蛋糕"] = 10, 
					 }
					
local effect_funcs = {};	--特效功能函数
effect_funcs["玫瑰花"] = function (player, item)
	lualib:SysMsg_SendInputDlg(player, 3, "请输入所要赠送的玩家昵称.", 45, 14, "effect_rose", item.."#1");
end

effect_funcs["9朵玫瑰花"] = function (player, item)
	lualib:SysMsg_SendInputDlg(player, 3, "请输入所要赠送的玩家昵称.", 45, 14, "effect_rose", item.."#9");
end

effect_funcs["99朵玫瑰花"] = function (player, item)
	lualib:SysMsg_SendInputDlg(player, 3, "请输入所要赠送的玩家昵称.", 45, 14, "effect_rose", item.."#99");
end

effect_funcs["999朵玫瑰花"] = function (player, item)
	lualib:SysMsg_SendInputDlg(player, 3, "请输入所要赠送的玩家昵称.", 45, 14, "effect_rose", item.."#999");
end

effect_funcs["庆典蛋糕"] = function (player, item)
	local times = effect_times[lualib:KeyName(item)];
	assert(times, "系统错误:脚本异常!");
	
	local buff, buff_var, timer = "蛋糕", "cake_buff_time", "firework_timer";
	
	if lualib:HasBuff(player, buff) then
		lualib:SetInt(player, buff_var, lualib:GetInt(player, buff_var) + times);
	else
		assert(lualib:AddBuff(player, buff, 10000), "系统错误:添加BUFF"..buff.."失败.");
		
		lualib:SetInt(player, buff_var, times);
		lualib:AddTimerEx(player, lualib:GenTimerId(player), 1000, -1, timer, buff.."#"..buff_var);
	end
	
	assert(lualib:Item_Destroy(player, item, "删除道具:蛋糕", "烟花脚本"), "系统错误:删除物品失败.");
end


function effect_rose(id, player, target, params)
	params = string.split(params, "#");
	assert(#params == 2, "系统错误:脚本异常!");
	
	local item, value = params[1], params[2];
	local role = lualib:Name2Guid(target);
	if role == "" then
		lualib:SysMsg_SendTriggerMsg(player, "你仰慕的对象"..target.."不在线.");
		return;
	end
	
	if role == player then
		lualib:SysMsg_SendTriggerMsg(player, "做人还是不要太自恋的好...");
		return;
	end
	
	if (not lualib:HasItem(player, item)) or (not lualib:InBag(player, item)) then
		lualib:SysMsg_SendTriggerMsg(player, "你的玫瑰花是不是弄丢了?");
		return;
	end
	
	assert(lualib:Item_Destroy(player, item, "删除道具:送玫瑰花", "烟花脚本"), "系统错误:删除物品玫瑰花失败.");

	local effect_params = 
	{
		["1"] = "#15#1#1#2#3#1#2#30#30",
		["9"] = "#15#1#1#2#3#1#2#30#30",
		["99"] = "#99#1#1#3#3#1#2#30#30",
		["999"] = "#200#1#1#4#3#1#3#30#30",
	};
	
	local param = effect_params[value];
	assert(param, "系统错误,脚本异常!");
	
	lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000)..param);
	lualib:RunClientScript(role, "ItemEffect","piaoluo_client", tostring(1078600000)..param);
	
	lualib:SysMsg_SendTriggerMsg(player, "玫瑰花已成功送出!");
	lualib:SysMsg_SendTriggerMsg(role, "你收到了"..lualib:Name(player).."送出的玫瑰花!");
	
	local spouse = lualib:GetStr(player, "配偶GUID");
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
		assert(lualib:DelBuff(player, buff), "系统错误:删除BUFF失败.");
		assert(lualib:DisableTimer(player, id), "系统错误:清除定时器失败.");
	end
end


function main(player, item)
	local func = effect_funcs[lualib:KeyName(item)];
	assert(func, "系统错误:物品挂错了脚本.");
	
	func(player, item);	
	return true
end