SettingBasic = {}
function SettingBasic.main()
    local ui = "<form default_parent='GameSettingDlg'> <dialog OnInit='SettingBasic.UIInit' id='SettingBasic' image='0' x='10' y='65' w='610' h='320' revmsg='true'>"
	.."	<check id='ShowPlayerName' image='1800000176' x='33' y='23' w='98' h='21' OnCheckChange='SettingBasic.ShowNameChange' revmsg='true' param='1' text='显示玩家名字' text_color='#CFB360'/>"
	.."	<check id='TuPlayerName' image='1800000176' x='33' y='60' w='98' h='21' OnCheckChange='SettingBasic.ShowNameChange' revmsg='true' param='4' text='突出玩家名字' text_color='#CFB360'/>"
	.."	<check id='TuNpcName' image='1800000176' x='33' y='97' w='92' h='21' OnCheckChange='SettingBasic.ShowNameChange' revmsg='true' param='7' text='突出显示NPC' text_color='#CFB360'/>"
	.."	<check id='Start_msg' image='1800000176' x='33' y='134' w='128' h='21' OnCheckChange='SettingBasic.ShowNameChange' revmsg='true' param='10' text='开启伤害/恢复提示' text_color='#CFB360'/>"
	.."	<check id='NoShift' image='1800000176' x='33' y='171' w='68' h='21' OnCheckChange='SettingBasic.ShowNameChange' revmsg='true' param='12' text='免Shift' text_color='#CFB360'/>"
	.."	<check id='ShowHName' image='1800000176' x='33' y='208' w='86' h='21' OnCheckChange='SettingBasic.ShowNameChange' revmsg='true' param='14' text='显示行会名' text_color='#CFB360'/>"
	.."	<check id='ShowOther' image='1800000176' x='33' y='245' w='98' h='21' OnCheckChange='SettingBasic.ShowNameChange' revmsg='true' param='16' text='显示他人后仰' text_color='#CFB360'/>"
	.."	<check id='ShowSysMsg' image='1800000176' x='223' y='23' w='98' h='21' OnCheckChange='SettingBasic.ShowNameChange' revmsg='true' param='2' text='显示系统消息' text_color='#CFB360'/>"
	.."	<check id='ChixuJ' image='1800000176' x='223' y='60' w='74' h='21' OnCheckChange='SettingBasic.ShowNameChange' revmsg='true' param='5' text='持久警告' text_color='#CFB360'/>"
	.."	<check id='ShanSItem' image='1800000176' x='223' y='97' w='74' h='21' OnCheckChange='SettingBasic.ShowNameChange' revmsg='true' param='8' text='闪烁物品' text_color='#CFB360'/>"
	.."	<check id='Num_blood' image='1800000176' x='223' y='134' w='74' h='21' OnCheckChange='SettingBasic.ShowNameChange' revmsg='true' param='11' text='数字显血' text_color='#CFB360'/>"
	.."	<check id='ShowTip' image='1800000176' x='223' y='171' w='116' h='21' OnCheckChange='SettingBasic.ShowNameChange' revmsg='true' param='13' text='显示装备比较Tip' text_color='#CFB360'/>"
	.."	<check id='ShowCName' image='1800000176' x='223' y='208' w='74' h='21' OnCheckChange='SettingBasic.ShowNameChange' revmsg='true' param='15' text='显示称谓' text_color='#CFB360'/>"
	.."	<check id='DDfengci' image='1800000176' x='223' y='245' w='98' h='21' OnCheckChange='SettingBasic.ShowNameChange' revmsg='true' param='17' text='刀刀风刺剑法' text_color='#CFB360'/>"
	.."	<check id='DuiDieS' image='1800000176' x='413' y='23' w='74' h='21' OnCheckChange='SettingBasic.ShowNameChange' revmsg='true' param='3' text='堆叠拾取' text_color='#CFB360'/>"
	.."	<check id='ShowMonster' image='1800000176' x='413' y='60' w='98' h='21' OnCheckChange='SettingBasic.ShowNameChange' revmsg='true' param='6' text='显示怪物尸体' text_color='#CFB360'/>"
	.."	<check id='SlowAction' image='1800000176' x='413' y='97' w='158' h='21' OnCheckChange='SettingBasic.ShowNameChange' revmsg='true' param='9' text='开启右键模式' text_color='#CFB360'/>"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)
end


SettingBasic.WndHandle = 0
SettingBasic.tab = {SHOW_PLAYER_NAME,SHOW_SYS_INFO,STACK_PICK,PROTRUDES_MYNAME,WARN,SHOW_MONSTERCORPSE,PROTRUDES_NPCNAME,TWINKLE_ITEM,RIGHT_MOUSE,HURT_RECOVER_PROMPT,HP_NUM_SHOW,NO_SHIFT,TIP_EQUIP_COMPARE,SHOW_FAMILYNAME,SHOW_TITLE,SHOW_OTHER_HOUYANG,KEEP_FENGCI}
SettingBasic.handle = {"ShowPlayerName","ShowSysMsg","DuiDieS","TuPlayerName","ChixuJ","ShowMonster","TuNpcName","ShanSItem","SlowAction","Start_msg",
"Num_blood","NoShift","ShowTip","ShowHName","ShowCName","ShowOther","DDfengci"}
function SettingBasic.UIInit(_GUIHandle)
	SettingBasic.WndHandle = _GUIHandle	
	
	local _PlayerName = GUIWndFindChildM(_GUIHandle,"ShowPlayerName")
	if _PlayerName ~= 0 then
		GUI:CheckBoxSetAutoChange(_PlayerName,true)
		
	end
	
	local _TPlayerName = GUIWndFindChildM(_GUIHandle,"TuPlayerName")
	if _TPlayerName ~= 0 then
		GUI:CheckBoxSetAutoChange(_TPlayerName,true)
		
	end
	
	local _NpcName = GUIWndFindChildM(_GUIHandle,"TuNpcName")
	if _NpcName ~= 0 then
		GUI:CheckBoxSetAutoChange(_NpcName,true)
		
	end
	
	local _Start_msg = GUIWndFindChildM(_GUIHandle,"Start_msg")
	if _Start_msg ~= 0 then
		GUI:CheckBoxSetAutoChange(_Start_msg,true)
	end
	
	local _NoShift = GUIWndFindChildM(_GUIHandle,"NoShift")
	if _NoShift ~= 0 then
		GUI:CheckBoxSetAutoChange(_NoShift,true)
		
	end
	
	local _ShowHName = GUIWndFindChildM(_GUIHandle,"ShowHName")
	if _ShowHName ~= 0 then
		GUI:CheckBoxSetAutoChange(_ShowHName,true)
	end
	
	local _ShowOther = GUIWndFindChildM(_GUIHandle,"ShowOther")
	if _ShowOther ~= 0 then
		GUI:CheckBoxSetAutoChange(_ShowOther,true)
	end
	
	local _ShowSysMsg = GUIWndFindChildM(_GUIHandle,"ShowSysMsg")
	if _ShowSysMsg ~= 0 then
		GUI:CheckBoxSetAutoChange(_ShowSysMsg,true)
	end
	
	local _ChixuJ = GUIWndFindChildM(_GUIHandle,"ChixuJ")
	if _ChixuJ ~= 0 then
		GUI:CheckBoxSetAutoChange(_ChixuJ,true)
	end
	
	local _ShanSItem = GUIWndFindChildM(_GUIHandle,"ShanSItem")
	if _ShanSItem ~= 0 then
		GUI:CheckBoxSetAutoChange(_ShanSItem,true)
	end
	
	local _Num_blood = GUIWndFindChildM(_GUIHandle,"Num_blood")
	if _Num_blood ~= 0 then
		GUI:CheckBoxSetAutoChange(_Num_blood,true)
	end
	
	local _ShowTip = GUIWndFindChildM(_GUIHandle,"ShowTip")
	if _ShowTip ~= 0 then
		GUI:CheckBoxSetAutoChange(_ShowTip,true)
	end
	
	local _ShowCName = GUIWndFindChildM(_GUIHandle,"ShowCName")
	if _ShowCName ~= 0 then
		GUI:CheckBoxSetAutoChange(_ShowCName,true)
	end
	
	local _DDfengci = GUIWndFindChildM(_GUIHandle,"DDfengci")
	if _DDfengci ~= 0 then
		GUI:CheckBoxSetAutoChange(_DDfengci,true)
	end
	
	local _DuiDieS = GUIWndFindChildM(_GUIHandle,"DuiDieS")
	if _DuiDieS ~= 0 then
		GUI:CheckBoxSetAutoChange(_DuiDieS,true)
	end
	
	local _ShowMonster = GUIWndFindChildM(_GUIHandle,"ShowMonster")
	if _ShowMonster ~= 0 then
		GUI:CheckBoxSetAutoChange(_ShowMonster,true)
	end
	
	local _SlowAction = GUIWndFindChildM(_GUIHandle,"SlowAction")
	if _SlowAction ~= 0 then
		GUI:CheckBoxSetAutoChange(_SlowAction,true)
	end
	
	
	for i = 1 , #SettingBasic.tab do 
		local _Istrue = false
		if CLGetBasicSetting(SettingBasic.tab[i]) then
			_Istrue = as3.tolua(LuaRet)
		end
		local _handle = GetWindow(nil,"GameSettingDlg,SettingBasic,"..SettingBasic.handle[i])
		GUICheckBoxSetCheck(_handle,_Istrue)
	end
end
function SettingBasic.ShowNameChange(_Handle)
	local index = GUIWndGetParam(_Handle)
	local _Istrue = GUICheckBoxGetCheck(_Handle)
	CLChangeBasicSetting(SettingBasic.tab[index],_Istrue)
end

SettingBasic.main()