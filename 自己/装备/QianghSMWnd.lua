QianghSMWnd = {}
function QianghSMWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _Parent = GUI:WndCreateWnd(_Parent,"QianghSMWnd",0,220,120)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage",0,0,0)
    if _GUIHandle ~= 0 then
         GUI:WndSetSizeM(_GUIHandle,646, 312)
    end


    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage1",0,22,20)
    if _GUIHandle ~= 0 then
         GUI:WndSetSizeM(_GUIHandle,600, 268)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"TitleImg",1850700004,220,-52)
    if _GUIHandle ~= 0 then
    end

     _GUIHandle = GUI:EditCreate(_Parent,"TitleEdit",305,-30,100,20)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"规  则")
    end


    _GUIHandle = GUI:RichEditCreate(_Parent,"Edit0",54,46,560,220)
    if _GUIHandle ~= 0 then
	
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000385,601, 8)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "QianghSMWnd.Close")
    end


    QianghSMWnd.UIInit(_Parent)
end

--UI Logic Code Start
QianghSMWnd.WndHandle = 0
QianghSMWnd.itemlist = {}
function QianghSMWnd.UIInit(_Handle)
    QianghSMWnd.WndHandle = _Handle

    local BgImg = GUI:WndFindWindow(_Handle, "BgImage")
    if BgImg ~= 0  then
        GUI:ImageSetAroundImage(BgImg, 1850700035, 1850700037, 1850700041, 1850700043, 1850700039, 1850700036, 1850700042, 1850700038, 1850700040)
    end 

    local BgImg1 = GUI:WndFindWindow(_Handle, "BgImage1")
    if BgImg1 ~= 0 then
        GUI:ImageSetAroundImage(BgImg1, 1850900016, 1850900018, 1850900022, 1850900024, 1850900020, 1850900017, 1850900023, 1850900019, 1850900021)
    end 
	
	local _GUIHandle = GUI:WndFindWindow(_Handle, "Edit0")
	if _GUIHandle then
		local txt = "1.强化成功优先消耗绑定金币，强化失败不消耗金币    ".."\r\n\r\n"
        txt = txt.."2.强化失败不降级，但会消耗强化次数，使用元宝可以保证".."\r\n".."100%成功".."\r\n\r\n"
        txt = txt.."3.强化次数用完后，可以购买次数继续强化".."\r\n\r\n"
		GUI:RichEditAppendString(_GUIHandle,txt)
	end

end

function QianghSMWnd.Close(_Handle)
    if _Handle ~= 0 then 
        local _ParentHandle = GUI:WndGetParentM(_Handle)
        if _ParentHandle ~= 0 then
            GUI:WndClose(_ParentHandle)
        end
    end
end

QianghSMWnd.main()




