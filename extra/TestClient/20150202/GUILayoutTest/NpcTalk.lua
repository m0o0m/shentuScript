NpcTalk = {}
function NpcTalk.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1900111000,599,-10)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,28, 27)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"VScrollBar",1900100104,1900100108,1900100100,1900100120,590,13,132)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,132, 18)
    end
    
    
    
    NpcTalk.UIInit(_Parent)
end

--UI Logic Code Start
function NpcTalk.UIInit(_Handle)
	NpcTalk.WndHandle = _Handle
	GUI:WndSetSizeM(NpcTalk.WndHandle, 684, 511)
    GUI:WndSetMoveWithLBM(NpcTalk.WndHandle)
    GUI:WndSetIsESCClose(NpcTalk.WndHandle, true)
	GUI:WndSetFlagsM(NpcTalk.WndHandle, flg_wndBase_autoTop)
	RegisterUIEvent(LUA_EVENT_OPENNPCTALK, "NpcTalk_NpcTalk", "NpcTalk.SetNpcTalkHalfImgPos")
end

--npc面板上新npc头像尺寸变大，这里调整位置
function NpcTalk.SetNpcTalkHalfImgPos()
	LuaGlobal["NpcTalk_AutoCalcHeadImgPos"] = false
	local _GUIHandle = GetWindow(0, "NpcTalk,HeadImage")
	if _GUIHandle ~= 0 then
		GUI:ImageSetFitSize(_GUIHandle, true)
		GUI:WndGetSizeM(_GUIHandle)
		if LuaRet[1] == 0 or LuaRet[2] == 0 then
			return
		end
		local scale = 224 / LuaRet[2]
		local new_width = LuaRet[1] * scale
		local new_height = LuaRet[2] * scale
		GUI:WndSetSizeM(_GUIHandle, new_width , new_height)
		GUI:WndGetPosM(_GUIHandle)
		local x = LuaRet[1]
		local y = LuaRet[2]
		local xoff = 234 - new_width
		local yoff = 196 - new_height
		local bkImg = GUI:WndFindChildM(NpcTalk.WndHandle, "BackImage")
		if bkImg ~= 0 then
			local bkImgId = GUI:ImageGetImageID(bkImg)
			if bkImgId == 0 then	--使用的九宫格
				local SplitImg = GUI:WndFindChildM(bkImg, "BackImageSplit")	--这个面板上的分割线图片
				if SplitImg ~= 0 then	--此时有选项
					GUI:WndGetPosM(SplitImg)
					yoff = LuaRet[2] - new_height
				else
					GUI:WndGetSizeM(bkImg)
					yoff = LuaRet[2] - new_height
				end
			elseif bkImgId == 1903700033 then	--非九宫格且没有选项
				yoff = 196 - new_height
			elseif bkImgId == 1903700044 then	--非九宫格且有选项
				yoff = 196 - new_height
			end
		end
		GUI:WndSetPosM(_GUIHandle, xoff, yoff)
		local _HeadImageIcon = GUI:WndFindChildM(_GUIHandle, "HeadImageIcon")
		if _HeadImageIcon ~= 0 then
			GUI:WndGetPosM(_HeadImageIcon)
			GUI:WndSetPosM(_HeadImageIcon, LuaRet[1] - xoff, new_height - 32)
		end
		local _HeadImageEdit = GUI:WndFindChildM(_GUIHandle, "HeadImageEdit")
		if _HeadImageEdit ~= 0 then
			GUI:WndGetPosM(_HeadImageEdit)
			GUI:WndSetPosM(_HeadImageEdit, LuaRet[1] - xoff, new_height - 30)
		end
	end
end

NpcTalk.main()