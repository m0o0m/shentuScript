MailSendWnd = {}
function MailSendWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _Parent = GUI:WndCreateWnd(_Parent,"MailSendWnd",0,220,50)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
     
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1831100001,31,95)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(460,425)
        GUI:ImageSetFitSize(_GUIHandle, true) 
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_HEAD",1831100000,31,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(460,95)
        GUI:ImageSetFitSize(_GUIHandle, true) 
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_Image0",1833100000,230,20)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_Image1",1832800009,60,120)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(400,160)
        GUI:ImageSetFitSize(_GUIHandle, true) 
    end
     
    _GUIHandle = GUI:EditCreate(_Parent,"EditText",70,130,380,140)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1832500014,415,-15)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_Image2",1830000004,160,80)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"GUI_Edit0",70,80,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetCanEdit(_GUIHandle, false) 
        GUI:WndSetHint(_GUIHandle,"收件人：")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"InputName",165,82,100,30)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item0",0,65,340,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item1",0,145,340,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item2",0,225,340,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item3",0,305,340,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item4",0,385,340,0,0)
    if _GUIHandle ~= 0 then
    end
     
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_Image3",1831100018,70,295)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_Image4",1830000004,110,290)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"InputMoney",115,292,100,30)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_Image5",1831100020,270,295)
    if _GUIHandle ~= 0 then
    end
     
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_Image6",1830000004,310,290)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"InputVcoin",315,292,100,30)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"GUI_Edit1",70,425,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetCanEdit(_GUIHandle, false) 
        GUI:WndSetHint(_GUIHandle,"点击输入：")
    end
     
    _GUIHandle = GUI:ImageCreate(_Parent,"EditBG",1830000004,180,420)
    if _GUIHandle ~= 0 then
       GUI:WndSetSizeM(270,30)
        GUI:ImageSetFitSize(_GUIHandle, true) 
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"MailSend",1831100015,200,460)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"发送邮件")
    end
    
    MailSendWnd.UIInit(_Parent)
end

--UI Logic Code Start
function MailSendWnd.UIInit(_Handle)
end
MailSendWnd.main()




