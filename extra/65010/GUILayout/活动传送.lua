CampaignMove = {}
function CampaignMove.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"�����",1805200001,780,425)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,300, 130)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"����1",18,30,250,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"��ť",1806100002,100,90)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "CampaignMove.anniu")
		GUI:WndSetTextM(_GUIHandle,"����ǰ��")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,88, 31)
		GUI:WndSetTextColorM(_GUIHandle, 4292790139)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"�ر�",1804600007,265,25)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "CampaignMove.onclose")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,24, 23)
		GUI:WndSetTextColorM(_GUIHandle, 4292790139)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	CampaignMove.UIInit(_Parent)
end

CampaignMove.handle = 0
function CampaignMove.UIInit(this)
	CampaignMove.handle = this
	CampaignMove.param = deserialize(FormParam[1])
	local _handle = GetWindow(this,"����1")
	if _handle ~= 0 then
		GUI:RichEditClear(_handle)
		GUI:RichEditAppendString(_handle,"#COLORCOLOR_BROWN#"..CampaignMove.param.."��Ѿ��������μ��������ǰ��!#COLOREND#")
	end
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()
	local _GUIHandle = GetWindow(nil,"�����")
	local _XDiff = _DeviceSizeX - 320
	local _YDiff = _DeviceSizeY - 250
	GUI:WndSetPosM(_GUIHandle, _XDiff, _YDiff )
	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE,"��Ļ��С�ı�",wnd_sizeChange)
	GUI:WndAddTimerBrief(CampaignMove.handle, 60000, "CampaignMove.onclose()")
end

function wnd_sizeChange()
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()
	local _GUIHandle = GetWindow(nil,"�����")
	local _XDiff = _DeviceSizeX - 360
	local _YDiff = _DeviceSizeY - 250
	GUI:WndSetPosM(_GUIHandle, _XDiff, _YDiff )
end

CampaignMove.anniu = function(this)
	CampaignMove.onclose()
	UI:Lua_SubmitForm("����ͱ�","playermove",""..CampaignMove.param)
end

CampaignMove.onclose = function()
	if CampaignMove.handle ~= 0 then
		GUI:WndClose(CampaignMove.handle)
	end
end	
