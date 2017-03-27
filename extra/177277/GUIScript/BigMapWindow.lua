BigMapWindow = {}
BigMapWindow.MapShowName = {
    -- ��ͼName 
	["�þ�����"] = {{1990340007,180,170}},
	["�þ�����"] = {{1990340023,190,120}},
	["�þ���ħ����"] = {{1990340012,290,140}},
	["�þ���Ѫħ��"] = {{1990340028,190,190}},
	["�þ���ħ��"] = {{1990340027,150,80}},
	["�þ���ħ��Ѩ"] = {{1990340042,400,120}},
	
	["�Ŵ�ĹѨһ��"] = {{1990340011,400,80}},
	["�Ŵ�ĹѨ����"] = {{1990340010,260,160}},	
	
	["������һ��"] = {{1990340028,400,260}},
	["���������"] = {{1990340027,220,100}},
	["������BOSS"] = {{1990340012,110,110}},	
	
	["�޺���"] = {{1990340010,140,60}},	
	
	["�ؾ�����һ��"] = {{1990310045,350,160}},	
	["��ħ��Ѩ"] = {{1990340042,420,110}},
	
	["��ħ����"] = {{1990340036,220,120}},	--��ħ�ر�Ů��
	
	["�ħ��"] = {{1990340042,210,210}}, --������ 
	
	["��Դ�ɾ�BOSS"] = {{1990340018,470,30}},
	
	["����þ�BOSS"] = {{1990340027,370,80}},
	
	["ѩ��BOSS"] = {{1990310011,300,40}},
	
	["����ħѨ"] = {{1990310032,180,220}},
	
	["�ر���"] = {{1990340006,300,150}},
	
	["սʿ��������"] = {{1990340009,120,220}},
	["սʿ�����Ĳ�"] = {{1990340011,400,150}},   
	["սʿ��������"] = {{1990340010,280,150}},  
	["սʿ�����˲�"] = {{1990340027,230,150}}, 
	
	["��ʦ��������"] = {{1990340009,120,220}},
	["��ʦ�����Ĳ�"] = {{1990340011,400,150}},   
	["��ʦ��������"] = {{1990340010,280,150}},  
	["��ʦ�����˲�"] = {{1990340027,230,150}}, 
	
	["��ʿ��������"] = {{1990340009,120,220}},
	["��ʿ�����Ĳ�"] = {{1990340011,400,150}},   
	["��ʿ��������"] = {{1990340010,280,150}},  
	["��ʿ�����˲�"] = {{1990340027,230,150}},
	
	["����ħ��"] = {{1990340045,380,100}},
	 
	   --  ��������ɮ     ������ħ��   ������ħ    ����Ѫ��ʦ   ��������  ����ţħ��  ����аħ   ������ħ	
	["��ħ��"] = {{1990340010,90,170},{1990340027,380,60},{1990340042,380,260},{1990340011,260,230},{1990340018,450,180},{1990340006,150,170},{1990310060,200,170},{1990340009,350,190}}, 	
	 	
}
LuaUI["BigMapWindow"].OnInit = function(this)
	CL:AddDelayTask("BigMapWindow.BingQuanAutoTimer("..this..")", 30, 1)
	RegisterUIEvent(LUA_EVENT_ONENTERMAP, "�����ת��ͼ����", "BigMapWindow.OnLBtnUp")
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