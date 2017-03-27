Marks2Item_c ={}
local ui = "<form> <dialog OnInit='Marks2Item_c.UIInit' id='Marks2Item_c' image='1805900000' x='113' y='44' w='663' h='504' center='true' esc_close='true' drag='true' revmsg='true' magic='1'>"
	.."	<image id='mainBack' image='1807800001' x='36' y='57' w='592' h='427' check_point='0' revmsg='false' enable='false'/>"
	.."	<image id='title' image='1807800000' x='285' y='7' w='95' h='28' check_point='0' revmsg='false' enable='false'/>"
	.."	<button id='opt_btn5' image='1806500017' x='357' y='63' w='77' h='30' OnLButtonUp='Marks2Item_c.itemOpt' revmsg='true' param='5' text='其他' text_color='#C2B6A0'/>"
	.."	<button id='opt_btn1' image='1806500017' x='37' y='63' w='77' h='30' OnLButtonUp='Marks2Item_c.itemOpt' revmsg='true' param='1' text='神兵' text_color='#C2B6A0'/>"
	.."	<button id='opt_btn3' image='1806500017' x='196' y='63' w='77' h='30' OnLButtonUp='Marks2Item_c.itemOpt' revmsg='true' param='3' text='男女互换' text_color='#C2B6A0'/>"
	.."	<button id='opt_btn4' image='1806500017' x='276' y='63' w='77' h='30' OnLButtonUp='Marks2Item_c.itemOpt' revmsg='true' param='4' text='首饰' text_color='#C2B6A0'/>"
	.."	<button id='opt_btn2' image='1806500017' x='116' y='63' w='77' h='30' OnLButtonUp='Marks2Item_c.itemOpt' revmsg='true' param='2' text='神甲' text_color='#C2B6A0'/>"
	.."	<image id='item_btn1' image='1807800002' x='40' y='99' w='373' h='69' enable='false' revmsg='false' text_color='#C2B6A0'/>"
	.."	<image id='item_btn2' image='1807800002' x='40' y='168' w='373' h='69' enable='false' revmsg='false' text_color='#C2B6A0'/>"
	.."	<image id='item_btn3' image='1807800002' x='40' y='236' w='373' h='69' enable='false' revmsg='false' text_color='#C2B6A0'/>"
	.."	<image id='item_btn4' image='1807800002' x='40' y='305' w='373' h='69' enable='false' revmsg='false' text_color='#C2B6A0'/>"
	.."	<image id='item_btn5' image='1807800002' x='39' y='374' w='373' h='69' enable='false' revmsg='false' text_color='#C2B6A0'/>"
	--.."	<image id='item_btn5' image='1807800002' x='39' y='374' w='373' h='69' OnLButtonUp='Marks2Item_c.item_btn' revmsg='true' text_color='#C2B6A0'/>"

	.."	<image id='item_name_bg1' image='1803500002' x='107' y='105' w='243' h='33' check_point='0' revmsg='false' enable='false'/>"
	.."	<image id='item_name_bg2' image='1803500002' x='107' y='174' w='243' h='33' check_point='0' revmsg='false' enable='false'/>"
	.."	<image id='item_name_bg3' image='1803500002' x='107' y='245' w='243' h='33' check_point='0' revmsg='false' enable='false'/>"
	.."	<image id='item_name_bg4' image='1803500002' x='107' y='314' w='243' h='33' check_point='0' revmsg='false' enable='false'/>"
	.."	<image id='item_name_bg5' image='1803500002' x='106' y='383' w='243' h='33' check_point='0' revmsg='false' enable='false'/>"

	.."	<edit id='item_name1' x='126' y='100' w='206' h='25' align='center' enable='false' text_color='#b8a085' font='system'/>"
	.."	<button id='get_btn1' image='1800000081' x='341' y='121' w='63' h='26' OnLButtonUp='Marks2Item_c.exchangeItem' revmsg='true' param='1' text_color='#C2B6A0'/>"
	.."	<edit id='item_name2' x='126' y='169' w='206' h='25' align='center' enable='false' text_color='#b8a085' font='system'/>"
	.."	<button id='get_btn2' image='1800000081' x='341' y='190' w='63' h='26' OnLButtonUp='Marks2Item_c.exchangeItem' revmsg='true' param='2' text_color='#C2B6A0'/>"
	.."	<edit id='item_name3' x='126' y='238' w='206' h='25' align='center' enable='false' text_color='#b8a085' font='system'/>"
	.."	<button id='get_btn3' image='1800000081' x='341' y='258' w='63' h='26' OnLButtonUp='Marks2Item_c.exchangeItem' revmsg='true' param='3' text_color='#C2B6A0'/>"
	.."	<edit id='item_name4' x='126' y='307' w='206' h='25' align='center' enable='false' text_color='#b8a085' font='system'/>"
	.."	<button id='get_btn4' image='1800000081' x='341' y='327' w='63' h='26' OnLButtonUp='Marks2Item_c.exchangeItem' revmsg='true' param='4' text_color='#C2B6A0'/>"
	.."	<edit id='item_name5' x='125' y='376' w='206' h='25' align='center' enable='false' text_color='#b8a085' font='system'/>"
	.."	<button id='get_btn5' image='1800000081' x='340' y='396' w='63' h='26' OnLButtonUp='Marks2Item_c.exchangeItem' revmsg='true' param='5' text_color='#C2B6A0'/>"
	.."	<button id='up_btn' image='1800000094' x='174' y='455' w='20' h='19' OnLButtonUp='Marks2Item_c.up_btn' revmsg='true'/>"
	.."	<button id='down_btn' image='1800000098' x='254' y='455' w='20' h='19' OnLButtonUp='Marks2Item_c.dowm_btn' revmsg='true'/>"
	.."	<image id='TestWndChild_151' image='1800000279' x='195' y='446' w='58' h='34' check_point='0' revmsg='true'/>"
	.."	<richedit id='page_text' x='213' y='457' w='34' h='15' revmsg='true' font='system'/>"
	.."	<image id='text1' image='1807800003' x='483' y='102' w='78' h='14' check_point='0' enable='false'/>"
	.."	<image id='text2' image='1807800004' x='483' y='264' w='78' h='14' check_point='0' enable='false'/>"
	.."	<richedit id='text3' x='425' y='130' w='131' h='24' text='拥有宝藏积分：' text_color='#ded7c7' enable='false' font='system'/>"
	.."	<richedit id='text4' x='425' y='161' w='128' h='29' text='获得积分途径：' text_color='#ded7c7' enable='false' font='system'/>"
	.."	<richedit id='text5' x='454' y='195' w='78' h='18' revmsg='true' font='system'/>"
	.."	<richedit id='text6' x='454' y='222' w='177' h='31' text='武器升级保留强化和注灵，但不保留幸运值' text_color='#ded7c7' enable='false' font='system'/>"
	.."	<image id='tag_img1' image='1807800005' x='431' y='196' w='11' h='11' enable='false' check_point='0' revmsg='true'/>"
	.."	<image id='tag_img2' image='1807800005' x='431' y='224' w='11' h='11' check_point='0' revmsg='true'/>"
	.."	<button id='close' image='1805900080' x='598' y='10' w='34' h='38' OnLButtonUp='Marks2Item_c.closeWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<edit id='player_score' x='506' y='133' w='54' h='13' canedit='false' revmsg='false' font='system'/>"
	.."	<richedit id='item_text1' x='120' y='146' w='250' h='20' canedit='false' revmsg='true' enable='false' font='system'/>"
	.."	<richedit id='item_text2' x='120' y='215' w='250' h='20' canedit='false' revmsg='true' enable='false' font='system'/>"
	.."	<richedit id='item_text3' x='120' y='284' w='250' h='20' canedit='false' revmsg='true' enable='false' font='system'/>"
	.."	<richedit id='item_text4' x='120' y='353' w='250' h='20' canedit='false' revmsg='true' enable='false' font='system'/>"
	.."	<richedit id='item_text5' x='120' y='422' w='250' h='20' canedit='false' revmsg='true' enable='false' font='system'/>"
	

	.." <image id='magic11' x='51' y='102' w='53' h='53' image='1800000385' revmsg='false' enable='false'/>"
	.." <image id='magic21' x='51' y='102' w='53' h='53' image='1891430000' revmsg='false' enable='false'/>"
	.."	<itemctrl id='itemctrl1' x='55' y='106' w='53' h='53' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"

	
	.." <image id='magic12' x='51' y='170' w='53' h='53' image='1800000385' revmsg='false' enable='false'/>"
	.." <image id='magic22' x='51' y='170' w='53' h='53' image='1891430001' revmsg='false' enable='false'/>"
	.."	<itemctrl id='itemctrl2' x='55' y='175' w='53' h='53' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"

	
	.." <image id='magic13' x='51' y='238' w='53' h='53' image='1800000385' revmsg='false' enable='false'/>"
	.." <image id='magic23' x='51' y='238' w='53' h='53' image='1891430002' revmsg='false' enable='false'/>"
	.."	<itemctrl id='itemctrl3' x='55' y='243' w='53' h='53' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"

	
	.." <image id='magic14' x='51' y='307' w='53' h='53' image='1800000385' revmsg='false' enable='false'/>"
	.." <image id='magic24' x='51' y='307' w='53' h='53' image='1891430003' revmsg='false' enable='false'/>"
	.."	<itemctrl id='itemctrl4' x='55' y='312' w='53' h='53' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"


	.." <image id='magic15' x='51' y='376' w='53' h='53' image='1800000385' revmsg='false' enable='false'/>"
	.." <image id='magic25' x='51' y='376' w='53' h='53' image='1891430004' revmsg='false' enable='false'/>"
	.."	<itemctrl id='itemctrl5' x='55' y='381' w='53' h='53' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"

	.."	<richedit id='shownText1' x='425' y='288' w='200' h='40' font='system'/>"
	.."	<richedit id='shownText2' x='425' y='326' w='200' h='40' font='system'/>"
	.."	<richedit id='shownText3' x='425' y='364' w='200' h='40' font='system'/>"
	.."	<richedit id='shownText4' x='425' y='402' w='200' h='40' font='system'/>"
	.."	<richedit id='shownText5' x='425' y='440' w='200' h='40' font='system'/>"
	
	
	
	.." </dialog>"
	.."</form>"


function Marks2Item_c.main()
	local handle = GetWindow(0,"Marks2Item_c")
	if handle ~= 0 then
		GUI:WndClose(handle)
	else
		GenFormByString(ui)
	end
end

--UI Logic Code Start
Marks2Item_c.WndHandle = 0
Marks2Item_c.BtnHandle = 0
Marks2Item_c.nowpage1 = 1
Marks2Item_c.param1 = deserialize(FormParam[1])                                             --服务端传来的item表
Marks2Item_c.isExistbag = deserialize(FormParam[3])                                          --玩家背包是否存在兑换所需的item（所有） （放在一个表里，存在=1，不存在=0）
Marks2Item_c.tb_score = tonumber(deserialize(FormParam[2]))                                  --服务端传来的玩家探宝积分
Marks2Item_c.info = deserialize(FormParam[4])

Marks2Item_c.item_tab ={
["神魔法杖"] = 1891430004,
["圣魔法杖"] = 1891430004,
["幻神法杖"] = 1891430004,
["天地玄奇法杖"] = 1891430001,
["天异玄奥法杖"] = 1891430001,

["天魁玄灵法杖"] = 1891430000,
["天暴玄宗法杖"] = 1891430000,


["神魔法袍"] = 1891430004,
["神魔羽衣"] = 1891430004,
["圣魔法袍"] = 1891430004,
["圣魔羽衣"] = 1891430004,
["幻神法袍"] = 1891430004,

["幻神羽衣"] = 1891430004,
["天地玄奇法袍"] = 1891430001,
["天地玄奇羽衣"] = 1891430001,
["天异玄奥法袍"] = 1891430001,
["天异玄奥羽衣"] = 1891430001,

["天魁玄灵法袍"] = 1891430000,
["天魁玄灵羽衣"] = 1891430000,
["天暴玄宗法袍"] = 1891430000,
["天暴玄宗羽衣"] = 1891430000,


["幻神头盔"] = 1891430004,
["幻神手镯"] = 1891430004,
["幻神靴子"] = 1891430004,
["天地玄奇项链"] = 1891430001,
["天地玄奇戒指"] = 1891430001,

["天地玄奇腰带"] = 1891430001,


["宝石结晶小"] = 1891430003,
["宝石结晶中"] = 1891430003,
["宝石结晶大"] = 1891430003,
["魂珠碎片中"] = 1891430003,
["魂珠碎片大"] = 1891430003,


["金砖小"] = 1891430000,
["金砖大"] = 1891430000,
}
function Marks2Item_c.UIInit(_Handle)
	Marks2Item_c.WndHandle = _Handle
	Marks2Item_c.index = 1
	Marks2Item_c.totalpage1 = math.ceil(#Marks2Item_c.param1[1]/5)                                         --通过item个数判断页码数
	Marks2Item_c.item_num = #Marks2Item_c.param1[1]                                                         --item的个数
	Marks2Item_c.is_Existbag = Marks2Item_c.isExistbag[1]                                                    --玩家背包是否存在兑换所需的item （神兵）  初始化时默认界面为神兵界面
	Marks2Item_c.setExchangeMsg(Marks2Item_c.info)                                                                      --全服兑换记录初始化
	ButtonSetIsActivePageBtn(Marks2Item_c.WndHandle,"opt_btn1",true)                                           --初始化时默认选中“神兵”这个按钮 （变红）
	for i = 1 , 5 do 
		local handle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"opt_btn"..i)
		GUI:ButtonSetStateTextColor(handle,0,MakeARGB(255, 107, 91, 80))
		GUI:ButtonSetStateTextColor(handle,1,MakeARGB(255, 107, 91, 80))
		GUI:ButtonSetStateTextColor(handle,2,MakeARGB(255, 206, 178, 98))
	end
	
	Marks2Item_c.stable()                                                                                      --固定部分UI显示
	
	Marks2Item_c.updateUI()                 --页面更新
	
	if GUI:WndAddTimerBrief(Marks2Item_c.WndHandle, 10000, "Marks2Item_c.SubmitTimer") then    --设置定时器，每10秒钟刷新一次全服兑换记录
		Marks2Item_c.time_id = LuaRet
	end
end

function Marks2Item_c.SubmitTimer()
	UI:Lua_SubmitForm("Marks2Item_s","setExchangeMsg", "");
end

-------------------------------------------主页面更新----------------------------------------
function Marks2Item_c.updateUI()
	local _GUIHandle = 0
	local a = (Marks2Item_c.nowpage1-1)*5
	local itemNumber = 5
	local itemName = ""
	local _Handle = 0
	if Marks2Item_c.item_num >= 5 then 
		itemNumber = 5
	else
		itemNumber = Marks2Item_c.item_num
	end
	for i=1,5 do
		GUIHandle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"magic1"..i) 
		if GUIHandle ~= 0 then 
			GUI:WndSetVisible(GUIHandle, false)
		end
		GUIHandle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"magic2"..i) 
		if GUIHandle ~= 0 then 
			GUI:WndSetVisible(GUIHandle, false)
		end
	end
	for i = 1, itemNumber do
		_GUIHandle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"item_name"..i)
		_Handle = CL:GetItemTemplateHandleByKeyName(Marks2Item_c.param1[Marks2Item_c.index][i+5*(Marks2Item_c.nowpage1-1)][1])
		if CL:GetItemTemplatePropByHandle(_Handle,1) then
			itemName = LuaRet
		end
		GUI:EditSetTextM(_GUIHandle,''..itemName)              --item名称显示

		_GUIHandle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"itemctrl"..i)
		RDItemCtrlSetGUIDataByKeyName(_GUIHandle,Marks2Item_c.param1[Marks2Item_c.index][i+5*(Marks2Item_c.nowpage1-1)][1], 1, false)    --物品框填充


		_GUIHandle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"get_btn"..i)               --兑换按钮设置
		if Marks2Item_c.tb_score >= Marks2Item_c.param1[Marks2Item_c.index][i+5*(Marks2Item_c.nowpage1-1)][3] and tonumber(Marks2Item_c.is_Existbag[i+a]) == 1 then	
			if _GUIHandle ~= 0 then
				GUI:WndSetTextOffset(_GUIHandle, 1, 1)
				GUI:WndSetTextM(_GUIHandle,"兑换")
				GUI:WndSetEnableM(_GUIHandle, true)
			end	
		end
		if Marks2Item_c.tb_score < Marks2Item_c.param1[Marks2Item_c.index][i+5*(Marks2Item_c.nowpage1-1)][3] then	
			if _GUIHandle ~= 0 then
				GUI:WndSetTextM(_GUIHandle,"积分不足")
				GUI:WndSetTextOffset(_GUIHandle, 1, 1)
				GUI:WndSetEnableM(_GUIHandle, false)
			end
		end
		if Marks2Item_c.tb_score >= Marks2Item_c.param1[Marks2Item_c.index][i+5*(Marks2Item_c.nowpage1-1)][3] and tonumber(Marks2Item_c.is_Existbag[i+a]) == 0 then	
			if _GUIHandle ~= 0 then
				GUI:WndSetTextOffset(_GUIHandle, 1, 1)
				GUI:WndSetTextM(_GUIHandle,"装备不足")
				GUI:WndSetEnableM(_GUIHandle, false)
			end	
		end

		

		_GUIHandle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"item_text"..i)         --兑换所需消耗品及积分显示
		GUI:RichEditClear(_GUIHandle)
		if Marks2Item_c.index < 5 then
			_Handle = CL:GetItemTemplateHandleByKeyName(Marks2Item_c.param1[Marks2Item_c.index][i+5*(Marks2Item_c.nowpage1-1)][2])
			if CL:GetItemTemplatePropByHandle(_Handle,1) then
				itemName = LuaRet
			end
			GUI:RichEditAppendString(_GUIHandle,"#COLORCOLOR_BGREENG#消耗：#COLOREND#"..itemName.."  +  "..Marks2Item_c.param1[Marks2Item_c.index][i+5*(Marks2Item_c.nowpage1-1)][3].."宝藏积分")
		else
			GUI:RichEditAppendString(_GUIHandle,"#COLORCOLOR_BGREENG#消耗：#COLOREND#"..Marks2Item_c.param1[Marks2Item_c.index][i+5*(Marks2Item_c.nowpage1-1)][3].."宝藏积分")
		end
		
		GUIHandle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"magic1"..i) 
		if GUIHandle ~= 0 then 
			GUI:WndSetVisible(GUIHandle, true)
		end
		GUIHandle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"magic2"..i) 
		if GUIHandle ~= 0 then 
			GUI:WndSetVisible(GUIHandle, true)
			ImageSetImageID(Marks2Item_c.WndHandle,"magic2"..i,Marks2Item_c.item_tab[Marks2Item_c.param1[Marks2Item_c.index][i+5*(Marks2Item_c.nowpage1-1)][1]])
		end
		
		GUIHandle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"item_name"..i)
		if Marks2Item_c.item_tab[Marks2Item_c.param1[Marks2Item_c.index][i+5*(Marks2Item_c.nowpage1-1)][1]] == 1891430004 then  --紫   -- 黄  -- 红  -- 绿
			GUI:WndSetTextColorM(GUIHandle,MakeARGB(255, 226, 65, 217))
		elseif Marks2Item_c.item_tab[Marks2Item_c.param1[Marks2Item_c.index][i+5*(Marks2Item_c.nowpage1-1)][1]] == 1891430001 then
			GUI:WndSetTextColorM(GUIHandle,MakeARGB(255, 254, 226, 78))
		elseif Marks2Item_c.item_tab[Marks2Item_c.param1[Marks2Item_c.index][i+5*(Marks2Item_c.nowpage1-1)][1]] == 1891430000 then
			GUI:WndSetTextColorM(GUIHandle,MakeARGB(255, 240, 65, 64))
		elseif Marks2Item_c.item_tab[Marks2Item_c.param1[Marks2Item_c.index][i+5*(Marks2Item_c.nowpage1-1)][1]] == 1891430003 then
			GUI:WndSetTextColorM(GUIHandle,MakeARGB(255, 121, 255, 53))
		end
	end			

	Marks2Item_c.scoreUpdate(Marks2Item_c.tb_score) --显示玩家的探宝积分
	
	
	--Marks2Item_c.BtnHandle = 0
end

function Marks2Item_c.scoreUpdate(score)
	_GUIHandle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"player_score")      --显示玩家的探宝积分
	GUI:EditSetTextM(_GUIHandle,''..score)
	Marks2Item_c.tb_score = score
end



function Marks2Item_c.stable()

	local text5 = GUI:WndFindWindow(Marks2Item_c.WndHandle,"text5")
	GUI:RichEditAppendString(text5,"#SELECT#".."探宝赠送".."#SELECTEND#")	 --探宝链接
	GUI:WndRegistScript(text5, RDWndBaseCL_mouse_lbUp, "Marks2Item_c.openTB")
	
	local page_text = GUI:WndFindWindow(Marks2Item_c.WndHandle,"page_text")   
	GUI:RichEditAppendString(page_text,Marks2Item_c.nowpage1.."/"..Marks2Item_c.totalpage1)	  --页码显示
	Marks2Item_c.btnEnable_set()
end


function Marks2Item_c.getParam(score,_isExistlist)  --更新兑换按钮
	local houseHandle = GetWindow(0, "TreasureWnd")
	if houseHandle ~= 0 then
		TreasureWnd.SetBzScore(score)
	end
	Marks2Item_c.tb_score = score
	Marks2Item_c.is_Existbag = _isExistlist[Marks2Item_c.index]
	Marks2Item_c.updateUI()
end


function Marks2Item_c.fanye()         --翻页
	Marks2Item_c.btnEnable_set()
	local page_text = GUI:WndFindWindow(Marks2Item_c.WndHandle,"page_text")
	GUI:RichEditClear(page_text)
	GUI:RichEditAppendString(page_text,Marks2Item_c.nowpage1.."/"..Marks2Item_c.totalpage1)
	Marks2Item_c.del_widget()
	Marks2Item_c.updateUI()
end	

function Marks2Item_c.btnEnable_set()
	if Marks2Item_c.nowpage1 == 1 then
		local handle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"up_btn")
		if handle ~= 0 then
			GUI:WndSetEnableM(handle, false)
		end
	else
		local handle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"up_btn")
		if handle ~= 0 then
			GUI:WndSetEnableM(handle, true)
		end
	end
	
	if Marks2Item_c.nowpage1 == Marks2Item_c.totalpage1 then
		local handle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"down_btn")
		if handle ~= 0 then
			GUI:WndSetEnableM(handle, false)
		end
	else
		local handle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"down_btn")
		if handle ~= 0 then
			GUI:WndSetEnableM(handle, true)
		end
	end
end



function Marks2Item_c.up_btn()            --上一页
	if Marks2Item_c.nowpage1 > 1 then
		Marks2Item_c.nowpage1 = Marks2Item_c.nowpage1 - 1
		Marks2Item_c.item_num = Marks2Item_c.item_num + 5
	end
	Marks2Item_c.fanye()
end


function Marks2Item_c.dowm_btn()        --下一页
	if Marks2Item_c.item_num > 5 then
		Marks2Item_c.item_num = Marks2Item_c.item_num - 5
		Marks2Item_c.nowpage1 = Marks2Item_c.nowpage1 + 1
	end	
	Marks2Item_c.fanye()	
end


function Marks2Item_c.del_widget()     --刷新控件
	local del_item = {"ItemBkImg", "itemctrl","item_btn","get_btn","item_name","item_text","item_name_bg","magic"}
	if Marks2Item_c.item_num < 5 then
		local _GUIHandle = 0
		local a = 5 - Marks2Item_c.item_num
		for i = 1,a do
			for j = 1 ,#del_item do
				_GUIHandle = GUI:WndFindWindow(Marks2Item_c.WndHandle,del_item[j]..(i+Marks2Item_c.item_num))
				if _GUIHandle ~=0 then
					GUI:WndSetVisible(_GUIHandle, false)
				end
			end
		end
	else 
		for i = 1,5 do
			for j = 1 ,#del_item do
				_GUIHandle = GUI:WndFindWindow(Marks2Item_c.WndHandle,del_item[j]..i)
				if _GUIHandle ~=0 then
					GUI:WndSetVisible(_GUIHandle, true)
				end
			end
		end
	end
end
	

function Marks2Item_c.update(_Handle)   --item_option按钮更新
	
	for i = 1 , 5 do 
		
		local handle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"opt_btn"..i)
		if handle == _Handle then
			ButtonSetIsActivePageBtn(Marks2Item_c.WndHandle,"opt_btn"..i,true)
		else 
			ButtonSetIsActivePageBtn(Marks2Item_c.WndHandle,"opt_btn"..i,false)	
		end
	end
end


function Marks2Item_c.itemOpt(_Handle)                 --根据玩家点击的item传相应的参数
	local Is_true = ButtonGetIsActivePageBtn(_Handle)
	if not Is_true then
		Marks2Item_c.update(_Handle)
	else
		return 
	end
	Marks2Item_c.nowpage1 = 1

	Marks2Item_c.index = GUI:WndGetParam(_Handle)
	Marks2Item_c.totalpage1 = math.ceil(#Marks2Item_c.param1[Marks2Item_c.index]/5)
	Marks2Item_c.item_num = #Marks2Item_c.param1[Marks2Item_c.index]
	Marks2Item_c.is_Existbag = Marks2Item_c.isExistbag[Marks2Item_c.index]

	Marks2Item_c.del_widget()
	Marks2Item_c.fanye()
	
end



function Marks2Item_c.update1(_Handle)    --item 按钮更新
	
	for i = 1 , 5 do 
		
		local handle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"item_btn"..i)
		
		if handle == _Handle then
			ButtonSetIsActivePageBtn(Marks2Item_c.WndHandle,"item_btn"..i,true)
		else 
			ButtonSetIsActivePageBtn(Marks2Item_c.WndHandle,"item_btn"..i,false)
		end
	end
end


function Marks2Item_c.item_btn(_Handle)
	local Is_true = ButtonGetIsActivePageBtn(_Handle)
	if not Is_true then
		Marks2Item_c.update1(_Handle)
	end	
end


function Marks2Item_c.exchangeItem(_Handle)  --记录玩家所点击的按钮句柄
	Marks2Item_c.BtnHandle = _Handle
	local i = GUI:WndGetParam(_Handle)
	UI:Lua_SubmitForm("Marks2Item_s","getItem",Marks2Item_c.param1[Marks2Item_c.index][i+5*(Marks2Item_c.nowpage1-1)][1].."#"..Marks2Item_c.index)
	Marks2Item_c.updateUI()
end

function Marks2Item_c.MessagePrompt()
	if Marks2Item_c.BtnHandle ~= 0 then
		local color = MakeARGB(255, 255, 0, 0)
		window_msg_up(Marks2Item_c.BtnHandle , "包裹空间不足", -83, -16, 70, color, 3)
	end
end

function Marks2Item_c.openTB(_Handle)   --探宝链接
	UI:Lua_SubmitForm("TreasureHouse_s","openTreasureHouse","")
end


function Marks2Item_c.setExchangeMsg(str) --全服兑换记录
	local j = 1
	local _Handle = 0
	local itemType = 0
	for i = 1, 5 do
		local shownText = GUI:WndFindWindow(Marks2Item_c.WndHandle,"shownText"..i)
		GUI:RichEditClear(shownText)
	end

	for i = 1, #str do
		local strs = strsplit(str[i], ":")
		local playerName = strs[1]
		local itemName = strs[2]
		_Handle = CL:GetItemTemplateHandleByKeyName(itemName)
		if CL:GetItemTemplatePropByHandle(_Handle,1) then
			itemName = LuaRet
		end
		if CL:GetItemTemplatePropByHandle(_Handle,3) then
			itemType = LuaRet
		end
		shownText = GUI:WndFindWindow(Marks2Item_c.WndHandle,"shownText"..j)		

		if itemType == 1 then 
			GUI:RichEditAppendString(shownText, "#COLORCOLOR_BGREENG#" .. playerName .. "#COLOREND#" .. "#COLORCOLOR_DARKGOLD#".." 兑换了 ".."#COLOREND#" .."#COLORCOLOR_RED#".. itemName .. "#COLOREND#".. "#COLORCOLOR_DARKGOLD#" .. " 雄霸天下指日可待 ".. "#COLOREND#")	
		else
			GUI:RichEditAppendString(shownText, "#COLORCOLOR_BGREENG#" .. playerName .. "#COLOREND#" .. "#COLORCOLOR_DARKGOLD#".." 兑换了 ".."#COLOREND#" .."#COLORCOLOR_YELLOW#".. itemName .. "#COLOREND#".. "#COLORCOLOR_DARKGOLD#" .. " 雄霸天下指日可待 ".. "#COLOREND#")
		end
		--GUI:RichEditAppendString(shownText, "#COLORCOLOR_DARKGOLD#" .. playerName .. "#COLOREND#" .. "#COLORCOLOR_BGREENG#".." 兑换了 ".."#COLOREND#" .."#COLORCOLOR_YELLOW#".. itemName .. "#COLOREND#".. "#COLORCOLOR_BGREENG#" .. " 雄霸天下指日可待 ".. "#COLOREND#")

		j = j + 1
	end
end


function Marks2Item_c.closeWnd()     --关闭按钮
	if Marks2Item_c.WndHandle ~= 0 then
		GUI:WndClose(Marks2Item_c.WndHandle)
	end
end

Marks2Item_c.main()