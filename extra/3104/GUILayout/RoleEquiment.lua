RoleEquiment = {}
function RoleEquiment.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImg",1805900001,3,9)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,592, 427)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TitleImg",1805900008,265,-40)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,62, 28)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NameImg",1805900017,91,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,196, 39)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"RoleName",130,23,122,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"FamilyEdit",130,55,123,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"JobEdit",289,17,90,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"LevelEdit",289,34,90,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumberBackImg",1805900014,385,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,210, 53)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"EffectImg",3000101600,344,-10)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,215, 49)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Number1",1805900074,469,28)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 29)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Number2",1805900074,491,28)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 29)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Number3",1805900074,513,28)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 29)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Number4",1805900074,535,28)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 29)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Number5",1805900074,557,28)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 29)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BloodBackImg",1805900025,460,94)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,126, 16)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BloodImg",1805900021,462,96)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,120, 12)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HpEdit",462,96,130,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit1",397,94,65,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:EditSetTextM(_GUIHandle,"生命值：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit2",397,115,65,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:EditSetTextM(_GUIHandle,"魔法值：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit3",397,136,65,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:EditSetTextM(_GUIHandle,"经验值：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit4",397,160,65,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:EditSetTextM(_GUIHandle,"物理防御：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit5",397,181,65,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:EditSetTextM(_GUIHandle,"魔法防御：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit6",397,202,65,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:EditSetTextM(_GUIHandle,"物理攻击：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit7",397,223,65,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:EditSetTextM(_GUIHandle,"魔法攻击：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit8",397,244,65,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:EditSetTextM(_GUIHandle,"道术攻击：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit9",397,305,65,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:EditSetTextM(_GUIHandle,"闪避：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit10",397,326,65,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:EditSetTextM(_GUIHandle,"命中：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit11",397,347,65,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:EditSetTextM(_GUIHandle,"暴击：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit12",397,368,65,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:EditSetTextM(_GUIHandle,"幸运：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit13",397,389,65,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:EditSetTextM(_GUIHandle,"暴击伤害：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit14",397,410,65,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:EditSetTextM(_GUIHandle,"移动速度：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"MagicBackImg",1805900025,460,115)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,126, 16)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"MagicImg",1805900022,462,117)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,120, 12)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"MpEdit",462,117,130,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ExpBackImg",1805900025,460,136)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,126, 16)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ExpImg",1805900023,462,138)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,120, 12)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"ExpEdit",462,138,130,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ContentImg1",1805900018,458,157)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 22)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"PhyDefEdit",465,161,112,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ContentImg2",1805900018,458,178)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 22)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"MagicDefineEdit",465,182,112,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ContentImg3",1805900018,458,199)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 22)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"PhyAttacEdit",465,203,112,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ContentImg4",1805900018,458,220)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 22)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"MagicAttacEdit",465,224,112,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ContentImg5",1805900018,458,241)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 22)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"DaoAttacEdit",465,245,112,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ContentImg6",1805900018,458,303)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 22)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"MissEdit",465,307,112,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ContentImg7",1805900018,458,324)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 22)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HitEdit",465,328,112,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ContentImg8",1805900018,458,345)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 22)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"ExtremAtcEdit",465,349,112,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ContentImg9",1805900018,458,366)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 22)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"RoleLucky",465,370,112,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ContentImg10",1805900018,458,387)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 22)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"burstharm",465,391,112,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ContentImg11",1805900018,458,408)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 22)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"MOVE_SPEED_Edit",465,412,112,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg0",1805900037,20,129)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg1",1805900036,325,129)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg3",1805900034,325,255)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg4",1805900035,142,381)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg5",1805900032,203,381)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg6",1805900029,20,318)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg7",1805900029,325,318)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg8",1805900030,20,381)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg9",1805900030,325,381)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg10",1805900031,81,381)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg11",1805900033,264,381)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg13",1805900026,20,192)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg14",1805900027,20,255)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg15",1805900038,325,192)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"WingShow",0,139,94,100,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"翅膀展示")
        GUI:ImageSetDrawCenter(_GUIHandle,true)
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,100, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 186,198)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equimentclothes",0,150,124,80,170)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"衣服")
        GUI:ImageSetDrawCenter(_GUIHandle,true)
        GUI:WndSetParam(_GUIHandle, 14)
        GUI:WndSetSizeM(_GUIHandle,80, 170)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 186,198)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:WndSetMouseEnableIN(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equimentweapons",0,111,89,50,240)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"武器")
        GUI:ImageSetDrawCenter(_GUIHandle,true)
        GUI:WndSetParam(_GUIHandle, 13)
        GUI:WndSetSizeM(_GUIHandle,50, 240)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 186,198)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:WndSetMouseEnableIN(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment14",0,24,260,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"衣服")
        GUI:WndSetParam(_GUIHandle, 14)
        GUI:WndSetSizeM(_GUIHandle,42,42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment16",0,219,184,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"盾牌")
        GUI:WndSetParam(_GUIHandle, 16)
        GUI:WndSetSizeM(_GUIHandle,32, 32)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 186,198)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image0",0,76,52)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,265, 304)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment0",0,24,134,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"头盔")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
       -- GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        --GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 186,198)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
   
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment13",0,24,197,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"武器")
        GUI:WndSetParam(_GUIHandle, 13)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment3",0,329,260,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"勋章")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment6",0,24,323,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"护腕")
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment8",0,24,386,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"戒指")
        GUI:WndSetParam(_GUIHandle, 8)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		 GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
	
	_GUIHandle = GUI:ImageCreate(_Parent, "HatShowBkImg", 1805900034, 325, 71)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle, 48, 48)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "HatShow", -1, 149, 90, 42, 42)
    if _GUIHandle ~= 0 then
	    
        GUI:WndSetHint(_GUIHandle, "斗笠展示")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,true)
        GUI:WndSetCanRevMsg(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 4)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 188, 188)
        GUI:ImageSetDrawCenter(_GUIHandle,true)
		GUI:ImageSetTransfrom(_GUIHandle,6800,6800,0) --图片缩放比例大小接口 7000是缩放70%
		--GUI:ItemCtrlSetIconSize(_GUIHandle, 16, 16)
    end
	

	
    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment18", -1, 329, 73, 42, 42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "斗笠")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,18)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 42, 42)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment10",0,85,386,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"符咒")
        GUI:WndSetParam(_GUIHandle, 10)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment4",0,146,386,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"守护")
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment5",0,207,386,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"腰带")
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment11",0,268,386,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"鞋子")
        GUI:WndSetParam(_GUIHandle, 11)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment9",0,329,386,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"戒指")
        GUI:WndSetParam(_GUIHandle, 9)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		 GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment7",0,329,323,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"护腕")
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment15",0,329,197,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"宝石")
        GUI:WndSetParam(_GUIHandle, 15)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
	
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment1",0,329,134,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"项链")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"EnhanceLv",0,131,37)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 16)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"EnhanceMagic",1088400000,109,10)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 16)
    end
	
    RoleEquiment.UIInit(_Parent)
end

--UI Logic Code Start

--UI界面用装备索引
--  site_helmet,   /// 头盔0
--  site_necklace, /// 项链1
--  site_wings,    /// 翅膀2
--  site_medal,    /// 勋章3
--  site_amulet,   /// 守护4
--  site_shoulder, /// 护肩5
--  site_wrist_0,  /// 护腕0 6
--  site_wrist_1,  /// 护腕1 7
--  site_ring_0,   /// 戒指0 8
--  site_ring_1,   /// 戒指1 9
--  site_juju,     /// 符咒10
--  site_shoes,    /// 鞋子11
--  site_mount,    /// 坐骑12
--  site_weapon,   /// 武器13
--  site_armor,    /// 衣服14
--  site_gem,      /// 宝石15
--  site_shield,   /// 盾牌16
--  site_jewelry,   /// 时装17
--  site_hat,       /// 斗笠18
--  site_gloves,    /// 手套19
--  site_jewelry,   /// 珠宝20
RoleEquiment.ArmorSite = 5

RoleEquiment.WndHandle = 0
RoleEquiment.UseShield = true
RoleEquiment.ManHairTable = 
{
    1990401200, 
    1990401202,
    1990401201
}


RoleEquiment.WomanHairTable = 
{
    1990401250, 
    1990401251,
    1990401252
}

RoleEquiment.Open = false

function RoleEquiment.UIInit(_Handle)
    RoleEquiment.WndHandle = _Handle
	RoleEquiment.Open = true
	UI:Lua_SubmitForm("角色表单", "main", "")
    RegisterUIEvent(LUA_EVENT_PROPERTYDATA, "RoleEquiment_PropDataChange", RoleEquiment.propDataChange)
	RegisterUIEvent(LUA_EVENT_ONEQUIPMENT, "RoleEquiment_穿装备", "RoleEquiment.onequipment")
	RegisterUIEvent(LUA_EVENT_OFFEQUIPMENT, "RoleEquiment_脱装备", "RoleEquiment.offequipment")
    local _GUIHandle = 0
    _GUIHandle = GUI:WndFindChildM(_Handle, "ExpEdit")
    if _GUIHandle ~= 0 then
        GUI:EditSetLimitStringSize(_GUIHandle, false)
    end
    _GUIHandle = GUI:WndFindWindow(_Handle, "EffectImg")
	if _GUIHandle ~= 0 then
	    GUI:ImageSetRenderState(_GUIHandle, 1)
    end

	local _Gender = 0
    if CL:GetPlayerSelfPropBase(ROLE_PROP_SEX) then 
        _Gender = LuaRet
    end

    local Job = 1
    if CL:GetPlayerSelfPropBase(ROLE_PROP_JOB) then 
        Job = LuaRet
    end
    --[[_GUIHandle = GUI:WndFindWindow(_Handle, "Equiment0")--头盔
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)

        if _Gender == 1 then
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, RoleEquiment.ManHairTable[Job])
        else
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, RoleEquiment.WomanHairTable[Job])
        end
    end--]]

	_GUIHandle = GUI:WndFindWindow(_Handle, "image0")--发型
	if _GUIHandle ~= 0 then
       GUI:ImageSetDrawCenter(_GUIHandle,true)
		if _Gender == 1 then
			GUI:WndSetImageID(_GUIHandle, RoleEquiment.ManHairTable[Job])
		else
			GUI:WndSetImageID(_GUIHandle, RoleEquiment.WomanHairTable[Job])
		end
    end
	
    _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment13")--武器
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment16")--盾牌
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment14")--衣服
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)
        if _Gender == 1 then
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1890900006)
        else
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1890900007)
        end
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "WingShow")--翅膀展示
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end
	
	local _ShowFashionHandle = GUI:WndFindWindow(_Handle, "ShowFashion")
    if _ShowFashionHandle ~= 0 then
        local _ShowFashion = CL:GetShowFashion()
        GUI:CheckBoxSetCheck(_ShowFashionHandle, _ShowFashion)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "RoleName")
    if 0 ~= _GUIHandle then
        local Property = 0
        if CL:GetPlayerSelfPropBase(ROLE_PROP_ROLENAME) then 
            Property = LuaRet
        end 
        GUI:EditSetTextM(_GUIHandle,Property)
    end
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "FamilyEdit")
    if 0 ~= _GUIHandle then
        local Property = 0
        if CL:GetPlayerSelfPropBase(ROLE_PROP_FAMILY_NAME) then 
            Property = LuaRet
        end 
        GUI:EditSetTextM(_GUIHandle,Property)
    end
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "LevelEdit")
    if 0 ~= _GUIHandle then
        local Property = 0
        if CL:GetPlayerSelfPropBase(ROLE_PROP_LEVEL) then 
            Property = LuaRet
        end 
        GUI:EditSetTextM(_GUIHandle,"等级："..Property)
    end
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "HpEdit")
    if _GUIHandle ~= 0 then    
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_HP) then 
            Property = LuaRet
        end  
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_HP) then 
            max_Property = LuaRet
        end        
        GUI:EditSetTextM(_GUIHandle,"".. Property.." / "..max_Property)    
        _GUIHandle = GUI:WndFindWindow(_Handle, "BloodImg")
        local value = 0
        if max_Property > 0 then
            value = Property/max_Property
        end
        if value > 0 then
            GUI:WndSetVisible(_GUIHandle,true)
            GUI:ImageSetDrawRect(_GUIHandle,0,value,0,1)
        else
            GUI:WndSetVisible(_GUIHandle,false)
        end
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "MpEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MP) then 
            Property = LuaRet
        end  
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MP) then 
            max_Property = LuaRet
        end        
        GUI:EditSetTextM(_GUIHandle,"".. Property.." / "..max_Property)    
        _GUIHandle = GUI:WndFindWindow(_Handle, "MagicImg")
        local value = 0
        if max_Property > 0 then
            value = Property/max_Property
        end
        if value > 0 then
            GUI:WndSetVisible(_GUIHandle,true)
            GUI:ImageSetDrawRect(_GUIHandle,0,value,0,1)
        else
            GUI:WndSetVisible(_GUIHandle,false)
        end        
    end
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "InnerEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        GUI:EditSetTextM(_GUIHandle,"".. Property.." / "..max_Property)    
        _GUIHandle = GUI:WndFindWindow(_Handle, "InnerImg")
        GUI:WndSetVisible(_GUIHandle,false)        
    end
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "PhyDefEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_PHY_DEF) then 
            Property = LuaRet
        end 
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_PHY_DEF) then 
            max_Property = LuaRet
        end        
        GUI:EditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)        
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "MagicDefineEdit")
    if _GUIHandle ~= 0 then    
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_MAG_DEF) then 
            Property = LuaRet
        end  
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MAG_DEF) then 
            max_Property = LuaRet
        end        
        GUI:EditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)
    end
    
    local PhyAttacMax = 0
    local MagicAttacMax = 0
    local DaoAttacMax = 0
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "PhyAttacEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_PHY_ATK) then 
            Property = LuaRet
        end  
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_PHY_ATK) then 
            max_Property = LuaRet
            PhyAttacMax = max_Property
        end        
        GUI:EditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)        
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "MagicAttacEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_MAG_ATK) then 
            Property = LuaRet
        end  
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MAG_ATK) then 
            max_Property = LuaRet
            MagicAttacMax = max_Property
        end        
        GUI:EditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "DaoAttacEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_TAO_ATK) then 
            Property = LuaRet
        end  
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_TAO_ATK) then 
            max_Property = LuaRet
            DaoAttacMax = max_Property
        end        
        GUI:EditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)    
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "JobEdit")
    if 0 ~= _GUIHandle then
        GUI:EditSetTextM(_GUIHandle,"职业："..RDJOBName[Job])
        if Job==RDJob["战士"] then
            RoleEquiment.ShowNumber(PhyAttacMax)
        elseif Job==RDJob["法师"] then
            RoleEquiment.ShowNumber(MagicAttacMax)
        elseif Job==RDJob["道士"] then
            RoleEquiment.ShowNumber(DaoAttacMax)
        end
    end
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "MissEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MISS) then 
            Property = LuaRet
        end        
        GUI:EditSetTextM(_GUIHandle,"".. Property)
    end
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "HitEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_HIT) then 
            Property = LuaRet
        end        
        GUI:EditSetTextM(_GUIHandle,"".. Property)    
    end
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "ExtremAtcEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_BURST) then 
            Property = LuaRet
        end      
        GUI:EditSetTextM(_GUIHandle,"".. string.format("%.2f", Property/100).."%")
    end
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "RoleLucky")
    if _GUIHandle ~= 0 then    
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_LUCK_CURSE) then 
            Property = LuaRet
        end      
        GUI:EditSetTextM(_GUIHandle,"".. Property)    
    end
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "MOVE_SPEED_Edit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MOVE_SPEED_PCT) then 
            Property = LuaRet
        end          
        GUI:EditSetTextM(_GUIHandle,"+".. Property.."%")
    end
	RoleEquiment.burstharm_updata()	--更新暴击伤害
	RoleEquiment.ShowWeapon()
	RoleEquiment.HideWeapon()
end
RoleEquiment.imageid = {1805900066,1805900067,1805900068,1805900069,1805900070,1805900071,1805900072,1805900073,1805900074,1805900065}
function RoleEquiment.ShowNumber(value)
    local str = tostring(value) 
    local length = string.len(str)
    local _GUIHandle = 0
    if length<=5 and length>0 then
        local start = 6-length
        local index = 1;
        for i = 1, start do
            _GUIHandle=GUI:WndFindChildM(RoleEquiment.WndHandle, "Number"..i)
            GUI:WndSetVisible(_GUIHandle,false)
        end
        local a = 0 
        for i = start, 5 do
            _GUIHandle=GUI:WndFindChildM(RoleEquiment.WndHandle, "Number"..i)
            GUI:WndSetVisible(_GUIHandle,true)            
            a = tonumber(string.sub(str,index,index))
            if a == 0 then
                a = 10
            end
            GUI:WndSetImageID(_GUIHandle, RoleEquiment.imageid[a])
            index=index+1;
        end    
    else
        for i = 1, 4 do
            _GUIHandle=GUI:WndFindChildM(RoleEquiment.WndHandle, "Number"..i)
            GUI:WndSetVisible(_GUIHandle,false)
        end
        _GUIHandle=GUI:WndFindChildM(RoleEquiment.WndHandle, "Number5")
        GUI:WndSetVisible(_GUIHandle,true)
        GUI:WndSetImageID(_GUIHandle, 1801500097)
    end
    
end

function RoleEquiment.propDataChange()
    local _GUIHandle = 0
    local Property = 0
    local max_Property = 0
    local PhyAttacMax = 0
    local MagicAttacMax = 0
    local DaoAttacMax = 0
    
    if LuaParam[2] == ROLE_PROP32_HP or LuaParam[2] == ROLE_PROP32_MAX_HP then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "HpEdit")
        if _GUIHandle ~= 0 then 
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_HP) then 
                Property = LuaRet
            end  
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_HP) then 
                max_Property = LuaRet
            end        
            GUI:EditSetTextM(_GUIHandle,"".. Property.." / "..max_Property)  
            _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "BloodImg")
            local value = 0
            if max_Property > 0 then
                value = Property/max_Property
            end
            if value > 0 then
                GUI:WndSetVisible(_GUIHandle,true)
                GUI:ImageSetDrawRect(_GUIHandle,0,value,0,1)
            else
                GUI:WndSetVisible(_GUIHandle,false)
            end
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_MP or LuaParam[2] == ROLE_PROP32_MAX_MP then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "MpEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MP) then 
                Property = LuaRet
            end  
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MP) then 
                max_Property = LuaRet
            end        
            GUI:EditSetTextM(_GUIHandle,"".. Property.." / "..max_Property)  
            _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "MagicImg")
            local value = 0
            if max_Property > 0 then
                value = Property/max_Property
            end
            if value > 0 then
                GUI:WndSetVisible(_GUIHandle,true)
                GUI:ImageSetDrawRect(_GUIHandle,0,value,0,1)
            else
                GUI:WndSetVisible(_GUIHandle,false)
            end     
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_MIN_PHY_DEF or LuaParam[2] == ROLE_PROP32_MAX_PHY_DEF then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "PhyDefEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_PHY_DEF) then 
                Property = LuaRet
            end 
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_PHY_DEF) then 
                max_Property = LuaRet
            end        
            GUI:EditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)        
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_MIN_MAG_DEF or LuaParam[2] == ROLE_PROP32_MAX_MAG_DEF then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "MagicDefineEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_MAG_DEF) then 
                Property = LuaRet
            end  
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MAG_DEF) then 
                max_Property = LuaRet
            end        
            GUI:EditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)
        end
    end 
    
    local Job = 0
    
    if LuaParam[2] == ROLE_PROP32_MIN_PHY_ATK or LuaParam[2] == ROLE_PROP32_MAX_PHY_ATK then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "PhyAttacEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_PHY_ATK) then 
                Property = LuaRet
            end  
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_PHY_ATK) then 
                max_Property = LuaRet
                PhyAttacMax = max_Property
            end     

            if CL:GetPlayerSelfPropBase(ROLE_PROP_JOB) then 
                Job = LuaRet
            end             
            if Job==RDJob["战士"] then
                RoleEquiment.ShowNumber(PhyAttacMax)
            end            
            GUI:EditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)        
        end
    end 

    if LuaParam[2] == ROLE_PROP32_MIN_MAG_ATK or LuaParam[2] == ROLE_PROP32_MAX_MAG_ATK then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "MagicAttacEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_MAG_ATK) then 
                Property = LuaRet
            end  
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MAG_ATK) then 
                max_Property = LuaRet
                MagicAttacMax = max_Property
            end       
            if CL:GetPlayerSelfPropBase(ROLE_PROP_JOB) then 
                Job = LuaRet
            end             
            if Job==RDJob["法师"] then
                RoleEquiment.ShowNumber(MagicAttacMax)
            end
            GUI:EditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_MIN_TAO_ATK or LuaParam[2] == ROLE_PROP32_MAX_TAO_ATK then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "DaoAttacEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_TAO_ATK) then 
                Property = LuaRet
            end  
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_TAO_ATK) then 
                max_Property = LuaRet
                DaoAttacMax = max_Property
            end      
            if CL:GetPlayerSelfPropBase(ROLE_PROP_JOB) then 
                Job = LuaRet
            end             
            if Job==RDJob["道士"] then
                RoleEquiment.ShowNumber(DaoAttacMax)    
            end                
            GUI:EditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)    
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_MISS then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "MissEdit")
        if _GUIHandle ~= 0 then
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MISS) then 
                Property = LuaRet
            end        
            GUI:EditSetTextM(_GUIHandle,"".. Property)
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_HIT then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "HitEdit")
        if _GUIHandle ~= 0 then
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_HIT) then 
                Property = LuaRet
            end        
            GUI:EditSetTextM(_GUIHandle,"".. Property)    
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_BURST then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "ExtremAtcEdit")
        if _GUIHandle ~= 0 then
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_BURST) then 
                Property = LuaRet
            end      
            GUI:EditSetTextM(_GUIHandle,"".. Property)    
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_LUCK_CURSE then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "RoleLucky")
        if _GUIHandle ~= 0 then    
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_LUCK_CURSE) then 
                Property = LuaRet
            end      
            GUI:EditSetTextM(_GUIHandle,"".. Property)    
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_MOVE_SPEED_PCT then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "MOVE_SPEED_Edit")
        if _GUIHandle ~= 0 then
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MOVE_SPEED_PCT) then 
                Property = LuaRet
            end          
            GUI:EditSetTextM(_GUIHandle,"+".. Property.."%")
        end
    end 
end

function RoleEquiment.wndClose()
    RoleEquiment.Open = false
end

function RoleEquiment.ShowWeapon()
	local _Gender = 1
	if CL:GetPlayerSelfPropBase(ROLE_PROP_SEX) then 
		_Gender = LuaRet
	end
	local site =  LuaParam[4]
	if UI:Lua_GetPlayerSelfEquipData() then
		guid_tb  = LuaRet
		local res_number = 0
		local Is_weap = 0
		for i = 1, #guid_tb do
			local item_handle = CL:GetItemTemplateHandleByGUID(guid_tb[i]) 
			if CL:GetItemTemplatePropByHandle(item_handle, ITEM_PROP_SUBTYPE) then
				if LuaRet == 4 then						
					RDItemCtrlSetGUIDataPropByGUID(RoleEquiment.WndHandle,"Equimentclothes", guid_tb[i])
					if CL:GetItemTemplatePropByHandle(item_handle, ITEM_PROP_BIGICON) then
						res_number = LuaRet
						res_number = math.floor(tonumber(res_number)/100000000)
						if tonumber(res_number) == 19 then
							local handle = GetWindow(RoleEquiment.WndHandle, "image0")
							if handle ~= 0 then
								GUI:WndSetPosM(handle, 54, 46) 
							end
						else
							local handle = GetWindow(RoleEquiment.WndHandle, "image0")
							if handle ~= 0 then
								GUI:WndSetPosM(handle, 55, 40) 
							end
						end
					end	
				elseif LuaRet == 1 then
					RDItemCtrlSetGUIDataPropByGUID(RoleEquiment.WndHandle,"Equimentweapons" , guid_tb[i])	
					Is_weap = 1		
				end	
			end
		end
		if Is_weap == 1 then
			local handle = GetWindow(RoleEquiment.WndHandle, "Equimentweapons")
			if tonumber(res_number) == 19  then		
				if handle ~= 0 then
					if _Gender == 1 then
						GUI:ItemCtrlSetBigIconOffset(handle, 186,198)
					else
						GUI:ItemCtrlSetBigIconOffset(handle, 186+1, 198+1)
					end
				end	
			else
				if handle ~= 0 then
					if _Gender == 1 then
						GUI:ItemCtrlSetBigIconOffset(handle, 186-10, 198-4)
					else
						GUI:ItemCtrlSetBigIconOffset(handle, 186-1, 198-2)
					end
				end					
			end
		end	
	end
end

function RoleEquiment.HideWeapon()
	if UI:Lua_GetPlayerSelfEquipData() then
		guid_tb  = LuaRet
		local clothesnum = 0
		local weaponsnum = 0
		for i = 1, #guid_tb do
			local item_handle = CL:GetItemTemplateHandleByGUID(guid_tb[i]) 
			if CL:GetItemTemplatePropByHandle(item_handle, ITEM_PROP_SUBTYPE) then
				if LuaRet == 4 then
					clothesnum = 1
				elseif LuaRet == 1 then
					weaponsnum = 1
				end			
			end
		end
		if clothesnum == 0 then
			local handle = GUI:WndFindWindow(RoleEquiment.WndHandle, "Equimentclothes")
			if handle ~= 0 then
				GUI:ItemCtrlClearItemData(handle)
				local _Gender = 1
				if CL:GetPlayerSelfPropBase(ROLE_PROP_SEX) then 
					_Gender = LuaRet
				end
				if _Gender == 1 then
					GUI:ItemCtrlSetDefaultImage(handle, 1890900006)
				else
					GUI:ItemCtrlSetDefaultImage(handle, 1890900007)
				end
				local handle = GetWindow(RoleEquiment.WndHandle, "image0")
				if handle ~= 0 then
					GUI:WndSetPosM(handle, 55, 40) 
				end
				local handle = GetWindow(RoleEquiment.WndHandle, "Equimentweapons")
				if handle ~= 0 then
					if _Gender == 1 then
						GUI:ItemCtrlSetBigIconOffset(handle, 186-10, 198-4)
					else
						GUI:ItemCtrlSetBigIconOffset(handle, 186-1, 198-2)
					end
				end					
			end	
		end
		if weaponsnum == 0 then
			local handle = GUI:WndFindWindow(RoleEquiment.WndHandle, "Equimentweapons")
			if handle ~= 0 then
				GUI:ItemCtrlClearItemData(handle)
			end	
		end
	end
end

function RoleEquiment.burstharm_updata()
	local _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "burstharm")
	if _GUIHandle ~= 0 then
		local itemlist = {}
		if UI:Lua_GetPlayerSelfEquipData() then
			if type(LuaRet) == "number" then 
				GUI:EditSetTextM(_GUIHandle,"0") 
				return 
			end
			itemlist = LuaRet
		end
		if #itemlist ~= 0 then 
			for i = 1 , #itemlist do 
				if CL:GetItemEntityPropByGUID(itemlist[i],4) then 
					local subtype = LuaRet
					if  subtype == 13 then
						local Entity = CL:GetItemEntityHandleByGUID(itemlist[i])
						local burstharm = CL:GetItemEntityCustomVarInt(Entity, "burstharm")
						GUI:EditSetTextM(_GUIHandle,"".. burstharm)
						break
					else
						GUI:EditSetTextM(_GUIHandle,"0")
					end
				end
			end
		end      
	end
end

function RoleEquiment.onequipment()
	if not RoleEquiment.Open then
		return
	end
	RoleEquiment.ShowWeapon()
	local site =  LuaParam[4]
	if site == SITE_AMULET then 
		local _GUIHandle = GetWindow(nil,"RoleGUI,RoleEquiment")
		if _GUIHandle ~= 0 then 
			RoleEquiment.burstharm_updata()
		end
	end
end

function RoleEquiment.offequipment()
	if not RoleEquiment.Open then
		return
	end
	RoleEquiment.HideWeapon()
	local site =  LuaParam[4]
	if site == SITE_AMULET then 
		local _GUIHandle = GetWindow(nil,"RoleGUI,RoleEquiment")
		if _GUIHandle ~= 0 then 
			RoleEquiment.burstharm_updata()
		end
	end
end

RoleEquiment.main()