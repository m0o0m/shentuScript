local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--[[使用道具创建物品示例]]
function main(player_guid, item_guid)
	local item_array_man   = {"幸运星", "护炼符", "队友传送令", "玩家探测" , "99朵玫瑰花", "随身仓库", "随身商店", "巨人药剂", "缩小药剂", "宝宝幻化卡(10次)", "坐骑口粮"}
	local item_array_woman = {"幸运星", "护炼符", "队友传送令", "玩家探测" , "99朵玫瑰花", "随身仓库", "随身商店", "巨人药剂", "缩小药剂", "宝宝幻化卡(10次)", "坐骑口粮"}
	local item_count = {1, 1, 1, 5, 1 ,1 ,1, 1, 1, 1, 10}
    local ewai_item = 
    {
        ["行会礼包"] =        {{"独角兽(未开光)", 1}, {"神羽翅膀3级", 1}}, --彩灵之翼
        ["265g礼包"] =        {{"疾风(未开光)", 1}, {"神羽翅膀2级", 1}}, --阴影之翼
        ["07073礼包"] =       {{"绝影(未开光)", 1}, {"神羽翅膀2级", 1}}, --阴影之翼
        ["北方游戏网礼包"] =  {{"汗血(未开光)", 1}, {"神羽翅膀2级", 1}}, --阴影之翼
    }
    
    

    local item_key = lualib:KeyName(item_guid)

    if ewai_item[item_key] ~= "" and ewai_item[item_key] ~= nil then
        for i = 1, #ewai_item[item_key] do
            table.insert(item_array_man, ewai_item[item_key][i][1])
            table.insert(item_array_woman, ewai_item[item_key][i][1])
            table.insert(item_count, ewai_item[item_key][i][2])
        end
    elseif item_key == "QQ群礼包" then
        item_array_man   = {"1.5倍经验卷轴" ,"循环魔咒"  ,"逍遥游(50次)" ,"随机传送(50次)" ,"时之沙砾"}
        item_array_woman = {"1.5倍经验卷轴" ,"循环魔咒"  ,"逍遥游(50次)" ,"随机传送(50次)" ,"时之沙砾"}
        item_count = {5, 5, 1 ,1 ,1}
    elseif item_key == "QQ签名活动礼包" then
        item_array_man   = {"1.5倍经验卷轴" , "逍遥游(100次)", "随机传送(500次)", "1000绑定元宝", "小喇叭"}
        item_array_woman = {"1.5倍经验卷轴" , "逍遥游(100次)", "随机传送(500次)", "1000绑定元宝", "小喇叭"}
        item_count = {3, 1, 1 ,1 ,1}
    elseif item_key == "会长礼包" then
        item_array_man = {"号角"}
        item_array_woman = {"号角"}
        item_count = {1}
    else
        lualib:SysPromptMsg(player_guid, "系统错误！")
        return false
    end

    local request_slots = #item_array_man
    if ewai_item[item_key] ~= "" then
        request_slots = #item_array_man + 4
    end
	--[[判断包包空格数]]
	if lualib:Player_GetBagFree(player_guid) < request_slots then
	    lualib:SysMsg_SendTriggerMsg(player_guid, "背包空间不够，需要"..request_slots.."个格子！")
	    return false
	end

	--[[添加物品到包裹]]
	--给随机
	--local item_id = item_array[math.random(10)]
	local role_gender = lualib:Player_GetIntProp(player_guid,  lua_role_gender)  --获取性别
		if role_gender == 1 then
			for element in pairs(item_array_man) do
				local result = lualib:Player_GiveItemBind(player_guid, item_array_man[element], item_count[element], "给物品：VIP礼包", player_guid)
				if result == false then
				    lualib:SysMsg_SendTriggerMsg(player_guid, "添加道具失败！")
					return false
				end
			end
		else
			for element in pairs(item_array_woman) do
				local result = lualib:Player_GiveItemBind(player_guid, item_array_woman[element], item_count[element], "给物品：VIP礼包", player_guid)
				if result == false then
				    lualib:SysMsg_SendTriggerMsg(player_guid, "添加道具失败！")
					return false
				end
			end
		end




	return true
end
