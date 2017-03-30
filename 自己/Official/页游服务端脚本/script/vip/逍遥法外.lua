function main(player, vipLevel)
	local a = lualib:GetAllDays(0)
	local b = lualib:GetInt(player, "vip_xiaoyao")
	local msg = ""
	if	b ~= a then
		msg = msg.."您今天还可以领取一次逍遥法外状态，该状态下PK不增加PK值！\n\n"
		msg = msg.."<@lingqu *01*领取>\n"
		msg = msg.."<@leave *01*离开>\n"
	else
		msg = msg.."您今天已经领取过逍遥法外状态，不可领取！"
	end
	lualib:NPCTalk(player, msg)
end

function lingqu(player, viplevel)
	lualib:AddBuff(player, "逍遥法外", 1800)
	local c = lualib:GetAllDays(0)
	lualib:SetInt(player, "vip_xiaoyao", c)
	msg = "领取逍遥法外状态成功！"
	return msg
end


function leave(player)
	return ""
end