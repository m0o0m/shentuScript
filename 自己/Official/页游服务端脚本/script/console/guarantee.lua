local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")


--�ͻ����ύ��һ�Ԫ��
function main(player, types, price, num)
	local ZoneId = lualib:GetZoneId()
	local ZoneName = lualib:GetZoneName()
	local times = lualib:Time2Str("%Y-%m-%d %H:%M:%S", lualib:GetAllTime())
	local AccountID = lualib:Player_GetAccountID(player)
	local AccountName = lualib:AccountName(player)
	

	local playerName = lualib:Name(player)
	local types = tonumber(types)
	local num = tonumber(num)
	local price = tonumber(price)
	
	if num < 0 or price < 0 then
		return "���������Ϣ�������������룡"
	end
	
	
	--���	
	local function gold()
		if not lualib:Player_IsGoldEnough(player, num, false) then
			return "�����ϵĽ�Ҳ��㣬�޷�������"
		end
		
		--�۳����
		if not lualib:Player_SubGold(player, num, false, "����", player) then
			return "�۳����ʧ�ܣ�"
		end
		
		local webStr = ZoneId.."#"..ZoneName.."#"..times.."#"..AccountID.."#"..AccountName.."#"..playerName.."#"..types.."#"..price.."#"..num
		local url = "http://api.hzyotoy.com:8800/api/creategameorder.do"
		if not lualib:PostURL(url, webStr, "callback", webStr, 5) then
			if not lualib:PostURL(url, webStr, "callback", webStr, 5) then
				if not lualib:PostURL(url, webStr, "callback", webStr, 5) then
					if lualib:IO_FileExists("guarantee_info.txt") == false then
						lualib:IO_CreateTextFile("guarantee_info.txt", false)
						lualib:IO_TextFileInsertLine("guarantee_info.txt", 1, webStr)
					else
						lualib:IO_TextFileInsertLine("guarantee_info.txt", 1, webStr)
					end
				end
			end
		else
			lualib:SysMsg_SendTriggerMsg(player, "���ͳɹ�")
		end
		return ""
	end
	
	--Ԫ��
	local function Ingot()
		if not lualib:Player_IsIngotEnough(player, num, false) then
			return "�����ϵ�Ԫ�����㣬�޷�������"
		end
		
		--�۳����
		if not lualib:Player_SubIngot(player, num, false, "����", player) then
			return "�۳�Ԫ��ʧ�ܣ�"
		end
		
		local webStr = ZoneId.."#"..ZoneName.."#"..times.."#"..AccountID.."#"..AccountName.."#"..playerName.."#"..types.."#"..price.."#"..num
		local url = "http://api.hzyotoy.com:8800/api/creategameorder.do"
		if not lualib:PostURL(url, webStr, "callback", webStr, 5) then
			if not lualib:PostURL(url, webStr, "callback", webStr, 5) then
				if not lualib:PostURL(url, webStr, "callback", webStr, 5) then
					if lualib:IO_FileExists("guarantee_info.txt") == false then
						lualib:IO_CreateTextFile("guarantee_info.txt", false)
						lualib:IO_TextFileInsertLine("guarantee_info.txt", 1, webStr)
					else
						lualib:IO_TextFileInsertLine("guarantee_info.txt", 1, webStr)
					end
				end
			end
		end
		return ""
	end
	
	if types == 1 then
		return gold()
	elseif types == 2 then
		return Ingot()
	else
		return "�������ʹ���"
	end
end

--�ͻ����ύ��Ʒ
function main2(player, price, param)
	--print(player, price, param)
	local ZoneId = lualib:GetZoneId()
	local ZoneName = lualib:GetZoneName()
	local times = lualib:Time2Str("%Y-%m-%d %H:%M:%S", lualib:GetAllTime())
	local AccountID = lualib:Player_GetAccountID(player)
	local AccountName = lualib:AccountName(player)
	
	
	local t = deserialize(param)
	local playerName = lualib:Name(player)
	local types = 3
	local price = tonumber(price)
	
	if #t < 1 then
		return "����û�з�����Ʒ��"
	end
	
	if price < 1 then
		return "����ȷ������۸�(��λRMB:Ԫ)"
	end
	
	local item_guid_t = {}
	
	for i = 1, #t do
		local itemGuid = lualib:Player_GetItemGuid(player, tonumber(t[i]))
		
		if itemGuid == "" or itemGuid == nil then
			return "��������Ʒ���е��߲����ڣ�������ߺ����·��룡"
		end
		
		if lualib:Item_IsBind(player, itemGuid) == true then
			return "��������Ʒ�����˰󶨵��ߣ������·��룡"
		end
	end
	
	local itemJsonStr = ""
	for i = 1, #t do
		local itemGuid = lualib:Player_GetItemGuid(player, tonumber(t[i]))
		local itemJson = lualib:Item2Json(itemGuid)
		if not lualib:Item_Destroy(player, itemGuid, "������Ʒ", player) then
			return "�۳�����ʧ��"
		end
		itemJsonStr = "#"..itemJson
	end
	
	local webStr = ZoneId.."#"..ZoneName.."#"..times.."#"..AccountID.."#"..AccountName.."#"..playerName.."#"..types.."#"..price.."#"..itemJsonStr
	local url = "http://api.hzyotoy.com:8800/api/creategameorder.do"
	if not lualib:PostURL(url, webStr, "callback", webStr, 5) then
		if not lualib:PostURL(url, webStr, "callback", webStr, 5) then
			if not lualib:PostURL(url, webStr, "callback", webStr, 5) then
				if lualib:IO_FileExists("guarantee_info.txt") == false then
					lualib:IO_CreateTextFile("guarantee_info.txt", false)
					lualib:IO_TextFileInsertLine("guarantee_info.txt", 1, webStr)
				else
					lualib:IO_TextFileInsertLine("guarantee_info.txt", 1, webStr)
				end
			end
		end
	end
	return ""
end



--��վ�ύ����
function main3(...)
	local t = {...}
	local playerName = t[1]
	local types = tonumber(t[2])
	local id = t[3]
	local param = t[4]
	if #t > 4 then
		for i = 5, #t do
			param = param.."#"..t[i]
		end
	end
	
	local function gold()
		if not lualib:Mail("ϵͳ", playerName, "��������Ķ���"..id.."��Ʒ�ѷ��ͣ�", tonumber(t[4]), 0, {}) then
			lualib:LogDetail(playerName, "��������ʧ��", "��������ʧ��", 0, 0, "������"..id.."#"..types.."#"..param, "", "")
		else
			lualib:LogDetail(playerName, "�������׳ɹ�", "�������׳ɹ�", 0, 0, "������"..id.."#"..types.."#"..param, "", "")
		end
	end
	
	local function Ingot()
		if not lualib:Mail("ϵͳ", playerName, "��������Ķ���"..id.."��Ʒ�ѷ��ͣ�", 0, tonumber(t[4]), {}) then
			lualib:LogDetail(playerName, "��������ʧ��", "��������ʧ��", 0, 0, "������"..id.."#"..types.."#"..param, "", "")
		else
			lualib:LogDetail(playerName, "�������׳ɹ�", "�������׳ɹ�", 0, 0, "������"..id.."#"..types.."#"..param, "", "")
		end
	end
	
	if types == 1 then
		gold()
	elseif types == 2 then
		Ingot()
	elseif types == 3 then
		lualib:ScriptFuncToPlayer(playerName, "��������", "item", id.."#"..param)
	end
	return ""
end


function item(...)
	local t = {...}
	local name = lualib:Name(t[1])
	local id = t[2]
	if #t < 3 then
		return 
	end
	for i = 3, #t do
		if not lualib:MailJsonItem("��������ϵͳ", name, "��������", 0, 0, t[i]) then
			lualib:LogDetail(name, "��������", "��������", 0, 0, "������"..t[2].."#"..t[i], "", "")
		else
			lualib:LogDetail(name, "�������׳ɹ�", "�������׳ɹ�", 0, 0, "������"..t[2].."#"..t[i], "", "")
		end
	end
	return ""
end

--��վ��Ӧ
function callback(param, errcode, web_result)
	local t = string.split(param, "#")
	local player = lualib:Name2Guid(t[6])
	lualib:SysMsg_SendTriggerMsg(player, param)
	lualib:SysMsg_SendTriggerMsg(player, web_result)
	if web_result ~= "OK" then
		if lualib:IO_FileExists("guarantee_info.txt") == false then
			lualib:IO_CreateTextFile("guarantee_info.txt", false)
			lualib:IO_TextFileInsertLine("guarantee_info.txt", 1,  param.."#"..errcod)
		else
			lualib:IO_TextFileInsertLine("guarantee_info.txt", 1,  param.."#"..errcod)
		end
	end
end
