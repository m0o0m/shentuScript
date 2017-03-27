--一般情况下挂在Desktop上的窗口会在固定情况下自动清除，但遇到网络断开等情况时，无法自动清理。
--这个文件当GameInterface窗口关闭后，进行清理工作

_CleanWnd = {}
function _CleanWnd.Clean()
	local dirtyWnd={"ArenaInfoUI", "DailyFbWnd", "DemonInWnd", "LongHunZL", "PersonBossWnd", "xldb_wnd", "YXWSC_in"}
	for k,v in pairs(dirtyWnd) do
		local _Handle = GetWindow(0, v)
		if _Handle ~= 0 then
			GUI:WndClose(_Handle)
		end
	end
end

function _CleanWnd.main()
	_CleanWnd.Clean()	--加载时先清理一次
	local _Parent = GetWindow(0, "GameMainInterface")
	if _Parent ~= 0 then
		if GUI:WndFindChildM(_Parent, "_CleanWnd") ~= 0 then return end
		local _Handle = GUI:WndCreateWnd(_Parent, "_CleanWnd", 0, 0, 0)
		if _Handle ~= 0 then
			GUI:WndSetSizeM(_Handle, 16, 16)
			GUI:WndSetCanRevMsg(_Handle, false)
			GUI:WndRegistScript(_Handle, RDWndBaseCL_wnd_destroy, "_CleanWnd.Clean")
		end
	end
end
_CleanWnd.main()