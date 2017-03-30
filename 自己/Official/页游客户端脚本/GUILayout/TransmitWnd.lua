TransmitWnd ={}
local ui = "<form> <dialog OnInit='TransmitWnd.UIInit' id='TransmitWnd' image='0' center = 'true' x='-8' y='250' w='16' h='16' revmsg='true'>"
	.."<image id='ContentBack' image='1800000030,1800000031,1800000032,1800000033,1800000034,1800000035,1800000036,1800000037,1800000038' x='0' y='0' w='218' h='120' check_point='0' revmsg='true'/>"
	

	.."	<image id='FbWndHeadBack' image='1803800003' x='1' y='-27' w='216' h='27' check_point='0' revmsg='true'/>"
	.."	<image id='FbWndHead' image='1801500066' x='88' y='-24' w='34' h='20' revmsg='true'/>"
	.."	<button id='trans' image='1800000444' x='54' y='72' w='26' h='27' param=1 enable='true' text='立即传送(5S)' text_color='#C2B6A0' OnLButtonUp='TransmitWnd.Transmit' revmsg='true'/>"
	.."	<richedit id='text1' x='28' y='27' w='166' h='40' revmsg='true' text_color='#F1E761' text='完成条件：' font='system'/>"
	
	.." </dialog>"
	.."</form>"

function TransmitWnd.main()
	GenFormByString(ui)
end


--UI Logic Code Start
function TransmitWnd.UIInit(h)
	GUIWndMoveToParentTop(h)
	TransmitWnd.sec = 4
	TransmitWnd._wnd = h
	local mapName = ""
	local handle = 0
	mapName = tostring(deserialize(as3.tolua(FormParam[1])))
	handle = GetWindow(TransmitWnd._wnd, "text1")
	if handle ~= 0 then
		GUIRichEditClear(handle)
		GUIRichEditAppendString(handle, "#COLORCOLOR_BGREENG#路途遥远，传送戒指的空间之力正在将您传送至#COLOREND#".."#COLORCOLOR_DARKGOLD#"..mapName.."#COLOREND#")
	end
	
	if GUIWndAddTimerBrief(h, 1000, "TransmitWnd.DcUpdata") then    --设置定时器
		TransmitWnd.time_id = as3.tolua(LuaRet)
	end
	GUIWndRegistScript(h, RDWndBaseCL_wnd_close, "TransmitWnd.cleartime")
	--CL:SetAutoContinueQuestTime(6)
	--msg("DB???")
end

function TransmitWnd.cleartime()  --关闭定时器
	UI:Lua_DelDelayTask(tonumber(TransmitWnd.time_id))
end


function TransmitWnd.DcUpdata()
	local handle = GetWindow(TransmitWnd._wnd, "trans")
	if handle ~= 0 then
		GUIWndSetTextM(handle, "立即传送("..TransmitWnd.sec.."S)")
	end
	TransmitWnd.sec = TransmitWnd.sec - 1
	if TransmitWnd.sec == 0 then
		TransmitWnd.Transmit()
	end
end

function TransmitWnd.Transmit()
	UI:Lua_SubmitForm("MainTaskAuto_cs","AutoTransmit","")
	--TransmitWnd.CloseWnd()
end


function TransmitWnd.CloseWnd()
	if TransmitWnd._wnd ~= 0 then
		GUIWndClose(TransmitWnd._wnd)
	end
end


TransmitWnd.main()