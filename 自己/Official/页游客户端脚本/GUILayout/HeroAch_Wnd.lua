--英雄成就窗口 --正式开区建议用后台进行脚本加密，该脚本数据从客户端接口直接获取
HeroAch_Wnd = {}
function HeroAch_Wnd.main()
    local ui = "<form default_parent='AchieveWnd'> <dialog OnInit='HeroAch_Wnd.UIInit' id='HeroAch_Wnd' image='0' x='10' y='75' w='656' h='422' revmsg='true'>"
	.."	<button id='ach_button1' image='1800000102' x='5' y='5' w='114' h='43' OnLButtonUp='HeroAch_Wnd.List' param='1' revmsg='true' text_color='#E6D384'/>"
	.."	<button id='ach_button2' image='1800000102' x='5' y='50' w='114' h='43' OnLButtonUp='HeroAch_Wnd.List' param='2' revmsg='true' text_color='#E6D384'/>"
	.."	<button id='ach_button3' image='1800000102' x='5' y='95' w='114' h='43' OnLButtonUp='HeroAch_Wnd.List' param='3' revmsg='true' text_color='#E6D384'/>"
	.."	<button id='ach_button4' image='1800000102' x='5' y='140' w='114' h='43' OnLButtonUp='HeroAch_Wnd.List' param='4' revmsg='true' text_color='#E6D384'/>"
	.."	<button id='ach_button5' image='1800000102' x='5' y='185' w='114' h='43' OnLButtonUp='HeroAch_Wnd.List' param='5' revmsg='true' text_color='#E6D384'/>"
	.."	<button id='ach_button6' image='1800000102' x='5' y='230' w='114' h='43' OnLButtonUp='HeroAch_Wnd.List' param='6' revmsg='true' text_color='#E6D384'/>"
	.."	<button id='ach_button7' image='1800000102' x='5' y='275' w='114' h='43' OnLButtonUp='HeroAch_Wnd.List' param='7' revmsg='true' text_color='#E6D384'/>"
	.."	<button id='ach_button8' image='1800000102' x='5' y='320' w='114' h='43' OnLButtonUp='HeroAch_Wnd.List' param='8' revmsg='true' text_color='#E6D384'/>"
	.."	<image id='image1' image='0' x='99' y='5' w='19' h='41'  enable='false' visible='false'/>"
	.."	<image id='image2' image='0' x='99' y='50' w='19' h='41' enable='false' visible='false'/>"
	.."	<image id='image3' image='0' x='99' y='95' w='19' h='41' enable='false' visible='false'/>"
	.."	<image id='image4' image='0' x='99' y='140' w='19' h='41' enable='false' visible='false'/>"
	.."	<image id='image5' image='0' x='99' y='185' w='19' h='41' enable='false' visible='false'/>"
	.."	<image id='image6' image='0' x='99' y='230' w='19' h='41' enable='false' visible='false'/>"
	.."	<image id='image7' image='0' x='99' y='275' w='19' h='41' enable='false' visible='false'/>"
	.."	<image id='image8' image='0' x='99' y='320' w='19' h='41' enable='false' visible='false'/>"

	--.."	<button id='ach_button9' image='1800000102' x='5' y='365' w='114' h='43' OnLButtonUp='HeroAch_Wnd.List' revmsg='true' text_color='#E6D384'/>"
	.."	 <wnd id='win1' image='0' x='140' y='8' w='502' h='81' revmsg='true' visible='false'>"
	.."	<button id='back' image='1802200004' x='0' y='0' w='493' h='78' revmsg='true'/>"
	.."	<image id='tubiao' image='0' x='20' y='15' w='45' h='45' fitsize = 'true' revmsg='true'/>"
	.."	<image id='Is_yes' image='1800000294' x='300' y='5' w='94' h='65' revmsg='true'/>"
	.."	<button id='get_button' image='1800000129' x='380' y='20' w='80' h='31' OnLButtonUp='HeroAch_Wnd.get' visible = 'false' revmsg='true' text='领取' text_color='#E6D384'/>"
	.."	<edit id='AchName' x='80' y='10' w='200' h='19' canedit='false' revmsg='true' enable='false' text_color='#D1B262' text='' />"
	.."	<edit id='Ach' x='80' y='50' w='70' h='19' canedit='false' revmsg='true' enable='false' text_color='#D1B262' text='成就积分:' />"
	.."	<edit id='jifen' x='140' y='50' w='100' h='19' canedit='false' revmsg='true' enable='false' text='10000' />"
	.."	<image id='image' image='1800000051' x='210' y='53' w='16' h='14' revmsg='true' enable='false'/>"
	.."	<edit id='Achgold' x='230' y='50' w='100' h='19' canedit='false' revmsg='true' enable='false' text='1000000' />"
	.." </wnd>"
	.."	 <wnd id='win2' image='0' x='140' y='88' w='502' h='81' revmsg='true' visible='false'>"
	.."	<button id='back' image='1802200004' x='0' y='0' w='493' h='78' revmsg='true'/>"
	.."	<image id='tubiao' image='0' x='20' y='15' w='45' h='45' fitsize = 'true' revmsg='true'/>"
	.."	<image id='Is_yes' image='1800000294' x='300' y='5' w='94' h='65' revmsg='true'/>"
	.."	<button id='get_button' image='1800000129' x='380' y='20' w='80' h='31' OnLButtonUp='HeroAch_Wnd.get' visible = 'false' revmsg='true' text='领取' text_color='#E6D384'/>"
	.."	<edit id='AchName' x='80' y='10' w='200' h='19' canedit='false' revmsg='true' enable='false' text_color='#D1B262' text='' />"
	.."	<edit id='Ach' x='80' y='50' w='70' h='19' canedit='false' revmsg='true' enable='false' text_color='#D1B262' text='成就积分:' />"
	.."	<edit id='jifen' x='140' y='50' w='100' h='19' canedit='false' revmsg='true' enable='false' text='10000' />"
	.."	<image id='image' image='1800000051' x='210' y='53' w='16' h='14' revmsg='true' enable='false'/>"
	.."	<edit id='Achgold' x='230' y='50' w='100' h='19' canedit='false' revmsg='true' enable='false' text='1000000' />"
	.." </wnd>"
	.."	 <wnd id='win3' image='0' x='140' y='168' w='502' h='81' revmsg='true' visible='false'>"
	.."	<button id='back' image='1802200004' x='0' y='0' w='493' h='78' revmsg='true'/>"
	.."	<image id='tubiao' image='0' x='20' y='15' w='45' h='45' fitsize = 'true' revmsg='true'/>"
	.."	<image id='Is_yes' image='1800000294' x='300' y='5' w='94' h='65' revmsg='true'/>"
	.."	<button id='get_button' image='1800000129' x='380' y='20' w='80' h='31' OnLButtonUp='HeroAch_Wnd.get' visible = 'false' revmsg='true' text='领取' text_color='#E6D384'/>"
	.."	<edit id='AchName' x='80' y='10' w='200' h='19' canedit='false' revmsg='true' enable='false' text_color='#D1B262' text='' />"
	.."	<edit id='Ach' x='80' y='50' w='70' h='19' canedit='false' revmsg='true' enable='false' text_color='#D1B262' text='成就积分:' />"
	.."	<edit id='jifen' x='140' y='50' w='100' h='19' canedit='false' revmsg='true' enable='false' text='10000' />"
	.."	<image id='image' image='1800000051' x='210' y='53' w='16' h='14' revmsg='true' enable='false'/>"
	.."	<edit id='Achgold' x='230' y='50' w='100' h='19' canedit='false' revmsg='true' enable='false' text='1000000' />"
	.." </wnd>"
	.."	 <wnd id='win4' image='0' x='140' y='248' w='502' h='81' revmsg='true' visible='false'>"
	.."	<button id='back' image='1802200004' x='0' y='0' w='493' h='78' revmsg='true'/>"
	.."	<image id='tubiao' image='0' x='20' y='15' w='45' h='45' fitsize = 'true' revmsg='true'/>"
	.."	<image id='Is_yes' image='1800000294' x='300' y='5' w='94' h='65' revmsg='true'/>"
	.."	<button id='get_button' image='1800000129' x='380' y='20' w='80' h='31' OnLButtonUp='HeroAch_Wnd.get' visible = 'false' revmsg='true' text='领取' text_color='#E6D384'/>"
	.."	<edit id='AchName' x='80' y='10' w='200' h='19' canedit='false' revmsg='true' enable='false' text_color='#D1B262' text='' />"
	.."	<edit id='Ach' x='80' y='50' w='70' h='19' canedit='false' revmsg='true' enable='false' text_color='#D1B262' text='成就积分:' />"
	.."	<edit id='jifen' x='140' y='50' w='100' h='19' canedit='false' revmsg='true' enable='false' text='10000' />"
	.."	<image id='image' image='1800000051' x='210' y='53' w='16' h='14' revmsg='true' enable='false'/>"
	.."	<edit id='Achgold' x='230' y='50' w='100' h='19' canedit='false' revmsg='true' enable='false' text='1000000' />"
	.." </wnd>"
	.."	 <wnd id='win5' image='0' x='140' y='328' w='502' h='81' revmsg='true' visible='false'>"
	.."	<button id='back' image='1802200004' x='0' y='0' w='493' h='78' revmsg='true'/>"
	.."	<image id='tubiao' image='0' x='20' y='15' w='45' h='45' fitsize = 'true' revmsg='true'/>"
	.."	<image id='Is_yes' image='1800000294' x='300' y='5' w='94' h='65' revmsg='true'/>"
	.."	<button id='get_button' image='1800000129' x='380' y='20' w='80' h='31' OnLButtonUp='HeroAch_Wnd.get' visible = 'false' revmsg='true' text='领取' text_color='#E6D384'/>"
	.."	<edit id='AchName' x='80' y='10' w='200' h='19' canedit='false' revmsg='true' enable='false' text_color='#D1B262' text='' />"
	.."	<edit id='Ach' x='80' y='50' w='70' h='19' canedit='false' revmsg='true' enable='false' text_color='#D1B262' text='成就积分:' />"
	.."	<edit id='jifen' x='140' y='50' w='100' h='19' canedit='false' revmsg='true' enable='false' text='10000' />"
	.."	<image id='image' image='1800000051' x='210' y='53' w='16' h='14' revmsg='true' enable='false'/>"
	.."	<edit id='Achgold' x='230' y='50' w='100' h='19' canedit='false' revmsg='true' enable='false' text='1000000' />"
	.." </wnd>"
	.."	<button id='up_page' image='1800000372' x='631' y='90' w='26' h='70' OnLButtonUp='HeroAch_Wnd.up_page' revmsg='true'/>"
	.."	<button id='down_page' image='1800000376' x='631' y='190' w='26' h='70' OnLButtonUp='HeroAch_Wnd.down_page' revmsg='true'/>"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)
end	
HeroAch_Wnd.buttonIndex = 1
HeroAch_Wnd.WndHandle = 0
HeroAch_Wnd.Achievetab = {}
HeroAch_Wnd.str = ""
HeroAch_Wnd.page = 1
HeroAch_Wnd.jifen = {}
HeroAch_Wnd.num = {0,0,0,0,0,0,0,0}
HeroAch_Wnd.image = {1804600035,1804600036,1804600037,1804600038,1804600039,1804600040,1804600041,1804600042,1804600043,1804600035}
HeroAch_Wnd.image1 = {1804600026,1804600027,1804600028,1804600029,1804600030,1804600031,1804600032,1804600033,1804600034,1804600026}

function HeroAch_Wnd.UIInit(_Parent)
	HeroAch_Wnd.WndHandle = _Parent
	ButtonSetIsActivePageBtn(_Parent,"ach_button1",true)
	UI:Lua_SubmitForm("成就积分表单", "main", "")
	CLGetGloryList()
	local _GUIHandle = 0
	for i = 1, 9 do
		_GUIHandle = GUIWndFindChildM(_Parent, "ach_button"..i)
		if _GUIHandle ~= 0 then
			GUIButtonSetTextFont(_GUIHandle,"SIMLI18")
		end
	end
end

function HeroAch_Wnd.visible(vis)
	if tonumber(vis) == 1 then 
		local handle = GetWindow(nil,"AchieveWnd,image3")
		if handle ~= 0 then  
			GUIWndSetVisible(handle,true)
		end
	end 
end
function Hero_jif(data,num,vis)
	HeroAch_Wnd.visible(vis)
	HeroAch_Wnd.jifen = data
	num = tonumber(num)
	if num == 0 then
		return 
	end	
	if num < 10 then
		ImageSetImageID(AchieveWnd.WndHandle,"image2",HeroAch_Wnd.image1[num])  
		--ImageSetImageID(AchieveWnd.WndHandle,"image1",0)  	
	else
		num = 9
		--ImageSetImageID(AchieveWnd.WndHandle,"image1",HeroAch_Wnd.image1[a])  
		ImageSetImageID(AchieveWnd.WndHandle,"image2",HeroAch_Wnd.image1[num])  
	end	

end	

function AchieveUpdata()	
	local Achievetab = getTable(as3.tolua(LuaParam[1]))	
	--[[HeroAch_Wnd.str = ""
	for i = 1 , #Achievetab do 
		local tab = getTable(Achievetab[i])		
		local index = tab[4]
		if HeroAch_Wnd.Achievetab[index] == nil then
			HeroAch_Wnd.Achievetab[index] = {}
		end	
		if i == 1 then
			HeroAch_Wnd.str = index 
		end
		table.insert(HeroAch_Wnd.Achievetab[index],tab)		
	end
	local i = 1 
	local Is_yes = 0
	for k, v in pairs(HeroAch_Wnd.Achievetab) do 		
		local _handle = GetWindow(HeroAch_Wnd.WndHandle,"ach_button"..i,nil)		
		if _handle == 0 then 
			break
		end	
		WndSetTextM(_handle,nil,k)
		
		local num = 0 
		for j = 1 , #v do 
			if tonumber(v[j][2]) == 2 then
				num = num + 1
			end	
		end
		if num ~= 0 then
			Is_yes = 1
			HeroAch_Wnd.num[i] = num
		end	
		i = i + 1
	end
	local sum = 0 
	if Is_yes == 1 then	
		for i = 1 , #HeroAch_Wnd.num do 
			if HeroAch_Wnd.num[i] > 0 then
				local num = HeroAch_Wnd.num[i]
				ImageSetImageID(HeroAch_Wnd.WndHandle,"image"..i,HeroAch_Wnd.image[num])  
				local _handle = GetWindow(HeroAch_Wnd.WndHandle,"image"..i,nil)		
				if _handle ~= 0 then 
					GUIWndSetVisible(_handle,true)
				end	
			end		
		end
	end	
	list_update(HeroAch_Wnd.str,1)
	]]
end

function list_update(str,index)
	local tab = HeroAch_Wnd.Achievetab[str]
	local a = tonumber(index)
	local b = 1
	for i = a , #tab do	
		local _handle = GetWindow(HeroAch_Wnd.WndHandle,"win"..b,nil)
		if _handle == 0 then 
			break
		end
		GUIWndSetVisible(_handle,true)	
		local _handle = GetWindow(HeroAch_Wnd.WndHandle,"win"..b..",AchName",nil)
		
		EditSetText(_handle,nil,tab[i][5])
		local _handle = GetWindow(HeroAch_Wnd.WndHandle,"win"..b..",Achgold",nil)
		EditSetText(_handle,nil,tab[i][7])
		local _handle = GetWindow(HeroAch_Wnd.WndHandle,"win"..b..",jifen",nil)
		EditSetText(_handle,nil,HeroAch_Wnd.jifen[str][i])
		local _handle = GetWindow(HeroAch_Wnd.WndHandle,"win"..b..",get_button",nil)
		GUIWndSetParam(_handle,tab[i][1])
		GUIWndAddProperty(_handle, "index", ""..i)
		GUIWndAddProperty(_handle, "hang", ""..b)
		ImageSetImageID(HeroAch_Wnd.WndHandle,"win"..b..",Is_yes",1800000294)
		if tonumber(tab[i][2]) ~= 2 then			
			GUIWndSetVisible(_handle,false)
			if tonumber(tab[i][2]) == 3 then 
				ImageSetImageID(HeroAch_Wnd.WndHandle,"win"..b..",Is_yes",1800000293)
			end	
		else
			GUIWndSetVisible(_handle,true)
			ImageSetImageID(HeroAch_Wnd.WndHandle,"win"..b..",Is_yes",0)
		end	
		if str == "神翼培养" then 
			local image_t = {1990040550,1990040554,1990040556,1992000149,1992000291,1992000143}
			ImageSetImageID(HeroAch_Wnd.WndHandle,"win"..b..",tubiao",image_t[i])
		elseif str == "初出茅庐" then
			local image_t = {1891420568,1891420566,1891420567,1891420573}
			ImageSetImageID(HeroAch_Wnd.WndHandle,"win"..b..",tubiao",image_t[i])
		elseif str == "副本次数" then
			ImageSetImageID(HeroAch_Wnd.WndHandle,"win"..b..",tubiao",1891420581)
		elseif str == "强化次数" then
			ImageSetImageID(HeroAch_Wnd.WndHandle,"win"..b..",tubiao",1891420573)
		elseif str == "BOSS击杀" then
			ImageSetImageID(HeroAch_Wnd.WndHandle,"win"..b..",tubiao",1891420572)	
		elseif str == "降妖除魔" then
			ImageSetImageID(HeroAch_Wnd.WndHandle,"win"..b..",tubiao",1891420570)	
		elseif str == "等级修炼" then
			ImageSetImageID(HeroAch_Wnd.WndHandle,"win"..b..",tubiao",1891420569)
		elseif str == "累计登录" then
			ImageSetImageID(HeroAch_Wnd.WndHandle,"win"..b..",tubiao",1891420571)		
		end	
		b = b + 1
		if b == 6 then
			break
		end
	end
	
	for j = b , 5 do 
		local _handle = GetWindow(HeroAch_Wnd.WndHandle,"win"..j,nil)
		GUIWndSetVisible(_handle,false)
	end
	local c = #tab - a + 1
	if a == 1 then
		local _handle = GetWindow(HeroAch_Wnd.WndHandle,"up_page",nil)
		GUIWndSetEnableM(_handle,false)
	else
		local _handle = GetWindow(HeroAch_Wnd.WndHandle,"up_page",nil)
		GUIWndSetEnableM(_handle,true)
	end
	if b > c then
			local _handle = GetWindow(HeroAch_Wnd.WndHandle,"down_page",nil)
			GUIWndSetEnableM(_handle,false)			
	else
		local _handle = GetWindow(HeroAch_Wnd.WndHandle,"down_page",nil)
		GUIWndSetEnableM(_handle,true)
		
	end
end

function HeroAch_Wnd.up_page(_handle)
	if HeroAch_Wnd.page == 1 then
		msg("已经第一页")
		return
	end
	HeroAch_Wnd.page = HeroAch_Wnd.page - 1
	--local index = (HeroAch_Wnd.page - 1) * 5 + 1
	local index = HeroAch_Wnd.page
	list_update(HeroAch_Wnd.str,index)
end



function HeroAch_Wnd.down_page(_handle)
	local max_a = 0
	for k, v in pairs(HeroAch_Wnd.Achievetab) do 
		if k == HeroAch_Wnd.str then
			max_a = #v
		end
	end
	HeroAch_Wnd.page = HeroAch_Wnd.page + 1
	--local index = (HeroAch_Wnd.page - 1) * 5 + 1
	local index = HeroAch_Wnd.page
	if index > max_a then
		HeroAch_Wnd.page = HeroAch_Wnd.page - 1
		msg("已经是最后一页")
		return 
	end
	list_update(HeroAch_Wnd.str,index)

end


function HeroAch_Wnd.get(_handle)
	local id = GUIWndGetParam(_handle)
	CLGetGloryAward(id)
	if _handle ~= 0 then
		GUIWndSetVisible(_handle,false)
	end	
	local hang = GUIWndGetProperty(_handle,"hang")
	ImageSetImageID(HeroAch_Wnd.WndHandle,"win"..hang..",Is_yes",1800000293)
	local num = HeroAch_Wnd.num[HeroAch_Wnd.buttonIndex]
	if num > 1 then
		num = num - 1
		HeroAch_Wnd.num[HeroAch_Wnd.buttonIndex] = num
		ImageSetImageID(HeroAch_Wnd.WndHandle,"image"..HeroAch_Wnd.buttonIndex,HeroAch_Wnd.image[num])  
	else	
		local _handle = GetWindow(HeroAch_Wnd.WndHandle,"image"..HeroAch_Wnd.buttonIndex,nil)		
		if _handle ~= 0 then 
			GUIWndSetVisible(_handle,false)
		end	
		HeroAch_Wnd.num[HeroAch_Wnd.buttonIndex] = 0
	end
	local index = tonumber(GUIWndGetProperty(_handle,"index"))
	HeroAch_Wnd.Achievetab[HeroAch_Wnd.str][index][2] = 3
	local _handle = GetWindow(HeroAch_Wnd.WndHandle,"win"..hang..",jifen",nil)
	local jifen = EditGetTextM(_handle)
	local _handle = GetWindow(HeroAch_Wnd.WndHandle,"win"..hang..",AchName",nil)
	local name = EditGetTextM(_handle)
	local sum = 0 
	for i = 1 , #HeroAch_Wnd.num do 
		sum = HeroAch_Wnd.num[i] + sum
	end
	if sum == 0 then	
		--ImageSetImageID(AchieveWnd.WndHandle,"image1",0)  
		ImageSetImageID(AchieveWnd.WndHandle,"image2",0)  
	else	
		if sum < 10 then
			ImageSetImageID(AchieveWnd.WndHandle,"image2",HeroAch_Wnd.image1[sum])  
			--ImageSetImageID(AchieveWnd.WndHandle,"image1",0)  	
		else
			sum = 9
			--ImageSetImageID(AchieveWnd.WndHandle,"image1",HeroAch_Wnd.image1[a])  
			ImageSetImageID(AchieveWnd.WndHandle,"image2",HeroAch_Wnd.image1[sum])  
		end	
	end	
	
	GameMainBar.AchNum(sum)
	UI:Lua_SubmitForm("成就积分表单", "get_jifen", ""..jifen.."#"..sum.."#"..name)
end	

function HeroAch_Wnd.List(_handle)
	for i = 1 , 9 do 
		local handle = GetWindow(HeroAch_Wnd.WndHandle,"ach_button"..i,nil)
		ButtonSetIsActivePageBtn(handle,nil,false)
	end	
	HeroAch_Wnd.buttonIndex = GUIWndGetParam(_handle)
	ButtonSetIsActivePageBtn(_handle,nil,true)
	HeroAch_Wnd.str = GUIWndGetText(_handle)
	HeroAch_Wnd.page = 1
	list_update(HeroAch_Wnd.str,1)
	
	
end
RegisterUIEvent(LUA_EVENT_ONACHIVELIST,"获取成就列表","AchieveUpdata")
HeroAch_Wnd.main()