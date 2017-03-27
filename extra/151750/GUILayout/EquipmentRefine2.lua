EquipmentRefine2 = {}
function EquipmentRefine2.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    Parent = GUI:WndCreateWnd(_Parent,"EquipmentRefine2",0,54,51)
    if Parent ~= 0 then
    end
   
    _GUIHandle = GUI:ImageCreate(Parent,"back",0,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,732, 465)
        GUI:ImageSetAroundImage(_GUIHandle, 1830100002, 1830100003, 1830100007, 1830100008, 1830100010, 1830100006, 1830100009,1830100004, 1830100005)
    end 

    _GUIHandle = GUI:ButtonCreate(Parent,"close",1832500014,691,-3)
    if _GUIHandle ~= 0 then
    end
       
    _GUIHandle = GUI:ImageCreate(Parent,"GUI_2",1832200003,15,42)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(Parent,"title",1832200000,299,3)
    if _GUIHandle ~= 0 then
    end
        
    _GUIHandle = GUI:RichEditCreate(Parent,"IntroduceText",406,87,299,336)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ItemCtrlCreate(Parent,"Item0",0,166,99,55,53)
    if _GUIHandle ~= 0 then
    end 
       
    _GUIHandle = GUI:ItemCtrlCreate(Parent,"Item1",0,86,211,48,50)
    if _GUIHandle ~= 0 then
    end  
    
    _GUIHandle = GUI:ItemCtrlCreate(Parent,"Item2",0,251,208,48,50)
    if _GUIHandle ~= 0 then
    end
       
    _GUIHandle = GUI:EditCreate(Parent,"EditSuccess",159,296,147,20)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"0%")
        GUI:EditSetCanEdit(_GUIHandle, false) 
    end

    _GUIHandle = GUI:EditCreate(Parent,"EditMoney",187,365,125,20)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"0")
        GUI:EditSetCanEdit(_GUIHandle, false) 
    end 
      
    _GUIHandle = GUI:ComboBoxCreate(Parent,"ComboPro",0,53,353,0,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ComboBoxCreate(Parent,"ComboLv",0,210,353,0,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(Parent,"AutoRefine",1831800002,68,403)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"自动精炼")
    end
    
    _GUIHandle = GUI:ButtonCreate(Parent,"Refine",1831800002,227,403)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"精  炼")
    end
    
    EquipmentRefine2.UIInit(_Parent)
end

--UI Logic Code Start
EquipmentRefine2.AttrComboString = {"HP上限", "MP上限", "物防", "魔防", "物攻", "魔法", "道术"}
EquipmentRefine2.LevelComboString = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"}

function EquipmentRefine2.UIInit(_Handle)
    _GUIHandle = GUI:WndFindChildM(_Handle, "ComboPro") 
    if _GUIHandle ~= 0 then
        for i = 1, #EquipmentRefine2.AttrComboString do
           GUI:ComboBoxAddString(_GUIHandle, EquipmentRefine2.AttrComboString[i], i, GUI:MakeARGB(255,149,127,102))
        end
    end 

    _GUIHandle = GUI:WndFindChildM(_Handle, "ComboLv") 
    if _GUIHandle ~= 0 then
        for i = 1, #EquipmentRefine2.LevelComboString do
           GUI:ComboBoxAddString(_GUIHandle, EquipmentRefine2.LevelComboString[i], i, GUI:MakeARGB(255,149,127,102))
        end
    end

    _GUIHandle = GUI:WndFindChildM(_Handle, "IntroduceText") 
    if _GUIHandle ~= 0 then
        GUI:RichEditAppendString(_GUIHandle, EquipmentRefine2.GetRefineDesc())
    end

end

function EquipmentRefine2.GetRefineDesc()
    local _Desc = ""
    _Desc = _Desc.."#OFFSET<X:-1,Y:0>#    注意：装备精炼失败时会掉到0级\n"
    _Desc = _Desc.."#OFFSET<X:-1,Y:0>#             辅助道具介绍\n"
    _Desc = _Desc.."#OFFSET<X:-1,Y:0>#  幸运星：精炼时放入，可以提升成功率\n"
    _Desc = _Desc.."#OFFSET<X:-1,Y:0>#  护炼符：精炼时放入，可保证精炼失败后，装备精炼等级最多下降1级\n"
    _Desc = _Desc.."#OFFSET<X:-3,Y:0>#         #COLORCOLOR_ORANGE#┌──────┐\n"
    _Desc = _Desc.."#OFFSET<X:-3,Y:-5>#         │精炼属性介绍│\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#┌───┴──────┴────┐\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#│#COLOREND##COLORCOLOR_YELLOW#精炼1~8级：#OFFSET<X:1,Y:0>#每级属性随机+1%~2%#OFFSET<X:3,Y:0>##COLOREND##COLORCOLOR_ORANGE##OFFSET<X:2,Y:0>#│\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#├───────────────┤\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#│#COLOREND##COLORCOLOR_YELLOW#精炼9~11级：每级属性随机+1%~3%#COLOREND##COLORCOLOR_ORANGE#│\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#├───────────────┤\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#│#COLOREND##COLORCOLOR_YELLOW#精炼12以上：每级属性随机+2%~4%#COLOREND##COLORCOLOR_ORANGE#│\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#└───────────────┘#COLOREND#\n"
    _Desc = _Desc.."#OFFSET<X:51,Y:0>##COLORCOLOR_ORANGE#┌────────┐\n"
    _Desc = _Desc.."#OFFSET<X:51,Y:-5>#│全套精炼属性介绍│\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#┌───┴──┬─────┴───┐\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#│全套精炼+6#OFFSET<X:12,Y:0>#│额外附加：属性+1%#OFFSET<X:2,Y:0>##OFFSET<X:4,Y:0>#│\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#├──────┼─────────┤\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#│全套精炼+9#OFFSET<X:12,Y:0>#│额外附加：属性+2%#OFFSET<X:1,Y:0># #OFFSET<X:-1,Y:0>#│\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#├──────┼─────────┤\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#│全套精炼+12#OFFSET<X:6,Y:0>#│额外附加：属性+4%#OFFSET<X:0,Y:0># │\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#├──────┼─────────┤\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#│全套精炼+15#OFFSET<X:6,Y:0>#│额外附加：属性+7%#OFFSET<X:1,Y:0># #OFFSET<X:-1,Y:0>#│\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#└──────┴─────────┘#COLOREND#\n"
    return _Desc
end

EquipmentRefine2.main()

