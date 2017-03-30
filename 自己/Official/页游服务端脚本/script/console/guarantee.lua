local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")


--客户端提交金币或元宝
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
		return "您输入的信息有误，请重新输入！"
	end
	
	
	--金币	
	local function gold()
		if not lualib:Player_IsGoldEnough(player, num, false) then
			return "你身上的金币不足，无法拍卖！"
		end
		
		--扣除金币
		if not lualib:Player_SubGold(player, num, false, "拍卖", player) then
			return "扣除金币失败！"
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
			lualib:SysMsg_SendTriggerMsg(player, "发送成功")
		end
		return ""
	end
	
	--元宝
	local function Ingot()
		if not lualib:Player_IsIngotEnough(player, num, false) then
			return "你身上的元宝不足，无法拍卖！"
		end
		
		--扣除金币
		if not lualib:Player_SubIngot(player, num, false, "拍卖", player) then
			return "扣除元宝失败！"
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
		return "拍卖类型错误！"
	end
end

--客户端提交物品
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
		return "您并没有放入物品！"
	end
	
	if price < 1 then
		return "请正确的输入价格！(单位RMB:元)"
	end
	
	local item_guid_t = {}
	
	for i = 1, #t do
		local itemGuid = lualib:Player_GetItemGuid(player, tonumber(t[i]))
		
		if itemGuid == "" or itemGuid == nil then
			return "你放入的物品中有道具不存在，请检查道具后重新放入！"
		end
		
		if lualib:Item_IsBind(player, itemGuid) == true then
			return "你放入的物品包含了绑定道具，请重新放入！"
		end
	end
	
	local itemJsonStr = ""
	for i = 1, #t do
		local itemGuid = lualib:Player_GetItemGuid(player, tonumber(t[i]))
		local itemJson = lualib:Item2Json(itemGuid)
		if not lualib:Item_Destroy(player, itemGuid, "拍卖物品", player) then
			return "扣除道具失败"
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



--网站提交买卖
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
		if not lualib:Mail("系统", playerName, "你所购买的订单"..id.."商品已发送！", tonumber(t[4]), 0, {}) then
			lualib:LogDetail(playerName, "担保交易失败", "担保交易失败", 0, 0, "订单："..id.."#"..types.."#"..param, "", "")
		else
			lualib:LogDetail(playerName, "担保交易成功", "担保交易成功", 0, 0, "订单："..id.."#"..types.."#"..param, "", "")
		end
	end
	
	local function Ingot()
		if not lualib:Mail("系统", playerName, "你所购买的订单"..id.."商品已发送！", 0, tonumber(t[4]), {}) then
			lualib:LogDetail(playerName, "担保交易失败", "担保交易失败", 0, 0, "订单："..id.."#"..types.."#"..param, "", "")
		else
			lualib:LogDetail(playerName, "担保交易成功", "担保交易成功", 0, 0, "订单："..id.."#"..types.."#"..param, "", "")
		end
	end
	
	if types == 1 then
		gold()
	elseif types == 2 then
		Ingot()
	elseif types == 3 then
		lualib:ScriptFuncToPlayer(playerName, "担保交易", "item", id.."#"..param)
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
		if not lualib:MailJsonItem("担保交易系统", name, "担保交易", 0, 0, t[i]) then
			lualib:LogDetail(name, "担保交易", "担保交易", 0, 0, "订单："..t[2].."#"..t[i], "", "")
		else
			lualib:LogDetail(name, "担保交易成功", "担保交易成功", 0, 0, "订单："..t[2].."#"..t[i], "", "")
		end
	end
	return ""
end

--网站回应
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
