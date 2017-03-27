BigMapWindow = {}
BigMapWindow.MapShowName = {
    -- µØÍ¼Name 
	["»Ã¾³Èı²ã"] = {{1990340007,180,170}},
	["»Ã¾³¶ş²ã"] = {{1990340023,190,120}},
	["»Ã¾³ÕòÄ§´óÌü"] = {{1990340012,290,140}},
	["»Ã¾³ÌúÑªÄ§¹¬"] = {{1990340028,190,190}},
	["»Ã¾³ÌìÄ§µî"] = {{1990340027,150,80}},
	["»Ã¾³º£Ä§³²Ñ¨"] = {{1990340042,400,120}},
	
	["¹Å´úÄ¹Ñ¨Ò»²ã"] = {{1990340011,400,80}},
	["¹Å´úÄ¹Ñ¨¶ş²ã"] = {{1990340010,260,160}},	
	
	["Ğş±ùµîÒ»²ã"] = {{1990340028,400,260}},
	["Ğş±ùµî¶ş²ã"] = {{1990340027,220,100}},
	["Ğş±ùµîBOSS"] = {{1990340012,110,110}},	
	
	["ÂŞººÌÃ"] = {{1990340010,140,60}},	
	
	["ÃØ¾³³Á´¬Ò»²ã"] = {{1990310045,350,160}},	
	["º£Ä§³²Ñ¨"] = {{1990340042,420,110}},
	
	["·âÄ§µîÌÃ"] = {{1990340036,220,120}},	--·âÄ§²Ø±¦Å®Î×
	
	["Éîº£Ä§¹¬"] = {{1990340042,210,210}}, --ÕÂÓãÍõ 
	
	["ÌÒÔ´ÏÉ¾³BOSS"] = {{1990340018,470,30}},
	
	["ĞşÎä»Ã¾³BOSS"] = {{1990340027,370,80}},
	
	["Ñ©ÓòBOSS"] = {{1990310011,300,40}},
	
	["ËÀÍöÄ§Ñ¨"] = {{1990310032,180,220}},
	
	["²Ø±¦¸ó"] = {{1990340006,300,150}},
	
	["Õ½Ê¿Á¶Óü¶ş²ã"] = {{1990340009,120,220}},
	["Õ½Ê¿Á¶ÓüËÄ²ã"] = {{1990340011,400,150}},   
	["Õ½Ê¿Á¶ÓüÁù²ã"] = {{1990340010,280,150}},  
	["Õ½Ê¿Á¶Óü°Ë²ã"] = {{1990340027,230,150}}, 
	
	["·¨Ê¦Á¶Óü¶ş²ã"] = {{1990340009,120,220}},
	["·¨Ê¦Á¶ÓüËÄ²ã"] = {{1990340011,400,150}},   
	["·¨Ê¦Á¶ÓüÁù²ã"] = {{1990340010,280,150}},  
	["·¨Ê¦Á¶Óü°Ë²ã"] = {{1990340027,230,150}}, 
	
	["µÀÊ¿Á¶Óü¶ş²ã"] = {{1990340009,120,220}},
	["µÀÊ¿Á¶ÓüËÄ²ã"] = {{1990340011,400,150}},   
	["µÀÊ¿Á¶ÓüÁù²ã"] = {{1990340010,280,150}},  
	["µÀÊ¿Á¶Óü°Ë²ã"] = {{1990340027,230,150}},
	
	["Á¶ÓüÄ§¾³"] = {{1990340045,380,100}},
	 
	   --  µØÓüèóÌìÉ®     µØÓüÌìÄ§Éñ   µØÓüº£Ä§    µØÓüÑªìøÊ¦   µØÓü°ÔÖ÷  µØÓüÅ£Ä§Íõ  µØÓüĞ°Ä§   µØÓüÊ÷Ä§	
	["¶ñÄ§³Ç"] = {{1990340010,90,170},{1990340027,380,60},{1990340042,380,260},{1990340011,260,230},{1990340018,450,180},{1990340006,150,170},{1990310060,200,170},{1990340009,350,190}}, 	
	 	
}
LuaUI["BigMapWindow"].OnInit = function(this)
	CL:AddDelayTask("BigMapWindow.BingQuanAutoTimer("..this..")", 30, 1)
	RegisterUIEvent(LUA_EVENT_ONENTERMAP, "Íæ¼ÒÌø×ªµØÍ¼´¥·¢", "BigMapWindow.OnLBtnUp")
end

function BigMapWindow.BingQuanAutoTimer(this)

	local _Parent = this
	local _GUIHandle = 0
	local ShowName = BigMapWindow.MapShowName
	_GUIHandle = GUI:WndFindWindow(_Parent, "MapNameEdit")
	local MapName = GUI:EditGetTextM(_GUIHandle)
	_Parent = GUI:WndFindWindow(_Parent, "BigMapCtrl")

	if ShowName[MapName] ~= nil then
		for i=1,#ShowName[MapName] do    			
		    _GUIHandle = GUI:ImageCreate(_Parent,"ImageID"..i,ShowName[MapName][i][1],ShowName[MapName][i][2],ShowName[MapName][i][3])			
			if _GUIHandle ~= 0 then		
				GUI:ImageSetAlpha(_GUIHandle,180)				
				GUI:WndSetParam(_GUIHandle, i)
			end
		end
	end

end

function BigMapWindow.OnLBtnUp(_Handle,_Param)
	local _GUIHandle = GetWindow(nil, "BigMapWindow,MapNameEdit")
--[[	local MapName = GUI:EditGetTextM(_GUIHandle)
	if _Handle ~= 0 and _Handle ~= nil then 
		local _Param = GUI:WndGetParam(_Handle)
		--CL:ShowTypeMsg(1, "".._Param)
		if _Param >= 1 and _Param <= #BigMapWindow.MapShowName[MapName] then
			local _KeyName = BigMapWindow.MapShowName[MapName][_Param][3]
			--CL:ShowTypeMsg(1, "".._KeyName)
			UI:OpenBigMapWithKeyName(_KeyName)
		end
	end--]]
	local _Parent = GetWindow(nil, "BigMapWindow")
	CL:AddDelayTask("BigMapWindow.BingQuanAutoTimer(".._Parent..")", 30, 1)
end