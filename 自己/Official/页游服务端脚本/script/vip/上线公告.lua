function main(player, vipLevel)
	local msg = "请设置上线全服广播功能！\n"
	msg = msg.."<@shezhi#1 *01*设置为上线公告>       <@shezhi#2 *01*设置为上线不公告>\n"
	msg = msg.."<@leave *01*离开>"
	lualib:NPCTalk(player, msg)
end

function shezhi(player, types)
	types = tonumber(types)
	--print(types)
	lualib:SetInt(player, "shangxiangonggao", types)
	if types == 1 then
		lualib:NPCTalk(player, "设置上线公告成功！\n")
		return ""
	elseif types == 2 then
		lualib:NPCTalk(player, "设置上线不公告成功！\n")
		return ""
	end
	return ""
end

function leave(player)
	return true
end