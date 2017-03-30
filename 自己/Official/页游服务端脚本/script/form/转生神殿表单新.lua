local num2map = 
{
	"һ",
	"��",
	"��",
	"��",
	"��",
	"��",
	"��",
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
	local counts = lualib:ItemCount(player, "ת��������")
	--lualib:SysPromptMsg(player, "mapindex="..map..";counts="..counts) 
	
	if map < 8 then 
		if counts < 1 then
			local num = 1
			lualib:ShowFormWithContent(player,"�ű���","ReinTemple.msgbox("..num..")")
			--lualib:SysPromptMsg(player, "ת�������᲻��=") 
			return ""
		end
		if lualib:DelItem(player , 'ת��������' , 1, 2, "ת������" , "ת������" ) then
			lualib:Player_MapMoveXY(player, "ת�����"..num2map[map].."��" , 45 , 67 , 20 )
			lualib:ShowFormWithContent(player,"�ű���","ReinTemple.CloseWnd()")
			local sName = lualib:Name(player)
			lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BLUE#"..sName.."#COLOREND##COLORCOLOR_YELLOW#����#COLOREND##COLORCOLOR_BLUE#�ֻ�ʥ��#COLOREND##COLORCOLOR_YELLOW#���ܷ��ü�Ʒװ���Ϳ��������ˣ�#COLOREND#" , "" , 1, 0)
			return ""
		end
	else
		if counts < 2 then
			local num = 2 - counts
			lualib:ShowFormWithContent(player,"�ű���","ReinTemple.msgbox("..num..")")
			--lualib:SysPromptMsg(player, "ת�������᲻��=") 
			return ""
		end
		if lualib:DelItem(player , 'ת��������' , 2, 2, "ת������" , "ת������" ) then
			lualib:Player_MapMoveXY(player, "ת�����˲�" , 45 , 67 , 20 )
			lualib:ShowFormWithContent(player,"�ű���","ReinTemple.CloseWnd()")
			local sName = lualib:Name(player)
			lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BLUE#"..sName.."#COLOREND##COLORCOLOR_YELLOW#����#COLOREND##COLORCOLOR_BLUE#�ֻ�ʥ��#COLOREND##COLORCOLOR_YELLOW#���ܷ��ü�Ʒװ���Ϳ��������ˣ�#COLOREND#" , "" , 1, 0)
			return ""
		end
	end
	
	return ""

end

function Buy(player, num)
	local num = tonumber(num)
	local ybnum = num * 200
	if not lualib:Player_IsIngotEnough(player, ybnum, false) then
		lualib:ShowFormWithContent(player,"�ű���","ReinTemple.YBMsg()")
		--lualib:SysPromptMsg(player, "Ԫ������") 
		return ""
	end
	if lualib:Player_SubIngot(player, ybnum, false, "����ת������", "ת������") then 
		lualib:AddItem(player, 'ת��������', num, true, "����ת������", player)
	end
	lualib:ShowFormWithContent(player,"�ű���","ReinTemple.enter()")
	return ""
end