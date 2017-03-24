local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("include/攻城战玩法")

function on_map_create(strMap)
	lualib:AddTimer(strMap, 1, 5000, -1, "OnCastleOwnerCheck");
end

function OnCastleOwnerCheck(strMap, dwID, strParam)
	if not CCastle:IsBattleStart() then
		return;
	end
	
	local m = CCastle:QueryCastleStart() + 600;
	local n = lualib:GetAllTime();
	if n <  m then
		local t_m = math.floor((m - n)/60);
		if t_m ~= 0 then
			lualib:SysMsg_SendMapMsg(strMap, "攻城开始10分钟以后就可以占领皇宫,目前还剩"..t_m.."分钟.");
		else
			local t_s = math.floor((m - n) % 60);
			lualib:SysMsg_SendMapMsg(strMap, "攻城开始10分钟以后就可以占领皇宫,目前还剩"..t_s.."秒钟.");
		end
		return;
	end
	
	local strTempOwner = lualib:MapOwnerFamily(strMap);
	if strTempOwner ~= "" and strTempOwner ~= CCastle:GetTempOwner() then
		if CCastle:IsDefenceFamily(strTempOwner) or CCastle:IsAttackFamily(strTempOwner) then
			CCastle:SetCastleTempOwner(strTempOwner);
			lualib:SysMsg_SendBroadcastMsg(strTempOwner.."清除了城堡内所有的敌对势力,夺得了城堡的控制权.", "攻城通知");
			lualib:SysMsg_SendBroadcastMsg(CCastle.tCastleName.."的拥有行会为:"..strTempOwner..".", "攻城通知");
		end
	end
end