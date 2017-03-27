DownLoadWnd = {}
function DownLoadWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()
    local xOffset = _DeviceSizeX - 110;
    local yOffset = 15;

	 _GUIHandle = GUI:ButtonCreate(_Parent,"DownloadBtn",1850000127, _DeviceSizeX - 100, 75)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,100, 35)
        GUI:WndSetTextM(_GUIHandle, "下载")
    end
	
    _GUIHandle = GUI:EditCreate(_Parent,"NetSituation", _DeviceSizeX - 155, 80, 60, 22)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetTextM(_GUIHandle,"")
    end

  --    _GUIHandle = GUI:EditCreate(_Parent,"downMsg", -50, 80, xOffset + 150, yOffset + 23)
  --   if _GUIHandle ~= 0 then
  --       --GUI:EditSetFontCenter(_GUIHandle)
		-- GUI:WndSetEnableM(_GUIHandle, false)
  --       GUI:EditSetCanEdit(_GUIHandle, false)
  --       GUI:EditSetTextM(_GUIHandle,"")
  --   end

    DownLoadWnd.UIInit(_Parent)
end

--UI Logic Code Start
function DownLoadWnd.UIInit(_Handle)
end
DownLoadWnd.main()




