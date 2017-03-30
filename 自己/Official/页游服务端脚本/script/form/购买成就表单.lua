local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/ScriptPackage")
require("system/右上图标")
function buy(player,index)
	--lualib:SysPromptMsg(player, "进入服务端")
	local index_num = tonumber(index)
	local chengjiu = lualib:GetInt(player,"Ach_jifen")
	local inde = lualib:GetInt(player,"Ach_xunz") 
	if index_num == 1 then 
		local str = "高级成就令牌绑"
		local chengjiu_counts = "高级成就令牌绑次数"
		local counts = lualib:GetDayInt(player,chengjiu_counts)
		if counts >= 10 then
		lualib:SysCenterMsg( 0 , "高级成就令牌(绑)一天最多使用10次，您的使用次数已满" , player )
		lualib:SysPromptMsg(player, " 高级成就令牌(绑)一天最多使用10次，您的使用次数已满")
		return "" 
	    end
		if lualib:Player_IsIngotEnough(player, 2000, true) == false then
			lualib:ShowFormWithContent(player,"脚本表单","Buy_ach.Msg()") 
			--lualib:SysPromptMsg(player, "你的绑定元宝不足2000 ，无法购买！")
			return ""
		else
			if lualib:Player_SubIngot(player, 2000, true, "快捷购买成就", player) == false then
				return "扣除绑定元宝失败"
			else
				chengjiu = chengjiu + 80000
				counts = counts + 1
				if lualib:SetDayInt(player,chengjiu_counts,counts) then 
					local lastcounts = 10 - counts
					if lualib:SetInt(player,"Ach_jifen",chengjiu) == false  then
					   return "高级成就令牌(绑)使用失败"
					else
						lualib:SysPromptMsg(player, "您获得成就积分80000，今天最多还可以使用".. lastcounts.."次")
						lualib:SysTipsMsg(player,"成就积分增加80000")
					end
				end
			end
		end
	else 
		if index_num == 2 then 
			local str = "高级成就令牌"
			if lualib:Player_IsIngotEnough(player, 500, false) == false then
				lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.YbTopUP_Dlg()") 
				lualib:ShowFormWithContent(player,"脚本表单","Buy_ach.msgbox()")
				return ""
			else
				if lualib:Player_SubIngot(player, 500, false, "快捷购买成就", player) == false then
					return "扣除元宝失败！" 
				else
					chengjiu = chengjiu + 80000
					if lualib:SetInt(player,"Ach_jifen",chengjiu) == false  then
					   return "高级成就令牌使用失败"
					else
						lualib:SysPromptMsg(player, "您获得成就积分80000")
						lualib:SysTipsMsg(player,"成就增加80000")
					end
					--********************************--
					local indexx = lualib:GetDBNum("consumeTerm")
					local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + 500
					RecordTop10ConsumeInfo(player,totalYb)
					--********************************--
				end
			end
		end
	end
	
	Button_add_magic2(player,1)
	lualib:ShowFormWithContent(player,"脚本表单","Buy_ach.updata("..chengjiu..");Xunz_Win.jifen_update("..inde..","..chengjiu..")")
	lualib:SysPromptMsg(player, " 购买并使用成功！！")
	return ""
end
