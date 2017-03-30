local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")

local first_bill_gift = 
{
    gift =  {"定位石", "灵元珠", "开光印", "双倍经验卷轴"}, --物品
    count = {1,	5,	1, 1,}, --数量
    bind =  {1,	1,	1, 1,} --绑定
}

local first_bill_icon = 
{
    disable = "1903800026",
    enable = "1903800022",
}

function check_first_bill_1(player)
    local chongzhi_number = lualib:GetTotalBill(player)
    
    if chongzhi_number < 1 then
        ShowTimeCount(player, 0, first_bill_icon.disable, "首充礼包")
        return
    end
    
    local zhanghao = "firstgift_"..lualib:AccountName(player)
    local firstbill = lualib:GetDBNum(zhanghao)
    if firstbill > 0 then
        return
    else
        ShowTimeCount(player, 0, first_bill_icon.enable, "首充礼包")
    end
end

function get_first_bill_gift_1(player)
    local chongzhi_number = lualib:GetTotalBill(player)
    
    if chongzhi_number < 1 then
		ShowTimeCount(player, 0, first_bill_icon.enable, "首充礼包")
		lualib:SysPromptMsg(player, "您还没有充值，无法领取首充礼包！只要充值任意金额，便能领取喔！"); 
        return
    end
    
    local zhanghao = "firstgift_"..lualib:AccountName(player)
    local firstbill = lualib:GetDBNum(zhanghao)
    
    if firstbill > 0 then
        return
    else
        local opr_table = {}
        for i = 1, table.getn(first_bill_gift.gift) do
            opr_table[i] = 0
        end
        if not lualib:Player_ItemRequest(player, first_bill_gift.gift,
                                          first_bill_gift.count, first_bill_gift.bind, opr_table, "事务操作：在线礼包", player) then
            lualib:SysMsg_SendWarnMsg(player, "背包已满！")
            ShowTimeCount(player, 0, first_bill_icon.enable, "首充礼包")
            return false
        end
        lualib:IO_SetCustomVarStr(zhanghao, lualib:Name(player))
		lualib:SetDBNumEx(zhanghao,1,1) --领取次数增加
    end
end

function show_my_first_bill_gift_1(player)
    local zhanghao = "firstgift_"..lualib:AccountName(player)
    local firstbill = lualib:GetDBNum(zhanghao)
    
    if firstbill > 0 then
        return
    end

    local content = ""
    local max = table.getn(first_bill_gift.gift)
    for j = 1, max do
        content = content..first_bill_gift.gift[j].."["..tostring(first_bill_gift.count[j]).."]"..tostring(first_bill_gift.bind[j])..","
    end

    lualib:ShowFormWithContent(player, "首充礼包表单", content)
end