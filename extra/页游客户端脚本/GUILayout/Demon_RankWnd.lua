Demon_RankWnd ={}
local ui = "<form> <dialog OnInit='Demon_RankWnd.UIInit' id='Demon_RankWnd' image='1806200000' x='0' y='25' center='true' w='619' h='460' revmsg='true'>"
	.."	<image id='TestWndChild_1' image='1806200020' x='75' y='0' w='468' h='43' check_point='0' revmsg='true'/>"   --夜袭巫山城排行榜
	.."	<edit id='TestWndChild_2' x='82' y='43' w='56' h='21' revmsg='true' text_color='#B97E22' text='排行' font='system'/>"
	.."	<edit id='TestWndChild_3' x='210' y='45' w='56' h='21' revmsg='true' text_color='#B97E22' text='姓名' font='system'/>"
	.."	<edit id='TestWndChild_4' x='325' y='43' w='56' h='21' revmsg='true' text_color='#B97E22' text='等级' font='system'/>"
	.."	<edit id='TestWndChild_5' x='433' y='43' w='56' h='21' revmsg='true' text_color='#B97E22' text='职业' font='system'/>"
	.."	<edit id='TestWndChild_6' x='526' y='43' w='56' h='21' revmsg='true' text_color='#B97E22' text='积分' font='system'/>"
	
	.."	<image id='rank1' image='1806200005' x='87' y='73' w='18' h='25' check_point='0' revmsg='true' visible='false'/>"
	.."	<image id='rank2' image='1806200006' x='87' y='108' w='18' h='25' check_point='0' revmsg='true' visible='false'/>"
	.."	<image id='rank3' image='1806200007' x='87' y='143' w='18' h='25' check_point='0' revmsg='true' visible='false'/>"
	.."	<edit id='rank4' x='91' y='180' w='15' h='21' revmsg='true' text_color='#C2B6A0' text='4' font='system' visible='false'/>"
	.."	<edit id='rank5' x='92' y='215' w='15' h='21' revmsg='true' text_color='#C2B6A0' text='5' font='system' visible='false'/>"
	.."	<edit id='rank6' x='92' y='250' w='15' h='21' revmsg='true' text_color='#C2B6A0' text='6' font='system' visible='false'/>"
	.."	<edit id='rank7' x='92' y='285' w='15' h='21' revmsg='true' text_color='#C2B6A0' text='7' font='system' visible='false'/>"
	.."	<edit id='rank8' x='92' y='320' w='15' h='21' revmsg='true' text_color='#C2B6A0' text='8' font='system' visible='false'/>"
	.."	<edit id='rank9' x='92' y='355' w='15' h='21' revmsg='true' text_color='#C2B6A0' text='9' font='system' visible='false'/>"
	.."	<edit id='rank10' x='92' y='390' w='15' h='21' revmsg='true' text_color='#C2B6A0' text='10' font='system' visible='false'/>"
	
	.."	<edit id='name1' x='176' y='75' w='100' h='21' align='center' revmsg='true' text_color='#D801E9' text='' font='system' visible='false'/>"
	.."	<edit id='name2' x='176' y='110' w='100' h='21' align='center' revmsg='true' text_color='#00A8FF' text='' font='system' visible='false'/>"
	.."	<edit id='name3' x='176' y='145' w='100' h='21' align='center' revmsg='true' text_color='#12A72E' text='' font='system' visible='false'/>"
	.."	<edit id='name4' x='176' y='180' w='100' h='21' align='center' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='name5' x='177' y='215' w='100' h='21' align='center' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='name6' x='177' y='250' w='100' h='21' align='center' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='name7' x='177' y='285' w='100' h='21' align='center' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='name8' x='177' y='320' w='100' h='21' align='center' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='name9' x='177' y='355' w='100' h='21' align='center' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='name10' x='177' y='390' w='100' h='21' align='center' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	
	.."	<edit id='level1' x='330' y='75' w='56' h='21' revmsg='true' text_color='#D801E9' text='' font='system' visible='false'/>"
	.."	<edit id='level2' x='330' y='110' w='56' h='21' revmsg='true' text_color='#00A8FF' text='' font='system' visible='false'/>"
	.."	<edit id='level3' x='330' y='145' w='56' h='21' revmsg='true' text_color='#12A72E' text='' font='system' visible='false'/>"
	.."	<edit id='level4' x='330' y='180' w='56' h='21' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='level5' x='331' y='215' w='56' h='21' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='level6' x='331' y='250' w='56' h='21' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='level7' x='331' y='285' w='56' h='21' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='level8' x='331' y='320' w='56' h='21' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='level9' x='331' y='355' w='56' h='21' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='level10' x='331' y='390' w='56' h='21' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	
	.."	<edit id='job1' x='433' y='75' w='56' h='21' revmsg='true' text_color='#D801E9' text='' font='system' visible='false'/>"
	.."	<edit id='job2' x='433' y='110' w='56' h='21' revmsg='true' text_color='#00A8FF' text='' font='system' visible='false'/>"
	.."	<edit id='job3' x='433' y='145' w='56' h='21' revmsg='true' text_color='#12A72E' text='' font='system' visible='false'/>"
	.."	<edit id='job4' x='433' y='180' w='56' h='21' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='job5' x='434' y='215' w='56' h='21' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='job6' x='434' y='250' w='56' h='21' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='job7' x='434' y='285' w='56' h='21' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='job8' x='434' y='320' w='56' h='21' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='job9' x='434' y='355' w='56' h='21' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='job10' x='434' y='390' w='56' h='21' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"

	.."	<edit id='score1' x='528' y='75' w='56' h='21' revmsg='true' text_color='#D801E9' text='' font='system' visible='false'/>"
	.."	<edit id='score2' x='528' y='110' w='56' h='21' revmsg='true' text_color='#00A8FF' text='' font='system' visible='false'/>"
	.."	<edit id='score3' x='528' y='145' w='56' h='21' revmsg='true' text_color='#12A72E' text='' font='system' visible='false'/>"
	.."	<edit id='score4' x='528' y='180' w='56' h='21' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='score5' x='529' y='215' w='56' h='21' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='score6' x='529' y='250' w='56' h='21' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='score7' x='529' y='285' w='56' h='21' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='score8' x='529' y='320' w='56' h='21' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='score9' x='529' y='355' w='56' h='21' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	.."	<edit id='score10' x='529' y='390' w='56' h='21' revmsg='true' text_color='#E4C19F' text='' font='system' visible='false'/>"
	
	.."	<edit id='rank' x='78' y='428' w='300' h='21' revmsg='true' text_color='#FFCC00' text='' font='system'/>"
--[[.."	<edit id='rank' x='137' y='428' w='59' h='21' revmsg='true' text='' font='system'/>"
	.."	<edit id='TestWndChild_59' x='247' y='428' w='59' h='21' revmsg='true' text_color='#FFCC00' text='积分：' font='system'/>"
	.."	<edit id='score' x='287' y='428' w='59' h='21' revmsg='true' text='' font='system'/>"--]]
	.."	<richedit id='back' x='465' y='432' w='72' h='22' text='#SELECT#回到龙城#SELECTEND#' revmsg='true' text_color='#00FF00' font='system' OnLButtonUp='Demon_RankWnd.back'/>"
	.."	<edit id='time' x='522' y='428' w='59' h='22' revmsg='true' text_color='#00FF00' text='' font='system'/>"
	.." </dialog>"
	.."</form>"

function Demon_RankWnd.main()
	local handle = GetWindow("","Demon_RankWnd")
	if handle == 0 then 
		GenFormByString(ui)
	end
end
Demon_RankWnd.timeimg = 60
Demon_RankWnd.Wnd = 0
Demon_RankWnd.oneTime = true
--UI Logic Code Start
function Demon_RankWnd.UIInit(_Handle)
	Demon_RankWnd.Wnd = _Handle
	local ranker = deserialize(as3.tolua(FormParam[1]))
	local score = tonumber(as3.tolua(FormParam[2]))
	local ranking = tonumber(as3.tolua(FormParam[3]))
	local handle = 0
	local tab_job = {"战士","法师","道士"}
	for i=1,#ranker do 
		if i < 11 then 
			if ranker[i][3] == 0 then break end
			handle = GetWindow(_Handle,"rank"..i)
			if handle ~= 0 then 
				GUIWndSetVisible(handle,true)
			end
			handle = GetWindow(_Handle,"name"..i)
			if handle ~= 0 then 
				GUIEditSetTextM(handle,ranker[i][2]) 
				GUIWndSetVisible(handle,true)
			end
			handle = GetWindow(_Handle,"level"..i)
			if handle ~= 0 then 
				GUIEditSetTextM(handle,ranker[i][4]) 
				GUIWndSetVisible(handle,true)
			end
			handle = GetWindow(_Handle,"job"..i)
			if handle ~= 0 then 
				GUIEditSetTextM(handle,tab_job[tonumber(ranker[i][5])]) 
				GUIWndSetVisible(handle,true)
			end
			handle = GetWindow(_Handle,"score"..i)
			if handle ~= 0 then 
				GUIEditSetTextM(handle,ranker[i][3]) 
				GUIWndSetVisible(handle,true)
			end
		end
	end
	
	handle = GetWindow(_Handle,"rank")
	if handle ~= 0 then
		if ranking < 6 then
			GUIEditSetTextM(handle,"恭喜您进入前5名，获得挑战魔龙的资格")
		else
			GUIEditSetTextM(handle,"很遗憾您未进入前5名，无法挑战魔龙")
		end
	end
	
	handle= GetWindow(_Handle,"back")
	if handle ~= 0 then
		GUIRichEditClear(handle)
		if ranking < 6 then
			GUIRichEditAppendString(handle,"#SELECT#挑战魔龙#SELECTEND#") 
		else
			GUIRichEditAppendString(handle,"#SELECT#回到龙城#SELECTEND#") 
		end
	end
	CLAddDelayTask("Demon_RankWnd.Script()", 1000, 60)
end

function Demon_RankWnd.Script()
	
	Demon_RankWnd.timeimg = Demon_RankWnd.timeimg - 1
	handle = GetWindow("","Demon_RankWnd,time")
	if handle ~= 0 then
		GUIEditSetTextM(handle,Demon_RankWnd.timeimg.."秒")
	end
	if Demon_RankWnd.timeimg < 1 then 
		Demon_RankWnd.timeimg = 0
	end 
	if Demon_RankWnd.timeimg == 0 then
		Demon_RankWnd.back()
	end
end

function Demon_RankWnd.back()
	if Demon_RankWnd.oneTime then
		local handle = GetWindow("","Demon_RankWnd")
		if handle ~= 0 then 
			GUIWndClose(handle)
		end
		UI:Lua_SubmitForm("魔族入侵表单", "Back","")
		DemonInWnd.CloseDlg()
		Demon_RankWnd.oneTime = false
	end
end

Demon_RankWnd.main()