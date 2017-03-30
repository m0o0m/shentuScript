local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
Item = {}
--[[
Item["42级冲级大礼包"] = {"ChongJiLiBao",{"封印鉴定符",10},{"灵元珠",30},
					["战士"]={"十杀"},
					["法师"]={"天瀑"},
					["道士"]={"龙渊"},
					}	

Item["42级冲级大礼包极"] = {"ChongJiLiBao",{"封印鉴定符",10},{"灵元珠",30},
					["战士"]={"十杀(极)",{"圣武战靴","圣武戒指","圣武护腕","圣武头盔"}},
					["法师"]={"天瀑(极)",{"苍冥魔靴","苍冥戒指","苍冥护腕","苍冥头盔"}},
					["道士"]={"龙渊(极)",{"飞尘道靴","飞尘戒指","飞尘护腕","飞尘头盔"}},
					}	

Item["42级冲级大礼包珍"] = {"ChongJiLiBao",{"封印鉴定符",10},{"灵元珠",30},
					["战士"]={"十杀(珍)",{"圣武战靴","圣武戒指","圣武护腕","圣武头盔"}},
					["法师"]={"天瀑(珍)",{"苍冥魔靴","苍冥戒指","苍冥护腕","苍冥头盔"}},
					["道士"]={"龙渊(珍)",{"飞尘道靴","飞尘戒指","飞尘护腕","飞尘头盔"}},
					}
	]]				
Item["45级冲级大礼包"] = {"ChongJiLiBao",{"封印鉴定符",5},{"灵元珠",60},
					["战士"]={"断空"},
					["法师"]={"碎空"},
					["道士"]={"噬空"},
					}
					
Item["45级冲级大礼包极"] = {"ChongJiLiBao",{"封印鉴定符",10},{"灵元珠",60},
					["战士"]={"断空(极)",{"末日战靴","末日护腕","末日戒指","末日项链","末日头盔"}},
					["法师"]={"碎空(极)",{"血夜魔靴","血夜护腕","血夜魔指","血夜项链","血夜魔盔"}},
					["道士"]={"噬空(极)",{"天劫道靴","天劫护腕","天劫道指","天劫项链","天劫道盔"}},
					}
					
					
Item["45级冲级大礼包珍"] = {"ChongJiLiBao",{"封印鉴定符",20},{"灵元珠",60},
					["战士"]={"断空(珍)",{"末日战靴","末日护腕","末日戒指","末日项链","末日头盔"}},
					["法师"]={"碎空(珍)",{"血夜魔靴","血夜护腕","血夜魔指","血夜项链","血夜魔盔"}},
					["道士"]={"噬空(珍)",{"天劫道靴","天劫护腕","天劫道指","天劫项链","天劫道盔"}},
					}

Item["50级冲级大礼包"] = {"ChongJiLiBao",{"高级物攻精炼符",1},
					["战士"]={"帝释"},
					["法师"]={"残虹"},
					["道士"]={"无常"},
					}					

					
Item["50级冲级大礼包极"] = {"ChongJiLiBao",{"高级物攻精炼符",1},
					["战士"]={"帝释(极)", {"疾雷战靴","疾雷护腕(圣)","疾雷护腕(神)","疾雷戒指(神)","疾雷戒指(圣)","疾雷项链","疾雷头盔"}},
					["法师"]={"残虹(极)", {"火灵魔靴","火灵护腕(圣)","火灵护腕(神)","火灵戒指(神)","火灵戒指(圣)","火灵项链","火灵头盔"}},
					["道士"]={"无常(极)", {"云扬道靴","云扬护腕(圣)","云扬护腕(神)","云扬戒指(神)","云扬戒指(圣)","云扬项链","云扬头盔"}},
					}

Item["50级冲级大礼包珍"] = {"ChongJiLiBao",{"高级物攻精炼符",1},
					["战士"]={"帝释(珍)", {"疾雷战靴","疾雷护腕(圣)","疾雷护腕(神)","疾雷戒指(神)","疾雷戒指(圣)","疾雷项链","疾雷头盔"}},
					["法师"]={"残虹(珍)", {"火灵魔靴","火灵护腕(圣)","火灵护腕(神)","火灵戒指(神)","火灵戒指(圣)","火灵项链","火灵头盔"}},
					["道士"]={"无常(珍)", {"云扬道靴","云扬护腕(圣)","云扬护腕(神)","云扬戒指(神)","云扬戒指(圣)","云扬项链","云扬头盔"}},
					}

Item["55级冲级大礼包"] = {"ChongJiLiBao",{"高级物攻精炼符",2},
					["战士"]={"十殿阎罗"},
					["法师"]={"七劫浮屠"},
					["道士"]={"赤霄白帝"},
					}					

					
Item["55级冲级大礼包极"] = {"ChongJiLiBao",{"高级物攻精炼符",2},
					["战士"]={"十殿阎罗(极)", {"天怒战靴","天怒护腕(圣)","天怒护腕(神)","天怒戒指(神)","天怒戒指(圣)","天怒项链","天怒头盔"}},
					["法师"]={"七劫浮屠(极)", {"深渊魔靴","深渊护腕(圣)","深渊护腕(神)","深渊戒指(神)","深渊戒指(圣)","深渊项链","深渊头盔"}},
					["道士"]={"赤霄白帝(极)", {"四象道靴","四象护腕(圣)","四象护腕(神)","四象戒指(神)","四象戒指(圣)","四象项链","四象头盔"}},
					}

Item["55级冲级大礼包珍"] = {"ChongJiLiBao",{"高级物攻精炼符",2},
					["战士"]={"十殿阎罗(珍)", {"天怒战靴","天怒护腕(圣)","天怒护腕(神)","天怒戒指(神)","天怒戒指(圣)","天怒项链","天怒头盔"}},
					["法师"]={"七劫浮屠(珍)", {"深渊魔靴","深渊护腕(圣)","深渊护腕(神)","深渊戒指(神)","深渊戒指(圣)","深渊项链","深渊头盔"}},
					["道士"]={"赤霄白帝(珍)", {"四象道靴","四象护腕(圣)","四象护腕(神)","四象戒指(神)","四象戒指(圣)","四象项链","四象头盔"}},
					}


job = {}
job[1] = "战士"
job[2] = "法师"
job[3] = "道士"

function main(player, item_guid)
	local ItemName = lualib:KeyName(item_guid)
	local name_table = {}
	local count_table = {}
	local shuliang = {}
	local bind_table = {}
	local opr_table = {}
	
	for k, v in pairs(Item[ItemName]) do
		if k ~= 1 then
			if type(v) == "table" then
				if job[lualib:Player_GetIntProp(player,lua_role_job)] == k then
					for k1, v1 in pairs(Item[ItemName][k]) do
						if type(v1) == "table" then
							if k1 == 2 then
								name_table[#name_table+1] = Item[ItemName][k][k1][math.random(1,5)]
								count_table[#count_table+1] = 1
								bind_table[#bind_table+1] = 0
								opr_table[#opr_table+1] = 0
							end
						else
							name_table[#name_table+1] = Item[ItemName][k][k1]
							count_table[#count_table+1] = 1
							bind_table[#bind_table+1] = 0
							opr_table[#opr_table+1] = 0
						end
					end
				elseif k ~= "战士" and k ~= "法师" and k ~= "道士" then
					name_table[#name_table+1] = Item[ItemName][k][1]
					count_table[#count_table+1] = Item[ItemName][k][2]
					bind_table[#bind_table+1] = 0
					opr_table[#opr_table+1] = 0
				end
			elseif k ~= "战士" and k ~= "法师" and k ~= "道士" then
				name_table[#name_table+1] = Item[ItemName][v]
				count_table[#count_table+1] = 1
				bind_table[#bind_table+1] = 0
				opr_table[#opr_table+1] = 0
			end
		end
	end
	
	if lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "打开"..ItemName, ItemName) == true then
		if not lualib:Item_Destroy(player, item_guid, "删道具：使用道具", ItemName) then
			lualib:SysMsg_SendWarnMsg(player, "扣除道具失败")
			return  false
		end
		return true
	else
		lualib:SysMsg_SendWarnMsg(player, "使用失败，背包空位不足！")
		return false
	end
end