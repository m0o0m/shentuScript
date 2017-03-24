
lualib:SetFormAllowFunc({"main"});

function main(player, girl)
	-- 判断性别，求婚的总该是男的
    if lualib:Gender(player) ~=  lua_gender_male then
        return "求婚这事儿，女孩儿还是矜持点好。\n\n<@leave *01*离开>"
    end

    -- 判断婚否
    if lualib:GetStr(player, "配偶GUID") ~= "" then
        return "重婚可是犯法的。\n\n<@leave *01*离开>"
    end

    if lualib:ItemCount(player, "求婚戒指") < 1 then
       return "求婚戒指都没准备好就想求婚？\n\n<@leave *01*离开>"
    end
	        
    -- 判断对方是否在线
    local girlfriend = lualib:Player_GetGuid(girl)
    if girlfriend == "" or lualib:Distance(player, girlfriend) > 10 then
        return "咦，我没看到"..girl.."在这里啊。"
    end
    
    -- 判断对方性别，咱不赞成基情
    if lualib:Gender(girlfriend) ==  lua_gender_male then
        return "兄弟的品味很独特啊。"
    end
    
    -- 判断对方婚否
    if lualib:GetStr(girlfriend, "配偶GUID") ~= "" then
        return "晚啦，想追女孩得趁早啊！"
    end
    
	--条件符合，询问结婚对象是否同意
    lualib:SetStr(player, "求婚对象", girl)
    lualib:ShowFormWithContent(girlfriend, "结婚表单", lualib:Name(player))
    
    return ""
end