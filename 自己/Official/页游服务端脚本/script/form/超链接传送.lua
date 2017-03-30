local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
local mv_time_key = 				"逍遥游(7天)#逍遥游(1天)#逍遥游(1小时)"
local mv_count_key = "逍遥游#逍遥游10次#逍遥游20次#逍遥游50次#逍遥游100次#逍遥游500次"

local mv = {
				"逍遥游(7天)",
                "逍遥游(1天)",
				"逍遥游(1小时)",
                "逍遥游",
                "逍遥游(10次)",
                "逍遥游(20次)",
                "逍遥游(50次)",
				"逍遥游(100次)",
				"逍遥游(500次)",
			}

local mapList = {
					"新版新手村",
					"矿洞",
					"巫山城",
					"蜈蚣洞一层",
					"蜈蚣洞二层",
					"蜈蚣洞三层",
					"蜈蚣洞副本",
					"猪洞一层",
					"猪洞二层",
					"猪洞三层",
					"猪洞副本",
					"土城",
					"神歌城副本",
					"沃玛寺庙一层",
					"沃玛寺庙二层",
					"邪庙6-8",
					"邪庙6-9",
					"邪庙6-10",
					"邪庙6-11",
					"邪庙6-12",
					"邪庙6-13",
					"邪庙6-14",
					"邪庙6-15",
					"邪庙6-16",
					"邪庙7-1",
					"邪庙7-2",
					"邪庙7-3",
					"邪庙boss",
					"天荒阵5",
					"天荒阵6",
					"天荒阵7-1",
					"天荒阵7-2",
					"天荒阵7-3",
					"天荒阵7-4",
					"天荒阵7-5",
					"天荒阵7-6",
					"天荒阵7-7",
					"天荒阵7-8",
					"天荒阵7-9",
					"天荒阵boss",
					"绝路城3",
					"绝路城boss",
					"天魔石窟3",
					"天魔石窟4",
					"天魔石窟boss",
					"海底2",
					"海底3",
					"海底3野外",
					"海底4",
					"海底4野外",
					"海底5",
					"海底1船舱1",
					"海底1船舱2",
					"海底1船舱3",
					"海底1船舱4",
					"海底1船舱5",
					"海底1船舱6",
					"海底1船舱7",
					"海底2船舱1",
					"海底2船舱2",
					"海底2船舱3",
					"海底2船舱4",
					"海底2船舱5",
					"海底2船舱6",
					"海底3船舱1",
					"海底4船舱1",
					"海底4船舱2",
					"神歌城皇宫",
					"神歌城",
					"神歌城密道",
					"将军冢密室",
					"天荒古阵",
					"第三重天秘洞",
					"天下第一战场",
					"漂流岛",
					"将军冢密室",
					"将军冢密室",
					"将军冢密室",
					"天下第一战场",
					"天下第一战场",
					"天下第一战场",
					"锁魔宫",
					"引灵寺",
					"亡灵禁地",
					"灵山",
					"玉完天幻境",
					"封魔阵",
					"封魔阵",
					"封魔阵",
					"封魔阵",
					"天下第一战场",
					"灵山",
					"红名村",
					"镇魔殿",
					"天荒阵boss",
					"亡灵禁地",
					"绝路城boss",
					"玉完天幻境",
					"红名村",
					"引灵寺",
					"引灵寺",
					"引灵寺",
					"废弃矿洞1",
					"绝路城3",
					"妖山暗穴5",
					"烈焰深渊1",
					"烈焰深渊3",
					"烈焰深渊4",
					"镇魔殿",
					"休息室",
					"擂台",
					"秘海封印",
					"将军冢密室",
					"天下第一战场",
					"竞技场",
					"竞技场",
					"竞技场",
					"竞技场",
					"竞技场",
					"将军冢密室",
					"竞技场",
					"玉完天幻境",
					"天荒阵boss",
					"亡灵禁地",
					}			
			
function main(player, npc, map, x, y, questId, types)
	if lualib:Player_IsDie(player) == true then
		return "你已死亡，不能传送！"
	end
	
	if types == "3" then
		local t_map = lualib:Map_GetMapGuid("地图测试3")
		local t_npc = lualib:Map_GenNpcRnd(t_map, npc)
		local ret = lualib:Npc_GetBindQuests(t_npc)
		lualib:Map_RemoveNpc(t_map, t_npc)
		local accepts = ret[1]
		local is_bind = false
		for k,v in ipairs(accepts) do
			if v == tonumber(questId) then
				is_bind = true
			end
		end
		if not is_bind then
			return "无法传送该位置"
		end
	else	
		--地图限制
		local Open_map = {
							["tianmo_Open"] = {"天魔石窟1", "天魔石窟2", "天魔石窟3", "天魔石窟4", "天魔石窟boss", "濒死的人类"}, 
							["haidi_Open"] = {"海底1", "海底入口", "海底2", "海底3", "海底3野外", "海底4", "海底4野外", "海底5", "小诗月", "远征军统领", "神秘老者海底", "秘境老人", "冒险者", "金尊者", "木尊者", "水尊者", "火尊者", "土尊者", "一块木牌", "被迷惑的男子", "海妖王子", "海妖将军", "海妖二王爷", "海妖三王爷"}
						}
		local  mapTip = {
							["tianmo_Open"] = {40, "你还未达到40级，无法进入天魔石窟"},
							["haidi_Open"] = {5, "海角秘境还未被勇士开启，当大陆出现20位47级的勇士时，海角秘境的探险之路将会开启！"}
						}
		local destination = ""
		if map ~= "" and map ~= nil then
			destination = map
		elseif npc ~= "" and npc ~= nil then
			destination = npc
		end
		
		for k, v in pairs(Open_map) do
			for i = 1, #v do
				if v[i] == destination then				
					local Open_key = 0
					if k == "tianmo_Open" then
						Open_key = lualib:Level(player)
					else
						Open_key = lualib:IO_GetCustomVarInt(k)
					end
					if Open_key < mapTip[k][1] then
						return mapTip[k][2]
					end
				end
			end
		end
		
		--正常流程
		local questId = tonumber(questId)
		local str = ""
		local questStr = ""

		if npc == "" then
			str = "<MAP:"..map..",POSX:"..x..",POSY:"..y
		else
			str = ",NPCKEYNAME:"..npc..",MOVE:1>"
		end	
		
		if types == "1" then
			questStr = lualib:GetQuestProgressing(questId)
		elseif types == "2" then
			questStr = lualib:GetQuestAccomplishing(questId)
		end
		
		local  i, j = string.find(questStr, str)
		if i == nil then
			lualib:SysMsg_SendTriggerMsg(player,"该目标位置不能传送！")
			return ""
		end
			
		if npc == "" and map == "" then
			lualib:SysMsg_SendTriggerMsg(player,"该目标位置不正常！")
			return ""
		end
	end
	
	local is_time_item = false
	local move_items = lualib:GetItemsByKeys(player, mv_time_key, false, true, false, false)
	
	if #move_items == 0 then
		move_items = lualib:GetItemsByKeys(player, mv_count_key, false, true, false, false)
	else
		is_time_item = true
	end
	
	if #move_items == 0 then
		lualib:SysMsg_SendTriggerMsg(player,"你没有逍遥游，可用绑定金币在商城购买")
		lualib:ShowFormWithContent(player,"脚本表单",[[luaMsgBox.new("逍遥游", "你没有逍遥游，可用绑定金币在商城购买", {"确定"}, {0},"")]])
	end
	
	if is_time_item then
		
	else
		local itemCount = lualib:Item_GetUsesCount(player, move_items[1])
		lualib:Item_SetUsesCount(player, move_items[1], itemCount - 1)
		lualib:SysMsg_SendTriggerMsg(player,"你的逍遥游还剩余".. itemCount - 1 .."次！")
	end
	
	if npc ~= "" then
		--lualib:SysMsg_SendTriggerMsg(player, ""..npc)	
		lualib:Player_NpcMove(player, npc, 5)
	else
		--lualib:SysMsg_SendTriggerMsg(player, ""..map)	
		lualib:Player_MapMoveXY(player, map, tonumber(x), tonumber(y), 5)
	end
	
	local str = "" 
	str =str.. "local Handle = GetWindow(nil, \"TransmitMagic\")\n"
	str =str.."if Handle ~= 0 then\n"
	str =str.."GUI:WndClose(Handle)\n"
	str = str.."end\n"
	str = str.."if TaskWindow._wnd ~= 0 then\n"
	str = str.."WndDelEffect(TaskWindow._wnd)\n"
	str = str.."end\n"
	lualib:ShowFormWithContent(player,"脚本表单",str) 
	return ""
end


function move(player, npc, map, x, y, item)
	local req = false
	local x = tonumber(x)
	local y = tonumber(y)
	
	if  item == "逍遥游10次" or item == "逍遥游(20次)" or item == "逍遥游(50次)" or item == "逍遥游(100次)" or item == "逍遥游(500次)" then
		for i = 22, 221 do
			local itemGuid = lualib:Player_GetItemGuid(player, i)
			local itemName = lualib:KeyName(itemGuid)
			if itemName == "逍遥游10次" or itemName == "逍遥游20次" or itemName == "逍遥游50次" or itemName == "逍遥游100次" or itemName == "逍遥游500次" then
				local itemCount = lualib:Item_GetUsesCount(player, itemGuid)
				lualib:Item_SetUsesCount(player, itemGuid, itemCount - 1)
				lualib:SysMsg_SendTriggerMsg(player,"你的逍遥游还剩余".. itemCount - 1 .."次！")
				req = true
				break
			end
		end
	elseif item == "逍遥游(7天)" or item == "逍遥游(1小时)" or item == "逍遥游(1天)" then
		req = true
	end
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
--[[
bool CScriptLib::Player_NpcMove( const std::string& player_guid, const std::string& npc_key_name, UINT16 range )
]]	
	if req == true then
		if npc ~= "" then
			lualib:Player_NpcMove(player, npc, 5)
			--lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")
		else
			lualib:Player_MapMoveXY(player, map, tonumber(x), tonumber(y), 5)
			--lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")
		end
	end
	return ""
end

-----------------------购买逍遥游--------------------------
function goumai_xiaoyaoyou(player)
	lualib:SysMsg_SendMsgDlg(player,1,"是否消耗297元宝购买逍遥游(100次)？#BUTTON0#确定购买#BUTTONEND##BUTTON0#关闭窗口#BUTTONEND#", 100, "goumai_xiaoyaoyou1", "")
end

function goumai_xiaoyaoyou1(id,player,xuanzhe)
	if xuanzhe == 0 then
	else
		return ""
	end
	
	if lualib:Player_GetBagFree(player) < 1 then
		lualib:SysMsg_SendMsgDlg(player,1,"包裹空位不足！请整理以后再来！#BUTTON0#关闭窗口#BUTTONEND#", 100, "guanbi", "")
		return ""
	end
	
	if lualib:Player_IsIngotEnough(player,297,false) == true then
		lualib:Player_SubIngot(player,297,false,"购买逍遥游",player)
		lualib:AddItem(player,"逍遥游100次",1,false,"购买逍遥游", player) --给物品
		lualib:SysMsg_SendMsgDlg(player,1,"逍遥游(100次) 购买成功！#BUTTON0#关闭窗口#BUTTONEND#", 100, "guanbi", "")
		return ""
	else
		lualib:SysMsg_SendMsgDlg(player,1,"元宝不足，购买失败！#BUTTON0#关闭窗口#BUTTONEND#", 100, "guanbi", "")
		return ""
	end
		
end

function guanbi()
	return ""
end