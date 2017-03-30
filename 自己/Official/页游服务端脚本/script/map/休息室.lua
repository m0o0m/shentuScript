function on_map_create(map)
	lualib:AddTimerEx(map, 1, 60000, 10, "chuansong", "")
	return
end

function on_map_destroy()
    lualib:Debug("试炼场地图销毁！")
    return
end

function chuansong(map, id)
	local times = lualib:GetInt(map, map) + 1
	lualib:SetInt(map, map, times)
	local t = 5 - times
	if t > 0 then
		lualib:SysMsg_SendMapMsg(map, "战斗将在"..t.."分钟后开始，请尽快做好战斗准备，等待战斗开始！")
	end
	if times == 5 then
		local xinxi = lualib:GetStr(map, "shit")
		local xinxi_tbale = string.split(xinxi,"#")
		local ybweizhi = table.getn(xinxi_tbale)/2 + 1
		local dgn = lualib:Map_CreateDgn("擂台", true, 7200)
		if dgn == "" then
			print("竞技场创建失败！")
		end
		lualib:SetStr(dgn, "shit", xinxi)
		for k, v in pairs(xinxi_tbale) do
			--print(k)
			if k ~= ybweizhi then
				local m_p = lualib:MapGuid(v)
				if m_p == map then
					if k < ybweizhi then
						lualib:Player_SetDgnTicket(v, dgn)
						lualib:Player_EnterDgn(v, "擂台", 20, 60,5)
					elseif k > ybweizhi then
						lualib:Player_SetDgnTicket(v, dgn)
						lualib:Player_EnterDgn(v, "擂台", 40, 37,5)
					end
				end
			end
		end

		lualib:Map_DestroyDgn(map)
	end
end
			
			