GameMallBulkBuy = {}
function GameMallBulkBuy.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    --[[--lua文件和lay不一样,不要这个父窗口
    _Parent = GUI:WndCreateWnd(_Parent,"GUI_1",0,220,100)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
    --]]
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1932400015,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,273, 320)
		GUI:ImageSetFitSize(_GUIHandle, true)
    end  

    --这里本还有个图 暂时没有 1932400013
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item",0,32,45,55,55)
    if _GUIHandle ~= 0 then
    end 
    
    _GUIHandle = GUI:EditCreate(_Parent,"CountTip",90,120,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"请输入要购买的数量")
        GUI:EditSetCanEdit(_GUIHandle,false)
    end
	
    _GUIHandle = GUI:EditCreate(_Parent,"ItemName",100,44,150,30)
    if _GUIHandle ~= 0 then
        GUI:EditSetCanEdit(_GUIHandle,false)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"ItemPrice",100,80,150,30)
    if _GUIHandle ~= 0 then
    end
	
    _GUIHandle = GUI:EditCreate(_Parent,"BulkCount",150,168,150,30)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"BulkPrice",125,205,150,30)
    if _GUIHandle ~= 0 then
         GUI:EditSetCanEdit(_GUIHandle,false)
    end
      

    --[[
    _GUIHandle = GUI:EditCreate(_Parent,"NumTip",70,175,150,30)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"购买数量")
        GUI:EditSetCanEdit(_GUIHandle,false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"PriceTip",70,215,150,30)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"总价")
        GUI:EditSetCanEdit(_GUIHandle,false)
    end
    --]]
    _GUIHandle = GUI:ButtonCreate(_Parent,"Purchase",1930001006,55,255)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"确定")
        GUI:WndSetSizeM(_GUIHandle,60, 23)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1930001006,170,255)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"取消")
        GUI:WndSetSizeM(_GUIHandle,60, 23)
    end
    
    GameMallBulkBuy.UIInit(_Parent)
end

--UI Logic Code Start
function GameMallBulkBuy.UIInit(_Handle)
	msg('GameMallBulkBuy')
	--CenterWnd(_Handle)
	GameMallBulkBuy.WndHandle = _Handle
	
end


function GameMallBulkBuy.CloseWnd()
	WndClose(GameMallBulkBuy.WndHandle)
end
GameMallBulkBuy.main()




