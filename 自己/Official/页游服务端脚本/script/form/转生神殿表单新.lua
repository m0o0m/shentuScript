local num2map = 
{
	"一",
	"二",
	"三",
	"四",
	"五",
	"六",
	"七",
}

function reinTemple(player)
	--lualib:SysPromptMsg(player, "enter=") 
	local player_level = lualib:Level(player)
	local reinLevel = lualib:GetInt(player, "reinLevel")
	local map = 0
	if reinLevel == 0 then 
		if player_level < 70 then
			map = 1
		else
			map = 2
		end
		
	elseif reinLevel < 3 then
		map = 3
	elseif reinLevel < 5 then
		map = 4
	elseif reinLevel < 7 then
		map = 5
	elseif reinLevel < 9 then
		map = 6
	elseif reinLevel < 11 then
		map = 7
	elseif reinLevel < 13 then
		map = 8
	end
	local counts = lualib:ItemCount(player, "转生神殿卷轴")
	--lualib:SysPromptMsg(player, "mapindex="..map..";counts="..counts) 
	
	if map < 8 then 
		if counts < 1 then
			local num = 1
			lualib:ShowFormWithContent(player,"脚本表单","ReinTemple.msgbox("..num..")")
			--lualib:SysPromptMsg(player, "转生神殿卷轴不足=") 
			return ""
		end
		if lualib:DelItem(player , '转生神殿卷轴' , 1, 2, "转生神殿表单" , "转生神殿表单" ) then
			lualib:Player_MapMoveXY(player, "转生神殿"..num2map[map].."层" , 45 , 67 , 20 )
			lualib:ShowFormWithContent(player,"脚本表单","ReinTemple.CloseWnd()")
			local sName = lualib:Name(player)
			lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BLUE#"..sName.."#COLOREND##COLORCOLOR_YELLOW#进入#COLOREND##COLORCOLOR_BLUE#轮回圣殿#COLOREND##COLORCOLOR_YELLOW#，能否获得极品装备就看的运气了！#COLOREND#" , "" , 1, 0)
			return ""
		end
	else
		if counts < 2 then
			local num = 2 - counts
			lualib:ShowFormWithContent(player,"脚本表单","ReinTemple.msgbox("..num..")")
			--lualib:SysPromptMsg(player, "转生神殿卷轴不足=") 
			return ""
		end
		if lualib:DelItem(player , '转生神殿卷轴' , 2, 2, "转生神殿表单" , "转生神殿表单" ) then
			lualib:Player_MapMoveXY(player, "转生神殿八层" , 45 , 67 , 20 )
			lualib:ShowFormWithContent(player,"脚本表单","ReinTemple.CloseWnd()")
			local sName = lualib:Name(player)
			lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BLUE#"..sName.."#COLOREND##COLORCOLOR_YELLOW#进入#COLOREND##COLORCOLOR_BLUE#轮回圣殿#COLOREND##COLORCOLOR_YELLOW#，能否获得极品装备就看的运气了！#COLOREND#" , "" , 1, 0)
			return ""
		end
	end
	
	return ""

end

function Buy(player, num)
	local num = tonumber(num)
	local ybnum = num * 200
	if not lualib:Player_IsIngotEnough(player, ybnum, false) then
		lualib:ShowFormWithContent(player,"脚本表单","ReinTemple.YBMsg()")
		--lualib:SysPromptMsg(player, "元宝不足") 
		return ""
	end
	if lualib:Player_SubIngot(player, ybnum, false, "购买转生神殿表单", "转生神殿表单") then 
		lualib:AddItem(player, '转生神殿卷轴', num, true, "购买转生神殿表单", player)
	end
	lualib:ShowFormWithContent(player,"脚本表单","ReinTemple.enter()")
	return ""
end