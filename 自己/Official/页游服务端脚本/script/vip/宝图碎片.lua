function main(player, vipLevel)
	local VIP20_vipLevel = lualib:GetVipLevel(player)

	if VIP20_vipLevel >= 1 then

		if lualib:Player_IsIntegralEnough(player, 500) == false then
			lualib:SysMsg_SendPromptMsg(player, "你的积分不足500，不能免费领取中级藏宝图碎片")
		else
			lualib:Player_SubIntegral(player, 500, "会员购买中级藏宝图扣除积分", player)
			lualib:AddSingleItem(player, "中级藏宝图碎片", 1, 0, "会员用积分购买中级藏宝图", player)
		end

		
	else
		lualib:SysMsg_SendPromptMsg(player, "你不是VIP1~VIP7,不能领取会员天佑状态!")
	end

	
	return true
end