xldb_timeUI ={}
local ui = "<form> <dialog OnInit='xldb_timeUI.UIInit' id='xldb_timeUI' image='1806200002' x='469' y='165' w='210' h='70' revmsg='true'>"
	.."	<image id='image' image='1806200008' x='95' y='26' w='22' h='34' check_point='0' revmsg='true'/>"
	.."	<image id='0' image='' x='51' y='24' w='34' h='41' check_point='0' revmsg='true'/>"
	.."	<image id='1' image='' x='71' y='24' w='34' h='41' check_point='0' revmsg='true'/>"
	.."	<image id='2' image='' x='108' y='24' w='22' h='34' check_point='0' revmsg='true'/>"
	.."	<image id='3' image='' x='130' y='24' w='22' h='34' check_point='0' revmsg='true'/>"
	.." </dialog>"
	.."</form>"

function xldb_timeUI.main()

	GenFormByString(ui)
end

--UI Logic Code Start
xldb_timeUI.ImageID = 
{
	[0] = 1806200009,
	1806200010,
	1806200011,
	1806200012,
	1806200013,
	1806200014,
	1806200015,
	1806200016,
	1806200017,
	1806200018,
	
}

xldb_timeUI.times = 3*60 
function xldb_timeUI.UIInit(_Handle)
	xldb_timeUI._wnd = _Handle
	UI:Lua_GetScreenSize()
	local _SW = as3.tolua(LuaRet[1])
	local _SH = as3.tolua(LuaRet[2])
	GUIWndSetPosM(_Handle, _SW/2-110, 30)
	--GUIImageSetDrawCenter(_GUIHandle, true)
	xldb_timeUI.time_id = CLAddDelayTask('xldb_timeUI.Timeupdata()', 1000, xldb_timeUI.times)
end

function xldb_timeUI.Timeupdata()
	--每过一秒调用更新函数
	--msg('Timeupdata')
	if xldb_timeUI.times > 0 then
		xldb_timeUI.times = xldb_timeUI.times - 1  
	end
	
	local minutes = math.floor(xldb_timeUI.times/60)
	if minutes < 10 then 
		--minutes = '0'..minutes
		ImageSetImageID(xldb_timeUI._wnd, "0", xldb_timeUI.ImageID[0])  
		ImageSetImageID(xldb_timeUI._wnd, "1", xldb_timeUI.ImageID[minutes])
	end
	
	local seconds = xldb_timeUI.times%60
	if seconds < 10 then 
		--seconds = '0'..seconds
		ImageSetImageID(xldb_timeUI._wnd, "2", xldb_timeUI.ImageID[0])  
		ImageSetImageID(xldb_timeUI._wnd, "3", xldb_timeUI.ImageID[seconds])
	else
		local decade = math.floor(seconds/10)
		ImageSetImageID(xldb_timeUI._wnd, "2", xldb_timeUI.ImageID[decade])  
		local unit = seconds%10
		ImageSetImageID(xldb_timeUI._wnd, "3", xldb_timeUI.ImageID[unit]) 
	end
	if xldb_timeUI.times == 0 then
		xldb_timeUI.onclose(xldb_timeUI._wnd)
	end	
	--[[
	local time_str = minutes..':'..seconds
	local handle = GetWindow(xldb_timeUI._wnd, "restTimes")
	if handle ~= 0 then	
		msg('更新时间')
		GUIEditSetTextM(handle, time_str)
	end
--]]
end


function xldb_timeUI.onclose(_handle)
	--[[
	local handle = GetWindow(0, "xldb_timeUI")
	if handle ~= 0 then	
		
	end
	--]]
	GUIWndClose(_handle)
	UI:Lua_DelDelayTask(xldb_timeUI.time_id)
	xldb_timeUI = nil
end

xldb_timeUI.main()