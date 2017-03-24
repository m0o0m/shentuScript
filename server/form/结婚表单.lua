
lualib:SetFormAllowFunc({"main"});

function main(player, boy, result)
    -- 判断自己性别，应婚的该是女的
    if lualib:Gender(player) ~=  lua_gender_female then
        return "男人和男人……"
    end
    
    -- 判断自己婚否
    if lualib:GetStr(player, "配偶GUID") ~= "" then
        return "重婚可是犯法的。"
    end
    
    -- 判断对方是否在线
    local boyfriend = lualib:Player_GetGuid(boy)
    if boyfriend == "" or lualib:Distance(player, boyfriend) > 10 then
        return "咦，我没看到"..boy.."在这里啊。"
    end
    
    -- 判断对方是否向自己求过婚
	local name = lualib:Name(player)
    local propose_name = lualib:GetStr(boyfriend, "求婚对象")
    if propose_name ~= name then
        return "对方现在已经不打算向你求婚了。"
    end
    
    -- 是否同意求婚
    if result ~= 1 then
        lualib:SysMsg_SendTriggerMsg(boyfriend, name.."拒绝了你的求婚")
        return "你拒绝了"..boy.."的求婚"
    end
    
    -- 判断对方性别，咱也不赞成拉拉
    if lualib:Gender(boyfriend) ==  lua_gender_female then
        return "姐姐你很讨厌男人么……"
    end
    
    -- 判断对方婚否
    if lualib:GetStr(boyfriend, "配偶GUID") ~= "" then
        return "眼睛看清楚，名草已有主！"
    end

	-- 判断男朋友是否有车有房
    if lualib:ItemCount(boyfriend, "求婚戒指") < 1 then
        return "你男朋友貌似把结婚戒指搞丢了。"
    end

	assert(lualib:TakeItem(boyfriend, "求婚戒指", 1, "删物品：结婚表单", "结婚表单"), "系统错误:删除结婚戒指失败.");

    -- 条件符合，结婚
    lualib:SetStr(player, "配偶GUID", boyfriend)
    lualib:SetStr(boyfriend, "配偶GUID", player)
    lualib:SetStr(player, "配偶姓名", boy)
    lualib:SetStr(boyfriend, "配偶姓名", name)
   
	lualib:DelayCall(player, 1, "marry:marry_load", "");
    lualib:DelayCall(boyfriend, 1, "marry:marry_load", "");
	
    lualib:SetStr(boyfriend, "求婚对象", "")
    
    lualib:SysMsg_SendPromptMsg(player, "祝你们白头偕老！")
    lualib:SysMsg_SendPromptMsg(boyfriend, "祝你们白头偕老！")
    lualib:NotifyVar(player, "配偶姓名")
    lualib:NotifyVar(boyfriend, "配偶姓名")
    return ""
end