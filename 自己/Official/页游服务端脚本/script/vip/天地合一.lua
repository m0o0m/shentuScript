local map_table = {
				   "将军冢密室",
				   "天荒古阵",
				   "第三重天秘洞",
				   "天下第一战场",
				   "漂流岛",
				   "初级试炼场",
				   "中级试炼场",
				   "高级试炼场",
				   "克星挑战场1",
				   "克星挑战场2",
				   "克星挑战场3",
				   "引灵寺",
				   "亡灵禁地",
				   "灵山",
				   "玉完天幻境",
				   "封魔阵",
				   "古墓",
				   "夺宝大厅",
				   "地下城",
				   "武斗场",
				   "灵韵阁",
				   "封魔台",
				   "镇魔殿",
				   "烈焰深渊1",
				   "烈焰深渊2",
				   "烈焰深渊3",
				   "千幻阵",
				   "神歌城皇宫",
				   "幻境1",
				   "幻境2",
				   "幻境3",
				   "幻境4",
				   "幻境5",
				   "幻境6",
				   "幻境7",
				   "幻境8",
				   "祈福之地",
				   "小黑屋",
				   "锁魔宫",
				   "灵元秘境1",
				   "灵元秘境2",
				   "灵元秘境3",
					}


function main(player, vipLevel)
	local a = lualib:GetInt(player, "vip14_shijian")
	local b =  lualib:GetAllTime()
	local t = b - 3600
	if t > a then 
		msg = "天地合一功能购买后，只能使用一次，购买后一个小时之内必须使用！\n \n"
		msg = msg.."<@tiandi *01*使用天地合一>\n"
		msg = msg.."<@leave *01*离开>"
	else
		msg = "你已经使用过了此功能，一个小时之内无法继续使用！"
	end
	lualib:NPCTalk(player, msg)
end

function tiandi(player)
	local map_key = lualib:KeyName(lualib:MapGuid(player))
	local map_x = lualib:X(player)
	local map_y = lualib:Y(player)
	for i = 1, #map_table do
		if map_key == map_table[i] then
			return "该地图不能进行天地合一操作！"
		end
	end
	
	if lualib:Player_HasTeam(player) == false then return "你没有组队，不能进行天地合一！" end
	
	local c = lualib:Player_GetTeamList(player)
	for i = 1, #c do
		if c[i] ~= player then
		lualib:Player_MapMoveXY(c[i], map_key, map_x, map_y, 4)
		lualib:SysMsg_SendTriggerMsg(c[i], "队伍成员【"..lualib:Name(player).."】对您使用了天地合一功能！")
		end
	end
	lualib:SysMsg_SendTriggerMsg(player, "使用天地合成成功")
	local times = lualib:GetAllTime()
	lualib:SetInt(player, "vip14_shijian", times)
	return ""
end


function leave(player)
	return true
end
	
	
	