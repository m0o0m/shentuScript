-------------------------------------------传送函数--------------------------------------------------------
function MapMove(npc, player, map_key_name, x, y, r,jinbi,leix)

	if player == "" then
		player = npc
	end
	
	local msg=""
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
	jinbi = tonumber(jinbi)

	if jinbi ~= nil then --判断是否使用绑定金币
		if not lualib:Player_IsGoldEnough(player,jinbi,true) then
			if not lualib:Player_IsGoldEnough(player,jinbi,false) then
				msg = msg.."金币不足，我不能为你服务！\n\n"
				msg = msg.."<@likai *01*「离开」>\n"
				return msg
			else
				lualib:Player_SubGold(player,jinbi,false,"传送费",npc) --消耗绑定金币
			end
		else
			lualib:Player_SubGold(player,jinbi,true,"传送费",npc) --消耗金币
		end
	end
	
	if not lualib:Player_MapMoveXY(player,map_key_name, x, y, r) then
		return "跳地图失败"
    end
	
	return ""
end

-------------------------------------------关闭对话框函数--------------------------------------------------------
function likai(npc,player)
	return ""
end

-------------------------------------------购买函数（物品不绑定）--------------------------------------------------------
function buy(player,type,ingot,itemname,number,bind,opr,description,target,Repeat) --参数3：消耗类型 参数4：消耗数量 参数5：物品名称 参数6：物品数量 参数7：是否绑定 参数8：添加还是删除 参数9：添加道具原因 参数10：发起者 参数11：是否提示再次购买
	local backup = "#"..type.."#"..ingot .."#"..itemname.."#"..number.."#"..bind.."#"..opr.."#"..description.."#"..target.."#"..Repeat

	ingot = tonumber(ingot)
	number = tonumber(number)
	
	if lualib:Player_GetBagFree(player) < number then
		return "包裹空位不足！购买失败！\n \n<@likai *01*离开>\n"
	end
	
	if type == "yuanbao" then
		if lualib:Player_IsIngotEnough(player,ingot,false) == true then
			lualib:Player_SubIngot(player,ingot,false,description,player)
		end
	elseif type == "jinbi" then
		if lualib:Player_IsGoldEnough(player,ingot,false) == true then
			lualib:Player_SubGold(player,ingot,false,description,player)
		end
	else
		if type == "yuanbao" then
			return "购买失败，没有足够的元宝！\n \n <@likai *01*离开>\n"
		elseif type == "jinbi" then
			return "购买失败，没有足够的金币！\n \n <@likai *01*离开>\n"
		end
	end
	local name_table = {itemname}
	local count_table = {number}
	local bind_table = {tonumber(bind)}
	local opr_table = {tonumber(opr)}
	if target == "player" then
		target = player
	end
	
	if lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, description,target) == true then
		if Repeat == "0" then
			return itemname .. "购买成功！\n \n<@likai *01*离开>\n"
		else
			lualib:NPCTalk(player,itemname .. "购买成功！\n \n<@buy" .. backup .. " *01*继续购买>\n<@likai *01*离开>\n")
			return ""
		end
	else
		return itemname .. "购买失败！\n \n<@likai *01*离开>\n"
	end
end

-------------------------------------------购买函数（物品绑定）--------------------------------------------------------
function bangbuy(player,type,ingot,itemname,number,bind,opr,description,target,Repeat) --参数3：消耗类型 参数4：消耗数量 参数5：物品名称 参数6：物品数量 参数7：是否绑定 参数8：添加还是删除 参数9：添加道具原因 参数10：发起者 参数11：是否提示再次购买
	local backup = "#"..type.."#"..ingot .."#"..itemname.."#"..number.."#"..bind.."#"..opr.."#"..description.."#"..target.."#"..Repeat
	ingot = tonumber(ingot)
	number = tonumber(number)
	
	if lualib:Player_GetBagFree(player) < number then
		return "包裹空位不足！购买失败！\n \n<@likai *01*离开>\n"
	end
	
	if type == "yuanbao" then
		if lualib:Player_IsIngotEnough(player,ingot,true) == true then
			lualib:Player_SubIngot(player,ingot,true,description,player)
		end
	elseif type == "jinbi" then
		if lualib:Player_IsGoldEnough(player,ingot,true) == true then
			lualib:Player_SubGold(player,ingot,true,description,player)
		end
	else
		if type == "yuanbao" then
			return "购买失败，没有足够的绑定元宝！\n \n <@likai *01*离开>\n"
		elseif type == "jinbi" then
			return "购买失败，没有足够的绑定金币！\n \n <@likai *01*离开>\n"
		end
	end
	local name_table = {itemname}
	local count_table = {number}
	local bind_table = {1}
	local opr_table = {tonumber(opr)}
	if target == "player" then
		target = player
	end
	
	if lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, description,target) == true then
		if Repeat == "0" then
			return itemname .. "购买成功！\n \n<@likai *01*离开>\n"
		else
			lualib:NPCTalk(player,itemname .. "购买成功！\n \n<@bangbuy" .. backup .. " *01*继续购买>\n<@likai *01*离开>\n")
			return ""
		end
	else
		return itemname .. "购买失败！\n \n<@likai *01*离开>\n"
	end
end

-------------------------------------------购买函数（物品绑定和不绑定）--------------------------------------------------------
function bangorbuy(player,type,ingot,itemname,number,bind,opr,description,target,Repeat) --参数3：消耗类型 参数4：消耗数量 参数5：物品名称 参数6：物品数量 参数7：是否绑定 参数8：添加还是删除 参数9：添加道具原因 参数10：发起者 参数11：是否提示再次购买
	local backup = "#"..type.."#"..ingot .."#"..itemname.."#"..number.."#"..bind.."#"..opr.."#"..description.."#"..target.."#"..Repeat
	
	ingot = tonumber(ingot)
	number = tonumber(number)

	if lualib:Player_GetBagFree(player) < number then
		return "包裹空位不足！购买失败！\n \n<@likai *01*离开>\n"
	end
	
	if type == "yuanbao" then
		if lualib:Player_IsIngotEnough(player,ingot,true) == true then
			lualib:Player_SubIngot(player,ingot,true,description,player)
		elseif lualib:Player_IsIngotEnough(player,ingot,false) == true then
			lualib:Player_SubIngot(player,ingot,false,description,player)
		end
	elseif type == "jinbi" then
		if lualib:Player_IsGoldEnough(player,ingot,true) == true then
			lualib:Player_SubGold(player,ingot,true,description,player)
		elseif lualib:Player_IsGoldEnough(player,ingot,false) == true then
			lualib:Player_SubGold(player,ingot,false,description,player)
		end
	else
		if type == "yuanbao" then
			return "购买失败，没有足够的元宝！\n \n <@likai *01*离开>\n"
		elseif type == "jinbi" then
			return "购买失败，没有足够的金币！\n \n <@likai *01*离开>\n"
		end
	end
	local name_table = {itemname}
	local count_table = {number}
	local bind_table = {1}
	local opr_table = {tonumber(opr)}
	if target == "player" then
		target = player
	end
	
	if lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, description,target) == true then
		if Repeat == "0" then
			return itemname .. "购买成功！\n \n<@likai *01*离开>\n"
		else
			lualib:NPCTalk(player,itemname .. "购买成功！\n \n<@bangorbuy" .. backup .. " *01*继续购买>\n<@likai *01*离开>\n")
			return ""
		end
	else
		return itemname .. "购买失败！\n \n<@likai *01*离开>\n"
	end
end

-------------------------------------------时间解析--------------------------------------------------------
function shijianjiexi(s1)
	local shijian = {}
	local j1,j2,j3,j4

	j1,j2 = string.find(s1,"-",1)
	shijian["year"] = tonumber(string.sub(s1,1,j1-1))
	j3,j4 = string.find(s1,"-",j2+1)
	shijian["month"] = tonumber(string.sub(s1,j2+1,j3-1))
	j5 = string.find(s1," ",j4)
	shijian["day"] = tonumber(string.sub(s1,j4+1,j5-1))
	
	j1,j2 = string.find(s1,":",j5+1)
	shijian["hour"] = tonumber(string.sub(s1,j5+1,j1-1))
	j3,j4 = string.find(s1,":",j2+1)
	shijian["min"] = tonumber(string.sub(s1,j2+1,j3-1))
	shijian["sec"] = tonumber(string.sub(s1,j4+1,#s1))
	return shijian
end

-------------------------------------------倒计时显示--------------------------------------------------------
function daojishixianshi(n1)
	local daojishi = {}
	daojishi["hour"] = math.modf(n1/3600)
	daojishi["min"] = math.modf(((n1 - daojishi["hour"]*3600))/60)
	daojishi["sec"] = n1 - (daojishi["hour"]*3600 + daojishi["min"]*60)
	return daojishi
end

-------------------------------------------丹药生效--------------------------------------------------------
function danyaoshengxiao(player)
	if lualib:Player_GetIntProp(player,lua_role_job) == 1 then
		if lualib:GetInt(player,"yongjiudanyaocishu1") > 0 then
			 lualib:Player_RunGMCmd(player,"sa","29 "..lualib:GetInt(player,"yongjiudanyaocishu1")*2)
		elseif lualib:GetInt(player,"yongjiudanyaocishu2") > 0 then
			 lualib:Player_RunGMCmd(player,"sa","30 "..lualib:GetInt(player,"yongjiudanyaocishu2")*12)
		elseif lualib:GetInt(player,"yongjiudanyaocishu3") > 0 then
			 lualib:Player_RunGMCmd(player,"sa","31 "..lualib:GetInt(player,"yongjiudanyaocishu3")*5)
		end
	elseif lualib:Player_GetIntProp(player,lua_role_job) == 2 then
		if lualib:GetInt(player,"yongjiudanyaocishu1") > 0 then
			 lualib:Player_RunGMCmd(player,"sa","29 "..lualib:GetInt(player,"yongjiudanyaocishu1")*10)
		elseif lualib:GetInt(player,"yongjiudanyaocishu2") > 0 then
			 lualib:Player_RunGMCmd(player,"sa","30 "..lualib:GetInt(player,"yongjiudanyaocishu2")*2)
		elseif lualib:GetInt(player,"yongjiudanyaocishu3") > 0 then
			 lualib:Player_RunGMCmd(player,"sa","31 "..lualib:GetInt(player,"yongjiudanyaocishu3")*5)
		end
	elseif lualib:Player_GetIntProp(player,lua_role_job) == 3 then
		if lualib:GetInt(player,"yongjiudanyaocishu1") > 0 then
			 lualib:Player_RunGMCmd(player,"sa","29 "..lualib:GetInt(player,"yongjiudanyaocishu1")*3)
		elseif lualib:GetInt(player,"yongjiudanyaocishu2") > 0 then
			 lualib:Player_RunGMCmd(player,"sa","30 "..lualib:GetInt(player,"yongjiudanyaocishu2")*3)
		elseif lualib:GetInt(player,"yongjiudanyaocishu3") > 0 then
			 lualib:Player_RunGMCmd(player,"sa","31 "..lualib:GetInt(player,"yongjiudanyaocishu3")*2)
		end
	end
end