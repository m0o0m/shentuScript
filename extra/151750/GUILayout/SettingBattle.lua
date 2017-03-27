SettingBattle = {}
function SettingBattle.main()
    local ui = "<form default_parent='GameSettingDlg'> <dialog OnInit='SettingBattle.UIInit' id='SettingBattle' image='0' x='10' y='65' w='610' h='320' revmsg='true'>"
	.."	<image id='image1' image='1801500048' x='215' y='3' w='138' h='37' revmsg='true' enable='false'/>"
	.."	<image id='zhans' image='1800000179,1800000180,1800000181,1800000182,1800000183,1800000184,1800000185,1800000186,1800000187' x='60' y='38' w='450' h='42' check_point='0' revmsg='true'/>"
	.."	<image id='image2' image='1801500049' x='215' y='83' w='138' h='37' revmsg='true' enable='false'/>"
	.."	<image id='fas' image='1800000179,1800000180,1800000181,1800000182,1800000183,1800000184,1800000185,1800000186,1800000187' x='60' y='118' w='450' h='42' check_point='0' revmsg='true'/>"
	.."	<image id='image3' image='1801500050' x='215' y='163' w='138' h='37' revmsg='true' enable='false'/>"
	.."	<image id='daos' image='1800000179,1800000180,1800000181,1800000182,1800000183,1800000184,1800000185,1800000186,1800000187' x='60' y='198' w='450' h='90' check_point='0' revmsg='true'/>"
	.."	<check id='checkbox0' image='1800000176' x='90' y='50' w='74' h='21' OnCheckChange='SettingBattle.ShowNameChange' revmsg='true' param='1' text='自动野蛮' text_color='#D1B25F'/>"
	.."	<check id='checkbox1' image='1800000176' x='230' y='50' w='74' h='21' OnCheckChange='SettingBattle.ShowNameChange' revmsg='true' param='2' text='自动烈火' text_color='#D1B25F'/>"
	.."	<check id='checkbox2' image='1800000176' x='360' y='50' w='98' h='21' OnCheckChange='SettingBattle.ShowNameChange' revmsg='true' param='9' text='智能月弧弯刀' text_color='#D1B25F'/>"
	.."	<check id='checkbox4' image='1800000176' x='90' y='130' w='98' h='21' OnCheckChange='SettingBattle.ShowNameChange' revmsg='true' param='3' text='自动流光护盾' text_color='#D1B25F'/>"
	.."	<check id='checkbox5' image='1800000176' x='90' y='220' w='110' h='21' OnCheckChange='SettingBattle.ShowNameChange' revmsg='true' param='4' text='持续地煞镇魔咒' text_color='#D1B25F'/>"
	.."	<check id='checkbox6' image='1800000176' x='230' y='220' w='74' h='21' OnCheckChange='SettingBattle.ShowNameChange' revmsg='true' param='5' text='自动隐身' text_color='#D1B25F'/>"
	.."	<check id='checkbox7' image='1800000176' x='360' y='220' w='110' h='21' OnCheckChange='SettingBattle.ShowNameChange' revmsg='true' param='6' text='自动太极玄清术' text_color='#D1B25F'/>"
	.."	<check id='checkbox8' image='1800000176' x='90' y='250' w='110' h='21' OnCheckChange='SettingBattle.ShowNameChange' revmsg='true' param='7' text='持续天罡护体咒' text_color='#D1B25F'/>"
	.."	<check id='checkbox9' image='1800000176' x='230' y='250' w='86' h='21' OnCheckChange='SettingBattle.ShowNameChange' revmsg='true' param='8' text='自动红绿毒' text_color='#D1B25F'/>"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)
end


SettingBattle.tab = {3001,3002,3003,3004,3005,3011,3006,3010,3009}
SettingBattle.handle = {"checkbox0","checkbox1","checkbox4","checkbox5","checkbox6","checkbox7","checkbox8","checkbox9","checkbox2"}

SettingBattle.WndHandle = 0
function SettingBattle.UIInit(_GUIHandle)
	SettingBattle.WndHandle = _GUIHandle
	
	
	for i = 0, 9 do
		local _check = GUI:WndFindChildM(_GUIHandle,"checkbox" .. i)
		GUI:CheckBoxSetAutoChange(_check,true)
	end
	
	
	for i = 1 , #SettingBattle.tab do 
		local _Istrue = false
		if CL:GetBasicSetting(SettingBattle.tab[i]) then
			_Istrue = LuaRet
		end
		local handle = SettingBattle.handle[i]
		local _handle = GetWindow(nil,"GameSettingDlg,SettingBattle,"..handle)
		GUI:CheckBoxSetCheck(_handle,_Istrue)
	end
end
function SettingBattle.ShowNameChange(_Handle)
	local index = GUI:WndGetParam(_Handle)
	local _Istrue = GUI:CheckBoxGetCheck(_Handle)
	CL:ChangeBasicSetting(SettingBattle.tab[index],_Istrue)
	
end

SettingBattle.main()