function main(npc,player)
	local state = lualib:GetDBNum("SBKHongGongState")
	local msg = 0
	if state == 0 then
		msg = "\n   ��ӭ������;�����磡\n "
	elseif state == 1 then
		msg = "<@enterHuangGong *01*����ʹ�> \n"
	end
	return msg
end

--[[local posTb = {{17, 31, 3}, {20, 37, 3}, {27, 41, 3}, {41, 31, 1}, {38, 34, 1}, {36, 36, 1}, {24, 22, 1}, {27, 17, 1}, {29, 28, 1}, {32, 23, 1}, {32, 19, 1}, {36, 24, 1}}--]]
function enterHuangGong(npc, player)
	local huangGongGuid = lualib:GetDBStr("HuangGongGuid")
	if not lualib:Map_IsDgnExist(huangGongGuid) then
		huangGongGuid = lualib:Map_CreateDgn("���ǻʹ�", true, 1800) 
	end
	lualib:SysMsg_SendBroadcastMsg(huangGongGuid,"")
	--[[local r = posTb[lualib:GenRandom(1, #posTb)]
	if lualib:Player_SetDgnTicket(player, huangGongGuid) then
		lualib:SysMsg_SendBroadcastMsg("111","")
		if lualib:Player_EnterDgn(player, "���ǻʹ�", r[1], r[2], r[3]) then
			lualib:SysMsg_SendBroadcastMsg("�������ǻʹ�","")
		end
	end--]]
	if lualib:Map_IsDgnExist(huangGongGuid) then
		if lualib:Map_JumpRnd(huangGongGuid, player) then
			lualib:SysMsg_SendBroadcastMsg("�����ת�ʹ�","")	
		end
	end
	
	return ""
end

