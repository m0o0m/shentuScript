--进入远古神殿一层
function enter(player)
	--lualib:SysPromptMsg(player, "enter=") 
	lualib:Player_MapMoveXY(player, "玛雅神殿一层" , 21 , 171 , 5)
	lualib:ShowFormWithContent(player,"脚本表单","mayaTemple.closeWnd()")
	return ""

end


--进入远古神殿二层
function enter2(player)
	local daycounts = lualib:GetDayInt(player, "mayaTemple")
	if daycounts >= 2 then 
		lualib:ShowFormWithContent(player,"脚本表单","mayaTemple2.msg('今天可进入神殿二层次数已满,请明天再来')")
		return ""	
	end
	
	if lualib:ItemCount( player , "玛雅卷轴") >= 1 then
		if lualib:DelItem(player, "玛雅卷轴", 1 , 2 , "玛雅卷轴" , "玛雅神殿表单" ) then
			lualib:Player_MapMoveXY( player, "玛雅神殿二层" , 103 , 188 , 5 )
			lualib:ShowFormWithContent(player,"脚本表单","mayaTemple2.closeWnd()")
			lualib:SetDayInt(player, "mayaTemple", daycounts + 1)
			local sName = lualib:Name( player )
			--lualib:SysMsg_SendBroadcastColor( "#COLORCOLOR_WRITE#玩家【#COLORCOLOR_GREENG#"..sName.."#COLOREND#】进入了#COLORCOLOR_GREENG#远古神殿二层#COLOREND#！想进远古神殿的可以来巫山城找我！" , "" , 1, 0)
			lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_YELLOW#玩家#COLOREND##COLORCOLOR_BLUE#"..sName.."#COLOREND##COLORCOLOR_YELLOW#进入#COLOREND##COLORCOLOR_BLUE#远古神殿二层#COLOREND##COLORCOLOR_YELLOW#，远古神殿可以从巫山城远古神殿传送员处进入！#COLOREND#" , "" , 1, 0)
			
			return ""
		else
			--lualib:ShowFormWithContent(player,"脚本表单","mayaTemple2.msg('缺少远古卷轴')");
			lualib:ShowFormWithContent(player,"脚本表单","mayaTemple2.msgbox()");
			return ""
		end
	else
		--lualib:ShowFormWithContent(player,"脚本表单","mayaTemple2.msg('缺少远古卷轴')")
		lualib:ShowFormWithContent(player,"脚本表单","mayaTemple2.msgbox()");
		return ""
	end
end

--购买远古卷轴
function Buy(player)
	if not lualib:Player_IsIngotEnough(player, 200, false) then
		lualib:ShowFormWithContent(player,"脚本表单","ReinTemple.YBMsg()")
		--lualib:SysPromptMsg(player, "元宝不足") 
		return ""
	end
	if lualib:Player_SubIngot(player, 200, false, "玛雅神殿表单", "玛雅神殿表单") then 
		lualib:AddItem(player, '玛雅卷轴', 1, true, "玛雅神殿表单", player)
	end
	return ""
end