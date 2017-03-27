function get_item_tips(itemid,guid,entity)

	TipParam={}

	SetTipParam("ITEMID",itemid)
	SetTipParam("GUID",guid)
	SetTipParam("ENTITY",entity)

	local result=tipLayoutFunctionProp()

	if not result then
        return ""
    else
        return result;
    end
end

function get_skill_tips(skillid)
	TipParam={}

	SetTipParam("SKILLID",skillid)
	SetTipParam("ENABLE",1)

	local result=tipLayoutFunctionSkill()

	if not result then
        return ""
    else
        return result;
    end
end

local function main()

end


main()
