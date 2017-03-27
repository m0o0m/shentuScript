MailWnd = {}
function MailWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

	_Parent = GUI:WndCreateWnd(_Parent,"MailWnd",0, _DeviceSizeX / 2 - 260,50)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,16, 16)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1831100001,31,95)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_HEAD",1831100000,31,0)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_Image0",1833100000,230,20)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1832500014,415,-15)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"GUI_Image1",1830000004,180,811)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"GUI_EDT_SENDER",185,82,0,0)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_Image2",1833100001,70,85)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_Image3",1832800009,60,120)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,400,160)
		GUI:ImageSetFitSize(_GUIHandle, true) 
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_Image4",1831100018,100,300)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_Image5",1830000004,150,296)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"GUI_EDT_TEXT",75,135,380,140)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"GUI_EDT_GOLD",155,300,150,30)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"0")
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_Image6",1831100020,100,345)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_Image7",1830000004,150,341)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"GUI_EDT_YUANBAO",155,345,150,30)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"0")
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"GETGOLD",1831100015,340,290)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,193,179,166)) 
		GUI:WndSetTextM(_GUIHandle,"获取金币")
	end	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"GETYUANBAO",1831100015,340,335)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,193,179,166)) 
		GUI:WndSetTextM(_GUIHandle,"获取元宝")
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ITEM0",0,85,385,36,36)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ITEM1",0,155,385,36,36)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ITEM2",0,225,385,36,36)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ITEM3",0,295,385,36,36)
	if _GUIHandle ~= 0 then
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ITEM4",0,365,385,36,36)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"GUI_ITEM",1831100015,200,460)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,193,179,166)) 
		GUI:WndSetTextM(_GUIHandle,"获取物品")
	end
	
	MailWnd.UIInit(_Parent)
end

--UI Logic Code Start
function MailWnd.UIInit(_Handle)
end
--MailWnd.main()




