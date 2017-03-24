--npc索引名 首充地图   【否则UI会打不开】


local mapkey = "首充地图"

local x = 0 --写0代表随机传送

local y = 0 --写0代表随机传送

local bills = 5000--需要充值元宝数目


function show(player)
	lualib:ShowFormWithContent(player, "form文件表单", "首充地图")
	return ""
end


function main(player)
	if lualib:GetTotalBill(player) < bills then
		lualib:MsgBox(player, "抱歉您的充值金额不足。")
		return ""
	end
	if x == 0 and y == 0 then
		lualib:Player_MapMove(player, mapkey)
	else
		lualib:Player_MapMoveXY(player, mapkey, x, y, 3)
	end
	return ""
end