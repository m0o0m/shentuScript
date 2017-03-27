----------------------------------------------------------------------------------------
--UI事件机制----------------------------------------------------------------------------
----------------------------------------------------------------------------------------
function RegisterUIEvent(EventID,_Tag,_EventFunc)
	if UIEvent == nil then
		UIEvent = {}
	end
	if UIEvent[EventID] == nil then
		UIEvent[EventID] = {}
	end
	UIEvent[EventID][_Tag] = _EventFunc
end

function UnRegisterUIEvent(EventID,_Tag)
	if UIEvent == nil then
		UIEvent = {}
	end
	if UIEvent[EventID] == nil then
		UIEvent[EventID] = {}
	end
	UIEvent[EventID][_Tag] = nil
end


UIEvent = {
			[EventID] = {
						["e1"] = _EventFunc1,
						["e2"] = _EventFunc2,
						["e3"] = _EventFunc3,
						["e4"] = _EventFunc4,
			},
}


function RaiseUIEvent(EventID)
	local LuaEventParam = dup(as3.tolua(LuaParam))
	if UIEvent ~= nil and UIEvent[EventID] ~= nil then
		for k,v in pairs(UIEvent[EventID]) do
			if v ~= nil then
				LuaParam = dup(LuaEventParam)
				if type(v) == "function" then
					v()
				elseif type(v) == "string" then
					local func = loadstring(v.."()")
					if func ~= nil then
						func()
					end
				end
			end
		end
	end
	LuaParam = LuaEventParam
end


--lua变量的复制
function dup(ori_tab)
    if (type(ori_tab) ~= "table") then
        return ori_tab;
    end
    local new_tab = {};
    for i,v in pairs(ori_tab) do
        local vtyp = type(v);
        if (vtyp == "table") then
            new_tab[i] = dup(v);
        elseif (vtyp == "thread") then
            new_tab[i] = v;
        elseif (vtyp == "userdata") then
            new_tab[i] = v;
        else
            new_tab[i] = v;
        end
    end
    return new_tab;
end

