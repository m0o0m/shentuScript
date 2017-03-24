function main(player)
	lualib:DelayCall(player, 1000, "CheckTestServer", "");						--测试服清档阶段踢人
	lualib:DelayCall(player, 1, "master:process_master_apprentice_login", ""); 	--师徒登陆处理
	lualib:DelayCall(player, 1, "marry:marry_load", "");						--结婚后亲密度计算
	lualib:DelayCall(player, 1, "沙巴克武器升级:OnWatchWeapon", "");			--武器升级
	lualib:DelayCall(player, 1, "行会战申请表单:familywar_login", "");			--行会战开始通知
end

function CheckTestServer(player)
	local strTestServerTime = lualib:GetConstVar("TestServerTime");
	local strStartServerTime = lualib:GetConstVar("StartServerTime");
	local strQQQUN = lualib:GetConstVar("QQQUN");
	local strQQ = lualib:GetConstVar("QQ");
	local strWEB = lualib:GetConstVar("WEB");
	
	local dwTestServerTime = ((strTestServerTime == "") and 0 or lualib:Str2Time(strTestServerTime));
	local dwStartServerTime = ((strStartServerTime == "") and 0 or lualib:Str2Time(strStartServerTime));
	dwTestServerTime = (dwTestServerTime > dwStartServerTime) and 0 or dwTestServerTime;
	
	local dwCurTimes = lualib:GetAllTime();
	if not lualib:Player_IsGM(player) then	
		local s = "";
		local s1 = "请您加入QQ群【"..strQQQUN.."】或登陆官方网站："..strWEB.."了解最新消息！如有疑问请联系咨询客服QQ:"..strQQ.."！";
		if dwCurTimes < dwStartServerTime and  dwCurTimes > dwTestServerTime then
			s = "尊敬的玩家您好！《".. lualib:GetZoneName() .."》服务器正在筹备阶段，无法登陆，游戏将于"..strStartServerTime.."正式开启，敬请期待！";
			lualib:SysMsg_SendBottomColor(player, s, 7, 2);
			lualib:SysMsg_SendBottomColor(player, s1, 7, 2);
			lualib:DelayCall(player, 5000, "KickPlayer", "");
		elseif dwCurTimes < dwTestServerTime then
			s = "尊敬的玩家您好！《".. lualib:GetZoneName() .."》将于"..strTestServerTime.."结束阶段，介时将删除服务器所有数据，游戏将于"..strStartServerTime.."正式开启，敬请期待！\n";
			lualib:SysMsg_SendBottomColor(player, s, 7, 2);
			lualib:SysMsg_SendBottomColor(player, s1, 7, 2);
		end
	end
end

function KickPlayer(player)
	lualib:Player_Kick(player);
end