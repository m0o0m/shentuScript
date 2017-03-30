local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
function Buy(player,index)
	local index_num = tonumber(index)
	local free = lualib:BagFree(player, true, false, false);
	if free < 1 then 
		lualib:ShowFormWithContent(player, "脚本表单", "Package_buy.Msg('包裹已满',"..index_num..")");
		return ""
	end
	if index_num == 1 then 
		local str = "强效金创药包"
		if lualib:GetBindGold(player) < 20000 then
			lualib:ShowFormWithContent(player, "脚本表单", "Package_buy.Msg('绑定金币不足','1')")
			return ""
		else
			if lualib:Player_SubGold(player, 20000, true, "随身商店", player) == false then
				return "扣除绑定金币失败"
			else
				lualib:AddItem(player, str, 1, false, "随身商店", player)
				lualib:ShowFormWithContent(player, "脚本表单", "Package_buy.Msg('购买成功','1')")
			end
		end
	elseif index_num == 2 then 
		local str = "万年雪霜（包）"
		if lualib:GetBindGold(player) < 80000 then
			lualib:ShowFormWithContent(player, "脚本表单", "Package_buy.Msg('绑定金币不足','2')")
			return ""
		else
			if lualib:Player_SubGold(player, 80000, true, "随身商店", player) == false then
				return "扣除绑定金币失败"
			else
				lualib:AddItem(player, str, 1, false, "随身商店", player)
				lualib:ShowFormWithContent(player, "脚本表单", "Package_buy.Msg('购买成功','2')")
			end
		end
	elseif index_num == 3 then 
			local str = "大还丹包"
			if lualib:Player_IsIngotEnough(player, 50, true) == false then 
				lualib:ShowFormWithContent(player, "脚本表单", "Package_buy.Msg('绑定元宝不足','3')");
				return ""
			else
				if lualib:Player_SubIngot(player, 50, true, "快捷购买大还丹包", player) == false then
					return "扣除元宝失败！" 
				else
					lualib:AddItem(player, str, 1, false, "随身商店", player)
					lualib:ShowFormWithContent(player, "脚本表单", "Package_buy.Msg('购买成功','3')")
				end
			end
	elseif index_num == 4 then 
			local str = "随机石"
			if lualib:Player_IsIngotEnough(player, 40, true) == false then 
				lualib:ShowFormWithContent(player, "脚本表单", "Package_buy.Msg('绑定元宝不足','4')");
				return ""
			else
				if lualib:Player_SubIngot(player, 40, true, "快捷购买随机石", player) == false then
					return "扣除元宝失败！" 
				else
					lualib:AddItem(player, str, 1, false, "随身商店", player)
					lualib:ShowFormWithContent(player, "脚本表单", "Package_buy.Msg('购买成功','4')")
				end
			end		
	end
	--lualib:SysPromptMsg(player, "购买成功！！")
	return ""
end

