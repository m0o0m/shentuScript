local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

	local txdy_tb = 
			{
			{"zhan_men_name", "zhan_women_name"}, 
			{"fa_men_name", "fa_women_name"}, 
			{"dao_men_name", "dao_women_name"}, 
			}
			
	local npc_tb = 
			{
			{"zhan_men_npc", "zhan_women_npc"}, 
			{"fa_men_npc", "fa_women_npc"}, 
			{"dao_men_npc", "dao_women_npc"}, 
			}
			
	local hanghui_tb = 
			{
			{"zhan_men_hanghui", "zhan_women_hanghui"}, 
			{"fa_men_hanghui", "fa_women_hanghui"}, 
			{"dao_men_hanghui", "dao_women_hanghui"}, 
			}
			
	local level_tb = 
			{
			{"zhan_men_level", "zhan_women_level"}, 
			{"fa_men_level", "fa_women_level"}, 
			{"dao_men_level", "dao_women_level"}, 
			}

	local equip_site = {
					--	{1, "武器"},
						{14, "翅膀"},
						{16, "坐骑"},	
					--	{5, "衣服"},	
						{12, "勋章"},						
					--	{2, "头盔"},
					--	{9, "项链"},
					--	{3, "护腕(左)"},
					--	{4, "护腕(右)"},
					--	{10, "戒指(左)"},
					--	{11, "戒指(右)"},
					--	{7, "鞋子"},
					}
	local item_name_table = {"银鳞吊坠2", "222", "333"}

function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#天工大师#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."真正巧夺天工的大师不是能造出木牛流马，而是造出灵魂！\n \n"
	msg = msg.."#IMAGE1902700037#<@bind *01*装备绑定解绑>#POS<X:200>##IMAGE1902700037#<@xingyun *01*项链幸运提升>\n \n"
	msg = msg.."不是高丽棒子，也不是兽医！我只保证你不会变成人妖，你敢尝试吗？\n \n"
	msg = msg.."#IMAGE1902700037#<@zhuanzhi_1 *01*转换角色职业>#POS<X:200>##IMAGE1902700037#<@bianxin_1 *01*改变角色性别>\n"
	return msg
end

function bind(npc, player)
	local msg = "你穿戴中的，我能处理的装备如下：\n \n"
	local equip_num = 0
	for i = 1, #equip_site do
		local equip_guid = lualib:Player_GetItemGuid(player, equip_site[i][1])
		if equip_guid ~= "" and equip_guid ~= nil then
			local equip_name = lualib:Name(equip_guid)
			if lualib:Item_IsBind(player, equip_guid) == false then
				msg = msg..equip_site[i][2]..":#POS<X:110>#"..equip_name.."  #POS<X:250>#<@bindEx#1".."#"..equip_site[i][1].." *01*「点击认主绑定」>\n"
			else
				msg = msg..equip_site[i][2]..":#POS<X:110>#"..equip_name.."  #POS<X:250>#<@bindEx#2".."#"..equip_site[i][1].." *01*「点击释魂解绑」>\n"
			end
			equip_num = equip_num + 1
		end
	end
	if equip_num == 0 then
		return "我学艺不精，对你现在穿戴中的装备无能为力！目前我只能处理坐骑、翅膀、勋章。"
	end
	return msg
end


function bindEx(npc, player, types, site)
	local reqGold = 2000000
	local types = tonumber(types)
	local msg = ""
	if types == 1 then
		msg = msg.."绑定需要花费"..reqGold.."金币，绑定后不能交易，死亡将不会掉落！\n \n "
	elseif types == 2 then
		msg = msg.."解除绑定需要花费"..reqGold.."金币，解除绑定后可以交易，死亡将有几率会掉落！\n \n"
	end
	msg = msg.."<@bind_ok#"..types.."#"..site.." *01*「确定」>"
	return msg
end

function bind_ok(npc, player, types, site)
	local msg = ""
	local reqGold = 2000000
	local equip_guid = lualib:Player_GetItemGuid(player, tonumber(site))
	if equip_guid == "" or equip_guid == nil then
		return "你携带的装备发生变动，所修改的装备无法找到!！"
	end
	
	local types = tonumber(types)
	if types == 1 then
		if lualib:Item_IsBind(player, equip_guid) == true then
			return "该装备已绑定，无需再进行认主绑定！"
		end
	elseif types == 2 then
		if lualib:Item_IsBind(player, equip_guid) == false then
			return "该装备未绑定，无需再进行释魂解绑！"
		end
	end
	
	if not lualib:Player_IsGoldEnough(player, reqGold, false) then
		return "你的金币不足"..reqGold.."，操作失败！"
	end
	
	if not lualib:Player_SubGold(player, reqGold, false, "装备绑定", player) then
		return "扣除金币失败！"
	end
	
	if types == 1 then
		lualib:Item_SetBind(player, equip_guid, true)
		msg = "认主绑定成功！"
	elseif types == 2 then
		lualib:Item_SetBind(player, equip_guid, false)
		msg = "释魂解绑成功！"
	end
	
	return msg
end



function xingyun(npc, player)
    local msg = ""
	msg = msg.."#OFFSET<X:0,Y:-7>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	msg = msg.."在我这里可以给您的#COLORCOLOR_RED#项链加上幸运属性#COLOREND#，每提升一个幸运档次都需要消耗一定的金币，幸运档次越高，成功概率相应降低。#COLORCOLOR_RED#天生带幸运的项链我无能为力！#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#IMAGE<ID:1902700017>#<@xingyun1 *01*幸运零升一>需要您装备的项链幸运为0，每次50万金币\n"
	msg = msg.."#IMAGE<ID:1902700017>#<@xingyun2 *01*幸运一升二>需要您装备的项链幸运为1，每次100万金币\n"
	msg = msg.."#IMAGE<ID:1902700017>#<@xingyun3 *01*幸运二升三>需要您装备的项链幸运为2，每次200万金币\n"
	msg = msg.."#OFFSET<X:0,Y:-7>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	return msg
	end

function xingyun1(npc, player)
			local yb = 500000
			local r = lualib:GenRandom(1, 5)
			local item_guid = lualib:Player_GetEquipGuid(player, lua_site_necklace)
			local item_name = lualib:Player_GetEquipName(player, lua_site_necklace)

		for i = 1, 3 do
			if item_name == item_name_table[i] then
			return "需要您的项链幸运为0，您的项链不符合要求！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
			end
		end
		
		if item_guid == "" then
			return "你没有装备项链，不能使用添加幸运属性！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
		end
		
			local luck_curse = lualib:Equip_GetLuckCurse(player, item_guid)
		if luck_curse > 0 then
			return "需要您的项链幸运为0，您的项链不符合要求！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
		end
		
		if not lualib:Player_IsGoldEnough(player, yb, false) then
			return "金币不足！请充值后在来提升幸运属性！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
		end
		
		if not lualib:Player_SubGold(player, yb, false, "扣金币：提升幸运属性1", player) then
			return "扣除金币失败！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
		end
		
			local luck = luck_curse + 1
		if r == 3 then
				local player_name = lualib:Player_GetStrProp(player, lua_role_user_name)
			if lualib:Equip_SetLuckCurse(player, item_guid, luck) == false then
                lualib:SysMsg_SendWarnMsg(player, "提升幸运属性失败！")
                return "提升幸运属性失败！\n \n<@xingyun *01*「返回」>"
			end
				lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BROWN#["..player_name.."]".."#COLORCOLOR_YELLOW#在#COLORCOLOR_BROWN#龙城[天工大师]#COLORCOLOR_YELLOW#将项链幸运提升至#COLORCOLOR_GREENG#"..luck.."#COLORCOLOR_YELLOW#点！", "", 1, 12)
			return "恭喜您的项链幸运属性提升至"..luck.."点！\n \n<@xingyun *01*「返回」>"
		end	
	return "很遗憾，您这次的幸运属性提升失败，下次可能会成功！加油！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
end

function xingyun2(npc, player)
			local msg=""
			local yb = 1000000
			local r = lualib:GenRandom(1, 10)
			local item_guid = lualib:Player_GetEquipGuid(player, lua_site_necklace)
			local item_name = lualib:Player_GetEquipName(player, lua_site_necklace)

		for i = 1, 3 do
			if item_name == item_name_table[i] then
			return "需要您的项链幸运为1，您的项链不符合要求！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
			end
		end
			
		if item_guid == "" then
			return "你没有装备项链，不能使用添加幸运属性！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
		end
		
			local luck_curse = lualib:Equip_GetLuckCurse(player, item_guid)
		if luck_curse > 1  or luck_curse < 1 then
			return "需要您的项链幸运为1，您的项链不符合要求！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
		end
		
		if not lualib:Player_IsGoldEnough(player, yb, false) then
			return "金币不足！请充值后在来提升幸运属性！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
		end
		
		if not lualib:Player_SubGold(player, yb, false, "扣金币：提升幸运属性2", player) then
			return "扣除金币失败！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
		end
		
			local luck = luck_curse + 1
		if r == 3 then
				local player_name = lualib:Player_GetStrProp(player, lua_role_user_name)
			if lualib:Equip_SetLuckCurse(player, item_guid, luck) == false then
                lualib:SysMsg_SendWarnMsg(player, "提升幸运属性失败！")
                return "提升幸运属性失败！\n \n<@xingyun *01*「返回」>"
			end
				lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BROWN#["..player_name.."]".."#COLORCOLOR_YELLOW#在#COLORCOLOR_BROWN#龙城[天工大师]#COLORCOLOR_YELLOW#将项链幸运提升至#COLORCOLOR_GREENG#"..luck.."#COLORCOLOR_YELLOW#点！", "", 1, 12)
			return "恭喜您的项链幸运属性提升至"..luck.."点！\n \n<@xingyun *01*「返回」>"
		end	
	return "很遗憾，您这次的幸运属性提升失败，下次可能会成功！加油！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
end

function xingyun3(npc, player)
			local msg=""
			local yb = 2000000
			local r = lualib:GenRandom(1, 15)
			local item_guid = lualib:Player_GetEquipGuid(player, lua_site_necklace)
			local player_name = lualib:Player_GetStrProp(player, lua_role_user_name)
			local item_name = lualib:Player_GetEquipName(player, lua_site_necklace)
			local luck_curse = lualib:Equip_GetLuckCurse(player, item_guid)
			local luck = luck_curse + 1
			
		if item_guid == "" then
			return "你没有装备项链，不能使用添加幸运属性！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
		end
		
		for i = 1, 3 do
			if item_name == item_name_table[i] and luck_curse == 1 then
				return "需要您的项链幸运为2，您的项链不符合要求！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
			end
		end
		
		for i = 1, 3 do
			if item_name == item_name_table[i] then
				if not lualib:Player_IsGoldEnough(player, yb, false) then
					return "金币不足！请充值后在来提升幸运属性！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
				end
				
				if not lualib:Player_SubGold(player, yb, false, "扣金币：提升幸运属性3", player) then
					return "扣除金币失败！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
				end
				
				if r == 3 then
					if lualib:Equip_SetLuckCurse(player, item_guid, luck) == false then
						lualib:SysMsg_SendWarnMsg(player, "提升幸运属性失败！")
						return "提升幸运属性失败！\n \n<@xingyun *01*「返回」>"
					end
				lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BROWN#["..player_name.."]".."#COLORCOLOR_YELLOW#在#COLORCOLOR_BROWN#龙城[天工大师]#COLORCOLOR_YELLOW#将项链幸运提升至#COLORCOLOR_GREENG#"..luck.."#COLORCOLOR_YELLOW#点！", "", 1, 12)
					return "恭喜您的项链幸运属性提升至3点！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
				end
				if r ~= 3 then
					return "很遗憾，您这次的幸运属性提升失败，下次可能会成功！加油！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
				end
			end
		end
		

		if luck_curse ~= 2 then
				return "需要您的项链幸运为2，您的项链不符合要求！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
		end
		
		if not lualib:Player_IsGoldEnough(player, yb, false) then
			return "金币不足！请充值后在来提升幸运属性！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
		end
		
		if not lualib:Player_SubGold(player, yb, false, "扣金币：提升幸运属性2", player) then
			return "扣除金币失败！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
		end
		
		if r == 3 then
			if lualib:Equip_SetLuckCurse(player, item_guid, luck) == false then
                lualib:SysMsg_SendWarnMsg(player, "提升幸运属性失败！")
                return "提升幸运属性失败！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
			end
				lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BROWN#["..player_name.."]".."#COLORCOLOR_YELLOW#在#COLORCOLOR_BROWN#龙城[天工大师]#COLORCOLOR_YELLOW#将项链幸运提升至#COLORCOLOR_GREENG#"..luck.."#COLORCOLOR_YELLOW#点！", "", 1, 12)
			return "恭喜您的项链幸运属性提升至"..luck.."点！\n \n<@xingyun *01*「返回」>"
		end	
	return "很遗憾，您这次的幸运属性提升失败，下次可能会成功！加油！\n \n#IMAGE<ID:1902700019>#<@xingyun *01*「返回」>"
end
	
--------------------------------------------------------------------------------------------------------变性
function bianxin_1(npc, player)
    local msg = ""
	msg = msg.."#COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#====================欢迎光临性别转换====================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
	msg = msg.."    #OFFSET<X:0,Y:8>##COLORCOLOR_SKYBLUE#在我这里可以给帮您#COLORCOLOR_RED#转换性别#COLOREND##COLORCOLOR_SKYBLUE#，但需要您等级达到52级和花费一\n定的元宝哦。#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#──────────────────────────────#COLOREND#\n"
	msg = msg.."#IMAGE<ID:1902700017>#<@bianxin#1 *01*转换男性>  #COLORCOLOR_RED#需要消耗5000元宝 为防止数据异常 成功后会踢您下线#COLOREND#\n"
	msg = msg.."#IMAGE<ID:1902700017>#<@bianxin#2 *01*转换女性>  #COLORCOLOR_RED#需要消耗5000元宝 为防止数据异常 成功后会踢您下线#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	msg = msg.."                                            #IMAGE<ID:1902700019>#<@main *01*「返回」>"
	return msg
end

function bianxin(npc, player, leixing)
	local lc_map_guid = lualib:MapGuid(npc)
	local gender = lualib:Gender(player)
	local job = lualib:Job(player)
	local job_tb = {"男性", "女性"}
	if tonumber(leixing) == gender then
		return "你已经是【"..job_tb[tonumber(leixing)].."】！\n \n#IMAGE<ID:1902700019>#<@bianxin_1 *01*「返回」>"
	end
	
	for i = 1, 11 do
		if lualib:Player_GetItemGuid(player, i) ~= "" then
			return "转变性别前请将您身上装备全部取下！\n \n#IMAGE<ID:1902700019>#<@bianxin_1 *01*「返回」>"
		end
	end
	
	if lualib:Level(player) < 52 then
		return "转变性别需要您等级达到52级！\n \n#IMAGE<ID:1902700019>#<@bianxin_1 *01*「返回」>"
	end
	
	if not lualib:Player_IsIngotEnough(player, 5000, false) then
		return "转变性别需要消耗5000元宝，您元宝不足！\n \n#IMAGE<ID:1902700019>#<@bianxin_1 *01*「返回」>"
	end
	
	if not lualib:Player_SubIngot(player, 5000, false, "扣元宝：转变性别", player) then
		return "扣除元宝失败！\n \n#IMAGE<ID:1902700019>#<@bianxin_1 *01*「返回」>"
	end
	
	local txdy_name = lualib:GetStr(lc_map_guid, txdy_tb[job][gender])
	if txdy_name ~= "" then
		if lualib:Name(player) == lualib:GetStr(lc_map_guid, txdy_tb[job][gender]) then
			lualib:SetStr(lc_map_guid, txdy_tb[job][gender], "期待上榜")
			lualib:Npc_ChangeName(lualib:GetStr(lc_map_guid, npc_tb[job][gender]), "期待上榜")
			lualib:SetStr(lc_map_guid, hanghui_tb[job][gender], "目前空缺")
			lualib:SetInt(lc_map_guid, level_tb[job][gender], 0)
			lualib:RemoveTitle(player, 26)
		end
	end
	
	lualib:SetGender(player, tonumber(leixing))

	lualib:KickByName(lualib:Name(player), 2, "变性后防止数据错误踢人")
	return ""
end

--------------------------------------------------------------------------------------------------------转职
function zhuanzhi_1(npc, player)
    local msg = ""
	msg = msg.." #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#====================欢迎光临职业转换===================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
	msg = msg.."    #OFFSET<X:0,Y:8>##COLORCOLOR_SKYBLUE#在我这里可以给帮您的#COLOREND##COLORCOLOR_RED#转换职业#COLOREND##COLORCOLOR_SKYBLUE#，但需要您等级达到60级和花费一定的元宝，#COLOREND##COLORCOLOR_RED#职业转变后所有技能为三级。#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#──────────────────────────────#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE<ID:1902700017>#<@zhuanzhi#1 *01*转换成战士> #COLORCOLOR_RED#需要消耗15000元宝 为防止数据异常 成功后会踢您下线#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE<ID:1902700017>#<@zhuanzhi#2 *01*转换成法师> #COLORCOLOR_RED#需要消耗15000元宝 为防止数据异常 成功后会踢您下线#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE<ID:1902700017>#<@zhuanzhi#3 *01*转换成道士> #COLORCOLOR_RED#需要消耗15000元宝 为防止数据异常 成功后会踢您下线#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	msg = msg.."                                               #IMAGE<ID:1902700019>#<@main *01*「返回」>"
	return msg
end

function zhuanzhi(npc, player, leixing)
	local lc_map_guid = lualib:MapGuid(npc)
	local job = lualib:Job(player)
	local gender = lualib:Gender(player)
	local job_tb = {"战士", "法师", "道士"}

	if job == tonumber(leixing) then
		return "你已经是伟大的【"..job_tb[tonumber(leixing)].."】了！\n \n#IMAGE<ID:1902700019>#<@zhuanzhi_1 *01*「返回」>"
	end
	
	for i = 1, 11 do
		if lualib:Player_GetItemGuid(player, i) ~= "" then
			return "转变职业前请将您身上装备全部取下！\n \n#IMAGE<ID:1902700019>#<@zhuanzhi_1 *01*「返回」>"
		end
	end
	
	if lualib:Level(player) < 60 then
		return "转变职业需要您等级达到60级！\n \n#IMAGE<ID:1902700019>#<@zhuanzhi_1 *01*「返回」>"
	end
	
	if not lualib:Player_IsIngotEnough(player, 15000, false) then
		return "转变职业需要消耗15000元宝，您元宝不足！\n \n#IMAGE<ID:1902700019>#<@zhuanzhi_1 *01*「返回」>"
	end
	
	if not lualib:Player_SubIngot(player, 15000, false, "扣元宝：转变职业", player) then
		return "扣除元宝失败！\n \n#IMAGE<ID:1902700019>#<@zhuanzhi_1 *01*「返回」>"
	end

	local txdy_name = lualib:GetStr(lc_map_guid, txdy_tb[job][gender])
	if txdy_name ~= "" then
		if lualib:Name(player) == lualib:GetStr(lc_map_guid, txdy_tb[job][gender]) then
			lualib:SetStr(lc_map_guid, txdy_tb[job][gender], "期待上榜")
			lualib:Npc_ChangeName(lualib:GetStr(lc_map_guid, npc_tb[job][gender]), "期待上榜")
			lualib:SetStr(lc_map_guid, hanghui_tb[job][gender], "目前空缺")
			lualib:SetInt(lc_map_guid, level_tb[job][gender], 0)
			lualib:RemoveTitle(player, 26)
		end
	end
	lualib:SetJob(player, tonumber(leixing))
	lualib:DelUnmatchedSkill(player)
	
	local jineng_tb = 
			{
			{"剑术心法4级", "攻心斩4级", "风刺剑法4级", "月弧弯刀4级", "野蛮冲锋4级", "烈焰斩4级", "裂地斩4级", "龙咆哮4级","无间地狱3级"},
			{"炎球术4级", "退拒之环4级", "夺心诱惑4级", "天雷术4级", "瞬息灵动4级", "冰箭术4级", "炎爆术4级", "烈焰火海4级", "疾电光影4级", "雷霆极光4级", "魔盾4级", "冰爆漩涡4级","杀生术4级","引经魔轰4级","陨星灭世4级","凤凰涅槃3级"},
			{"治疗咒4级", "蛊毒咒4级", "神魂火符5级", "隐形咒4级", "地煞镇魔咒4级", "天罡护体咒4级", "回春咒4级", "明镜止水4级", "集体隐形咒4级", "锁妖咒4级", "驱毒术4级", "天庭之唤4级", "神魂火符4级", "地府之唤4级", "群体蛊毒血咒4级", "太极玄清术4级","通幽之术4级","恶魔之怒3级"},
			}
			
	for i = 1, #jineng_tb[lualib:Job(player)] do
		lualib:AddSkill(player, jineng_tb[lualib:Job(player)][i])
	end
	lualib:KickByName(lualib:Name(player), 2, "转职后防止数据错误踢人")
	return ""
end