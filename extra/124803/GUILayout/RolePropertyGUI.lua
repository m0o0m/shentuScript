RolePropertyGUI = {}

RolePropertyGUI.Items = 
{
	{"PhyAttacEdit", "攻击"}, 
	{"MagicAttacEdit", "魔法"}, 
	{"DaoAttacEdit", "道术"}, 
	{"PhyDefEdit", "防御"}, 
	{"MagicDefineEdit", "魔防"}, 
	{"HPEdit", "生命值"}, 
	{"MPEdit", "魔法值"}, 
	{"RoleLucky", "幸运"}, 
	{"ExtremAtcEdit", "暴击"}, 
	{"HitEdit", "命中"}, 
	{"MissEdit", "闪避"}, 
	{"HandPowerEdit", "腕力"}, 
	{"WeightEdit", "背包负重"}, 
	{"RoleWareWeightEdit", "装备负重"}, 
};

function RolePropertyGUI.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = _Parent
	
	for k, v in ipairs(RolePropertyGUI.Items) do
		local _Edit = GUI:EditCreate(_GUIHandle, "Edit"..k, 20, 30*k-20, 100, 20)
		if _Edit ~= 0 then
			EditSetProp(_Edit, nil, true, false, false, false, 4290950816, false, v[2]);
		end
		
		local _EditHandle = GUI:EditCreate(_GUIHandle, v[1], 100, 30*k-20, 100, 20)
		if _EditHandle ~= 0 then
			GUI:WndSetEnableM(_EditHandle, false)
			GUI:EditSetLimitStringSize(_EditHandle, false)		
		end
	end

    RolePropertyGUI.UIInit(_Parent)
end


--UI Logic Code Start
RolePropertyGUI.WndHandle = 0
function RolePropertyGUI.UIInit(_Parent)
	RolePropertyGUI.WndHandle = _Parent
	CL:AddDelayTask("RolePropertyGUI.DelayInit(".._Parent..")", 0, 1);
end

function RolePropertyGUI.DelayInit(_Parent)
	GUI:WndSetPosM(_Parent, 395, 50);	
end

RolePropertyGUI.main()