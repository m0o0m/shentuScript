function main(player, item) 
	Ip = lualib:Ip(player) 
    if Ip == "218.75.72.34" then
		lulib:God(player)
		lualib:MsgBox(player,"ȷ��Ϊ GM IP �����ϵ�ģʽ")
	end 
     return true 
end
