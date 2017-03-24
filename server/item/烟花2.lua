local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/marry")

local yanhua_table = {
						["一心一意"] = 1,
						["玫瑰花"] = 2,
						["9朵玫瑰花"] = 3,
						["99朵玫瑰花"] = 4,
						["999朵玫瑰花"] = 5,
						["庆典蛋糕"] = 6, 
					 }
local texiao_time = {
						["一心一意"] = 3, 
						["庆典蛋糕"] = 10, 
					}

function main(player, item)
	local item_K = lualib:KeyName(item)--道具索引名
	local p_name = lualib:KeyName(player)--玩家名称
	local p_map = lualib:Name(lualib:MapGuid(player))--玩家所在地图名称
	for k, v in pairs(yanhua_table) do
		if item_K == k then
			if v ==1 then
				yanhua(player, item, item_K, p_name, p_map)
			elseif  v ==2 then
				meiguihua(player, item, item_K, p_name, p_map)
			elseif v ==3 then
				meiguihua9(player, item, item_K, p_name, p_map)
			elseif v ==4 then
				meiguihua99(player, item, item_K, p_name, p_map)
			elseif v ==5 then
				meiguihua999(player, item, item_K, p_name, p_map)
			elseif v == 6 then
				cake(player, item, item_K, p_name, p_map)
			end
			return true
		end
	end
	return true
end

---烟花
function yanhua(player, item, item_K, p_name, p_map)
    local player_x = lualib:X(player)
    local player_y = lualib:Y(player)
	local msg = "玩家【"..p_name.."】在【"..p_map.."】（"..player_x..", "..player_y.."）使用了"..item_K.."，大家快去观看！"
	if lualib:HasBuff(player, "烟花") then
		lualib:SetInt(player, "yanhua_buff_time", (lualib:GetInt(player, "yanhua_buff_time") + texiao_time[item_K]))
		lualib:AddBuff(player, "烟花2", 0)
	else
		lualib:AddBuff(player, "烟花", 10000)
		lualib:SetInt(player, "yanhua_buff_time", texiao_time[item_K])
		local id = lualib:GenTimerId(player)
		lualib:AddTimer(player, id, 1000, -1, "yanhuajingyan")
	end
	lualib:SysMsg_SendCenterMsg(1, msg, "")
	lualib:Item_Destroy(player, item, "烟花", player)
end

function yanhuajingyan(player, timer_id)
	if lualib:GetInt(player, "yanhua_buff_time") ~= 0 then
		lualib:SetInt(player, "yanhua_buff_time", (lualib:GetInt(player, "yanhua_buff_time") - 1))
	else
		lualib:DelBuff(player, "烟花")
		lualib:DisableTimer(player, timer_id)
	end
end

--蛋糕
function cake(player, item, item_K, p_name, p_map)
	local player_x = lualib:X(player)
    local player_y = lualib:Y(player)
	local msg = "玩家【"..p_name.."】在【"..p_map.."】（"..player_x..", "..player_y.."）使用了"..item_K.."，大家快去观看！"
	if lualib:HasBuff(player, "蛋糕") then
		lualib:SetInt(player, "cake_buff_time", (lualib:GetInt(player, "cake_buff_time") + texiao_time[item_K]))
	else
		lualib:SysMsg_SendCenterMsg(1, "jhsdfsdf", "")
		lualib:AddBuff(player, "蛋糕", 10000)
		lualib:SetInt(player, "cake_buff_time", texiao_time[item_K])
		local id = lualib:GenTimerId(player)
		lualib:AddTimer(player, id, 1000, -1, "cakejingyan")
	end
	lualib:SysMsg_SendCenterMsg(1, msg, "")
	lualib:Item_Destroy(player, item, "蛋糕", player)
end

function cakejingyan(player, timer_id)
	if lualib:GetInt(player, "cake_buff_time") ~= 0 then
		lualib:SetInt(player, "cake_buff_time", (lualib:GetInt(player, "cake_buff_time") - 1))
	else
		lualib:DelBuff(player, "蛋糕")
		lualib:DisableTimer(player, timer_id)
	end
end

--玫瑰花
function meiguihua(player, item, item_K, p_name, p_map)
	lualib:SysMsg_SendInputDlg(player, 3, "请输入所要赠送的玩家昵称(对方不在线或不存在则送给自己)", 45, 14, "meiguihuazhixing", item.."#"..item_K)
end

function meiguihuazhixing(id, player, toName, param)
	local p_Name = lualib:Name(player)
	local params = lualib:StrSplit(param, "#")--分割参数为一个table
	local item = params[1]
	local item_K = params[2]
	local target_Guid = lualib:Name2Guid(toName)
    local spouse = lualib:Player_GetCustomVarStr(player, "配偶GUID")
	local zij_sex = lualib:Gender(player)
	local mubiao_sex = lualib:Gender(target_Guid)


	local s = ""
	if target_Guid == "" then
		lualib:SysMsg_SendMsgDlg(player, 6, "目标不存在或不在线，你继续赠送将送给自己\n \n#BUTTON0#继续赠送#BUTTONEND#", 10, "meiguihuazhixingEx", item_K)
		return false
	elseif target_Guid == player then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#7#1#1#2#3#1#1#30#30")
		s = "可怜的【"..p_Name.."】无人可爱，最后只有选择向自己赠送"..item_K.."自己爱自己一下！"
	elseif mubiao_sex == 1 and zij_sex == 1 then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#7#1#1#2#3#1#1#30#30")
		lualib:RunClientScript(target_Guid, "ItemEffect","piaoluo_client", tostring(1078600000).."#7#1#1#2#3#1#1#30#30")
		s = "【"..p_Name.."】向【"..toName.."】赠送了"..item_K.."!他们向我们证明了什么是“男女只为传宗接代，男男才是真爱！”"
	elseif mubiao_sex == 2 and zij_sex == 2 then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#7#1#1#2#3#1#1#30#30")
		lualib:RunClientScript(target_Guid, "ItemEffect","piaoluo_client", tostring(1078600000).."#7#1#1#2#3#1#1#30#30")
		s = "【"..p_Name.."】向【"..toName.."】赠送了"..item_K.."!她们向我们证明了什么是“男女只为传宗接代，女女才是真爱！”"
	elseif mubiao_sex ~= zij_sex  then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#7#1#1#2#3#1#1#30#30")
		lualib:RunClientScript(target_Guid, "ItemEffect","piaoluo_client", tostring(1078600000).."#7#1#1#2#3#1#1#30#30")
		s = "【"..p_Name.."】向【"..toName.."】赠送了"..item_K.."，【"..toName.."】羞涩的接受了!"
	end
	
	if not lualib:DelItem(player, item_K, 1, 2, "玫瑰花", "玫瑰花") then
		lualib:SysMsg_SendTriggerMsg(player, "扣除道具失败")
		return false
	end
	
	lualib:SysMsg_SendCenterMsg(1, s, "")
	lualib:SysMsg_SendBroadcastColor(s, "", 6, 12)

	if spouse ~= "" then
		local intimacy=lualib:Player_GetCustomVarInt(player, "intimacy")
		local spouse_intimacy=lualib:Player_GetCustomVarInt(spouse, "intimacy")
			if target_Guid == spouse then --如果双方为配偶，则增加1点亲密度
				add_intimacy(player, 1)
				lualib:SysMsg_SendTriggerMsg(player, "你与你的配偶获得了1点亲密度")
								lualib:Print(""..intimacy.."")
				add_intimacy(spouse, 1)
				lualib:SysMsg_SendTriggerMsg(spouse, "你与你的配偶获得了1点亲密度")
			end
	end

	return true
end

function meiguihuazhixingEx(id, player, btn_id, item_K)
	local p_Name = lualib:Name(player)
	local spouse = lualib:Player_GetCustomVarStr(player, "配偶GUID")
	local s = "可怜的【"..p_Name.."】无人可爱，最后只有选择向自己赠送"..item_K.."自己爱自己一下！"		
	lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#7#1#1#2#3#1#1#30#30")
	if not lualib:DelItem(player, item_K, 1, 2, "玫瑰花", "玫瑰花") then
		lualib:SysMsg_SendTriggerMsg(player, "扣除道具失败")
	end
	lualib:SysMsg_SendCenterMsg(1, s, "")
	lualib:SysMsg_SendBroadcastColor(s, "", 6, 12)
	if spouse ~= "" then
		local intimacy=lualib:Player_GetCustomVarInt(player, "intimacy")
		local spouse_intimacy=lualib:Player_GetCustomVarInt(spouse, "intimacy")
			if target_Guid == spouse then --如果双方为配偶，则增加1点亲密度
				add_intimacy(player, 9)
				lualib:SysMsg_SendTriggerMsg(player, "你与你的配偶获得了9点亲密度")
				add_intimacy(spouse, 9)
				lualib:SysMsg_SendTriggerMsg(spouse, "你与你的配偶获得了9点亲密度")
			end
	end

	return true
end


--9朵玫瑰花
function meiguihua9(player, item, item_K, p_name, p_map)
	lualib:SysMsg_SendInputDlg(player, 5, "请输入所要赠送的玩家昵称", 45, 14, "meigui9zhixing", item.."#"..item_K)
end

function meigui9zhixing(id, player, toName, param)
	local p_Name = lualib:Name(player)
	local params = lualib:StrSplit(param, "#")
	local item = params[1]
	local item_K = params[2]
	local target_Guid = lualib:Name2Guid(toName)
    local spouse = lualib:Player_GetCustomVarStr(player, "配偶GUID")
	local zij_sex = lualib:Gender(player)
	local mubiao_sex = lualib:Gender(target_Guid)

	
	local s = ""
	if target_Guid == "" then
		lualib:SysMsg_SendMsgDlg(player, 6, "目标不存在或不在线，你继续赠送将送给自己\n \n#BUTTON0#继续赠送#BUTTONEND#", 10, "meigui9zhixingEx", item_K)
		return false
	elseif target_Guid == player then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#15#1#1#2#3#1#2#30#30")
		s = "可怜的【"..p_Name.."】无人可爱，最后只有选择向自己赠送"..item_K.."自己爱自己一下！"
	elseif mubiao_sex == 1 and zij_sex == 1 then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#15#1#1#2#3#1#2#30#30")
		lualib:RunClientScript(target_Guid, "ItemEffect","piaoluo_client", tostring(1078600000).."#15#1#1#2#3#1#2#30#30")
		s = "【"..p_Name.."】向【"..toName.."】赠送了"..item_K.."!他们向我们证明了什么是“男女只为传宗接代，男男才是真爱！”"
	elseif mubiao_sex == 2 and zij_sex == 2 then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#15#1#1#2#3#1#2#30#30")
		lualib:RunClientScript(target_Guid, "ItemEffect","piaoluo_client", tostring(1078600000).."#15#1#1#2#3#1#2#30#30")
		s = "【"..p_Name.."】向【"..toName.."】赠送了"..item_K.."!她们向我们证明了什么是“男女只为传宗接代，女女才是真爱！”"
	elseif mubiao_sex ~= zij_sex  then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#15#1#1#2#3#1#2#30#30")
		lualib:RunClientScript(target_Guid, "ItemEffect","piaoluo_client", tostring(1078600000).."#15#1#1#2#3#1#2#30#30")
		s = "【"..p_Name.."】向【"..toName.."】赠送了"..item_K.."，【"..toName.."】羞涩的接受了!"
	end
	
	if not lualib:DelItem(player, item_K, 1, 2, "9玫瑰花", "9玫瑰花") then
		lualib:SysMsg_SendTriggerMsg(player, "扣除道具失败")
		return false
	end
	
	lualib:SysMsg_SendCenterMsg(1, s, "")
	lualib:SysMsg_SendBroadcastColor(s, "", 6, 12)
	if spouse ~= "" then
		local intimacy=lualib:Player_GetCustomVarInt(player, "intimacy")
		local spouse_intimacy=lualib:Player_GetCustomVarInt(spouse, "intimacy")
			if target_Guid == spouse then --如果双方为配偶，则增加1点亲密度
				add_intimacy(player, 9)
				lualib:SysMsg_SendTriggerMsg(player, "你与你的配偶获得了9点亲密度")
				add_intimacy(spouse, 9)
				lualib:SysMsg_SendTriggerMsg(spouse, "你与你的配偶获得了9点亲密度")
			end
	end

	return true
end

function meigui9zhixingEx(id, player, btn_id, item_K)
	local p_Name = lualib:Name(player)
	local spouse = lualib:Player_GetCustomVarStr(player, "配偶GUID")
	local s = "可怜的【"..p_Name.."】无人可爱，最后只有选择向自己赠送"..item_K.."自己爱自己一下！"		
	lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#15#1#1#2#3#1#2#30#30")
	if not lualib:DelItem(player, item_K, 1, 2, "9玫瑰花", "9玫瑰花") then
		lualib:SysMsg_SendTriggerMsg(player, "扣除道具失败")
		return false
	end
	
	lualib:SysMsg_SendCenterMsg(1, s, "")
	lualib:SysMsg_SendBroadcastColor(s, "", 6, 12)
	if spouse ~= "" then
		local intimacy=lualib:Player_GetCustomVarInt(player, "intimacy")
		local spouse_intimacy=lualib:Player_GetCustomVarInt(spouse, "intimacy")
			if target_Guid == spouse then --如果双方为配偶，则增加1点亲密度
				add_intimacy(player, 9)
				lualib:SysMsg_SendTriggerMsg(player, "你与你的配偶获得了9点亲密度")
				add_intimacy(spouse, 9)
				lualib:SysMsg_SendTriggerMsg(spouse, "你与你的配偶获得了9点亲密度")
			end
	end

	return true
end


--99朵玫瑰花
function meiguihua99(player, item, item_K, p_name, p_map)
	lualib:SysMsg_SendInputDlg(player, 5, "请输入所要赠送的玩家昵称(对方不在线或不存在则送给自己)", 45, 14, "meigui99zhixing", item.."#"..item_K)
end

function meigui99zhixing(id, player, toName, param)
	local p_Name = lualib:Name(player)
	local params = lualib:StrSplit(param, "#")
	local item = params[1]
	local item_K = params[2]
	local target_Guid = lualib:Name2Guid(toName)
    local spouse = lualib:Player_GetCustomVarStr(player, "配偶GUID")
	local zij_sex = lualib:Gender(player)
	local mubiao_sex = lualib:Gender(target_Guid)

	local s = ""
	if target_Guid == "" then
		lualib:SysMsg_SendMsgDlg(player, 6, "目标不存在或不在线，你继续赠送将送给自己\n \n#BUTTON0#继续赠送#BUTTONEND#", 10, "meigui99zhixingEx", item_K)
		return false
	elseif target_Guid == player then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#99#1#1#3#3#1#3#30#30")
		s = "可怜的【"..p_Name.."】无人可爱，最后只有选择向自己赠送"..item_K.."自己爱自己一下！"	
	elseif mubiao_sex == 1 and zij_sex == 1 then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#99#1#1#3#3#1#3#30#30")
		lualib:RunClientScript(target_Guid, "ItemEffect","piaoluo_client", tostring(1078600000).."#99#1#1#3#3#1#3#30#30")
		s = "【"..p_Name.."】向【"..toName.."】赠送了"..item_K.."!他们向我们证明了什么是“男女只为传宗接代，男男才是真爱！”"
	elseif mubiao_sex == 2 and zij_sex == 2 then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#99#1#1#3#3#1#3#30#30")
		lualib:RunClientScript(target_Guid, "ItemEffect","piaoluo_client", tostring(1078600000).."#99#1#1#3#3#1#3#30#300")
		s = "【"..p_Name.."】向【"..toName.."】赠送了"..item_K.."!她们向我们证明了什么是“男女只为传宗接代，女女才是真爱！”"
	elseif mubiao_sex ~= zij_sex  then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#99#1#1#3#3#1#3#30#30")
		lualib:RunClientScript(target_Guid, "ItemEffect","piaoluo_client", tostring(1078600000).."#99#1#1#3#3#1#3#30#30")
		s = "【"..p_Name.."】向【"..toName.."】赠送了"..item_K.."，【"..toName.."】羞涩的接受了!"
	end

	if not lualib:DelItem(player, item_K, 1, 2, "99玫瑰花", "99玫瑰花") then
		lualib:SysMsg_SendTriggerMsg(player, "扣除道具失败")
		return false
	end
	lualib:SysMsg_SendCenterMsg(1, s, "")
	lualib:SysMsg_SendBroadcastColor(s, "", 6, 12)

	if spouse ~= "" then
		local intimacy=lualib:Player_GetCustomVarInt(player, "intimacy")
		local spouse_intimacy=lualib:Player_GetCustomVarInt(spouse, "intimacy")
			if target_Guid == spouse then --如果双方为配偶，则增加1点亲密度
				add_intimacy(player, 99)
				lualib:SysMsg_SendTriggerMsg(player, "你与你的配偶获得了99点亲密度")
				add_intimacy(spouse, 99)
				lualib:SysMsg_SendTriggerMsg(spouse, "你与你的配偶获得了99点亲密度")
			end
	end

	return true
end


function meigui99zhixingEx(id, player, btn_id, item_K)
	local p_Name = lualib:Name(player)
	local spouse = lualib:Player_GetCustomVarStr(player, "配偶GUID")
	local s = "可怜的【"..p_Name.."】无人可爱，最后只有选择向自己赠送"..item_K.."自己爱自己一下！"			
	lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#99#1#1#3#3#1#2#30#30")
	if not lualib:DelItem(player, item_K, 1, 2, "99玫瑰花", "99玫瑰花") then
		lualib:SysMsg_SendTriggerMsg(player, "扣除道具失败")
		return false
	end
	
	lualib:SysMsg_SendCenterMsg(1, s, "")
	lualib:SysMsg_SendBroadcastColor(s, "", 6, 12)
	if spouse ~= "" then
		local intimacy=lualib:Player_GetCustomVarInt(player, "intimacy")
		local spouse_intimacy=lualib:Player_GetCustomVarInt(spouse, "intimacy")
			if target_Guid == spouse then --如果双方为配偶，则增加1点亲密度
				add_intimacy(player, 9)
				lualib:SysMsg_SendTriggerMsg(player, "你与你的配偶获得了9点亲密度")
				add_intimacy(spouse, 9)
				lualib:SysMsg_SendTriggerMsg(spouse, "你与你的配偶获得了9点亲密度")
			end
	end
	return true
end

--999朵玫瑰花
function meiguihua999(player, item, item_K, p_name, p_map)
	lualib:SysMsg_SendInputDlg(player, 6, "请输入所要赠送的玩家昵称(对方不在线或不存在则送给自己)", 45, 14, "meigui999zhixing", item.."#"..item_K)
end

function meigui999zhixing(id, player, toName, param)
	local p_Name = lualib:Name(player)
	local params = lualib:StrSplit(param, "#")
	local item = params[1]
	local item_K = params[2]
	local target_Guid = lualib:Name2Guid(toName)
    local spouse = lualib:Player_GetCustomVarStr(player, "配偶GUID")
	local zij_sex = lualib:Gender(player)
	local mubiao_sex = lualib:Gender(target_Guid)

	local s = ""
	if target_Guid == "" then
		lualib:SysMsg_SendMsgDlg(player, 6, "目标不存在或不在线，你继续赠送将送给自己\n \n#BUTTON0#继续赠送#BUTTONEND#", 10, "meigui999zhixingEx", item_K)
		return false
	elseif target_Guid == player then
		lualib:RunClientScript("0", "ItemEffect","yanhua", ""..yanhua_table[item_K].."")
		lualib:RunClientScript("0", "ItemEffect","piaoluo_client", tostring(1078600000).."#200#1#1#4#3#1#3#30#30")
		s = "可怜的【"..p_Name.."】无人可爱，最后只有选择向自己赠送"..item_K.."自己爱自己一下！"	
	elseif mubiao_sex == 1 and zij_sex == 1 then
		lualib:RunClientScript("0", "ItemEffect","yanhua", ""..yanhua_table[item_K].."")
		lualib:RunClientScript("0", "ItemEffect","piaoluo_client", tostring(1078600000).."#200#1#1#4#3#1#3#30#30")
		s = "【"..p_Name.."】向【"..toName.."】赠送了"..item_K.."!他们向我们证明了什么是“男女只为传宗接代，男男才是真爱！”"
	elseif mubiao_sex == 2 and zij_sex == 2 then
		lualib:RunClientScript("0", "ItemEffect","yanhua", ""..yanhua_table[item_K].."")
		lualib:RunClientScript("0", "ItemEffect","piaoluo_client", tostring(1078600000).."#200#1#1#4#3#1#3#30#30")
		s = "【"..p_Name.."】向【"..toName.."】赠送了"..item_K.."!她们向我们证明了什么是“男女只为传宗接代，女女才是真爱！”"
	elseif mubiao_sex ~= zij_sex  then
		lualib:RunClientScript("0", "ItemEffect","yanhua", ""..yanhua_table[item_K].."")
		lualib:RunClientScript("0", "ItemEffect","piaoluo_client", tostring(1078600000).."#200#1#1#4#3#1#3#30#30")
		s = "【"..p_Name.."】向【"..toName.."】赠送了"..item_K.."，【"..toName.."】羞涩的接受了!"
	end
 
	if not lualib:DelItem(player, item_K, 1, 2, "99玫瑰花", "99玫瑰花") then
		lualib:SysMsg_SendTriggerMsg(player, "扣除道具失败")
	end
	
	lualib:SysMsg_SendCenterMsg(1, s, "")
	lualib:SysMsg_SendBroadcastColor(s, "", 6, 12)

	if spouse ~= "" then
		local intimacy=lualib:Player_GetCustomVarInt(player, "intimacy")
		local spouse_intimacy=lualib:Player_GetCustomVarInt(spouse, "intimacy")
			if target_Guid == spouse then --如果双方为配偶，则增加999点亲密度
				add_intimacy(player, 999)
				lualib:SysMsg_SendTriggerMsg(player, "你与你的配偶获得了999点亲密度")
				lualib:Print(""..intimacy.."")
				add_intimacy(spouse, 999)
				lualib:SysMsg_SendTriggerMsg(spouse, "你与你的配偶获得了999点亲密度")
			end
	end

	return true
end


function meigui999zhixingEx(id, player, btn_id, item_K)
	local p_Name = lualib:Name(player)
	local spouse = lualib:Player_GetCustomVarStr(player, "配偶GUID")
	local s = "可怜的【"..p_Name.."】无人可爱，最后只有选择向自己赠送"..item_K.."自己爱自己一下！"			
	lualib:RunClientScript("0", "ItemEffect","yanhua", ""..yanhua_table[item_K].."")
	lualib:RunClientScript("0", "ItemEffect","piaoluo_client", tostring(1078600000).."#200#1#1#4#3#1#3#30#30")
	if not lualib:DelItem(player, item_K, 1, 2, "999玫瑰花", "999玫瑰花") then
		lualib:SysMsg_SendTriggerMsg(player, "扣除道具失败")
		return false
	end
	lualib:SysMsg_SendCenterMsg(1, s, "")
	lualib:SysMsg_SendBroadcastColor(s, "", 6, 12)
	if spouse ~= "" then
		local intimacy=lualib:Player_GetCustomVarInt(player, "intimacy")
		local spouse_intimacy=lualib:Player_GetCustomVarInt(spouse, "intimacy")
		if target_Guid == spouse then --如果双方为配偶，则增加1点亲密度
			add_intimacy(player, 9)
			lualib:SysMsg_SendTriggerMsg(player, "你与你的配偶获得了9点亲密度")
			add_intimacy(spouse, 9)
			lualib:SysMsg_SendTriggerMsg(spouse, "你与你的配偶获得了9点亲密度")
		end
	end
	return true
end
