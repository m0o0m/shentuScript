local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")

local first_bill_gift = 
{
	[0] = {
	number = 10, --需要多少充值金额
    {"巫山城传送石",1,1}, --物品名字，给与数量，是否绑定
	{"3倍经验卷轴",1,1},
	{"绑钱袋(10万)",1,1},
	{"初级藏宝图",1,1},
	{"中级藏宝图",1,1},
	{"高级藏宝图",1,1},
	{"灵元珠",1,1,},
	{"钱袋(5万)",1,1},
	},
	
	{
	number = 50, --需要多少充值金额
    {"龙城传送石",1,1},
	{"双倍经验卷轴",1,1}, 
	{"灵元珠",5,1,},
	{"绑钱袋(5万)",1,1},
	{"超级聚灵珠",1,1,},
	{"释灵珠",1,1,},
	{"钱袋(5万)",1,1,},
	{"循环魔咒",5,1},
	},
	
    {
	number = 200, --需要多少充值金额
	{"中级藏宝图",5,1},
	{"双倍经验卷轴",1,1,},
	{"灵元珠",10,1,},
	{"绑钱袋(10万)",1,1,},
	{"钱袋(10万)",1,1},
	{"灵元精华",10,1},
	{"封印鉴定符",3,1},
	{"循环魔咒",10,1},
	},
	
    {
	number = 500, --需要多少充值金额
    {"随机传送(50次)",1,1},
	{"逍遥游(50次)",1,1},
	{"灵元珠",50,1},
	{"绑钱袋(20万)",2,1},
	{"祝福神水",20,1},
	{"灵元精华",20,1},
	{"封印鉴定符",20,1},
	{"循环魔咒",20,1},
	},
	
    {
	number = 1000, --需要多少充值金额
    {"祝福大礼包",1,1,},
	{"99朵玫瑰花",1,1},
	{"逍遥游(7天)",1,1},
	{"开光印",20,1},
	{"坐骑还魂丹",10,1},
	{"封印鉴定符",20,1},
	{"独角兽(未开光)",1,1},
	{"梦魇兽(未开光)",1,1},
	},
	
    {
	number = 2000, --需要多少充值金额
    {"龙鹰(未开光)",1,1},
	{"不死鸟(未开光)",1,1},
	{"精炼大礼包",1,1},
	{"999朵玫瑰花",1,1},
	{"高级藏宝图",5,1},
	{"钱袋(50万)",1,1},
	{"神羽",50,1},
	{"转生石",50,1},
	},
}

local first_bill_icon = 
{
    disable = "1903800026",
    enable = "1903800022",
}

-------------------------判断图标是否显示-------------------------
function check_first_bill(player)
    local chongzhi_number = lualib:GetTotalBill(player)
	local id = tostring(lualib:Player_GetAccountID(player))
	local chongzhi_cishu = lualib:GetDBNum(id)
	if first_bill_gift[chongzhi_cishu] ~= nil and chongzhi_number >= first_bill_gift[chongzhi_cishu].number*100 then
        ShowTimeCount(player, 0, first_bill_icon.enable, "充值礼包") --图标亮起来
	elseif first_bill_gift[chongzhi_cishu] ~= nil then
		ShowTimeCount(player, 0, first_bill_icon.disable, "充值礼包") --图标灰掉
    end
end

------------------------图标点击或关闭---------------------
function get_first_bill_gift(player)
    local chongzhi_number = lualib:GetTotalBill(player)
	local id = tostring(lualib:Player_GetAccountID(player))
    local chongzhi_cishu = lualib:GetDBNum(id)
	
	if first_bill_gift[chongzhi_cishu] == nil then
		lualib:SysPromptMsg(player, "没有可领取的奖品");
		return
	end
	
	if chongzhi_number < first_bill_gift[chongzhi_cishu].number*100 then
		lualib:SysPromptMsg(player, "无法领取奖励！只要充值金额达到"..first_bill_gift[chongzhi_cishu].number.."元便能领取喔！"); 
		return
    end
	
	local gift_table = {}
	for i = 1, #first_bill_gift[chongzhi_cishu] do
		gift_table[i] = first_bill_gift[chongzhi_cishu][i][1]
	end
	
	local count_table = {}
	for i = 1, #first_bill_gift[chongzhi_cishu] do
		count_table[i] = first_bill_gift[chongzhi_cishu][i][2]
	end
	
	local bind_table = {}
	for i = 1, #first_bill_gift[chongzhi_cishu] do
		bind_table[i] = first_bill_gift[chongzhi_cishu][i][3]
	end
	
	local opr_table = {}
	for i = 1, #first_bill_gift[chongzhi_cishu] do
		opr_table[i] = 0
	end
	
	if lualib:Player_GetBagFree(player) < (#first_bill_gift[chongzhi_cishu] - 1) then
		lualib:SysMsg_SendWarnMsg(player, "包裹不足"..(#first_bill_gift[chongzhi_cishu] - 1).."个空位！请整理以后再来！")
		return false
	end
	
	if not lualib:Player_ItemRequest(player, gift_table,count_table, bind_table, opr_table, "事务操作：在线礼包", player) then
		return false
	end
	lualib:SetDBNumEx(id,lualib:GetDBNum(id)+1,1) --领取次数增加
	lualib:SysMsg_SendWarnMsg(player, "充值礼包领取成功，请打开包裹查收！")
	
	if first_bill_gift[chongzhi_cishu+1] == nil then
			ShowTimeCount(player, -1, first_bill_icon.disable, "充值礼包") --图标灰掉
		return
	end
end

-----------------------图标被点击----------------------
function show_my_first_bill_gift(player)
	check_first_bill(player) --图标显示
	local chongzhi_number = lualib:GetTotalBill(player)/100
	local id = tostring(lualib:Player_GetAccountID(player))
	local chongzhi_cishu = lualib:GetDBNum(id)
	
	if first_bill_gift[chongzhi_cishu] == nil then
		lualib:SysPromptMsg(player, "没有可领取的奖品");
		return
	end
	
    local content = ""
    local max = table.getn(first_bill_gift[chongzhi_cishu])
    for j = 1, max do
        content = content..first_bill_gift[chongzhi_cishu][j][1].."["..first_bill_gift[chongzhi_cishu][j][2].."]"..first_bill_gift[chongzhi_cishu][j][3]..","
    end

    lualib:ShowFormWithContent(player, "充值礼包表单", content.."#"..first_bill_gift[chongzhi_cishu].number.."#"..chongzhi_number)
end