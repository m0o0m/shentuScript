local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("include/����ս�淨")

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
			lualib:SysMsg_SendMapMsg(strMap, "���ǿ�ʼ10�����Ժ�Ϳ���ռ��ʹ�,Ŀǰ��ʣ"..t_m.."����.");
		else
			local t_s = math.floor((m - n) % 60);
			lualib:SysMsg_SendMapMsg(strMap, "���ǿ�ʼ10�����Ժ�Ϳ���ռ��ʹ�,Ŀǰ��ʣ"..t_s.."����.");
		end
		return;
	end
	
	local strTempOwner = lualib:MapOwnerFamily(strMap);
	if strTempOwner ~= "" and strTempOwner ~= CCastle:GetTempOwner() then
		if CCastle:IsDefenceFamily(strTempOwner) or CCastle:IsAttackFamily(strTempOwner) then
			CCastle:SetCastleTempOwner(strTempOwner);
			lualib:SysMsg_SendBroadcastMsg(strTempOwner.."����˳Ǳ������еĵж�����,����˳Ǳ��Ŀ���Ȩ.", "����֪ͨ");
			lualib:SysMsg_SendBroadcastMsg(CCastle.tCastleName.."��ӵ���л�Ϊ:"..strTempOwner..".", "����֪ͨ");
		end
	end
end