local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")

local data = [[{
	{
		amount = 50,	--需要充值的金额
		img = 1218122200,	--坐骑图
		desc = "#OFFSET<X:-18>##IMAGE1803400007##OFFSET<X:10,Y:5>##IMAGE1801500154##IMAGE1801500159#",--充值金额图片
		item = {
			{"法宝1", 1, 0},--索引名 + 数量 + 绑定类型
			{"法宝2", 1, 0},
			{"法宝3", 1, 0},
			{"法宝4", 1, 0},
			{"初级等级丹", 30, 1},
			{"蟠桃", 300, 1},
		},
	},
}]]

local items = loadstring(" return "..data)()

function first_show(player)
	local use = lualib:UserID(player)
	local has = lualib:GetDBNum(use.."_first")
	if has ~= #items then
		AddSEIcon(player, 1, 0, "首充礼包", 1906100005, "首充礼包表单", "first_main", "", "首充赢大礼")
		AddIconMagic(player, "首充礼包", 1094200000, -6, -6, 150)
		-- ShowTimeCount2(player, 0, 1906100005, "首充礼包", 0, "") --显示目标图标
		-- AddIconMagic(player, "首充礼包", 1094200000, -6, -6, 150)
	end
end

function first_main(player)
	local use = lualib:UserID(player)
	local has = lualib:GetDBNum(use.."_first")
	local total = lualib:GetDBNum("refine_bills"..use) + lualib:GetTotalBill(player)
	local str = " firstgift_t = "..data..";"
	str = str.. " firstgift_bill = "..math.floor(total/100)..";"
	str = str.. " firstgift_nums = "..has..";"
	lualib:ShowFormWithContent(player, "脚本表单", str)
	lualib:ShowFormWithContent(player, "form文件表单", "首充礼包Wnd")
	return ""
end

function destroy(player)
	local use = lualib:UserID(player)
	local has = lualib:GetDBNum(use.."_first")
	if has ~= #items then
		-- ShowTimeCount2(player, 0, 1906100005, "首充礼包", 0, "")
		AddSEIcon(player, 1, 0, "首充礼包", 1906100005, "首充礼包表单", "first_main", "", "首充赢大礼")
		
	end
	return ""
end

function award(player)
	local use = lualib:UserID(player)
	local has = lualib:GetDBNum(use.."_first") + 1
	local total = lualib:GetDBNum("refine_bills"..use) + lualib:GetTotalBill(player)
	if items[has] == nil then
		return "抱歉，当前没有可以领取的奖励，同帐号只允许领取一次所有奖励。"
	end
	total = math.floor(total / 100)
	if total < items[has].amount then
		return "抱歉，您当前的充值金额低于".. items[has].amount .."元，无法领首充大礼包！"
	end
	local name = {}
	local count = {}
	local bind = {}
	local opr = {}
	local job = lualib:Job(player)
	for k, v in ipairs(items[has].item) do
		name[k] = v[1]
		count[k] = v[2]
		bind[k] = v[3]
		opr[k] = 0
	end
	if not lualib:Player_ItemRequest(player, name, count, bind, opr, "事务操作：首充礼包", player) then
		return "您的背包空间不足，请清理后再来领取！"
	end
	lualib:SetDBNumEx(use.."_first", has, 2)
	local str = [[
		if FirstGift ~= nil and FirstGift.Handle ~= 0 then
			FirstGift.Init(FirstGift.Handle, ]]..string.format("%q", total.."#"..has)..[[)
		end
	]]
	lualib:ShowFormWithContent(player, "脚本表单", str)
	return "恭喜您成功领取首充大礼包，请打开背包查看！"
end

function recharge(player)
	local zone = lualib:GetZoneId()
	local user = lualib:UserID(player)
	local msg = "http://www.hzyotoy.com/index.do?mod=pay&act=step1&serverid="..zone.."&userid="..user
	lualib:SysMsg_SendWebPage(player, msg)
	return ""
end