NpcTalk = {}
function NpcTalk.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()
 
    _GUIHandle = GUI:ImageCreate(_Parent,"BkImg",1850100032, (_DeviceSizeX - 784) / 2, 150)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,784, 321)
        GUI:WndSetCanRevMsg(_GUIHandle, true)
    end

    _Parent = _GUIHandle

    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000385,690, 50)
    if _GUIHandle ~= 0 then

    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NpcNameEdit", 306, 17, 160, 25)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4281116897)
        --GUI:EditSetTextM(_GUIHandle, "asjdkfjasldkj")
        GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
    end

    _GUIHandle = GUI:RichEditCreate(_Parent, "NpcTalkContent", 140, 60, 500, 250)
    if _GUIHandle then
        --GUI:RichEditAppendString(_GUIHandle, "金卡斯大林飞机阿卢萨卡大家罚款连锁店警方绿卡三角枫快了就阿松开绿灯放就阿嫂开绿灯金卡斯大林飞机阿卢萨卡大家罚款连锁店警方绿卡三角枫快了就阿松开绿灯放就阿嫂开绿灯金卡斯大林飞机阿卢萨卡大家罚款连锁店警方绿卡三角枫快了就阿松开绿灯放就阿嫂开绿灯金卡斯大林飞机阿卢萨卡大家罚款连锁店警方绿卡三角枫快了就阿松开绿灯放就阿嫂开绿灯金卡斯大林飞机阿卢萨卡大家罚款连锁店警方绿卡三角枫快了就阿松开绿灯放就阿嫂开绿灯金卡斯大林飞机阿卢萨卡大家罚款连锁店警方绿卡三角枫快了就阿松开绿灯放就阿嫂开绿灯金卡斯大林飞机阿卢萨卡大家罚款连锁店警方绿卡三角枫快了就阿松开绿灯放就阿嫂开绿灯金卡斯大林飞机阿卢萨卡大家罚款连锁店警方绿卡三角枫快了就阿松开绿灯放就阿嫂开绿灯金卡斯大林飞机阿卢萨卡大家罚款连锁店警方绿卡三角枫快了就阿松开绿灯放就阿嫂开绿灯金卡斯大林飞机阿卢萨卡大家罚款连锁店警方绿卡三角枫快了就阿松开绿灯放就阿嫂开绿灯金卡斯大林飞机阿卢萨卡大家罚款连锁店警方绿卡三角枫快了就阿松开绿灯放就阿嫂开绿灯金卡斯大林飞机阿卢萨卡大家罚款连锁店警方绿卡三角枫快了就阿松开绿灯放就阿嫂开绿灯金卡斯大林飞机阿卢萨卡大家罚款连锁店警方绿卡三角枫快了就阿松开绿灯放就阿嫂开绿灯金卡斯大林飞机阿卢萨卡大家罚款连锁店警方绿卡三角枫快了就阿松开绿灯放就阿嫂开绿灯金卡斯大林飞机阿卢萨卡大家罚款连锁店警方绿卡三角枫快了就阿松开绿灯放就阿嫂开绿灯金卡斯大林飞机阿卢萨卡大家罚款连锁店警方绿卡三角枫快了就阿松开绿灯放就阿嫂开绿灯")
        GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
        GUI:EditSetCanEdit(_GUIHandle, false)
        --GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    NpcTalk.UIInit(_Parent)
end

--UI Logic Code Start
function NpcTalk.UIInit(_Handle)
    NpcTalk.WndHandle = _Handle

end


NpcTalk.main()