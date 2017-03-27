local jinglian = {}

function jinglian.main()
	local _Parent = 0
	_Parent = GUI:WndCreateWnd(0,"jinglian",1905200001,0,0)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent, 220, 310)
		GUI:WndSetIsESCClose(_Parent, true)
		GUI:CenterWnd(_Parent)

	end
	
	jinglian.UIInit(_Parent)
end

function jinglian.UIInit(_Handle)
	
end

jinglian.main()