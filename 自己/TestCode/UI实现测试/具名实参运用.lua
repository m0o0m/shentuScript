function ImageC(o)
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_GUIHandle = GUIImageCreate(_Parent, o.id, o.image, o.x, o.y)
end
LittleMap ={}
function LittleMap.main()
	ImageC{id='MapImage', x=11, y=23, w=130, h=125, image=1800500237, revmsg=true}

end

