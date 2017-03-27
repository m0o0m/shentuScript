ExtPackageDlg = {}

function ExtPackageDlg.main()

 local _Parent = LuaGlobal["AttachPartent"]

 local _GUIHandle = 0

 _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1800800002,-1,-1)

 if _GUIHandle ~= 0 then

 

  GUI:WndSetParam(_GUIHandle, 0)

  GUI:WndSetSizeM(_GUIHandle,241, 132)

 end

 

 _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img0",1800000080,14,64)

 if _GUIHandle ~= 0 then

 

  GUI:WndSetParam(_GUIHandle, 0)

  GUI:WndSetSizeM(_GUIHandle,46, 46)

 end

 

 _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img1",1800000080,69,64)

 if _GUIHandle ~= 0 then

 

  GUI:WndSetParam(_GUIHandle, 0)

  GUI:WndSetSizeM(_GUIHandle,46, 46)

 end

 

 _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img2",1800000080,124,64)

 if _GUIHandle ~= 0 then

 

  GUI:WndSetParam(_GUIHandle, 0)

  GUI:WndSetSizeM(_GUIHandle,46, 46)

 end

 

 _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img3",1800000080,179,64)

 if _GUIHandle ~= 0 then

 

  GUI:WndSetParam(_GUIHandle, 0)

  GUI:WndSetSizeM(_GUIHandle,46, 46)

 end

 

 _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item1",0,17,67,42,42)

 if _GUIHandle ~= 0 then

  GUI:WndSetParam(_GUIHandle, 0)

  GUI:WndSetSizeM(_GUIHandle,42, 42)

  GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)

  GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)

  GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)

  GUI:WndSetEnableM(_GUIHandle, true)

 end

 

 

 _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item2",0,72,67,42,42)

 if _GUIHandle ~= 0 then

  GUI:WndSetParam(_GUIHandle, 0)

  GUI:WndSetSizeM(_GUIHandle,42, 42)

  GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)

  GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)

  GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)

  GUI:WndSetEnableM(_GUIHandle, true)

 end

 

 

 _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item3",0,127,67,42,42)

 if _GUIHandle ~= 0 then

  GUI:WndSetParam(_GUIHandle, 0)

  GUI:WndSetSizeM(_GUIHandle,42, 42)

  GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)

  GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)

  GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)

  GUI:WndSetEnableM(_GUIHandle, true)

 end

 

 

 _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item4",0,182,67,42,42)

 if _GUIHandle ~= 0 then

  GUI:WndSetParam(_GUIHandle, 0)

  GUI:WndSetSizeM(_GUIHandle,42, 42)

  GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)

  GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)

  GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)

  GUI:WndSetEnableM(_GUIHandle, true)

 end

 

 

 _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1800000043,205,3)

 if _GUIHandle ~= 0 then

  GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ExtPackageDlg.OnClose")

  GUI:WndSetParam(_GUIHandle, 0)

  GUI:WndSetSizeM(_GUIHandle,26, 26)

  GUI:WndSetTextColorM(_GUIHandle, 4290950816)

 end

 

 

 _GUIHandle = GUI:EditCreate(_Parent,"Info",55,38,131,19)

 if _GUIHandle ~= 0 then

  GUI:WndSetParam(_GUIHandle, 0)

  GUI:WndSetTextColorM(_GUIHandle, 4290950816)

  GUI:EditSetTextM(_GUIHandle,"请放入扩展道具")

  GUI:EditSetCanEdit(_GUIHandle, false)

  GUI:EditSetFontCenter(_GUIHandle)

 end

 

 

 _GUIHandle = GUI:ImageCreate(_Parent,"Name_Img",1801500118,68,3)

 if _GUIHandle ~= 0 then

 

  GUI:WndSetParam(_GUIHandle, 0)

  GUI:WndSetSizeM(_GUIHandle,108, 25)

 end

 

  ExtPackageDlg.UIInit(_Parent)

end



ExtPackageDlg.WndHandle = 0



function ExtPackageDlg.UIInit( _Handle )

 ExtPackageDlg.WndHandle = _Handle

end



function ExtPackageDlg.OnClose(_Handle,_Param)

 GUI:WndClose(ExtPackageDlg.WndHandle)

end

ExtPackageDlg.main()