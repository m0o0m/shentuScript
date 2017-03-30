local name_table = {"绑钱袋(5万)", "经验丹"}

local tb2 = {"随机传送(10次)", "修炼石", "套索", "小喇叭", "龙城传送石", "天机罗盘", "灵元珠"}
local count_table = {1, 1}
local bind_table = {1, 1}
local opr_table = {0, 0}


function main(player, item)
		 
	 local bagfree = lualib:Player_GetBagFree(player)
			if	bagfree < 3 then
				lualib:SysPromptMsg(player, "你的包裹空格不足3个！")
				return false
				
			end
	
		local keyname = lualib:KeyName(item)
	--	lualib:DelItem(player, keyname, 1, 2, "给予每日礼包时删除礼包本身", keyname)
	
	
	    if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "事务操作：在线礼包", player) then
			lualib:SysMsg_SendWarnMsg(player, "背包已满！")
        return false
    end
	
	local suijis = lualib:GenRandom(1, 100)
	
	local suijitable = {30, 50, 60, 70, 80, 90, 100}
	
		for i = 1, #suijitable do
			if suijis <= suijitable[i] then
			
					if not lualib:AddSingleItem(player, tb2[i], 1, 1, "每日礼包给物品", keyname) then
					return false
					end

			return true	
			end
		end
		

		


    return true
end
