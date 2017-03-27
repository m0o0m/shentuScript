QuestDlg ={}

function QuestDlg.main()
	local ui = "<form> <dialog OnInit='QuestDlg.UIInit' id='QuestDlg' x='0' y='0' w='738' h='526' image='1804200001' magic='1'  center='true' OnClose='QuestDlg.wndClose' esc_close='true' drag='true' revmsg='true'>"
	.."    <image id='QuestImage' x='333' y='9' w='53' h='23' image='1804200005' revmsg='true' enable='false'/>"
	.."    <image id='TaskDisplayAreaImage' x='231' y='82' w='469' h='376' image='1804200002' revmsg='true' enable='false'/>"
	.."    <button id='Close' x='673' y='9 ' w='24' h='24' image='1800000068' OnLButtonClick='luaWndClose' revmsg='true'/>"
	.."    <button id='QuestBtn0' x='55' y='50' w='77' h='29' image='1800000427' revmsg='true' text='任 务' text_color=#E6D284/>"
	.."    <button id='QuestBtn1' x='140' y='50' w='77' h='29' image='1800000427' revmsg='true' text='可接任务' text_color=#E6D284/>"
	.."    <wnd id='Tree' x='35 ' y='90'w='195' h='420' />"
	.."		<edit id='QuestName' image='0' x='231' y='94' w='469' h='16' canedit='false' revmsg='true' enable='false' font='TitleFont1' align='center'/>"
	.."    <button id='TraceQuest' x='430' y='468' w='88' h='31' image='1800000431' revmsg='true' text='放弃追踪' text_color=#E6D284/>"
	.."    <button id='DropQuest' x='560 ' y='468' w='88' h='31' image='1800000431' revmsg='true' text='放弃任务' text_color=#E6D284/>"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)
end

function QuestDlg.UIInit(_Handle)
	QuestDlg.wndHandle = _Handle
end

function QuestDlg.wndClose()
	local wnd = GUIWndFindWindow(0, "QuestDlg") 
	if wnd ~= 0 then
		QuestDlg = nil
	end
end
QuestDlg.main()