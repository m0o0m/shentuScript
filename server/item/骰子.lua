function main(player, item)
	local map = lualib:MapGuid(player);
	
	local x = lualib:X(player);
	local y = lualib:Y(player);
	
	local keynames = {"一", "二", "三", "四", "五", "六"}
	
	if lualib:Item_Destroy(player, item, "删除物品:丢骰子", "骰子脚本") then
		lualib:Map_GenItemRnd(map, x, y, 2, keynames[lualib:GenRandom(1, #keynames)], 1, false, 3);
	else
		lualib:SysPromptMsg(player, "骰子似乎破损了,请联系我们!")
	end

	return true
end
