local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_map_create(map)
	lualib:AddTimerEx(map, 1, 2100000, -1, "panding", "")
	return
end

function panding(map, id)
	local open_hhzb_jinru = lualib:GetInt(map,"open_hhzb_jinru")


	if open_hhzb_jinru == 1 then
		return
	end
	
	
	local players = lualib:Map_GetMapPlayers(map, true)
	local Guild = ""
	
	if #players < 1 then
		lualib:SysMsg_SendBroadcastMsg("[�л�����]��ѽ��������л�ʤ��.���ͼ��û��", "ϵͳ֪ͨ")
		lualib:Map_DestroyDgn(map)
		return
	end
	
	
	for i = 1, #players do
		Guild = lualib:GuildGuid(players[i])
		if Guild ~= "" and Guild ~= nil then
			break
		end
	end
	
	if Guild == "" then
		lualib:SysMsg_SendBroadcastMsg("[�л�����]��ѽ��������л�ʤ��.Guid��", "ϵͳ֪ͨ")
		lualib:Map_DestroyDgn(map)
		return
	end
	
	local name =lualib:Name(Guild)
	for i = 1, #players do
		if not lualib:IsInFamily(players[i], name) then
            return
        end
	end
	
	lualib:SetDBStr("Guild_award", Guild)

	lualib:SysMsg_SendBroadcastMsg("[�л�����]�Ѿ��ѽ������л�["..name.."]ʤ��", "ϵͳ֪ͨ")
	lualib:SysMsg_SendBroadcastMsg("[�л�����]��ѽ������л�["..name.."]ʤ��", "ϵͳ֪ͨ")
	lualib:SysMsg_SendBroadcastMsg("[�л�����]��ѽ������л�["..name.."]ʤ��", "ϵͳ֪ͨ")
	lualib:DisableTimer(map, 1)
	return
end