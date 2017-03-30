TeamWnd = {}
TeamWnd.handle = {"MyTeam","NearByTeam","NearByPlayer"}
TeamWnd.headimage = {
	{1801800012,1801800014,1801800016},
	{1801800013,1801800015,1801800017}
}
TeamWnd.WndHandle = 0
TeamWnd.nowPage = 1 --当前页码
TeamWnd.totalPage = 1 --总页码
TeamWnd.team = 0  --我是否有队伍
TeamWnd.teaml = 0  --我是否是队长
TeamWnd.zhuangt = 1 --当前组队状态
TeamWnd.TeamMember = {} --队伍成员guid列表
TeamWnd.page = 1
TeamWnd.name = ""  --鼠标选中玩家姓名
TeamWnd.myname = "" --当前玩家姓名
TeamWnd.NearTeam = {} --附近队伍列表
TeamWnd.StartNum = 1  

function TeamWnd.main()
	local ui = "<form> <dialog OnInit='TeamWnd.UIInit' id='TeamWnd' x='0' y='0' w='744' h='375' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='image0' image='1801800001' x='0' y='0' w='744' h='375' enable='false' revmsg='false'/>"
	.."	<button id='Close' image='1800000043' x='715' y='0' w='26' h='26' OnLButtonUp='TeamWnd.closeWnd' revmsg='true'/>"
	.."	<image id='TeamRoleHeadInfo' x='335' y='1' w='77' h='24' image='1801500059' enable='false' />"
	.."	<button id='MyTeam' image='1800000072' x='30' y='50' w='66' h='24' OnLButtonUp='TeamWnd.MyTeamWnd' revmsg='true' text='我的队伍' text_color='#646050'/>"
	.."	<button id='NearByTeam' image='1800000072' x='100' y='50' w='66' h='24' OnLButtonUp='TeamWnd.NearByTeamWnd' revmsg='true' text='附近队伍' text_color='#646050'/>"
	.."	<button id='NearByPlayer' image='1800000072' x='170' y='50' w='66' h='24' OnLButtonUp='TeamWnd.NearByPlayerWnd' revmsg='true' text='附近玩家' text_color='#646050'/>"
	
	.."	<button id='upPageBtn' image='1800000094' x='293' y='322' w='66' h='24' OnLButtonUp='TeamWnd.UpPgClicked' visible='false' revmsg='true'/>"
	.."	<button id='downPageBtn' image='1800000098' x='364' y='322' w='66' h='24' OnLButtonUp='TeamWnd.DownPgClicked' visible='false' revmsg='true'/>"
	
	.."	<image id='image_bj' image='1801800007' x='314' y='317' w='48' h='26' revmsg='false'/>" 
	.."	<check id='check_xz1' image='1800000200' x='360' y='50' w='98' h='21' OnCheckChange='TeamWnd.clickimage' revmsg='true' param='1' text='自动组队' text_color='#BB9C57'/>"
	.."	<check id='check_xz2' image='1800000200' x='460' y='50' w='98' h='21' OnCheckChange='TeamWnd.clickimage' revmsg='true' param='2' text='手动组队' text_color='#BB9C57'/>"
	.."	<check id='check_xz3' image='1800000200' x='560' y='50' w='98' h='21' OnCheckChange='TeamWnd.clickimage' revmsg='true' param='3' text='拒绝组队' text_color='#BB9C57'/>"
	.."	<edit id='yy' x='314' y='321' w='50' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' text='1/1' />"
	.."	 <wnd id='Player_page' image='0' x='10' y='85' w='710' h='235' revmsg='true'>"
	.."	 <button id='Player1' image='1801800003' x='15' y='0' w='135' h='206' OnLButtonUp='TeamWnd.clickWnd'  revmsg='true' param='1' enable='false'>"
	.."	<image id='leader' image='0' x='4' y='5' w='16' h='16' />"
	.."	<image id='header' image='0' x='15' y='15' w='16' h='16' />"
	.."	<edit id='RoleName' x='18' y='115' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleJob' x='18' y='135' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleLevel' x='18' y='155' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.." </button>"
	.."	<button id='Player2' image='1801800003' x='153' y='0' w='135' h='206' OnLButtonUp='TeamWnd.clickWnd' revmsg='true' param='2' enable='false'>"
	.."	<image id='leader' image='0' x='4' y='5' w='16' h='16' />"
	.."	<image id='header' image='0' x='15' y='15' w='16' h='16' />"
	.."	<edit id='RoleName' x='18' y='115' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleJob' x='18' y='135' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleLevel' x='18' y='155' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.." </button>"
	.."	<button id='Player3' image='1801800003' x='291' y='0' w='135' h='206' OnLButtonUp='TeamWnd.clickWnd' revmsg='true' param='3' enable='false'>"
	.."	<image id='leader' image='0' x='4' y='5' w='16' h='16' />"
	.."	<image id='header' image='0' x='15' y='15' w='16' h='16' />"
	.."	<edit id='RoleName' x='18' y='115' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleJob' x='18' y='135' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleLevel' x='18' y='155' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.." </button>"
	.."	<button id='Player4' image='1801800003' x='429' y='0' w='135' h='206' OnLButtonUp='TeamWnd.clickWnd' revmsg='true' param='4' enable='false'>"
	.."	<image id='leader' image='0' x='4' y='5' w='16' h='16' />"
	.."	<image id='header' image='0' x='15' y='15' w='16' h='16' />"
	.."	<edit id='RoleName' x='18' y='115' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleJob' x='18' y='135' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleLevel' x='18' y='155' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.." </button>"
	.."	 <button id='Player5' image='1801800003' x='567' y='0' w='135' h='206' OnLButtonUp='TeamWnd.clickWnd'  revmsg='true' param='5' enable='false'>"
	.."	<image id='leader' image='0' x='4' y='5' w='16' h='16' />"
	.."	<image id='header' image='0' x='15' y='15' w='16' h='16' />"
	.."	<edit id='RoleName' x='18' y='115' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleJob' x='18' y='135' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleLevel' x='18' y='155' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.." </button>"
	.."	<button id='Up_page' image='1800000192' x='-5' y='82' w='29' h='51' OnLButtonUp='TeamWnd.Up_page' enable='false' revmsg='true'/>"
	.."	<button id='Down_page' image='1800000196' x='698' y='82' w='29' h='51' OnLButtonUp='TeamWnd.Down_page' enable='false' revmsg='true'/>"
	.." </wnd>"

	.."	 <wnd id='MyButton' image='0' x='10' y='300' w='705' h='60' revmsg='true'>"
	.."	<button id='CreateTeam' image='1800000150' x='600' y='13' w='84' h='32' OnLButtonUp='TeamWnd.CreateTeam' revmsg='true' text='创建队伍' text_color='#A69861'/>"
	.." </wnd>"
	.."	 <wnd id='MyButton1' image='0' x='10' y='300' w='705' h='60' revmsg='true'>"
	.."	<button id='Addplayer' image='1800000150' x='100' y='13' w='84' h='32' OnLButtonUp='TeamWnd.Addplayer' revmsg='true' text='添加好友' text_color='#A69861'/>"
	.."	<button id='ViewEquip' image='1800000150' x='200' y='13' w='84' h='32' OnLButtonUp='TeamWnd.ViewEquip' revmsg='true' text='查看装备' text_color='#A69861'/>"
	.."	<button id='OutTeam' image='1800000150' x='300' y='13' w='84' h='32' OnLButtonUp='TeamWnd.OutTeam' revmsg='true' text='离开队伍' text_color='#A69861'/>"
	.."	<button id='OtherTeamer' image='1800000150' x='400' y='13' w='84' h='32' OnLButtonUp='TeamWnd.OtherTeamer' revmsg='true' text='移交队长' text_color='#A69861'/>"
	.."	<button id='DooutTeam' image='1800000150' x='500' y='13' w='84' h='32' OnLButtonUp='TeamWnd.DooutTeam' revmsg='true' text='踢出队伍' text_color='#A69861'/>"
	.."	<button id='DismissTeam' image='1800000150' x='600' y='13' w='84' h='32' OnLButtonUp='TeamWnd.DismissTeam' revmsg='true' text='解散队伍' text_color='#A69861'/>"
	.." </wnd>"
	.."	 <wnd id='NearyButton' image='0' x='10' y='300' w='705' h='60' revmsg='true'>"
	.."	<button id='ReloadTeam' image='1800000150' x='20' y='13' w='84' h='32' OnLButtonUp='TeamWnd.ReloadTeam' revmsg='true' text='刷新列表' text_color='#A69861'/>"
	.."	<button id='CreateTeam1' image='1800000150' x='500' y='13' w='84' h='32' OnLButtonUp='TeamWnd.CreateTeam' revmsg='true' text='创建队伍' text_color='#A69861'/>"
	.."	<button id='InTeam' image='1800000150' x='600' y='13' w='84' h='32' OnLButtonUp='TeamWnd.InTeam' revmsg='true' text='申请入队' text_color='#A69861'/>"
	.." </wnd>"
	.."	 <wnd id='NearyPlayerList' image='0' x='10' y='85' w='705' h='251' revmsg='true'>"
	.."	<edit id='RoleName' x='45' y='-3' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BC927A' text='玩家名称' />"
	.."	<edit id='RoleLevel' x='205' y='-3' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BC927A' text='玩家等级' />"
	.."	<edit id='Rolejob' x='355' y='-3' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BC927A' text='玩家职业' />"
	.."	<edit id='gonghui' x='530' y='-3' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BC927A' text='所在公会' />"
	.."	 <button id='Player1' image='1801800023' x='13' y='22' w='714' h='41' OnLButtonUp='TeamWnd.clickWnd2' revmsg='true' param='1' enable='false'>"
	.."	<edit id='RoleName' x='30' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleLevel' x='190' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleJob' x='345' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='Rolegh' x='520' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.." </button>"
	.."	 <button id='Player2' image='1801800023' x='13' y='54' w='714' h='41' OnLButtonUp='TeamWnd.clickWnd2' revmsg='true' param='2' enable='false'>"
	.."	<edit id='RoleName' x='30' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleLevel' x='190' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleJob' x='345' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='Rolegh' x='520' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.." </button>"
	.."	 <button id='Player3' image='1801800023' x='13' y='86' w='714' h='41' OnLButtonUp='TeamWnd.clickWnd2' revmsg='true' param='3' enable='false'>"
	.."	<edit id='RoleName' x='30' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleLevel' x='190' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleJob' x='345' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='Rolegh' x='520' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.." </button>"
	.."	 <button id='Player4' image='1801800023' x='13' y='118' w='714' h='41' OnLButtonUp='TeamWnd.clickWnd2' revmsg='true' param='4' enable='false'>"
	.."	<edit id='RoleName' x='30' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleLevel' x='190' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleJob' x='345' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='Rolegh' x='520' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.." </button>"
	.."	 <button id='Player5' image='1801800023' x='13' y='150' w='714' h='41' OnLButtonUp='TeamWnd.clickWnd2' revmsg='true' param='5' enable='false'>"
	.."	<edit id='RoleName' x='30' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleLevel' x='190' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleJob' x='345' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='Rolegh' x='520' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.." </button>"
	.."	 <button id='Player6' image='1801800023' x='13' y='182' w='714' h='41' OnLButtonUp='TeamWnd.clickWnd2' revmsg='true' param='6' enable='false'>"	
	.."	<edit id='RoleName' x='30' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleLevel' x='190' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='RoleJob' x='345' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.."	<edit id='Rolegh' x='520' y='8' w='100' h='19' canedit='false' align='center' revmsg='true' enable='false' text_color='#BB9C57' />"
	.." </button>"
	.."	<button id='ReloadList' image='1800000150' x='20' y='228' w='84' h='32' OnLButtonUp='TeamWnd.ReloadList' revmsg='true' text='刷新列表' text_color='#A69861'/>"
	.."	<button id='Addplayer' image='1800000150' x='500' y='228' w='84' h='32' OnLButtonUp='TeamWnd.Addplayer' revmsg='true' text='添加好友' text_color='#A69861'/>"
	.."	<button id='InviteTeam' image='1800000150' x='600' y='228' w='84' h='32' OnLButtonUp='TeamWnd.InviteTeam' revmsg='true' text='邀请组队' text_color='#A69861'/>"
	.." </wnd>"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)

end

function TeamWnd.UIInit(_GUIHandle)
	TeamWnd.WndHandle = _GUIHandle
	CenterWnd(_GUIHandle)
	GUIWndSetSizeM(TeamWnd.WndHandle, 744, 375)
	local _EditHandle = GUIWndFindChildM(_GUIHandle, "Edit0")
	if _EditHandle ~= 0 then
		GUIEditSetCanEdit(_EditHandle, false)
		GUIEditSetFontM(_EditHandle,"SIMLI18")
	end
	
	local Myteam_handle = GUIWndFindChildM(_GUIHandle, "MyTeam")
	if Myteam_handle ~= 0 then		
		TeamWnd.MyTeamWnd(Myteam_handle)
		GUIButtonSetStateTextColor(Myteam_handle,0,MakeARGB(255, 100, 96, 80))
		GUIButtonSetStateTextColor(Myteam_handle,2,MakeARGB(255, 166, 152, 97))
	end
	
	local NearByTeam_handle = GUIWndFindChildM(_GUIHandle, "NearByTeam")
	if NearByTeam_handle ~= 0 then
		GUIButtonSetStateTextColor(NearByTeam_handle,0,MakeARGB(255, 100, 96, 80))
		GUIButtonSetStateTextColor(NearByTeam_handle,2,MakeARGB(255, 166, 152, 97))
	end
	
	local NearByPlayer_handle = GUIWndFindChildM(_GUIHandle, "NearByPlayer")
	if NearByPlayer_handle ~= 0 then
		GUIButtonSetStateTextColor(NearByPlayer_handle,0,MakeARGB(255, 100, 96, 80))
		GUIButtonSetStateTextColor(NearByPlayer_handle,0,MakeARGB(255, 100, 96, 80))
		GUIButtonSetStateTextColor(NearByPlayer_handle,2,MakeARGB(255, 166, 152, 97))
	end
	
	ButtonSetIsActivePageBtn(_GUIHandle,"MyTeam",true)
	if CLGetPlayerSelfPropBase(1) then
		TeamWnd.myname = as3.tolua(LuaRet)
	end
	--组队状态初始化
	MyTeamUpdata()
	if CLGetRoleTeamStatus() then
		local index = as3.tolua(LuaRet)
		for i = 1 , 3 do 
			if i == tonumber(index) then
				TeamWnd.zhuangt = i
				local _handle = GetWindow(TeamWnd.WndHandle,"check_xz".. i)
				GUICheckBoxSetCheck(_handle,true)
			else
				local _handle = GetWindow(TeamWnd.WndHandle,"check_xz".. i)
				GUICheckBoxSetCheck(_handle,false)
			end	
		end	
	end	
	
	local handle = GetWindow(_GUIHandle,"NearyButton")
	if handle ~= 0 then
		GUIWndSetVisible(handle, false)
	end
	local handle = GetWindow(_GUIHandle,"NearyPlayerList")
	if handle ~= 0 then
		GUIWndSetVisible(handle, false)
	end
end

--我的队伍更新信息
function MyTeamUpdata()
	if TeamWnd.WndHandle == 0 then
		return
	end	
	if not ButtonGetIsActivePageBtn(TeamWnd.WndHandle,"MyTeam") then
		return
	end
	TeamEmpty()
	if CLGetTeamMemberGUIDList() then
		TeamWnd.TeamMember = getTable(LuaRet)
		TeamWnd.team = 1
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
		GUIWndSetVisible(handle,false)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
		GUIWndSetVisible(handle,true)
	else
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
		GUIWndSetVisible(handle,true)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
		GUIWndSetVisible(handle,false)
		return
	end
	ImageSetImageID(TeamWnd.WndHandle,"Player_page,Player1,leader",1801800022)
	for i = 1 , #TeamWnd.TeamMember do 	
		local name = ""	
		local gender = 0
		local job = 1 
		local level = 1
		local Job_t = {"战士","法师","道士"}
		if CLGetTeamPropByPlayerGUIDAll(TeamWnd.TeamMember[i],0) then
			name = as3.tolua(LuaRet)
			if i == 1 and TeamWnd.myname == name then
				TeamWnd.teaml = 1
			end
		end
		if CLGetTeamPropByPlayerGUIDAll(TeamWnd.TeamMember[i],3) then
			level = as3.tolua(LuaRet)
		end
		if CLGetTeamPropByPlayerGUIDAll(TeamWnd.TeamMember[i],4) then
			job = as3.tolua(LuaRet)
		end
		if CLGetTeamPropByPlayerGUIDAll(TeamWnd.TeamMember[i],5) then
			gender = as3.tolua(LuaRet)
		end
		local image_id = GetTeamImageID(job,gender)
		ImageSetImageID(TeamWnd.WndHandle,"Player_page,Player"..i..",header",image_id)
		EditSetText(TeamWnd.WndHandle,"Player_page,Player"..i..",RoleName",""..name)
		EditSetText(TeamWnd.WndHandle,"Player_page,Player"..i..",RoleLevel","Lv:"..level)
		EditSetText(TeamWnd.WndHandle,"Player_page,Player"..i..",RoleJob",""..Job_t[job])
		local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Player"..i)
		GUIWndSetEnableM(handle, true)
	end
	if #TeamWnd.TeamMember == 1 then
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,OtherTeamer")
		GUIWndSetEnableM(handle, false)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,DooutTeam")
		GUIWndSetEnableM(handle, false)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,DismissTeam")
		GUIWndSetEnableM(handle, true)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,ViewEquip")
		GUIWndSetEnableM(handle, false)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,Addplayer")
		GUIWndSetEnableM(handle, false)
	elseif TeamWnd.teaml == 0 then
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,OtherTeamer")
		GUIWndSetEnableM(handle, false)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,DooutTeam")
		GUIWndSetEnableM(handle, false)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,DismissTeam")
		GUIWndSetEnableM(handle, false)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,ViewEquip")
		GUIWndSetEnableM(handle, true)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,Addplayer")
		GUIWndSetEnableM(handle, true)
	elseif TeamWnd.teaml == 1 and #TeamWnd.TeamMember > 1 then
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,OtherTeamer")
		GUIWndSetEnableM(handle, true)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,DooutTeam")
		GUIWndSetEnableM(handle, true)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,DismissTeam")
		GUIWndSetEnableM(handle, true)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,ViewEquip")
		GUIWndSetEnableM(handle, true)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,Addplayer")
		GUIWndSetEnableM(handle, true)
	end
end	

function TeamEmpty(param)
	for i = 1 , 5 do 
		ImageSetImageID(TeamWnd.WndHandle,"Player_page,Player"..i..",leader",0)
		ImageSetImageID(TeamWnd.WndHandle,"Player_page,Player"..i..",header",0)
		EditSetText(TeamWnd.WndHandle,"Player_page,Player"..i..",RoleName","")
		EditSetText(TeamWnd.WndHandle,"Player_page,Player"..i..",RoleLevel","")
		EditSetText(TeamWnd.WndHandle,"Player_page,Player"..i..",RoleJob","")
		local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Player"..i)
		if ButtonGetIsActivePageBtn(handle,nil) then
			ButtonSetIsActivePageBtn(handle,nil,false)
		end	
		GUIWndSetEnableM(handle, false)
	end
end	

--附近队伍更新信息
function NearByTeamUpdata()
	CLGetNearbyTeamInfo("附近队伍更新","NearByTeam_Updata")	
end	
function NearByTeam_Updata()
	local NearByTeam_tab = getTable(as3.tolua(LuaParam[1]))
	TeamWnd.NearTeam = NearByTeam_tab
	if #NearByTeam_tab == 0 then
		return
	end	
	TeamWnd.Visible() 
	if #NearByTeam_tab > 5 then
		local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Down_page")
		GUIWndSetEnableM(handle, true)
	end
end	

--附近玩家更新信息
function NearByPlayerUpdata()
	local NearByplayer_tab = {}
	local a = 0
	local map_name = CLGetCurMapKeyName()
	CLGetNearPlayerList(map_name)
	NearByplayer_tab = getTable(as3.tolua(LuaRet))
	if #NearByplayer_tab ~= 0 then
		TeamWnd.totalPage = math.ceil(#NearByplayer_tab/6)
	else
		TeamWnd.totalPage = 1
	end
	local a = #NearByplayer_tab - 6*(TeamWnd.nowPage-1)
	for i = 1, a do 	                  
		local tab = getTable(NearByplayer_tab[i+(TeamWnd.nowPage-1)*6])
		local name = tab[1]	
		local job = tab[5] 
		local level = tab[4]
		local hh = tab[6]
		local Job_t = {"战士","法师","道士"}
		EditSetText(TeamWnd.WndHandle,"NearyPlayerList,Player"..i..",RoleName",""..name)
		EditSetText(TeamWnd.WndHandle,"NearyPlayerList,Player"..i..",RoleLevel","Lv:"..level)
		EditSetText(TeamWnd.WndHandle,"NearyPlayerList,Player"..i..",RoleJob",""..Job_t[job])
		if hh ~= "" then
			EditSetText(TeamWnd.WndHandle,"NearyPlayerList,Player"..i..",Rolegh",""..hh)
		end	
		local handle = GetWindow(TeamWnd.WndHandle,"NearyPlayerList,Player"..i)
		GUIWndSetEnableM(handle, true)
	end 
end	
--我的队伍
function TeamWnd.MyTeamWnd(_handle)
	if ButtonGetIsActivePageBtn(TeamWnd.WndHandle,"MyTeam") then
		return
	end	
	TeamWnd.update(_handle)
	TeamWnd.name = ""
	if TeamWnd.team == 0 then
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
		GUIWndSetVisible(handle,true)
		local handle = GetWindow(TeamWnd.WndHandle,"NearyButton")
		GUIWndSetVisible(handle,false)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
		GUIWndSetVisible(handle,false)
	else
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
		GUIWndSetVisible(handle,false)
		local handle = GetWindow(TeamWnd.WndHandle,"NearyButton")
		GUIWndSetVisible(handle,false)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
		GUIWndSetVisible(handle,true)
	end
	local handle = GetWindow(TeamWnd.WndHandle,"Player_page")
	GUIWndSetVisible(handle,true)
	local handle = GetWindow(TeamWnd.WndHandle,"NearyPlayerList")
	if handle ~= 0 then 
		GUIWndSetVisible(handle,false)
	end	
	local handle = GetWindow(TeamWnd.WndHandle,"image0")
	if handle ~= 0 then
		GUIWndSetImageID(handle,1801800001)	
		GUIWndSetEnableM(handle, false)
	end	
	GUIWndSetMoveWithLBM(TeamWnd.WndHandle)
	MyTeamUpdata() 
	local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Down_page")
	if handle ~= 0 then 
		GUIWndSetVisible(handle,false)
	end
	local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Up_page")
	if handle ~= 0 then 
		GUIWndSetVisible(handle,false)
	end
end
--附近队伍
function TeamWnd.NearByTeamWnd(_handle)
	if ButtonGetIsActivePageBtn(TeamWnd.WndHandle,"NearByTeam") then
		return
	end	 
	TeamWnd.update(_handle)
	TeamWnd.name = ""
	local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
	GUIWndSetVisible(handle,false)
	local handle = GetWindow(TeamWnd.WndHandle,"NearyButton")
	GUIWndSetVisible(handle,true)
	local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
	GUIWndSetVisible(handle,false)
	local handle = GetWindow(TeamWnd.WndHandle,"NearyPlayerList")
	GUIWndSetVisible(handle,false)
	local handle = GetWindow(TeamWnd.WndHandle,"Player_page")
	GUIWndSetVisible(handle,true)
	
	if TeamWnd.team == 1 then
		TeamWnd.DisableNewTeam()
	else
		if CLGetRoleTeamStatus() then
			if as3.tolua(LuaRet) == 3 then
				TeamWnd.DisableNewTeam()
			else
				TeamWnd.ActiveNewTeam()
			end
		end
	end
	local handle = GetWindow(TeamWnd.WndHandle,"image0")
	if handle ~= 0 then
		GUIWndSetImageID(handle,1801800001)	
		GUIWndSetEnableM(handle, false)
	end	
	GUIWndSetMoveWithLBM(TeamWnd.WndHandle)	
	TeamEmpty()
	NearByTeamUpdata()
	local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Down_page")
	if handle ~= 0 then 
		GUIWndSetVisible(handle,true)
	end
	local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Up_page")
	if handle ~= 0 then 
		GUIWndSetVisible(handle,true)
	end
end

function TeamWnd.Visible() 
	for i = 1 ,#TeamWnd.NearTeam  do 
		local tab = getTable(TeamWnd.NearTeam[i + TeamWnd.StartNum-1])
		local name = tab[2]	
		local gender = tab[7]
		local job = tab[6] 
		local level = tab[5]
		local Job_t = {"战士","法师","道士"}
		ImageSetImageID(TeamWnd.WndHandle,"Player_page,Player"..i..",leader",1801800022)
		local image_id = GetTeamImageID(job,gender)
		ImageSetImageID(TeamWnd.WndHandle,"Player_page,Player"..i..",header",image_id)
		EditSetText(TeamWnd.WndHandle,"Player_page,Player"..i..",RoleName",""..name)
		EditSetText(TeamWnd.WndHandle,"Player_page,Player"..i..",RoleLevel","Lv:"..level)
		EditSetText(TeamWnd.WndHandle,"Player_page,Player"..i..",RoleJob",""..Job_t[job])
		local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Player"..i)
		GUIWndSetEnableM(handle, true)
	end 
end

function TeamWnd.Up_page(_Handle)
	if TeamWnd.StartNum > 1 then 
		TeamWnd.StartNum = TeamWnd.StartNum -1
		TeamWnd.Visible()
		if TeamWnd.StartNum == 1 then 
			GUIWndSetEnableM(_Handle,false)
		end
		local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Down_page")
		if handle ~= 0 then 
			GUIWndSetEnableM(handle, true)
		end
	end
end

function TeamWnd.Down_page(_Handle)
	if TeamWnd.StartNum+4 < #TeamWnd.NearTeam then 
		TeamWnd.StartNum = TeamWnd.StartNum +1
		TeamWnd.Visible()
		if TeamWnd.StartNum+5 > #TeamWnd.NearTeam then 
			GUIWndSetEnableM(_Handle,false)
		end
		local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Up_page")
		if handle ~= 0 then 
			GUIWndSetEnableM(handle, true)
		end
	end
end

function TeamWnd.ActiveNewTeam()
	local handle = GetWindow(TeamWnd.WndHandle,"NearyButton,CreateTeam1")
	GUIWndSetEnableM(handle, true)
	local handle = GetWindow(TeamWnd.WndHandle,"NearyButton,InTeam")
	GUIWndSetEnableM(handle, true)
end

function TeamWnd.DisableNewTeam()
	local handle = GetWindow(TeamWnd.WndHandle,"NearyButton,CreateTeam1")
	GUIWndSetEnableM(handle, false)
	local handle = GetWindow(TeamWnd.WndHandle,"NearyButton,InTeam")
	GUIWndSetEnableM(handle, false)
end

--附近玩家列表
function TeamWnd.NearByPlayerWnd(_handle)
	if ButtonGetIsActivePageBtn(TeamWnd.WndHandle,"NearByPlayer") then
		return
	end	
	TeamWnd.update(_handle)   --高亮点击
	TeamWnd.name = ""
	local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
	GUIWndSetVisible(handle,false)
	local handle = GetWindow(TeamWnd.WndHandle,"NearyButton")
	GUIWndSetVisible(handle,false)
	local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
	GUIWndSetVisible(handle,false)
	local handle = GetWindow(TeamWnd.WndHandle,"Player_page")
	GUIWndSetVisible(handle,false)
	local handle = GetWindow(TeamWnd.WndHandle,"image0")
	if handle ~= 0 then
		GUIWndSetImageID(handle,1801800002)	
		GUIWndSetEnableM(handle, false)
	end	
	GUIWndSetMoveWithLBM(TeamWnd.WndHandle)
	local handle = GetWindow(TeamWnd.WndHandle,"NearyPlayerList")
	GUIWndSetVisible(handle,true)
	TeamWnd.ReloadList()
end

--创建队伍
function TeamWnd.CreateTeam(_handle)
	local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
	GUIWndSetVisible(handle,false)
	local handle = GetWindow(TeamWnd.WndHandle,"NearyButton")
	GUIWndSetVisible(handle,false)
	local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
	GUIWndSetVisible(handle,true)
	ButtonSetIsActivePageBtn(TeamWnd.WndHandle,"MyTeam",true)
	ButtonSetIsActivePageBtn(TeamWnd.WndHandle,"NearByTeam",false)
	CLCreateTeam("创建队伍成功","MyTeamUpdata")
end

function TeamWnd.clickWnd(_handle)
	local index = GUIWndGetParam(_handle)
	TeamWnd.name = EditGetText(TeamWnd.WndHandle,"Player_page,Player"..index..",RoleName")
	for i = 1 , 5 do 
		local handle = GetWindow(nil,"TeamWnd,Player_page,Player"..i)
		if i == tonumber(index) then			
			ButtonSetIsActivePageBtn(handle,nil,true)
		else
			ButtonSetIsActivePageBtn(handle,nil,false)
		end	
	end	
end	

function TeamWnd.clickWnd2(_handle)	
	local index = GUIWndGetParam(_handle)
	TeamWnd.name = EditGetText(TeamWnd.WndHandle,"NearyPlayerList,Player"..index..",RoleName")
	for i = 1 , 6 do 
		if i == tonumber(index) then
			local handle = GetWindow(nil,"TeamWnd,NearyPlayerList,Player"..index)
			ButtonSetIsActivePageBtn(handle,nil,true)
		else
			local handle = GetWindow(nil,"TeamWnd,NearyPlayerList,Player"..i)
			ButtonSetIsActivePageBtn(handle,nil,false)
		end	
	end	
end	

function TeamWnd.clickimage(_handle)
	local index = GUIWndGetParam(_handle)
	--UI:Lua_SubmitForm("Team表单", "SetIndex", ""..index)
	for i = 1 , 3 do 
		if i == tonumber(index) then
			local _handle = GetWindow(TeamWnd.WndHandle,"check_xz".. i)
			GUICheckBoxSetCheck(_handle,true)
		else
			local _handle = GetWindow(TeamWnd.WndHandle,"check_xz".. i)
			GUICheckBoxSetCheck(_handle,false)
		end	
	end	
	CLSetRoleTeamStatus(tonumber(index))
	if TeamWnd.teaml == 0 then 
		if tonumber(index) == 3 then
			TeamWnd.DisableNewTeam()
		else
			TeamWnd.ActiveNewTeam()
		end 
	end
end	
--添加好友
function TeamWnd.Addplayer()
	if TeamWnd.name == "" then 
		return 
	end
	CLLogicAddFriend(TeamWnd.name)
end	

--查看装备
function TeamWnd.ViewEquip()
	if TeamWnd.name == "" then 
		return 
	end
	CLLogicLookInfo(TeamWnd.name)
end
--离开队伍
function TeamWnd.OutTeam()
	if CLLeaveTeam() then
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
		GUIWndSetVisible(handle,true)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
		GUIWndSetVisible(handle,false)
		TeamWnd.team = 0
		TeamWnd.teaml = 0
		TeamEmpty()	
	end
end

--移交队长
function TeamWnd.OtherTeamer()
	if TeamWnd.name == "" then 
		return 
	end	
	if CLTransferTeamLeader(TeamWnd.name) then 
		TeamWnd.teaml = 0	
	end
end

--踢出队伍
function TeamWnd.DooutTeam()
	if TeamWnd.name == "" then 
		return 
	end
	if CLKickOutOfTeam(TeamWnd.name) then
	end
end

--解散队伍
function TeamWnd.DismissTeam()
	if TeamWnd.myname == "" then
		return 
	end	
	if CLDismissTeam() then
		TeamWnd.team = 0
		TeamWnd.teaml = 0	
	end
end

--邀请组队
function TeamWnd.InviteTeam()
	if TeamWnd.name == "" then 
		return 
	end
	if not CLGetTeamMemberGUIDList() then
		if CLCreateTeam("创建队伍成功","MyTeamUpdata") and TeamWnd.canSendInviteReq() then 
			CLAddDelayTask("CLLogicTeamInviteEx(".."\""..TeamWnd.name.."\""..")",500,1) 
		end	
	elseif TeamWnd.canSendInviteReq() then
		CLLogicTeamInviteEx(TeamWnd.name)
	end		
end

function TeamWnd.canSendInviteReq()
	if CLGetRoleTeamStatus() then
		if as3.tolua(LuaRet) == 3 then
			luaMsgBox.new("", "请打开自动组队功能",1,{},0)
			return false
		else
			return true
		end
	else
		return false
	end	
end

function TeamWnd.OpenAutoTeam()
	CLSetRoleTeamStatus(1)
end

--刷新队伍
function TeamWnd.ReloadTeam()
	TeamEmpty()
	NearByTeamUpdata()
end

--申请入队
function TeamWnd.InTeam()
	if TeamWnd.name == "" then 
		return 
	end	
	CLApplyForTeam(TeamWnd.name)
end

--刷新玩家列表
function TeamWnd.ReloadList()
	for i = 1 , 6 do 
		EditSetText(TeamWnd.WndHandle,"NearyPlayerList,Player"..i..",RoleName","")
		EditSetText(TeamWnd.WndHandle,"NearyPlayerList,Player"..i..",RoleLevel","")
		EditSetText(TeamWnd.WndHandle,"NearyPlayerList,Player"..i..",RoleJob","")
		EditSetText(TeamWnd.WndHandle,"NearyPlayerList,Player"..i..",Rolegh","")
		local handle = GetWindow(TeamWnd.WndHandle,"NearyPlayerList,Player"..i)
		if handle ~= 0 then
			if ButtonGetIsActivePageBtn(handle,nil) then
				ButtonSetIsActivePageBtn(handle,nil,false)
			end	
			GUIWndSetEnableM(handle, false)
		end	
	end
	NearByPlayerUpdata()
	TeamWnd.UpdataPageBtn()
end	

function TeamWnd.closeWnd(_handle)
	GUIWndClose(TeamWnd.WndHandle)
end

function TeamWnd.update(_handle)
	for i = 1 , #TeamWnd.handle do 
		local handle = GetWindow(nil,"TeamWnd,"..TeamWnd.handle[i])
		if handle == _handle then
			ButtonSetIsActivePageBtn(TeamWnd.WndHandle,TeamWnd.handle[i],true)
			
		else
			ButtonSetIsActivePageBtn(TeamWnd.WndHandle,TeamWnd.handle[i],false)
		end
	end
	if _handle == GetWindow(nil,"TeamWnd,"..TeamWnd.handle[3]) then
		handle = GetWindow(TeamWnd.WndHandle,"image_bj")
		if handle ~= 0 then
			GUIWndSetVisible(handle,true)
		end
		handle = GetWindow(TeamWnd.WndHandle,"yy")
		if handle ~= 0 then
			GUIWndSetVisible(handle,true)
		end
		handle = GetWindow(TeamWnd.WndHandle,"upPageBtn")
		if handle ~=0 then
			GUIWndSetVisible(handle,true)
		end
		handle = GetWindow(TeamWnd.WndHandle,"downPageBtn")
		if handle ~=0 then
			GUIWndSetVisible(handle,true)
		end
	else
		handle = GetWindow(TeamWnd.WndHandle,"image_bj")
		if handle ~= 0 then
			GUIWndSetVisible(handle,false)
		end
		handle = GetWindow(TeamWnd.WndHandle,"yy")
		if handle ~= 0 then
			GUIWndSetVisible(handle,false)
		end	
		handle = GetWindow(TeamWnd.WndHandle,"upPageBtn")
		if handle ~=0 then
			GUIWndSetVisible(handle,false)
		end
		handle = GetWindow(TeamWnd.WndHandle,"downPageBtn")
		if handle ~=0 then
			GUIWndSetVisible(handle,false)
		end			
	end
end

function TeamWnd.DownPgClicked()
	if TeamWnd.nowPage < TeamWnd.totalPage then
		TeamWnd.nowPage = TeamWnd.nowPage + 1
		TeamWnd.ReloadList()
	end
end

function TeamWnd.UpPgClicked()
	if TeamWnd.nowPage > 1 then
		TeamWnd.nowPage = TeamWnd.nowPage - 1
		TeamWnd.ReloadList();
	end
end

function TeamWnd.UpdataPageBtn()
	local handle = GetWindow(TeamWnd.WndHandle,"yy")
	if handle ~= 0 then
		GUIEditSetTextM(handle, TeamWnd.nowPage.."/"..TeamWnd.totalPage)
	end
	if TeamWnd.nowPage == 1 then
		handle = GetWindow(TeamWnd.WndHandle,"upPageBtn")
		if handle ~= 0 then
			GUIWndSetEnableM(handle, false)
		end
	else
		handle = GetWindow(TeamWnd.WndHandle,"upPageBtn")
		if handle ~= 0 then
			GUIWndSetEnableM(handle, true)
		end
	end
	if TeamWnd.nowPage == TeamWnd.totalPage then
		handle = GetWindow(TeamWnd.WndHandle,"downPageBtn")
		if handle ~= 0 then
			GUIWndSetEnableM(handle, false)
		end
	else
		handle = GetWindow(TeamWnd.WndHandle,"downPageBtn")
		if handle ~= 0 then
			GUIWndSetEnableM(handle, true)
		end
	end
end

function TeamWnd.NewPlayerJoin()
	CLAddDelayTask("MyTeamUpdata()",500,1)
end

function TeamWnd.OnLeaveteam()
	TeamWnd.team = 0
	TeamWnd.teaml = 0	
	MyTeamUpdata()
end

function TeamWnd.OnLeaveteamEX()		
	MyTeamUpdata()
end

RegisterUIEvent(LUA_EVENT_TRANSFERLEADERTEAM,"移交队长成功","MyTeamUpdata")
RegisterUIEvent(LUA_EVENT_ONLEAVETEAM,"离开队伍成功","TeamWnd.OnLeaveteam")	-- 自己or队伍解散
RegisterUIEvent(LUA_EVENT_ONLEAVETEAMEX,"离开队伍成功EX","TeamWnd.OnLeaveteamEX")	-- 其他队员离开or被踢
RegisterUIEvent(LUA_EVENT_ONJOINTEAM,"有新成员加入","TeamWnd.NewPlayerJoin")
RegisterUIEvent(LUA_EVENT_ONJOINTEAMEX,"有新成员加入EX","TeamWnd.NewPlayerJoin")
TeamWnd.main()