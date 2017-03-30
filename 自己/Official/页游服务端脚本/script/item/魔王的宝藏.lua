local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, item)
    local items = {
                {"百裂战甲(男)", "百裂战甲(女)", "圣灵法衣(男)", "圣灵法衣(女)", "太玄道袍(男)", "太玄道袍(女)", "疾雷头盔", "疾雷项链", "疾雷护腕(神)", "疾雷护腕(圣)", "疾雷戒指(神)", "疾雷戒指(圣)", "疾雷战靴", "火灵头盔", "火灵项链", "火灵护腕(神)", "火灵护腕(圣)", "火灵戒指(神)", "火灵戒指(圣)", "火灵魔靴", "云扬头盔", "云扬项链", "云扬护腕(神)", "云扬护腕(圣)", "云扬戒指(神)", "云扬戒指(圣)", "云扬道靴"}, 
                {"断空", "碎空", "噬空"},  
                {"王者之链", "麒麟战盔", "魔炫护腕", "君王战戒", "残月之坠", "龙牙面具", "紫炎护腕", "星冥魔戒", "天极项链", "无魂头盔", "天翼手镯", "上清玄指"}, 
                {"天劫护腕", "末日戒指", "血夜护腕", "末日项链", "末日护腕", "血夜项链", "血夜魔指", "天劫道指", "天劫项链", "末日战靴", "末日头盔", "血夜魔靴", "血夜魔盔", "天劫道靴", "天劫道盔", "圣武战靴", "圣武戒指", "圣武护腕", "圣武头盔", "苍冥魔靴", "苍冥戒指", "苍冥护腕", "苍冥头盔", "飞尘道靴", "飞尘戒指", "飞尘护腕", "飞尘头盔"}, 
                {"钱袋(1万)", "钱袋(1万)", "钱袋(1万)", "钱袋(1万)", "钱袋(1万)", "钱袋(2万)", "钱袋(2万)", "钱袋(2万)", "钱袋(5万)", "钱袋(5万)", "钱袋(10万)", "钱袋(20万)", "神羽", "灵元珠"}, 
                {"祝福神水", "神羽", "神羽", "灵元珠", "裂地斩残页", "五雷轰顶残页", "陨星灭世残页", "太极玄清术残页", "通幽之术残页", "龙咆哮残页"},
                {"勇士头盔", "骷髅手套", "龙牙手镯", "幻邪手镯", "黄金头盔", "阎魔头盔", "魔化面具", "绿玉项链", "唤魔铃铛", "灵光石项链", "破坏戒指", "摄魂戒指", "混元戒指", "神羽", "灵元珠"}
                  }

    local rates = {500,300,1200,1000,2000,2000,3000};

    local rnd = 0;
    local item_name = ""
	local max,qujian = 0,0
	for k = 1, table.getn(rates) do
		max = max + rates[k]
	end
	rnd = lualib:GenRandom(1, max)
	for k = 1, table.getn(rates) do
		qujian = qujian + rates[k]
		if rnd <= qujian then
			for i = 1, table.getn(items) do
				if i == k then
					local ce = lualib:GenRandom(1, #items[i])
					item_name = items[i][ce];
					if not lualib:Player_GiveItemUnbind(player, item_name, 1, "给物品：开启魔王的宝藏", "魔王的宝藏") then
						lualib:Error("魔王的宝藏被人偷啦！")
						return false
					end
					lualib:SysMsg_SendCenterMsg(1, lualib:Player_GetStrProp(player, lua_role_user_name).."发现烈焰深渊中深渊魔王的宝藏获得了"..item_name.."！", "")
					return true
				end
			end
		end
	end


end


function on_create(item)
	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
	
end

function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	
	if item_map_x < 20000 then
		if player_name == "" then
			local s = "【"..item_name.."】掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "【"..item_name.."】被→→→".."["..player_name.."]一个人品爆发打了出来，掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
            local s = "【"..item_name.."】掉落在"..item_map_name.."的["..item_map_x..":"..item_map_y.."]！！！"
			local s1 = "#COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#掉落在#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#的["..item_map_x..":"..item_map_y.."]！！！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end

