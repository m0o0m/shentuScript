Gongcheng_c = {}

function Gongcheng_c.main()
	local ui = "<form>"
	.. "<dialog OnInit='Gongcheng_c.UIInit' id='Gongcheng_c' image='1803600001' x='0' y='0' w='929' h='571' center='true' esc_close='true' drag='true' revmsg='true'>"
    .. "<image id='img_gongcheng' image='1803600003' x='396' y='18' w='137' h='50' revmsg='true' enable='false'/>"
	.. "<image id='img_wcghBg' image='1803600002' x='60' y='78' w='214' h='79' revmsg='true' enable='false'/>"
	.. "<image id='img_wcgh' image='1803600009' x='62' y='105' w='92' h='26' revmsg='true' enable='false'/>"
	.. "<image id='img_timeBg' image='1803600004' x='345' y='383' w='235' h='107' revmsg='true' enable='false'/>"
	.. "<image id='img_chengzhu' image='1803600010' x='436' y='81' w='57' h='26' revmsg='true' enable='false'/>"
	.. "<image id='img_zhanglao1' image='1803600012' x='275' y='185' w='57' h='26' revmsg='true' enable='false'/>"
	.. "<image id='img_fuchengzhu' image='1803600011' x='578' y='185' w='57' h='26' revmsg='true' enable='false'/>"
	.. "<image id='img_zhanglao2' image='1803600012' x='135' y='222' w='57' h='26' revmsg='true' enable='false'/>"
	.. "<image id='img_zhanglao3' image='1803600012' x='745' y='222' w='57' h='26' revmsg='true' enable='false'/>"
	.. "<image id='img_quesetion' image='1800000297' x='90' y='504' w='27' h='30' revmsg='true' enable='false'/>"
		
--[[	.. "<image id='role1' x='455' y='170' w='80' h='170' enable='false'/>"
	.. "<image id='role2' x='295' y='280' w='80' h='170' enable='false'/>"
	.. "<image id='role3' x='605' y='280' w='80' h='170' enable='false'/>"
	.. "<image id='role4' x='155' y='315' w='80' h='170' enable='false'/>"
	.. "<image id='role5' x='765' y='315' w='80' h='170' enable='false'/>"--]]
	
	.. "<image id='wing1' x='458' y='160' w='200' h='225' enable='false'/>"
	.. "<image id='wing2' x='300' y='277' w='200' h='225' enable='false'/>"
	.. "<image id='wing3' x='608' y='277' w='200' h='225' enable='false'/>"
	.. "<image id='wing4' x='155' y='305' w='200' h='225' enable='false'/>"
	.. "<image id='wing5' x='763' y='305' w='200' h='225' enable='false'/>"
	
	.. "<image id='cloth1' x='455' y='170' w='200' h='245' enable='false'/>"
	.. "<image id='cloth2' x='295' y='280' w='200' h='245' enable='false'/>"
	.. "<image id='cloth3' x='605' y='280' w='200' h='245' enable='false'/>"
	.. "<image id='cloth4' x='155' y='315' w='200' h='245' enable='false'/>"
	.. "<image id='cloth5' x='765' y='315' w='200' h='245' enable='false'/>"

	.. "<image id='hair1' x='312' y='33' w='100' h='150' enable='false'/>"
	.. "<image id='hair2' x='152' y='137' w='100' h='150' enable='false'/>"
	.. "<image id='hair3' x='462' y='137' w='100' h='150' enable='false'/>"
	.. "<image id='hair4' x='12' y='172' w='100' h='150' enable='false'/>"
	.. "<image id='hair5' x='622' y='172' w='100' h='150' enable='false'/>"

	.. "<image id='helmet1' x='450' y='190' w='100' h='150' enable='false'/>"
	.. "<image id='helmet2' x='300' y='290' w='100' h='150' enable='false'/>"
	.. "<image id='helmet3' x='600' y='290' w='100' h='150' enable='false'/>"
	.. "<image id='helmet4' x='165' y='340' w='100' h='150' enable='false'/>"
	.. "<image id='helmet5' x='770' y='340' w='100' h='150' enable='false'/>"
	
	.. "<image id='weapon1' x='462' y='173' w='200' h='225' enable='false'/>"
	.. "<image id='weapon2' x='297' y='283' w='200' h='225' enable='false'/>"
	.. "<image id='weapon3' x='609' y='283' w='200' h='225' enable='false'/>"
	.. "<image id='weapon4' x='160' y='317' w='200' h='225' enable='false'/>"
	.. "<image id='weapon5' x='765' y='317' w='200' h='225' enable='false'/>"
	
	.. "<edit id='crowName' x='150' y='98' w='280' h='40' revmsg='true' enable='false'/>"
	.. "<edit id='roleName1' x='340' y='275' w='240' h='40' revmsg='true' align = 'center' enable='false'/>"
	.. "<edit id='roleName2' x='170' y='385' w='240' h='40' revmsg='true' align = 'center' enable='false'/>"
	.. "<edit id='roleName3' x='490' y='385' w='240' h='40' revmsg='true' align = 'center' enable='false'/>"
	.. "<edit id='roleName4' x='35' y='415' w='240' h='40' revmsg='true' align = 'center' enable='false'/>"
	.. "<edit id='roleName5' x='640' y='415' w='240' h='40' revmsg='true' align = 'center' enable='false'/>"
	
	.. "<richedit id='edit_gongchengsm' x='117' y='511' w='60' h='20' revmsg='true' text='#SELECT#攻城说明#SELECTEND#'/>"
	.. "<button id='btn_close' image='1800000068' x='844' y='40' w='24' h='24' OnLButtonUp='Gongcheng_c.closeWnd' revmsg='true'/>"
	.. "<button id='btn_gShengecheng' image='1803600005' x='375' y='506' w='183' h='44' OnLButtonUp='Gongcheng_c.gotoShenge' revmsg='true'/>"
	.. "</dialog>"
	.. "</form>"
	GenFormByString(ui)
end

Gongcheng_c.WndHandle = 0

--[[inforTb[1] = '翅膀', 
	inforTb[2] = '衣服', 
	inforTb[3] = '职业', 
	inforTb[4] = '头盔', 
	inforTb[5] = '武器',
	inforTb[6] = '名字', 
	inforTb[7] = '性别',
--]]

Gongcheng_c.inforTb = {}
Gongcheng_c.ManHairTable = 
{
    1990401200, 
    1990401202,
    1990401201
}

Gongcheng_c.WomanHairTable = 
{
    1990401250, 
    1990401251,
    1990401252
}

function Gongcheng_c.UIInit(_GUIHandle)
	Gongcheng_c.WndHandle = _GUIHandle
	local inforTb_txt = as3.tolua(FormParam[1])
	Gongcheng_c.inforTb = deserialize(inforTb_txt)
	
	--设置装备展示
	Gongcheng_c.SetShowEquips(Gongcheng_c.inforTb)
	--根据性别设置裸模
	Gongcheng_c.SetRoleName(Gongcheng_c.inforTb)
	
	local handle = GetWindow(Gongcheng_c.WndHandle, "crowName")
	GUIEditSetTextM(handle, "这里不是显示公会的名字")
end

function Gongcheng_c.SetRoleName(tb)
	local handle = 0
	for i = 1, #tb do
		handle = GetWindow(Gongcheng_c.WndHandle, "roleName" .. i)
		GUIEditSetTextM(handle, tb[i][6])
	end
end

function Gongcheng_c.gotoShenge()
	msg("Gongcheng_c.gotoShenge")
end

function Gongcheng_c.SetShowEquips(inforTb)	
	local modelImage = 0
	local handle= 0 
	for i = 1, #inforTb do
		for j = 1, 5 do			
			--获取模板图片资源
			if CLGetItemEntityPropByGUID(inforTb[i][j], ITEM_PROP_BIGICON) then
				modelImage = as3.tolua(LuaRet)
			else 
				if j == 2 then
					msg("sex choose")
					if Gongcheng_c.inforTb[i][7] == 1 then
						modelImage = 1990401001
					else
						modelImage = 1990401002
					end
				elseif j == 3 then
					msg("hair choose")
					if Gongcheng_c.inforTb[i][7] == 1 then
						modelImage = Gongcheng_c.ManHairTable[Gongcheng_c.inforTb[i][3]]
					else
						modelImage = Gongcheng_c.WomanHairTable[Gongcheng_c.inforTb[i][3]]
					end
				end
			end
			
			--分类填充
			if j == 1 then
				handle = GetWindow(Gongcheng_c.WndHandle, "wing" .. i)
			elseif j == 2 then
				handle = GetWindow(Gongcheng_c.WndHandle, "cloth" .. i)
			elseif j == 3 then
				handle = GetWindow(Gongcheng_c.WndHandle, "hair" .. i)
			elseif j == 4 then
				handle = GetWindow(Gongcheng_c.WndHandle, "helmet" .. i)
			elseif j == 5 then
				handle = GetWindow(Gongcheng_c.WndHandle, "weapon" .. i)
			end
			if handle ~= 0 then
				GUIImageSetDrawCenter(handle, true)
				GUIWndSetImageID(handle, modelImage) 
			end
			--清空
			modelImage = 0
		end 
	end
end

function Gongcheng_c.closeWnd(_handle)
	GUIWndClose(Gongcheng_c.WndHandle)
end

Gongcheng_c.main()