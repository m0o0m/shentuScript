--处理游戏事件
function OnGameLuaEvent(EventID)
	if NoGhost ~= nil then
		NoGhost(EventID)
	end 
	if tonumber(EventID) == 102 then
		msg("reg successfully")
	end
	RaiseUIEvent(EventID)
	if Guide ~= nil and Guide.e ~= nil and Guide.e[EventID] ~= nil then
		Guide.e[EventID]()
	end
end

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

function RaiseUIEvent(EventID)
	local LuaEventParam = dup(as3.tolua(LuaParam))
	if UIEvent ~= nil and UIEvent[EventID] ~= nil then
		for k,v in pairs(UIEvent[EventID]) do
			if v ~= nil then
				LuaParam = dup(LuaEventParam)
				if type(v) == "function" then
					v()
					msg("v")
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

