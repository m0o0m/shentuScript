WingWnd ={}
local ui = "<form> "
	.."<dialog OnInit='WingWnd.UIInit' id='WingWnd' OnClose='WingWnd.Winclose' image='1806300000' x='199' y='30' w='742' h='504' center='true' esc_close='true' drag='true' revmsg='true'>"
	.."<image id='wing_title' image='1806300015' x='339' y='7' w='65' h='27' check_point='0' revmsg='true' enable='false'/>"
	.."<button id='Close' image='1803700030' x='676' y='11' w='26' h='26' OnLButtonUp='WingWnd.closeWnd' revmsg='true'/>"
	.."<image id='jindut_back' image='1806300022' x='434' y='346' w='274' h='28' revmsg='true' OnMouseOut='WingWnd.SetFlagVar1' OnMouseIn='WingWnd.SetFlagVar2'/>"
	.."<image id='jindut' image='1806300024' x='464' y='352' w='214' h='16' OnMouseOut='WingWnd.SetFlagVar1' OnMouseIn='WingWnd.SetFlagVar2' check_point='0' enable='true' visible='false'/>"
	.."<image id='WingEffectLeft' x='30' y='142' image='3000100500' revmsg='false' enable='false'/>"
	.."<image id='WingEffectRight' x='365' y='142'  image='3000100500' revmsg='false' enable='false'/>"
	.."<edit id='peiy_edit' x='512' y='354' w='117' h='12' align='center' canedit='false' enable='false' text_color='#FFFFFF' text='0' font='system'/>"
	.."<image id='wing_edit' x='168' y='68' w='100' h='30' enable='false'/>"
	.."<image id='wing_edit2' x='498' y='68' w='100' h='30' enable='false'/>"
	.."<image id='levelImg1' x='358' y='74' w='33' h='57' check_point='0'/>"
	.."<image id='levelImg2' x='653' y='74' w='33' h='57' check_point='0'/>"
	.."<image id='NowWing' image='0' x='22' y='0' w='393' h='450' check_point='0' enable='false'/>"
	.."--<edit id='mubiao_i' x='445' y='100' w='200' h='130' canedit='false' revmsg='true' text='  ' font='system'/>"
	.."<image id='NextWing' image='0' x='360' y='0' w='16' h='16' check_point='0' enable='false'/>"
	.."<edit id='edit_gong' x='55' y='397' w='42' h='23' canedit='false' enable='false' text_color='#FE0100' text='攻击：' font='system'/>"
	.."<edit id='edit_fan' x='55' y='420' w='42' h='23' canedit='false' enable='false' text_color='#00FE2A' text='物防：' font='system'/>"
	.."<edit id='edit_mo' x='55' y='443' w='42' h='23' canedit='false' enable='false' text_color='#02D3FE' text='魔防：' font='system'/>"
	.."<image id='editback1' image='1806300025' x='107' y='400' w='108' h='20' check_point='0' enable='false'/>"
	.."<image id='editback2' image='1806300025' x='107' y='423' w='108' h='20' check_point='0' enable='false'/>"
	.."<image id='editback3' image='1806300025' x='107' y='446' w='108' h='20' check_point='0' enable='false'/>"
	.."<edit id='edit1' x='124' y='399' w='74' h='16' align='center' canedit='false' revmsg='true' enable='false' text_color='#C2B6A0' text='111' font='system'/>"
	.."<edit id='edit2' x='124' y='422' w='74' h='16' align='center' canedit='false' revmsg='true' enable='false' text_color='#C2B6A0' text='222' font='system'/>"
	.."<edit id='edit3' x='124' y='445' w='74' h='16' align='center' canedit='false' revmsg='true' enable='false' text_color='#C2B6A0' text='333' font='system'/>"
	.."<edit id='edit_miaos1' x='456' y='384' w='70' h='19' canedit='false' revmsg='true' enable='false' text_color='#B8A085' text='消耗需求:' font='system'/>"
	.."<image id='yu_image' image='1891410064' x='505' y='365' w='45' h='45' check_point='0' fitsize='true' enable='false'/>"
	.."<image id='gold_image' image='1806600014' x='606' y='386' w='16' h='14' check_point='0' enable='false'/>"
	.."<edit id='yug_num' x='540' y='384' w='40' h='16' canedit='false' align='center' revmsg='true' enable='false' text_color='#00FE2A' font='system'/>"
	.."<edit id='yug_one' x='570' y='384' w='40' h='20' canedit='false' revmsg='true' enable='false' text_color='#FFFFFF' font='system'/>"
	.."<edit id='gold_edit' x='627' y='385' w='40' h='20' canedit='false' revmsg='true' enable='false' text_color='#00FE2A' font='system'/>"
	.."<image id='UseYBBkImg' image='1806300027' x='460' y='410' w='183' h='22' check_point='0' enable='false'/>"
	.."<check id='UseYB' image='1806300027' x='460' y='410' w='183' h='22' checked='true' auto_change='true' OnLButtonUp='WingWnd.GetCheckState' revmsg='true' text_color='#B8A085' text=' 材料不足时，自动从商场购买'/>"
	.."<button id='begin_button' image='1806100002' x='450' y='444' w='88' h='31' text_color='#FFE5C1' OnLButtonUp='WingWnd.begin' revmsg='true' text='开始培养'/>"
	.."<button id='Auto_button' image='1806100002' x='582' y='444' w='88' h='31' text_color='#FFE5C1' OnLButtonUp='WingWnd.Auto' revmsg='true' text='自动培养'/>"
	.."<edit id='msg' x='447' y='428' w='220' h='25' align='center' revmsg='true' text_color='RED' font='system'/>"
	.."<button id='TRAIN_BTN_PROMPT' image='1804600019' x='570' y='435' w='188' h='50' text='培养翅膀' visible='false' text_color='#DBC300' revmsg='false' />"
	.."<image id='TestWndChild_14' image='1806300020' x='90' y='371' w='85' h='16' check_point='0' revmsg='true'/>"
	.."<image id='TestWndChild_15' image='1806300021' x='277' y='371' w='86' h='16' check_point='0' revmsg='true'/>"
	.."<edit id='TestWndChild_3' x='240' y='397' w='42' h='23' canedit='false' revmsg='true' text_color='#FE0100' text='攻击：' font='system'/>"
	.."<edit id='TestWndChild_4' x='240' y='420' w='42' h='23' canedit='false' revmsg='true' text_color='#00FE2A' text='物防：' font='system'/>"
	.."<edit id='TestWndChild_5' x='240' y='443' w='42' h='23' canedit='false' revmsg='true' text_color='#02D3FE' text='魔防：' font='system'/>"
	.."<image id='TestWndChild_6' image='1806300025' x='292' y='400' w='108' h='20' check_point='0' revmsg='true'/>"
	.."<image id='TestWndChild_7' image='1806300025' x='292' y='423' w='108' h='20' check_point='0' revmsg='true'/>"
	.."<image id='TestWndChild_8' image='1806300025' x='292' y='446' w='108' h='20' check_point='0' revmsg='true'/>"
	.."<edit id='n_edit1' x='309' y='399' w='74' h='16' align='center' canedit='false' revmsg='true' text_color='#C2B6A0' text='111' font='system'/>"
	.."<edit id='n_edit2' x='309' y='422' w='74' h='16' align='center' canedit='false' revmsg='true' text_color='#C2B6A0' text='222' font='system'/>"
	.."<edit id='n_edit3' x='309' y='445' w='74' h='16' align='center' canedit='false' revmsg='true' text_color='#C2B6A0' text='333' font='system'/>"
	.."<image id='TestWndChild_13' image='1806300019' x='511' y='326' w='105' h='22' check_point='0' revmsg='true'/>"
	.."<image id='betterFlag1' image='1806300026' x='378' y='427' w='12' h='13' check_point='0' revmsg='true'/>"
	.."<image id='betterFlag2' image='1806300026' x='378' y='403' w='12' h='13' check_point='0' revmsg='true'/>"
	.."<image id='betterFlag3' image='1806300026' x='378' y='449' w='12' h='13' check_point='0' revmsg='true'/>"
	.."<image id='CheckEffect' x='458' y='408'  image='3020100000' revmsg='false' visible='false' enable='false'/>"
	.."<image id='BeginEffect' x='439' y='436'  image='3020100700' revmsg='false' enable='false'/>"
	.."<image id='wing_edit' x='168' y='68' w='100' h='30' enable='false'/>"
	.."<image id='wing_edit2' x='498' y='68' w='100' h='30' enable='false'/>"
	.."</dialog>"
	.."</form>"

function WingWnd.main()
	GenFormByString(ui)
end

--UI Logic Code Start
wings = 0
WingWnd.WndHandle = 0
WingWnd.CheckEffect = 0
WingWnd.BeginEffect = 0
WingWnd.wing = {}
WingWnd.yug = {} --羽根
WingWnd.gold = {}
WingWnd.pei = {}
WingWnd.level = 0
WingWnd.peiy = 0
WingWnd.yugnum = 0
WingWnd.dc = 0
WingWnd.peiy = 0
WingWnd.flagVar = false
function WingWnd.UIInit(_Handle)
	WingWnd.WndHandle = _Handle
	if tonumber(FIRST_OPEN_WINGWINDOW) == 1 then
		local handle = GetWindow(_Handle, "TRAIN_BTN_PROMPT")
		if handle ~= 0 then
			GUI:ButtonSetTextFont(handle,"SIMLI18")
			GUI:WndSetVisible(handle, true)
			GUI:WndSetTextArrangeType(handle,10,0,0,0)
		end
	end
	WingWnd.CheckEffect =  GetWindow(WingWnd.WndHandle , "CheckEffect")
	WingWnd.BeginEffect =  GetWindow(WingWnd.WndHandle , "BeginEffect")
	if WingWnd.CheckEffect ~= 0 then
		GUI:WndSetVisible(WingWnd.CheckEffect, false)
	end
	if WingWnd.BeginEffect  ~= 0 then
		GUI:WndSetVisible(WingWnd.BeginEffect , false)
	end
	GUI:WndAddTimerBrief(_Handle, 1000, "WingWnd.OnCountDown")
	UI:Lua_SubmitForm("翅膀升阶表单", "main", "")
end

function WingWnd.GetCheckState(_GUIhandle)
	local _Istrue = GUI:CheckBoxGetCheck(_GUIhandle)
	GUI:WndSetVisible(WingWnd.CheckEffect, _Istrue)
end

function wing_data(data)
	WingWnd.wing = data[1]
	WingWnd.yug = data[2]
	WingWnd.gold = data[3]
	WingWnd.pei = data[4]
	WingWnd.level = data[5]
	WingWnd.peiy = data[6]
	WingWnd.yugnum  = data[7]
	WingWnd.dc = data[8]
	wing_update(WingWnd.level,WingWnd.peiy)
	WingWnd.SetFlagVar2()
	WingWnd.SetFlagVar1()
end

function wing_update(inde,peiy)
			
	if wings ~= 0 then
		UI:Lua_SubmitForm("新开服活动", "fun_wing", "")
	end
	
	WingWnd.peiy = peiy
	if inde < 5 then
		--[[WndAddEffect(WingWnd.WndHandle, "zid", 3020100000, -2, -2, 100, 0)
		WndAddEffect(WingWnd.WndHandle, "begin_button", 3020100700, -13, -8, 100, 0)--]]
		GUI:WndSetVisible(WingWnd.CheckEffect, true)
		GUI:WndSetVisible(WingWnd.BeginEffect , true)
	end
	local levelImgArr = {1806300001, 1806300002, 1806300003, 1806300004, 1806300005, 1806300006, 1806300007, 1806300008, 1806300009, 1806300010, 1806300011}
	local wingImgArr = {1806300029, 1806300030, 1806300031, 1806300032, 1806300033, 1806300034, 1806300035, 1806300036, 1806300037, 1806300038, 1806300039}
	--local tab_jie = {"零阶","一阶","二阶","三阶","四阶","五阶","六阶","七阶","八阶","九阶","十阶"}
	local tab = {}
	local index = inde + 1 	
	local temp1 = 0 
	if index == #WingWnd.wing then                 --当翅膀顶级时
		--local _handle =  GetWindow(WingWnd.WndHandle,"level_edit1",nil)
		--EditSetText(_handle,nil,tab_jie[index])
		--GUI:WndSetTextArrangeType(_handle,4,-2,4,1);
		ImageSetImageID(WingWnd.WndHandle, "levelImg1", levelImgArr[index])
		ImageSetImageID(WingWnd.WndHandle, "wing_edit", wingImgArr[index])
		local temp = CL:GetItemTemplateHandleByKeyName(WingWnd.wing[index])
		--[[local name = ""
		if CL:GetItemTemplatePropByHandle(temp,ITEM_PROP_NAME) then
			name = LuaRet
		end
		local _handle =  GetWindow(WingWnd.WndHandle,"wing_edit",nil)
		EditSetText(_handle,nil,name)--]]
		local image = 0
		if CL:GetItemTemplatePropByHandle(temp,14) then
			image = LuaRet
		end
		
		ImageSetImageID(WingWnd.WndHandle,"NowWing",image)
		
		local tab1 = {{80,81},{76,77},{78,79}}
		local ms = {"攻击","物防","魔防"}
		local str = ""
		for i = 1 , 3 do 
			local mi = 0 
			local ma = 0
			if CL:GetItemTemplatePropByHandle(temp,tab1[i][1]) then
				ma = LuaRet
			end
			if CL:GetItemTemplatePropByHandle(temp,tab1[i][2]) then
				mi = LuaRet
			end
			local _handle =  GetWindow(WingWnd.WndHandle,"edit"..i,nil)
			EditSetText(_handle,nil,mi.." - "..ma)
		--[[	if temp1 ~= 0 then 
				if CL:GetItemTemplatePropByHandle(temp1,tab1[i][1]) then
					ma = LuaRet
				end
				if CL:GetItemTemplatePropByHandle(temp1,tab1[i][2]) then
					mi = LuaRet
				end
				str = str.."00BBFF "..ms[i]..": "..mi.." - "..ma..""
			end	--]]
		end		
		
		ImageSetImageID(WingWnd.WndHandle,"NextWing",1802300006)	
		
		local tab_visible = {"gold_edit","yug_num","yug_one","wing_edit2","jindut","edit_pei","peiy_edit","jindut_back","TestWndChild_13","edit_miaos","edit_miaos1","yu_image","gold_image","UseYB", "UseYBBkImg","begin_button","Auto_button","levelImg2","CheckEffect","BeginEffect"}
		for i=1 ,#tab_visible do 
			local _hand = GetWindow(WingWnd.WndHandle,tab_visible[i],nil)
			if _hand ~= 0 then 
				GUI:WndSetVisible(_hand,false)
			end 
		end
		for i = 1, 3 do
			local _handle =  GetWindow(WingWnd.WndHandle,"n_edit"..i,nil)
			if _handle ~= 0 then
				EditSetText(_handle,nil,"已到顶级")
			end
			handle = GetWindow(WingWnd.WndHandle,"betterFlag"..i,nil)
			if handle ~= 0 then 
				GUI:WndSetVisible(handle,false)
			end 
		end
		WingWnd.ReCalcImgPos()
		return 
	end
	
--[[	local _handle =  GetWindow(WingWnd.WndHandle,"level_edit1",nil)
	EditSetText(_handle,nil,tab_jie[index])
	GUI:WndSetTextArrangeType(_handle,4,-2,4,1);
	local _handle =  GetWindow(WingWnd.WndHandle,"level_edit2",nil)
	EditSetText(_handle,nil,tab_jie[index + 1])
	GUI:WndSetTextArrangeType(_handle,4,-2,4,1);	--]]
	ImageSetImageID(WingWnd.WndHandle, "levelImg1", levelImgArr[index])
	ImageSetImageID(WingWnd.WndHandle, "levelImg2", levelImgArr[index+1])

	
	local _handle =  GetWindow(WingWnd.WndHandle,"yug_one",nil)
	EditSetText(_handle,nil,"/"..WingWnd.yug[index])
	
	local _handle =  GetWindow(WingWnd.WndHandle,"gold_edit",nil)
	EditSetText(_handle,nil,""..WingWnd.gold[index])
	
	local temp = CL:GetItemTemplateHandleByKeyName(WingWnd.wing[index])
	--[[local name = ""
	if CL:GetItemTemplatePropByHandle(temp,ITEM_PROP_NAME) then
		name = LuaRet
	end
	local _handle =  GetWindow(WingWnd.WndHandle,"wing_edit",nil)
	EditSetText(_handle,nil,name)--]]
	ImageSetImageID(WingWnd.WndHandle, "wing_edit", wingImgArr[index])
	
	local image = 0
	if CL:GetItemTemplatePropByHandle(temp,14) then
		image = LuaRet
	end
	ImageSetImageID(WingWnd.WndHandle,"NowWing",image)

	
	if index < #WingWnd.wing then
		temp1 = CL:GetItemTemplateHandleByKeyName(WingWnd.wing[index + 1])
		--[[local name1 = ""
		if CL:GetItemTemplatePropByHandle(temp1,ITEM_PROP_NAME) then
			name1 = LuaRet
		end
		local _handle1 =  GetWindow(WingWnd.WndHandle,"wing_edit2",nil)
		EditSetText(_handle1,nil,name1)--]]
		ImageSetImageID(WingWnd.WndHandle, "wing_edit2", wingImgArr[index+1])
		local image1 = 0
		if CL:GetItemTemplatePropByHandle(temp1,14) then
			image1 = LuaRet
		end
		ImageSetImageID(WingWnd.WndHandle,"NextWing",image1)
	end	
	local tab1 = {{80,81},{76,77},{78,79}}
	--local ms = {"攻击","物防","魔防"}
	--local str = ""
	for i = 1 , 3 do 
		local mi = 0 
		local ma = 0
		if CL:GetItemTemplatePropByHandle(temp,tab1[i][1]) then
			ma = LuaRet
		end
		if CL:GetItemTemplatePropByHandle(temp,tab1[i][2]) then
			mi = LuaRet
		end
		local _handle =  GetWindow(WingWnd.WndHandle,"edit"..i,nil)
		EditSetText(_handle,nil,mi.." - "..ma)
		if temp1 ~= 0 then 
			if CL:GetItemTemplatePropByHandle(temp1,tab1[i][1]) then
				ma = LuaRet
			end
			if CL:GetItemTemplatePropByHandle(temp1,tab1[i][2]) then
				mi = LuaRet
			end
			--str = str.."00BBFF "..ms[i]..": "..mi.." - "..ma..""
			local _handle =  GetWindow(WingWnd.WndHandle,"n_edit"..i,nil)
			EditSetText(_handle,nil,mi.." - "..ma)
			--GUI:WndSetHint(_handle, str)
		end	
	end
	
	WingWnd.ReCalcImgPos()
	peiy_update(index,peiy,WingWnd.yugnum)
end

function WingWnd.SetFlagVar1()
	WingWnd.flagVar = false
end

function WingWnd.SetFlagVar2()
	WingWnd.flagVar = true
	local dc = GetLeaveTimeString(WingWnd.dc)
	local strStart = GetTipBegin()
	local str1 = tipSet2(0, 0)..tipText("当前祝福值："..WingWnd.peiy, 4294940978, "system")
	local str2 = tipSet2(0, 15)..tipText("清空倒计时："..dc, 4278242558, "system")
	local str3 = tipSet2(0, 45)..tipText("什么是祝福值：", 4294940978, "system")
	local str4 = tipSet2(0, 60)..tipText("翅膀升阶失败后会产生祝福值，提高下次升级成功率", 4293181854, "system")
	local str5 = tipSet2(0, 90)..tipText("祝福值清空时间：", 4294940978, "system")
	local str6 = tipSet2(0, 105)..tipText("祝福值每天0点清空", 4294901760, "system")
	local str7 = tipSet2(0, 135)..tipText("祝福值的作用：", 4294940978, "system")
	local str8 = tipSet2(0, 150)..tipText("祝福值越高，翅膀升阶的成功率越高，当祝福值达到满值时，翅膀将100%成功。", 4293181854, "system")
	local strEnd = GetTipEnd()
	local uih = GetWindow(0,"WingWnd,jindut_back")
	if uih ~= 0 then
        GUI:WndSetTipInfo(uih, strStart..str1..str2..str3..str4..str5..str6..str7..str8..strEnd)
	end
	uih = GetWindow(0,"WingWnd,jindut") 
	if uih ~= 0 then
        GUI:WndSetTipInfo(uih, strStart..str1..str2..str3..str4..str5..str6..str7..str8..strEnd)
	end
end

function WingWnd.OnCountDown()
	WingWnd.dc = WingWnd.dc - 1
	if WingWnd.flagVar then
		local dc = GetLeaveTimeString(WingWnd.dc)
		local strStart = GetTipBegin()
		local str1 = tipSet2(0, 0)..tipText("当前祝福值："..WingWnd.peiy, 4294940978, "system")
		local str2 = tipSet2(0, 15)..tipText("清空倒计时："..dc, 4278242558, "system")
		local str3 = tipSet2(0, 45)..tipText("什么是祝福值：", 4294940978, "system")
		local str4 = tipSet2(0, 60)..tipText("翅膀升阶失败后会产生祝福值，提高下次升级成功率", 4293181854, "system")
		local str5 = tipSet2(0, 90)..tipText("祝福值清空时间：", 4294940978, "system")
		local str6 = tipSet2(0, 105)..tipText("祝福值每天0点清空", 4294901760, "system")
		local str7 = tipSet2(0, 135)..tipText("祝福值的作用：", 4294940978, "system")
		local str8 = tipSet2(0, 150)..tipText("祝福值越高，翅膀升阶的成功率越高，当祝福值达到满值时，翅膀将100%成功。", 4293181854, "system")
		local strEnd = GetTipEnd()
		local uih = GetWindow(0,"WingWnd,jindut_back")
		if uih ~= 0 then
        	GUI:WndSetTipInfo(uih, strStart..str1..str2..str3..str4..str5..str6..str7..str8..strEnd)
		end
		uih = GetWindow(0,"WingWnd,jindut") 
		if uih ~= 0 then
        	GUI:WndSetTipInfo(uih, strStart..str1..str2..str3..str4..str5..str6..str7..str8..strEnd)
		end
	end
end


function peiy_update(inde,peiy,yugnum)
	WingWnd.peiy = peiy
	local index = tonumber(inde)
	local _handle =  GetWindow(WingWnd.WndHandle,"yug_num",nil)
	if _handle ~= 0 then
		EditSetText(_handle,nil,""..yugnum)
		if tonumber(yugnum) < WingWnd.yug[index] then
			GUI:EditSetTextColor(_handle, MakeARGB(255, 255, 0, 0))
		else
			GUI:EditSetTextColor(_handle, MakeARGB(255, 255, 255, 255))
		end
	end
	
	local _handle = GetWindow(WingWnd.WndHandle,"peiy_edit",nil)
	EditSetText(_handle,nil,""..peiy)
	local _jindutImage = GetWindow(WingWnd.WndHandle,"jindut",nil)
	if _jindutImage ~= 0 then
		local value = 0
		if tonumber(peiy) > 0 then
			local a = tonumber(peiy)
			local b = tonumber(WingWnd.pei[index])
			value = a/b
		end
		if value > 0 then
			GUI:WndSetVisible(_jindutImage,true)
			GUI:ImageSetDrawRect(_jindutImage,0,value,0,1)
		else
			GUI:WndSetVisible(_jindutImage,false)
		end
	end	
	
	
end

function WingWnd.HidePrompt()
	local handle = GetWindow(WingWnd.WndHandle, "TRAIN_BTN_PROMPT")
	if handle ~= 0 then
		GUI:WndSetVisible(handle,false)
	end
end

function WingWnd.begin(_handle)
	local _GUIhandle = GetWindow(WingWnd.WndHandle,"UseYB",nil)
	local _Istrue = GUI:CheckBoxGetCheck(_GUIhandle)
	local index = 0 
	if _Istrue then
		index = 1
	end
	UI:Lua_SubmitForm("翅膀升阶表单", "begin", ""..index)
end	


function WingWnd.Auto(_handle)
	local _GUIhandle = GetWindow(WingWnd.WndHandle,"UseYB",nil)
	local _Istrue = GUI:CheckBoxGetCheck(_GUIhandle)
	local index = 0 
	if _Istrue then
		index = 1
	end
	local str = GUI:WndGetText(_handle)
	if str == "自动培养" then
		GUI:WndSetTextM(_handle,"停止培养")
	else
		GUI:WndSetTextM(_handle,"自动培养")
	end
	UI:Lua_SubmitForm("翅膀升阶表单", "Auto_begin", ""..index)
	
end	

function WingWnd.msgbox()
		luaMsgBox.new("元宝", "很抱歉，您的元宝不足", {"前往充值", "取消"}, {"WingWnd.chongz", "WingWnd.out"}, "")
end

function WingWnd.chongz(h)
	CL:OpenUrlUseIEByType(3)
	luaWndClose(h)
end

function WingWnd.out(h)
	luaWndClose(h)
end



function WingWnd.msg_up(str)
	local _handle = GUI:WndFindChildM(WingWnd.WndHandle, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, str)
	end
	if WingWnd.DelayTaskId ~= nil then
		CL:DelDelayTask(WingWnd.DelayTaskId)
		WingWnd.DelayTaskId = nil
	end
	WingWnd.DelayTaskId = CL:AddDelayTask("WingWnd.clear()", 3000, 1)
end	

function WingWnd.clear()
	local _handle = GUI:WndFindChildM(WingWnd.WndHandle, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, "")
	end
end


function WingWnd.Changetext()
	local _GUIhandle = GetWindow(WingWnd.WndHandle,"Auto_button",nil)
	GUI:WndSetTextM(_GUIhandle,"自动培养")
end	 


function WingWnd.closeWnd(_handle)	
	GUI:WndClose(WingWnd.WndHandle)
end

function WingWnd.Winclose()
	UI:Lua_SubmitForm("翅膀升阶表单", "WinClose", "")
end	

function WingWnd.ReCalcImgPos()
	local _Handle = GUI:WndFindChildM(WingWnd.WndHandle,"NowWing")
	GUI:WndGetSizeM(_Handle)
	if LuaRet[1] == 0 or LuaRet[2] == 0 then
		GUI:WndSetPosM(_Handle, -47, -30)
	else
		GUI:WndSetPosM(_Handle, 217 - LuaRet[1]/2, 212 - LuaRet[2]/2)
	end
	_Handle = GUI:WndFindChildM(WingWnd.WndHandle,"NextWing")
	GUI:WndGetSizeM(_Handle)
	if LuaRet[1] == 0 or LuaRet[2] == 0 then
		GUI:WndSetPosM(_Handle, 296, -30)
	else
		GUI:WndSetPosM(_Handle, 560 - LuaRet[1]/2, 212 - LuaRet[2]/2)
	end
end

CL:SetAnimateData(30201,100)
WingWnd.main()