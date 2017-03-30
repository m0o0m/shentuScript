local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

item = {}
item["妖山暗穴至宝"] = {
					{{"打捆绳",5},"疗伤药包","玲珑塔(神)"},
					["战士"]={"铁战靴子","低级物攻精炼符"},
					["法师"]={"聚魂靴子","低级魔攻精炼符"},
					["道士"]={"玄光靴子","低级道术精炼符"}
					}
item["天荒阵至宝"] = {
					{{"打捆绳",5},"小特制疗伤药包","太极图(神)"},
					["战士"]={"圣武战靴","中级物攻精炼符"},
					["法师"]={"苍冥魔靴","中级魔攻精炼符"},
					["道士"]={"飞尘道靴","中级道术精炼符"}
					}

item["天荒邪庙至宝"] = {
					{"中特制魔法药包","中特制疗伤药包","混沌钟(神)"},
					["战士"]={"末日战靴","高级物攻精炼符"},
					["法师"]={"血夜魔靴","高级魔攻精炼符"},
					["道士"]={"天劫道靴","高级道术精炼符"}
					}
					
item["天魔石窟至宝"] = {
					{"中特制金创药包","大特制疗伤药包","混天绫(神)"},
					["战士"]={"疾雷战靴","高级HP精炼符"},
					["法师"]={"火灵魔靴","高级物防精炼符"},
					["道士"]={"云扬道靴","高级魔防精炼符"},
					}
					
item["海底秘境至宝"] = {
					{"大特制金创药包","大特制魔法药包","盘古幡(神)"},
					["战士"]={"天怒战靴","物攻精炼符(+10)"},
					["法师"]={"深渊魔靴","魔攻精炼符(+10)"},
					["道士"]={"四象道靴","道术精炼符(+10)"},
					}
					


itemlevel={
	["妖山暗穴至宝"]=30,
	["天荒阵至宝"]=35,
	["天荒邪庙至宝"]=40,
	["天魔石窟至宝"]=45,
	["海底秘境至宝"]=50,
	}

job = {}
job[1] = "战士"
job[2] = "法师"
job[3] = "道士"

function main(player_guid, item_guid)
	local ItemName = lualib:Name(item_guid)
	local s1
	local name_table = {}
	local count_table = {}
	local shuliang = {}
	local bind_table = {}
	local opr_table = {}
	
	if item[ItemName] == nil then
		return false
	end
	
	for k, v in pairs(item[ItemName]) do
		if type(v) == "table" then
			if item[ItemName]["战士"] == nil then
				name_table[#name_table+1] = item[ItemName][k][1]
				count_table[#count_table+1] = item[ItemName][k][2]
				bind_table[#bind_table+1] = 1
				opr_table[#opr_table+1] = 0
			else
				for k1, v1 in pairs(item[ItemName][k]) do
					if job[lualib:Player_GetIntProp(player_guid, lua_role_job)] == k or k == 1 then
							if type(v1) == "table" then
								for k2, v2 in pairs(item[ItemName][k]) do
									if type(v1) == "table" then
									else
										name_table[#name_table+1] = item[ItemName][k][k1][1]
										count_table[#count_table+1] = item[ItemName][k][k1][2]
										bind_table[#bind_table+1] = 1
										opr_table[#opr_table+1] = 0
									end
								end
							else
								s1 = v1
								local i,j = string.find(v1,"/")
								if i ~= nil then
									if lualib:Player_GetIntProp(player_guid, lua_role_gender) == 1 then
										s1 = string.sub(v1,1,i-1)
									else
										s1 = string.sub(v1,i+1,string.len(v1))
									end
								end
								name_table[#name_table+1] = s1
								count_table[#count_table+1] = 1
								bind_table[#bind_table+1] = 1
								opr_table[#opr_table+1] = 0
							end
						end
				end
			end
		else
			name_table[#name_table+1] = v
			count_table[#count_table+1] = 1
			bind_table[#bind_table+1] = 1
			opr_table[#opr_table+1] = 0
		end
	end

	s1 = ""
	for k, v in pairs(name_table) do
		if count_table[k] > 1 then
			s1 = s1 .. v .. "*"..count_table[k].."、"
		else
			s1 = s1 .. v .. "、"
		end
	end

	if lualib:Player_GetIntProp(player_guid, lua_role_level) < itemlevel[ItemName] then
		lualib:NPCTalk(player_guid, "#COLORCOLOR_RED#"..itemlevel[ItemName].."级才能打开！#COLOREND#\n \n礼包中有："..s1)
		return false
	end
	
	
	if lualib:Player_ItemRequest(player_guid, name_table, count_table, bind_table, opr_table, "征服奖励", ItemName) == true then
		lualib:Item_Destroy(player_guid, item_guid, "删道具：使用道具", "等级礼包")
		return true
	else
		lualib:SysMsg_SendWarnMsg(player_guid, ItemName.."使用失败，背包空位不足！")
		return false
	end
end