BossRefresh = {}
local ui = "<form> <dialog OnInit='BossRefresh.UIInit' id='BossRefresh' image='0' x='189' y='306' w='16' h='16' revmsg='true'>"	
	.."<wnd id='FbWndContentRE' image='0' x='-26' y='1' w='244' h='190' revmsg='true'>"
	.."<image id='ContentBack' image='1800000030,1800000031,1800000032,1800000033,1800000034,1800000035,1800000036,1800000037,1800000038' x='27.4' y='-4' w='216' h='257' check_point='0' revmsg='true'/>"
	.."	<richedit id='boss1' x='38' y='5' w='208' h='20' revmsg='false' OnLButtonUp='BossRefresh.AutoRun' font='system'/>"
	.."	<richedit id='boss2' x='38' y='30' w='208' h='20' revmsg='false' OnLButtonUp='BossRefresh.AutoRun' font='system'/>"
	.."	<richedit id='boss3' x='38' y='55' w='208' h='20' revmsg='false' OnLButtonUp='BossRefresh.AutoRun' font='system'/>"
	.."	<richedit id='boss4' x='38' y='80' w='208' h='20' revmsg='false' OnLButtonUp='BossRefresh.AutoRun' font='system'/>"
	.."	<richedit id='boss5' x='38' y='105' w='208' h='20' revmsg='false' OnLButtonUp='BossRefresh.AutoRun' font='system'/>"
	.."	<richedit id='boss6' x='38' y='130' w='208' h='20' revmsg='false' OnLButtonUp='BossRefresh.AutoRun' font='system'/>"
	.."	<richedit id='boss7' x='38' y='155' w='208' h='20' revmsg='false' OnLButtonUp='BossRefresh.AutoRun' font='system'/>"
	.."	<richedit id='boss8' x='38' y='180' w='208' h='20' revmsg='false' OnLButtonUp='BossRefresh.AutoRun' font='system'/>"
	.."	<richedit id='boss9' x='38' y='205' w='208' h='20' revmsg='false' OnLButtonUp='BossRefresh.AutoRun' font='system'/>"
	.."	<richedit id='boss10' x='38' y='230' w='208' h='20' revmsg='false' OnLButtonUp='BossRefresh.AutoRun' font='system'/>"
	.."	<edit id='clock1' x='140' y='5' w='208' h='14' text='' text_color='#DEC77B' revmsg='false' enable='false' font='system'/>"
	.."	<edit id='clock2' x='140' y='30' w='208' h='14' text='' text_color='#DEC77B' revmsg='false' enable='false' font='system'/>"
	.."	<edit id='clock3' x='140' y='55' w='208' h='15' text='' text_color='#DEC77B' revmsg='false' enable='false' font='system'/>"
	.."	<edit id='clock4' x='140' y='80' w='208' h='14' text='' text_color='#DEC77B' revmsg='false' enable='false' font='system'/>"
	.."	<edit id='clock5' x='140' y='105' w='208' h='14' text='' text_color='#DEC77B' revmsg='false' enable='false' font='system'/>"
	.."	<edit id='clock6' x='140' y='130' w='208' h='14' text='' text_color='#DEC77B' revmsg='false' enable='false' font='system'/>"
	.."	<edit id='clock7' x='140' y='155' w='208' h='14' text='' text_color='#DEC77B' revmsg='false' enable='false' font='system'/>"
	.."	<edit id='clock8' x='140' y='180' w='208' h='15' text='' text_color='#DEC77B' revmsg='false' enable='false' font='system'/>"
	.."	<edit id='clock9' x='140' y='205' w='208' h='14' text='' text_color='#DEC77B' revmsg='false' enable='false' font='system'/>"
	.."	<edit id='clock10' x='140' y='230' w='208' h='14' text='' text_color='#DEC77B' revmsg='false' enable='false' font='system'/>"
	.. "</wnd>"
	.."	<image id='TitleBackg' image='1805000002' x='1' y='-27' w='216' h='27' check_point='0' revmsg='true'/>"
	.."	<image id='hideBtn' image='1800000149' x='1' y='-27' w='26' h='26' OnLButtonUp='BossRefresh.OnHideWndBtn' revmsg='true' param='1' text_color='#C2B6A0'/>"
	.."	<image id='showBtn' image='1800000148' x='1' y='-27' w='26' h='26' visible='false' OnLButtonUp='BossRefresh.OnShowWndBtn' revmsg='true' param='1' text_color='#C2B6A0'/>"
	.."	<edit id='text1' x='31' y='-26' w='91' h='24' revmsg='true' text_color='#D6A86D' text='BOSSË¢ÐÂÇé¿ö' font='system'/>"
	.."	<richedit id='bossPos' x='126' y='-21' w='79' h='16' text='#SELECT#²é¿´BOSSÎ»ÖÃ#SELECTEND#' OnLButtonUp='BossRefresh.OpenMap' text_color='#7BFF31' revmsg='true' font='system'/>"
	.." </dialog>"
	.."</form>"

function BossRefresh.main()
	GenFormByString(ui)
end

BossRefresh.infoTb = {}
--UI Logic Code Start
function BossRefresh.UIInit(h)
	
	BossRefresh._wnd = h
	local sY = CLGetScreenHeight()
	local sX = CLGetScreenWidth()
	local tw = GUIWndFindWindow(0, "BossRefresh")
    if tw ~= 0 then
        GUIWndSetPosM(tw, sX-500, 195)
    end
	local handle = 0
	handle = GetWindow(h, "hideBtn")
	if handle ~= 0 then
		GUIWndMoveToParentTop(handle)
	end

	BossRefresh.infoTb = deserialize(as3.tolua(FormParam[1]))
	for i = 1, 10 do
		handle = GetWindow(BossRefresh._wnd, "boss"..i)
		if handle ~= 0 then	
			local str = "#COLORCOLOR_BGREENG##SELECT#"..BossRefresh.infoTb[i][1].."#SELECTEND##COLOREND#"
			GUIRichEditClear(handle)
			GUIRichEditAppendString(handle, str)
		end
	end
	if GUIWndAddTimerBrief(h, 1000, "BossRefresh.DcUpdatas") then    --ÉèÖÃ¶¨Ê±Æ÷
		BossRefresh.time_id = as3.tolua(LuaRet)
	end
	GUIWndRegistScript(h, RDWndBaseCL_wnd_close, "BossRefresh.cleartime")
	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "SCREEN SIZE CHANGED BossRefresh", "BossRefresh.width") 
end

function BossRefresh.width()
	local sX = CLGetScreenWidth()
	local tw = GUIWndFindWindow(0, "BossRefresh")
    if tw ~= 0 then
        GUIWndSetPosM(tw, sX-500, 195)
    end
end

function BossRefresh.cleartime()  --¹Ø±Õ¶¨Ê±Æ÷
	UI:Lua_DelDelayTask(tonumber(BossRefresh.time_id))
end

function BossRefresh.OnHideWndBtn()
	local handle = GetWindow(BossRefresh._wnd, "FbWndContentRE")
	if handle ~= 0 then
		GUIWndSetVisible(handle, false)
	end
	handle = GetWindow(BossRefresh._wnd, "showBtn")
	if handle ~= 0 then
		GUIWndSetVisible(handle, true)
	end
	handle = GetWindow(BossRefresh._wnd, "hideBtn")
	if handle ~= 0 then
		GUIWndSetVisible(handle, false)
	end
end


function BossRefresh.OnShowWndBtn(h)
	local handle = GetWindow(BossRefresh._wnd, "FbWndContentRE")
	if handle ~= 0 then
		GUIWndSetVisible(handle, true)
	end
	handle = GetWindow(BossRefresh._wnd, "showBtn")
	if handle ~= 0 then
		GUIWndSetVisible(handle, false)
	end
	handle = GetWindow(BossRefresh._wnd, "hideBtn")
	if handle ~= 0 then
		GUIWndSetVisible(handle, true)
	end
end

function BossRefresh.DcUpdata(tab)
	BossRefresh.infoTb = tab
	for i = 1, 10 do
		handle = GetWindow(BossRefresh._wnd, "boss"..i)
		if handle ~= 0 then	
			local str = "#COLORCOLOR_BGREENG##SELECT#"..BossRefresh.infoTb[i][1].."#SELECTEND##COLOREND#"
			GUIRichEditClear(handle)
			GUIRichEditAppendString(handle, str)
		end
	end
end


function BossRefresh.DcUpdatas()
	local day, hour, minute, second = 0, 0, 0, 0
	local handle, _handle = 0, 0

	for i = 1, 10 do
		if BossRefresh.infoTb[i][2] < 0 then 
			BossRefresh.infoTb[i][2] = 0
		else
			_handle = GetWindow(BossRefresh._wnd, "clock"..i)
			day, hour, minute, second = GetDetailTime(BossRefresh.infoTb[i][2])
			BossRefresh.infoTb[i][2] = BossRefresh.infoTb[i][2]-1
			if _handle ~= 0 then	
				if (minute == 0 and second == 0) then
					GUIEditSetTextM(_handle, "    ¿É»÷É±")
				else
					if minute < 10 then
						minute = "0"..minute
					end
					if second < 10 then
						second = "0"..second
					end
					GUIEditSetTextM(_handle, "00:"..minute..":"..second.."ºóË¢ÐÂ")
				end
			end	
		end
	end
end

function BossRefresh.AutoRun(h)
	if h ~= 0 then
		local _t = {
		["ËøÄ§¹¬°µÒ¹Å®Íõ"]={228,47}, ["ËøÄ§¹¬Ä§¾§òþ"]={180,41}, ["ËøÄ§¹¬ÇôÊÀÌìÄ§"]={236,93}, ["ËøÄ§¹¬ÑÖÂÞ½ÌÖ÷"]={29,152},
		["ËøÄ§¹¬ÑªÉ«Ç§ÈËÕ¶"]={228,158}, ["ËøÄ§¹¬Å£Ä§Íõ"]={132,147}, ["ËøÄ§¹¬Å£Í·Çõ³¤"]={123,46}, ["ËøÄ§¹¬Ð°»Ê"]={134,262},
		["ËøÄ§¹¬Ìì»Ä½ÌÖ÷"]={26,209}, ["ËøÄ§¹¬÷¼÷ÃÍõ"]={81,264}
		}

		local str = GUIRichEditGetAllString(h)

		if str ~= "" then
			UI:Lua_SubmitForm("NPC_IsNotInScene", "AutoFindBoss", "")
			CLAutoRunByPos("", _t[str][1], _t[str][2])
		end
	end
end

function BossRefresh.OpenMap()
	CLOnOpenWorld()
end

function BossRefresh.CloseWnd()
	if BossRefresh._wnd ~= 0 then
		GUIWndClose(BossRefresh._wnd)
	end
end


BossRefresh.main()