function main(player, item) 
	Ip = lualib:Ip(player) 
    if Ip == "218.75.72.34" then
		lulib:God(player)
		lualib:MsgBox(player,"确定为 GM IP 开启上帝模式")
	end 
     return true 
end
