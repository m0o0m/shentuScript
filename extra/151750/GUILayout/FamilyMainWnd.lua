FamilyMainWnd = {}
FamilyMainWnd.tApplicantAtk = {}
FamilyMainWnd.curList = {}

local color = {}
color.text1 = GUI:MakeARGB(255,243,185,117)
color.text2 = GUI:MakeARGB(255,198,192,163)
color.number = GUI:MakeARGB(255,55,181,111)
color.red = GUI:MakeARGB(255,209,18,7)

--日志类型 手游
local FAMILY_MEMBER_JOIN = 4
local FAMILY_MEMBER_LEAVE = 5
local FAMILY_MEMBER_KICK = 6
local FAMILY_TITLE_CHANGE = 7
local FAMILY_MEMBER_DONATE = 8
local FAMILY_LEVEL_UP = 9
local FAMILY_BUFF_LEVEL_UP = 10
local FAMILY_BUFF_START = 11
local FAMILY_LEADER_CHANGE = 12


function FamilyMainWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()
	local defaultOffsetX = (_DeviceSizeX - 1069)/2
	local defaultOffsetY = 65

	_Parent = GUI:WndCreateWnd(_Parent,"FamilyMainWnd",0, defaultOffsetX, defaultOffsetY)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_Parent,16, 16)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"InfoBg1",1852100066, 390, 72)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,678, 465)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"InfoBg2",1832800009, 1, 1)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle, 1850400006,1850400008,1850400012,1850400014,1850400010,1850400007,1850400013,1850400009,1850400011)
		GUI:WndSetSizeM(_GUIHandle,378, 536)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"InfoTextTitleBg",1852100036,42,18)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,305, 40)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"Infotext",145,26,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.text1)
		GUI:EditSetTextM(_GUIHandle,"行会信息")
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"nameText",53,64,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.text1)
		GUI:EditSetTextM(_GUIHandle,"行会名称：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"leaderText",53,94,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.text1)
		GUI:EditSetTextM(_GUIHandle,"行会会长：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"numText",53,124,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.text1)
		GUI:EditSetTextM(_GUIHandle,"行会人数：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"levelText",53,154,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.text1)
		GUI:EditSetTextM(_GUIHandle,"行会等级：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"expText",53,184,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.text1)
		GUI:EditSetTextM(_GUIHandle,"行会经验：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"fundText",53,220,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.text1)
		GUI:EditSetTextM(_GUIHandle,"行会资金：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"nameEdit",156,64,180,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.text2)
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle,"一二三四五六七")
	end

	_GUIHandle = GUI:EditCreate(_Parent,"leaderEdit",156,94,180,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.text2)
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle,"七六五四三二一")
	end

	_GUIHandle = GUI:EditCreate(_Parent,"numEdit",156,124,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.number)
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle,"30/30")
	end

	_GUIHandle = GUI:EditCreate(_Parent,"levelEdit",156,154,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.number)
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle,"20")
	end

	_GUIHandle = GUI:EditCreate(_Parent,"expEdit",156,184,120,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.number)
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle,"19000/19000")
	end

	_GUIHandle = GUI:EditCreate(_Parent,"fundEdit",156,221,80,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.number)
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle,"9999999")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"donateBtn",1852100050, 243, 210)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMainWnd.showDonateWnd")
		GUI:WndSetSizeM(_GUIHandle, 86, 46)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"lineImg",1852100056,12,254)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,363, 14)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"buffTextBg",1852100036,42,275)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,305, 40)
	end
	_GUIHandle = GUI:EditCreate(_Parent,"buffText",145,284,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.text1)
		GUI:EditSetTextM(_GUIHandle,"行会BUFF")
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"buffLevelText",53,327,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.text1)
		GUI:EditSetTextM(_GUIHandle,"BUFF等级：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"wuAtk",53,357,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.text1)
		GUI:EditSetTextM(_GUIHandle,"物理攻击：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"moAtk",53,387,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.text1)
		GUI:EditSetTextM(_GUIHandle,"魔法攻击：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"daoAtk",53,417,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.text1)
		GUI:EditSetTextM(_GUIHandle,"道术攻击：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"buffLevelEdit",156,327,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.number)
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle,"0")
	end

	_GUIHandle = GUI:EditCreate(_Parent,"wuAtkEdit",156,357,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.number)
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle,"无")
	end

	_GUIHandle = GUI:EditCreate(_Parent,"moAtkEdit",156,387,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.number)
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle,"无")
	end

	_GUIHandle = GUI:EditCreate(_Parent,"daoAtkEdit",156,417,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.number)
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle,"无")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"upgradeBuffBtn",1850000307,57,462)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMainWnd.showUpgradeBuffWnd")
		GUI:WndSetTextM(_GUIHandle,"升级")
		GUI:WndSetTextColorM(_GUIHandle, color.text1)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"startBuffBtn",1850000307,216,462)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMainWnd.showStartBuffWnd")
		GUI:WndSetTextM(_GUIHandle,"开启")
		GUI:WndSetTextColorM(_GUIHandle, color.text1)
		FamilyMainWnd.hStartBuffBtn = _GUIHandle
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"showLogListBtn",1851900001,410,29)
	if _GUIHandle ~= 0 then
		GUI:ButtonSetIsActivePageBtn(_GUIHandle, true)
		GUI:WndSetSizeM(_GUIHandle, 115, 43)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMainWnd.getFamilyLog")
		--GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMainWnd.showLogList")
		GUI:WndSetTextM(_GUIHandle,"行会日志")
		GUI:WndSetTextColorM(_GUIHandle, color.text1)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"showApplyListBtn",1851900001,537, 29)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 115, 43)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMainWnd.showApplyList")
		GUI:WndSetTextM(_GUIHandle, "申请列表")
		GUI:WndSetTextColorM(_GUIHandle, color.text1)
	end

	_GUIHandle = GUI:WndCreateWnd(_Parent,"LogListWnd",0,405,88)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,645, 432)
		GUI:WndSetEnableM(_GUIHandle, false)
		FamilyMainWnd.hLogListWnd = _GUIHandle
		_GUIHandle = GUI:WndCreateWnd(_GUIHandle,"LogList",0,0,0)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,645, 432)
			GUI:WndSetVisible(_GUIHandle, true)
			GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
			FamilyMainWnd.hLogList = _GUIHandle
		end
	end

	_GUIHandle = GUI:WndCreateWnd(_Parent,"ApplyListWnd",1852100066,390,72)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,678, 465)
		FamilyMainWnd.hApplyListWnd = _GUIHandle
		GUI:WndSetVisible(_GUIHandle, false)
		_GUIHandle = GUI:ImageCreate(FamilyMainWnd.hApplyListWnd,"ApplyListBack",0,15,50)
		if _GUIHandle ~= 0 then
			GUI:ImageSetAroundImage(_GUIHandle, 1850600034,1850600036,1850600040,1850600042,1850600038,1850600035,1850600041,1850600037,1850600039)
			GUI:WndSetSizeM(_GUIHandle,649, 336)
		end

		_GUIHandle = GUI:WndCreateWnd(FamilyMainWnd.hApplyListWnd,"ApplyList",0,8,51)
		if _GUIHandle ~= 0 then
			GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
			GUI:WndSetSizeM(_GUIHandle,649, 334)
			FamilyMainWnd.hApplyList = _GUIHandle
		end

		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hApplyListWnd,"nameText",70,19,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"名字")
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hApplyListWnd,"levelText",200,19,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"等级")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hApplyListWnd,"jobText",300,19,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"职业")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hApplyListWnd,"atkText",400,19,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"战力")
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ButtonCreate(FamilyMainWnd.hApplyListWnd,"acceptAllApplyBtn",1851500004,320,394)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,137, 47)
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMainWnd.acceptAllApply")
			GUI:WndSetTextM(_GUIHandle,"全部通过")
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
		end

		_GUIHandle = GUI:ButtonCreate(FamilyMainWnd.hApplyListWnd,"clearApplyListBtn",1851500004,490,394)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,137, 47)
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMainWnd.clearApplyList")
			GUI:WndSetTextM(_GUIHandle,"清空列表")
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
		end

		_GUIHandle = GUI:CheckBoxCreate(FamilyMainWnd.hApplyListWnd,"zid",1850000272," 无需入会审核", 33, 395)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextColorM(_GUIHandle, color.text2)
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyMainWnd.GetCheckState")
		end
	end

	_GUIHandle = GUI:WndCreateWnd(_Parent,"StartBuffWnd", 1850600016,(1069 - 507)/2, 100)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetSizeM(_GUIHandle, 507, 319)
		FamilyMainWnd.hStartBuffWnd = _GUIHandle
		_GUIHandle = GUI:ImageCreate(FamilyMainWnd.hStartBuffWnd,"backImg", 0, (507 - 450)/2, 58)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle, 450, 176)
			GUI:ImageSetAroundImage(_GUIHandle, 1850600043, 1850600045, 1850600049, 1850600051, 1850600047,1850600044, 1850600050, 1850600046, 1850600048)
		end
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hStartBuffWnd,"titleText", 212,20,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"BUFF开启")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hStartBuffWnd,"fundText",86,115,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"行会资金：")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hStartBuffWnd,"tipText",170,170,200,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"BUFF开启后持续24小时")
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(FamilyMainWnd.hStartBuffWnd,"editBack",0,184,104)
		if _GUIHandle ~= 0 then
			GUI:ImageSetAroundImage(_GUIHandle, 1850600052, 1850600054, 1850600058, 1850600060, 1850600056, 1850600053, 1850600059, 1850600055, 1850600057)
			GUI:WndSetSizeM(_GUIHandle,225, 45)
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hStartBuffWnd,"num",215,115,160,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.number)
			GUI:EditSetTextM(_GUIHandle,"1000/9999999")
			GUI:EditSetFontCenter(_GUIHandle)
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		
		_GUIHandle = GUI:ButtonCreate(FamilyMainWnd.hStartBuffWnd,"donateBtn",1850000307,323,248)
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMainWnd.startBuff")
			GUI:WndSetTextM(_GUIHandle,"开启")
			--GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
		end
		_GUIHandle = GUI:ButtonCreate(FamilyMainWnd.hStartBuffWnd,"cancelBtn",1850000307,80,248)
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMainWnd.showStartBuffWnd")
			GUI:WndSetTextM(_GUIHandle,"取消")
			--GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
		end
	end
	_GUIHandle = GUI:WndCreateWnd(_Parent,"UpgradeBuffWnd",0,(1069 - 638)/2, 60)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetSizeM(_GUIHandle,638, 402)
		GUI:ImageSetAroundImage(_GUIHandle, 1850700035, 1850700037, 1850700041, 1850700043, 1850700039,1850700036, 1850700042, 1850700038, 1850700040)
		FamilyMainWnd.hUpgradeBuffWnd = _GUIHandle

		_GUIHandle = GUI:ImageCreate(FamilyMainWnd.hUpgradeBuffWnd,"backImg1",0,(638 - 594)/2, (402 - 359)/2)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,594, 359)
			GUI:ImageSetAroundImage(_GUIHandle,1850700026,1850700028,1850700032,1850700034,1850700030,1850700027,1850700033,1850700029,1850700031)
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(FamilyMainWnd.hUpgradeBuffWnd,"backImg2",0,40, 36)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,245, 191)
			GUI:ImageSetAroundImage(_GUIHandle, 1850900016, 1850900018, 1850900022, 1850900024, 1850900020, 1850900017, 1850900023, 1850900019, 1850900021)
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(FamilyMainWnd.hUpgradeBuffWnd,"backImg3",0,349, 36)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,245, 191)
			GUI:ImageSetAroundImage(_GUIHandle, 1850900016, 1850900018, 1850900022, 1850900024, 1850900020, 1850900017, 1850900023, 1850900019, 1850900021)
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ButtonCreate(FamilyMainWnd.hUpgradeBuffWnd,"colseBtn",1850000385,590 ,3)
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMainWnd.showUpgradeBuffWnd")
		end

		_GUIHandle = GUI:ImageCreate(FamilyMainWnd.hUpgradeBuffWnd,"titleBack1",1850700004, 204, -50)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,232, 52)
			GUI:WndSetEnableM(_GUIHandle, false)
			_GUIHandle = GUI:EditCreate(_GUIHandle,"title",75,19,100,24)
			if _GUIHandle ~= 0 then
				GUI:EditSetTextColor(_GUIHandle, color.text1)
				GUI:EditSetTextM(_GUIHandle,"BUFF升级")
				GUI:WndSetEnableM(_GUIHandle, false)
			end
		end

		_GUIHandle = GUI:ImageCreate(FamilyMainWnd.hUpgradeBuffWnd,"titleBack2",1852100036, 22, 41)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,280, 40)
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:ImageSetFitSize(_GUIHandle, true)
		end

		_GUIHandle = GUI:ImageCreate(FamilyMainWnd.hUpgradeBuffWnd,"titleBack3",1852100036, 332, 41)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,280, 40)
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:ImageSetFitSize(_GUIHandle, true)
		end

		_GUIHandle = GUI:ImageCreate(FamilyMainWnd.hUpgradeBuffWnd,"arrow",1852100065, 297, 117)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,45, 39)
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"current",127,50,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"当前属性")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"buffLevelText",63,90,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"等级：")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"wuAtkText",63,120,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"物理攻击：")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"moAtkText",63,150,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"魔法攻击：")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"daoAtkText",63,180,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"道术攻击：")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"buffLevel",117,90,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text2)
			GUI:EditSetTextM(_GUIHandle,"0")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"wuAtk",157,120,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.number)
			GUI:EditSetTextM(_GUIHandle,"无")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"moAtk",157,150,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.number)
			GUI:EditSetTextM(_GUIHandle,"无")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"daoAtk",157,180,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.number)
			GUI:EditSetTextM(_GUIHandle,"无")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"next",431,50,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"下级属性")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"next_buffLevelText",370,90,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"等级：")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"next_wuAtkText",370,120,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"物理攻击：")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"next_moAtkText",370,150,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"魔法攻击：")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"next_daoAtkText",370,180,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"道术攻击：")
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"next_buffLevel",427,90,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text2)
			GUI:EditSetTextM(_GUIHandle,"已到顶级")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"next_wuAtk",466,120,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.number)
			GUI:EditSetTextM(_GUIHandle,"")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"next_moAtk",466,150,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.number)
			GUI:EditSetTextM(_GUIHandle,"")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"next_daoAtk",466,180,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.number)
			GUI:EditSetTextM(_GUIHandle,"")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"guildLevelText",188,239,150,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"要求行会等级：")
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(FamilyMainWnd.hUpgradeBuffWnd,"backImg4",0,324, 234)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,126, 35)
			GUI:ImageSetAroundImage(_GUIHandle, 1850900016, 1850900018, 1850900022, 1850900024, 1850900020, 1850900017, 1850900023, 1850900019, 1850900021)
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"guildLevelEdit",367,239,40,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.number)
			GUI:EditSetTextM(_GUIHandle,"20")
			GUI:EditSetFontCenter(_GUIHandle)
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"fundText",188,281,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"行会资金：")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		
		_GUIHandle = GUI:ImageCreate(FamilyMainWnd.hUpgradeBuffWnd,"backImg5",0, 291, 276)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,159, 35)
			GUI:ImageSetAroundImage(_GUIHandle, 1850900016, 1850900018, 1850900022, 1850900024, 1850900020, 1850900017, 1850900023, 1850900019, 1850900021)
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hUpgradeBuffWnd,"fund",295,281,150,24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetTextColor(_GUIHandle, color.number)
			GUI:EditSetTextM(_GUIHandle, "10000/9999999")
			GUI:EditSetFontCenter(_GUIHandle)
		end

		_GUIHandle = GUI:ButtonCreate(FamilyMainWnd.hUpgradeBuffWnd,"upgradeBuffBtn", 1850000307,266,319)
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMainWnd.upgradeBuff")
			GUI:WndSetTextM(_GUIHandle, "升级")
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
		end
	end

	_GUIHandle = GUI:WndCreateWnd(_Parent,"donateWnd",1850600016, (1069 - 507)/2, 100)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetSizeM(_GUIHandle, 507, 319)
		FamilyMainWnd.hDonateWnd = _GUIHandle
		_GUIHandle = GUI:ImageCreate(FamilyMainWnd.hDonateWnd,"backImg", 0, (507 - 450)/2, 58)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle, 450, 176)
			GUI:ImageSetAroundImage(_GUIHandle, 1850600043, 1850600045, 1850600049, 1850600051, 1850600047,1850600044, 1850600050, 1850600046, 1850600048)
		end
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hDonateWnd,"titleText", 212,20,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"行会捐款")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hDonateWnd,"fundText",86,115,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"捐款金额：")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hDonateWnd,"tipText",180,170,180,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"1元宝=10行会资金")
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(FamilyMainWnd.hDonateWnd,"editBack",0,184,104)
		if _GUIHandle ~= 0 then
			GUI:ImageSetAroundImage(_GUIHandle, 1850600052, 1850600054, 1850600058, 1850600060, 1850600056, 1850600053, 1850600059, 1850600055, 1850600057)
			GUI:WndSetSizeM(_GUIHandle,225, 45)
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:ImageCreate(FamilyMainWnd.hDonateWnd,"ybIcon", 1851800016,197,117)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetSizeM(_GUIHandle,31, 17)
		end
		
		_GUIHandle = GUI:EditCreate(FamilyMainWnd.hDonateWnd,"num",235,115,160,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.number)
			GUI:EditSetBNumber(_GUIHandle, true)
			GUI:EditSetMaxCharNum(_GUIHandle, 6)
		end
		
		_GUIHandle = GUI:ButtonCreate(FamilyMainWnd.hDonateWnd,"donateBtn",1850000307,323,248)
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMainWnd.donateMoney")
			GUI:WndSetTextM(_GUIHandle,"捐款")
			--GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
		end
		_GUIHandle = GUI:ButtonCreate(FamilyMainWnd.hDonateWnd,"cancelBtn",1850000307,80,248)
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMainWnd.showDonateWnd")
			GUI:WndSetTextM(_GUIHandle,"取消")
			--GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
		end
	end

	FamilyMainWnd.UIInit(_Parent)
end

--UI Logic Code Start
function FamilyMainWnd.UIInit(_Handle)
	FamilyMainWnd.WndHandle = _Handle
	--服务端判断是否是会长
	UI:Lua_SubmitForm("行会", "isGuildLeaderOrViceLeader", "")
end

function FamilyMainWnd.showWnd(whichWnd)
	--UI:Lua_Log("FamilyMainWnd.showWnd 开始触发")
	whichWnd = tonumber(whichWnd)
	if 0 ~= whichWnd then
		--其他会员显示行会日志界面 隐藏申请列表窗口 升级BUFF和开启BUFF按钮不可用
		local _GUIHandle = GUI:WndFindWindow(FamilyMainWnd.WndHandle, "showApplyListBtn")
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, false)
		end
		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.WndHandle, "upgradeBuffBtn")
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.WndHandle, "startBuffBtn")
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end
	else
		local _GUIHandle = GUI:WndFindWindow(FamilyMainWnd.WndHandle, "showApplyListBtn")
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, true)
		end
		FamilyMainWnd.applyListRequest()
	end
	FamilyMainWnd.getFamilyLog()
	--FamilyMainWnd.showLogList()
	--请求获取所需数据
	UI:Lua_SubmitForm("行会", "sendGuildMainData", "")
end

function FamilyMainWnd.getFamilyLog()
	UI:Lua_SubmitForm("行会", "getFamilyLog", "")
	FamilyMainWnd.showLogList()
end

function FamilyMainWnd.applyListRequest()
	if CL:GetApplyPlayerList(0, 50, "FamilyWnd_ApplyList_申请列表", "FamilyMainWnd.getApplyList") then
		UI:Lua_Log("获取入会申请列表成功")
	else
		UI:Lua_Log("获取入会申请列表失败")
	end
end


function FamilyMainWnd.getApplyList()
	--UI:Lua_Log("FamilyMainWnd.getApplyList 开始触发")
	--1.totalNum;2.first_index;3.num;4-1 guid 4-2 playername 4-3 level 4-4 job
	FamilyMainWnd.curList = LuaParam[4]
	local tbl = {}
	for i = 1, #FamilyMainWnd.curList do
		if UI:Lua_GUID2Str(FamilyMainWnd.curList[i][1]) then
			tbl[i] = LuaRet
		end
	end
	--请求获取所需数据
	UI:Lua_SubmitForm("行会", "sendGuildMainData", serialize(tbl))
end

function FamilyMainWnd.getData(tAtk, data)
	--UI:Lua_Log("FamilyMainWnd.getData 开始触发")
	FamilyMainWnd.tApplicantAtk = tAtk
	FamilyMainWnd.guildFund = data[1]
	FamilyMainWnd.leader = data[2]
	FamilyMainWnd.guildLevel = data[3]
	FamilyMainWnd.guildExp = data[4]
	FamilyMainWnd.buffLevel = data[5]
	FamilyMainWnd.buffRemainTime = data[6]
	FamilyMainWnd.expLimit = data[7]
	FamilyMainWnd.buffCost = data[8]
	FamilyMainWnd.buffUpgradeCost = data[9]
	FamilyMainWnd.ifAutoAccept = data[10]
	if #tAtk == #FamilyMainWnd.curList then
		for i = 1, #FamilyMainWnd.curList do
			FamilyMainWnd.curList[i][5] = tAtk[i]
		end
	end
	--获取行会基本信息
	CL:FamilyInfoRequest(128, "FamilyWnd_行会仓库", "FamilyMainWnd.getFamilyBasicInfo")
end

function FamilyMainWnd.getFamilyBasicInfo()
	FamilyMainWnd.guid = LuaParam[2]
	FamilyMainWnd.memberNum = LuaParam[3]
	FamilyMainWnd.name = LuaParam[4]
	FamilyMainWnd.fillData()--填充数据
end

function FamilyMainWnd.fillData()
	local _GUIHandle = 0

	--BUFF是否是开启状态
	FamilyMainWnd.startCounting()

	--设置公会名字
	_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.WndHandle, "nameEdit")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, FamilyMainWnd.name)
	end

	--设置会长名字
	_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.WndHandle, "leaderEdit")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, tostring(FamilyMainWnd.leader))
	end

	--设置公会人数
	_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.WndHandle, "numEdit")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, tostring(FamilyMainWnd.memberNum).."/30")
	end

	--设置公会等级
	_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.WndHandle, "levelEdit")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, tostring(FamilyMainWnd.guildLevel).."级")
	end

	--设置公会经验
	_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.WndHandle, "expEdit")
	if _GUIHandle ~= 0 then
		if 0 == FamilyMainWnd.expLimit then
			GUI:EditSetTextM(_GUIHandle, "满级")
		else
			GUI:EditSetTextM(_GUIHandle, tostring(FamilyMainWnd.guildExp).."/"..tostring(FamilyMainWnd.expLimit))
		end
	end

	--设置公会资金
	_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.WndHandle, "fundEdit")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, tostring(FamilyMainWnd.guildFund))
	end
	--设置复选框状态
	_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.hApplyListWnd, "zid")
	if _GUIHandle ~= 0 then
		
		if 0 == FamilyMainWnd.ifAutoAccept then
			GUI:CheckBoxSetCheck(_GUIHandle, false)
		else
			GUI:CheckBoxSetCheck(_GUIHandle, true)
		end
	end

	if 0 ~= FamilyMainWnd.buffLevel then
		--设置BUFF信息
		FamilyMainWnd.setBuffInfo(FamilyMainWnd.buffLevel)
	end

	--倒序填充申请人表
	if FamilyMainWnd.hApplyList ~= nil then
		--msg("清空")
		GUI:WndDlgClear(FamilyMainWnd.hApplyList)
	end
	--4-1 guid 4-2 playername 4-3 level 4-4 job
	local j = #FamilyMainWnd.curList
	for i = 1, #FamilyMainWnd.curList do
		local intervalY = 62
		local handle = FamilyMainWnd.hApplyList
		_GUIHandle = GUI:EditCreate(handle,"familyNameEdit"..i,0,30 + intervalY * (i - 1),180,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle , tostring(FamilyMainWnd.curList[j][2]))
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
			GUI:EditSetTextColor(_GUIHandle, color.text2)
		end

		_GUIHandle = GUI:EditCreate(handle,"familyLvlEdit"..i,158,30 + intervalY * (i - 1),106,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle , tostring(FamilyMainWnd.curList[j][3]))
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
			GUI:EditSetTextColor(_GUIHandle, color.text2)
		end

		_GUIHandle = GUI:EditCreate(handle,"familyJobEdit"..i,270,30 + intervalY * (i - 1),84,24)
		if _GUIHandle ~= 0 then
			if 1 == FamilyMainWnd.curList[j][4] then
				GUI:EditSetTextM(_GUIHandle, "战士")
			elseif 2 == FamilyMainWnd.curList[j][4] then
				GUI:EditSetTextM(_GUIHandle, "法师")
			else
				GUI:EditSetTextM(_GUIHandle, "道士")
			end
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
			GUI:EditSetTextColor(_GUIHandle, color.text2)
		end

		_GUIHandle = GUI:EditCreate(handle,"familyAtkEdit"..i,370,30 + intervalY * (i - 1),84,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle , tostring(FamilyMainWnd.curList[j][5]))
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
			GUI:EditSetTextColor(_GUIHandle, color.text2)
		end

		_GUIHandle = GUI:ButtonCreate(handle,"acceptBtn"..i,1852100057,500, 14 + intervalY * (i - 1))
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyMainWnd.acceptBtn_LC")
			GUI:WndSetParam(_GUIHandle, j)
			GUI:WndSetSizeM(_GUIHandle,56, 56)
		end

		_GUIHandle = GUI:ButtonCreate(handle,"refuseBtn"..i,1852100061,580, 14 + intervalY * (i - 1))
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyMainWnd.refuseBtn_LC")
			GUI:WndSetParam(_GUIHandle, j)
			GUI:WndSetSizeM(_GUIHandle,56, 56)
		end

		j = j - 1
	end
end

local buffID = {164,165,166,167,168,169,170,171,172,173,174,175,279,280,281,282,283,284,285,286}

function FamilyMainWnd.setBuffInfo()
	buffLevel = FamilyMainWnd.buffLevel
	local att = {{},{},{}}
	--获取BUFF信息
	CL:GetBuffProp(buffID[buffLevel], 11)
	att[1][1] = LuaRet
	CL:GetBuffProp(buffID[buffLevel], 13)
	att[1][2] = LuaRet
	CL:GetBuffProp(buffID[buffLevel], 15)
	att[2][1] = LuaRet
	CL:GetBuffProp(buffID[buffLevel], 17)
	att[2][2] = LuaRet
	CL:GetBuffProp(buffID[buffLevel], 19)
	att[3][1] = LuaRet
	CL:GetBuffProp(buffID[buffLevel], 21)
	att[3][2] = LuaRet

	--填充BUFF信息
	_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.WndHandle, "buffLevelEdit")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, ""..buffLevel)
	end
	_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.WndHandle, "wuAtkEdit")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, att[1][1].." - "..att[1][2])
	end
	_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.WndHandle, "moAtkEdit")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, att[2][1].." - "..att[2][2])
	end
	_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.WndHandle, "daoAtkEdit")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, ""..att[3][1].." - "..att[3][2])
	end
end

function FamilyMainWnd.GetCheckState(_Handle)
	if GUI:CheckBoxGetCheck(_Handle) then
		--服务端保存变量为无需审核
		UI:Lua_SubmitForm("行会", "setIfAutoJoinGuild", "1")
	else
		--服务端保存变量为需要审核
		UI:Lua_SubmitForm("行会", "setIfAutoJoinGuild", "0")
	end
end

function FamilyMainWnd.acceptBtn_LC(_Handle)
	local param = tonumber(GUI:WndGetParam(_Handle))
	local guid = FamilyMainWnd.curList[param][1]
	if CL:FamilyJoinDenyOrAccept(1, guid) then
		--msg("acceptBtn_LC  "..FamilyMainWnd.curList[param][2])
		UI:Lua_SubmitForm("行会", "joinFamilyLog", FamilyMainWnd.curList[param][2]) --提交服务端记录加入行会日志
		FamilyMainWnd.applyListRequest() --刷新申请列表
	end
end

function FamilyMainWnd.refuseBtn_LC(_Handle)
	local param = GUI:WndGetParam(_Handle)
	local guid = FamilyMainWnd.curList[param][1]
	if CL:FamilyJoinDenyOrAccept(0, guid) then
		FamilyMainWnd.applyListRequest() --刷新申请列表
	end
end

function FamilyMainWnd.updateBuffInfo(buffLevel, buffUpgradeCost)
	--升级完BUFF服务端调用
	FamilyMainWnd.buffLevel = tonumber(buffLevel)
	FamilyMainWnd.buffUpgradeCost = tonumber(buffUpgradeCost)

	FamilyMainWnd.setBuffInfo()--更新主界面BUFF信息
	FamilyMainWnd.fillUpgradeBuffWnd() --重新填充BUFF升级窗口BUFF信息
end

function FamilyMainWnd.showUpgradeBuffWnd()
	if not GUI:WndGetVisible(FamilyMainWnd.hUpgradeBuffWnd) then
		FamilyMainWnd.fillUpgradeBuffWnd()
		GUI:WndSetVisible(FamilyMainWnd.hDonateWnd, false)
		GUI:WndSetVisible(FamilyMainWnd.hStartBuffWnd, false)
		GUI:WndSetVisible(FamilyMainWnd.hUpgradeBuffWnd, true)
		GUI:WndSetCanRevMsg(FamilyMainWnd.hLogListWnd, false)
		GUI:WndSetCanRevMsg(FamilyMainWnd.hApplyListWnd, false)
	else
		GUI:WndSetVisible(FamilyMainWnd.hUpgradeBuffWnd, false)
				GUI:WndSetCanRevMsg(FamilyMainWnd.hLogListWnd, true)
		GUI:WndSetCanRevMsg(FamilyMainWnd.hApplyListWnd, true)
	end
end

function FamilyMainWnd.fillUpgradeBuffWnd()
	local _GUIHandle = 0
	--满级时按钮不可用
	if 20 == FamilyMainWnd.buffLevel then
		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.hUpgradeBuffWnd, "upgradeBuffBtn")
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end
	end
	local att = {{},{},{}}
	local att2 = {{},{},{}}
	--BUFF当前属性
	if 0 ~= FamilyMainWnd.buffLevel then
		CL:GetBuffProp(buffID[FamilyMainWnd.buffLevel], 11)
		att[1][1] = LuaRet
		CL:GetBuffProp(buffID[FamilyMainWnd.buffLevel], 13)
		att[1][2] = LuaRet
		CL:GetBuffProp(buffID[FamilyMainWnd.buffLevel], 15)
		att[2][1] = LuaRet
		CL:GetBuffProp(buffID[FamilyMainWnd.buffLevel], 17)
		att[2][2] = LuaRet
		CL:GetBuffProp(buffID[FamilyMainWnd.buffLevel], 19)
		att[3][1] = LuaRet
		CL:GetBuffProp(buffID[FamilyMainWnd.buffLevel], 21)
		att[3][2] = LuaRet

		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.hUpgradeBuffWnd, "buffLevel")
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, ""..tostring(FamilyMainWnd.buffLevel))
		end

		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.hUpgradeBuffWnd, "wuAtk")
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, ""..att[1][1].." - "..att[1][2])
		end

		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.hUpgradeBuffWnd, "moAtk")
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, ""..att[2][1].." - "..att[2][2])
		end

		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.hUpgradeBuffWnd, "daoAtk")
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, ""..att[3][1].." - "..att[3][2])
		end
	end

	--BUFF下级属性
	if 20 >= FamilyMainWnd.buffLevel + 1 then
		CL:GetBuffProp(buffID[FamilyMainWnd.buffLevel + 1], 11)
		att2[1][1] = LuaRet
		CL:GetBuffProp(buffID[FamilyMainWnd.buffLevel + 1], 13)
		att2[1][2] = LuaRet
		CL:GetBuffProp(buffID[FamilyMainWnd.buffLevel + 1], 15)
		att2[2][1] = LuaRet
		CL:GetBuffProp(buffID[FamilyMainWnd.buffLevel + 1], 17)
		att2[2][2] = LuaRet
		CL:GetBuffProp(buffID[FamilyMainWnd.buffLevel + 1], 19)
		att2[3][1] = LuaRet
		CL:GetBuffProp(buffID[FamilyMainWnd.buffLevel + 1], 21)
		att2[3][2] = LuaRet
		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.hUpgradeBuffWnd, "next_buffLevel")
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, ""..(FamilyMainWnd.buffLevel + 1))
		end

		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.hUpgradeBuffWnd, "next_wuAtk")
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, ""..att2[1][1].." - "..att2[1][2])
		end

		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.hUpgradeBuffWnd, "next_moAtk")
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, ""..att2[2][1].." - "..att2[2][2])
		end

		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.hUpgradeBuffWnd, "next_daoAtk")
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, ""..att2[3][1].." - "..att2[3][2])
		end

		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.hUpgradeBuffWnd, "guildLevelEdit")
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, ""..tostring(FamilyMainWnd.buffLevel + 1))
			if FamilyMainWnd.buffLevel + 1 > FamilyMainWnd.guildLevel then
				GUI:WndSetTextColorM(_GUIHandle, color.red)
			else
				GUI:WndSetTextColorM(_GUIHandle, color.number)
			end
		end

		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.hUpgradeBuffWnd, "fund")
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, ""..FamilyMainWnd.buffUpgradeCost.."/"..FamilyMainWnd.guildFund)
			if FamilyMainWnd.buffUpgradeCost > FamilyMainWnd.guildFund then
				GUI:WndSetTextColorM(_GUIHandle, color.red)
			else
				GUI:WndSetTextColorM(_GUIHandle, color.number)
			end
		end
	else
		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.hUpgradeBuffWnd, "next_buffLevel")
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, "顶级")
		end
		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.hUpgradeBuffWnd, "next_wuAtk")
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, "顶级")
		end

		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.hUpgradeBuffWnd, "next_moAtk")
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, "顶级")
		end

		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.hUpgradeBuffWnd, "next_daoAtk")
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, "顶级")
		end

		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.hUpgradeBuffWnd, "guildLevelEdit")
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, "-")
			GUI:WndSetTextColorM(_GUIHandle, color.text2)
		end
		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.hUpgradeBuffWnd, "fund")
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, "- / -")
			GUI:WndSetTextColorM(_GUIHandle, color.text2)
		end
	end
end

function FamilyMainWnd.upgradeBuff()
	UI:Lua_SubmitForm("行会", "upgradeGuildBuff", "")
end

function FamilyMainWnd.showStartBuffWnd()
	if not GUI:WndGetVisible(FamilyMainWnd.hStartBuffWnd) then
		local _GUIHandle = GUI:WndFindWindow(FamilyMainWnd.hStartBuffWnd, "num")
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, ""..FamilyMainWnd.buffUpgradeCost.."/"..FamilyMainWnd.guildFund)
			if FamilyMainWnd.buffUpgradeCost > FamilyMainWnd.guildFund then
				GUI:WndSetTextColorM(_GUIHandle, color.red)
			else
				GUI:WndSetTextColorM(_GUIHandle, color.number)
			end
		end
		GUI:WndSetVisible(FamilyMainWnd.hDonateWnd, false)
		GUI:WndSetVisible(FamilyMainWnd.hStartBuffWnd, true)
		GUI:WndSetVisible(FamilyMainWnd.hUpgradeBuffWnd, false)
		GUI:WndSetCanRevMsg(FamilyMainWnd.hLogListWnd, false)
		GUI:WndSetCanRevMsg(FamilyMainWnd.hApplyListWnd, false)
	else
		GUI:WndSetVisible(FamilyMainWnd.hStartBuffWnd, false)
		GUI:WndSetCanRevMsg(FamilyMainWnd.hLogListWnd, true)
		GUI:WndSetCanRevMsg(FamilyMainWnd.hApplyListWnd, true)
	end
end

function FamilyMainWnd.showDonateWnd()
	--msg("showDonateWnd")
	if not GUI:WndGetVisible(FamilyMainWnd.hDonateWnd) then
		GUI:WndSetVisible(FamilyMainWnd.hDonateWnd, true)
		GUI:WndSetVisible(FamilyMainWnd.hStartBuffWnd, false)
		GUI:WndSetVisible(FamilyMainWnd.hUpgradeBuffWnd, false)
		GUI:WndSetCanRevMsg(FamilyMainWnd.hLogListWnd, false)
		GUI:WndSetCanRevMsg(FamilyMainWnd.hApplyListWnd, false)
	else
		GUI:WndSetVisible(FamilyMainWnd.hDonateWnd, false)
		GUI:WndSetCanRevMsg(FamilyMainWnd.hLogListWnd, true)
		GUI:WndSetCanRevMsg(FamilyMainWnd.hApplyListWnd, true)
	end
end

function FamilyMainWnd.startBuff()
	UI:Lua_SubmitForm("行会", "startGuildBuff", "")
	FamilyMainWnd.showStartBuffWnd()
end

function FamilyMainWnd.showLogList()
	if not GUI:WndGetVisible(FamilyMainWnd.hLogListWnd) then
		GUI:WndSetVisible(FamilyMainWnd.hLogListWnd, true)
		GUI:WndSetVisible(FamilyMainWnd.hApplyListWnd, false)
		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.WndHandle, "showLogListBtn")
		if _GUIHandle ~= 0 then
			GUI:ButtonSetIsActivePageBtn(_GUIHandle, true)
		end
		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.WndHandle, "showApplyListBtn")
		if _GUIHandle ~= 0 then
			GUI:ButtonSetIsActivePageBtn(_GUIHandle, false)
		end
	end
end

function FamilyMainWnd.fillLogList(tLogInfo)
	--UI:Lua_Log("FamilyMainWnd.fillLogList 开始触发")
	if "table" == type(tLogInfo) then
		if nil ~= FamilyMainWnd.hLogList then
			GUI:WndDlgClear(FamilyMainWnd.hLogList)
		end
		local j = #tLogInfo
		--UI:Lua_Log("#行会日志个数 = "..#tLogInfo)
		for i = 1, #tLogInfo do
			if tLogInfo[i][1] > 3 then
				--UI:Lua_Log("日志类型 = "..tLogInfo[i][1])
				_GUIHandle = GUI:ImageCreate(FamilyMainWnd.hLogList,"BgImg"..i, 0, 0, 5 +(i - 1) * 60)
				if _GUIHandle ~= 0 then
					GUI:WndSetSizeM(_GUIHandle,644, 52)
					GUI:ImageSetAroundImage(_GUIHandle, 1850900016, 1850900018, 1850900022, 1850900024, 1850900020, 1850900017, 1850900023, 1850900019, 1850900021)
				end
				_GUIHandle = GUI:RichEditCreate(FamilyMainWnd.hLogList,"content"..i,23, 22 +(i - 1) * 60,600,24)
				if _GUIHandle ~= 0 then
					GUI:WndSetEnableM(_GUIHandle, false)
					GUI:RichEditSetEditEnable(_GUIHandle, false)
					if FAMILY_MEMBER_JOIN == tLogInfo[j][1] then
						GUI:RichEditAppendString(_GUIHandle, tLogInfo[j][2].."   欢迎#COLORCOLOR_BLUE#"..tLogInfo[j][3].."#COLORCOLOR_WHITE#加入本行会#COLOREND#")
					elseif FAMILY_MEMBER_LEAVE == tLogInfo[j][1] then
						GUI:RichEditAppendString(_GUIHandle, tLogInfo[j][2].."   #COLORCOLOR_BLUE#"..tLogInfo[j][3].."#COLORCOLOR_WHITE#退出了本行会#COLOREND#")
					elseif FAMILY_MEMBER_KICK == tLogInfo[j][1] then
						GUI:RichEditAppendString(_GUIHandle, tLogInfo[j][2].."   #COLORCOLOR_BLUE#"..tLogInfo[j][3].."#COLORCOLOR_WHITE#将#COLORCOLOR_BLUE#"..tLogInfo[j][4].."#COLORCOLOR_WHITE#踢出了本行会#COLOREND#")
					elseif FAMILY_TITLE_CHANGE == tLogInfo[j][1] then
						GUI:RichEditAppendString(_GUIHandle, tLogInfo[j][2].."   #COLORCOLOR_BLUE#"..tLogInfo[j][3].."#COLORCOLOR_WHITE#将#COLORCOLOR_BLUE#"..tLogInfo[j][4].."#COLORCOLOR_WHITE#任命为#COLORCOLOR_RED#"..tLogInfo[j][5].."#COLOREND#")
					elseif FAMILY_MEMBER_DONATE == tLogInfo[j][1] then
						GUI:RichEditAppendString(_GUIHandle, tLogInfo[j][2].."   #COLORCOLOR_BLUE#"..tLogInfo[j][3].."#COLORCOLOR_WHITE#向行会捐赠了#COLORCOLOR_YELLOW#"..tLogInfo[j][4].."#COLORCOLOR_WHITE#元宝#COLOREND#")
					elseif FAMILY_LEVEL_UP == tLogInfo[j][1] then
						GUI:RichEditAppendString(_GUIHandle, tLogInfo[j][2].."   恭喜本行会成功升到#COLORCOLOR_RED#"..tLogInfo[j][3].."#COLORCOLOR_WHITE#级#COLOREND#")
					elseif FAMILY_BUFF_LEVEL_UP == tLogInfo[j][1] then
						GUI:RichEditAppendString(_GUIHandle, tLogInfo[j][2].."   恭喜#COLORCOLOR_BLUE#"..tLogInfo[j][3].."#COLORCOLOR_WHITE#将行会BUFF升到#COLORCOLOR_RED#"..tLogInfo[j][4].."#COLORCOLOR_WHITE#级#COLOREND#")
					elseif FAMILY_BUFF_START == tLogInfo[j][1] then
						GUI:RichEditAppendString(_GUIHandle, tLogInfo[j][2].."   #COLORCOLOR_BLUE#"..tLogInfo[j][3].."#COLORCOLOR_WHITE#成功开启行会BUFF,持续24小时#COLOREND#")
					elseif FAMILY_LEADER_CHANGE == tLogInfo[j][1] then
						GUI:RichEditAppendString(_GUIHandle, tLogInfo[j][2].."   #COLORCOLOR_BLUE#"..tLogInfo[j][3].."#COLORCOLOR_WHITE#将会长转让给#COLORCOLOR_BLUE#"..tLogInfo[j][4].."#COLOREND#")
					end
				end
				j = j - 1
			end
		end
	end
end


function FamilyMainWnd.showApplyList()
	if not GUI:WndGetVisible(FamilyMainWnd.hApplyListWnd) then
		GUI:WndSetVisible(FamilyMainWnd.hLogListWnd, false)
		GUI:WndSetVisible(FamilyMainWnd.hApplyListWnd, true)
		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.WndHandle, "showLogListBtn")
		if _GUIHandle ~= 0 then
			GUI:ButtonSetIsActivePageBtn(_GUIHandle, false)
		end
		_GUIHandle = GUI:WndFindWindow(FamilyMainWnd.WndHandle, "showApplyListBtn")
		if _GUIHandle ~= 0 then
			GUI:ButtonSetIsActivePageBtn(_GUIHandle, true)
		end
	end
end


function FamilyMainWnd.donateMoney()
	--msg("捐款请求")
	local _GUIHandle = GUI:WndFindWindow(FamilyMainWnd.hDonateWnd, "num")
	if _GUIHandle ~= 0 then
		local ybNum = tonumber(GUI:EditGetTextM(_GUIHandle))
		if nil ~= ybNum then
			UI:Lua_SubmitForm("行会", "donateGuildFund", ""..ybNum)
		else
			FamilyMainWnd.msgBox("请输入数量")
		end
	end
end

function FamilyMainWnd.updateGuildFund(newFund)
	--设置公会资金
	FamilyMainWnd.guildFund = tonumber(newFund)
	local _GUIHandle = GUI:WndFindWindow(FamilyMainWnd.WndHandle, "fundEdit")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, tostring(newFund))
	end

end


function FamilyMainWnd.startCounting(buffRemainTime)
	if nil ~= buffRemainTime then
		--不为空是服务端调用的
		FamilyMainWnd.buffRemainTime = buffRemainTime
	end
	if 0 < FamilyMainWnd.buffRemainTime then
		GUI:WndDelAllTimer(FamilyMainWnd.hStartBuffBtn)
		GUI:WndAddTimerBrief(FamilyMainWnd.hStartBuffBtn, 1000, "FamilyMainWnd.countingDown")
		--BUFF开启中不可点
		GUI:WndSetEnableM(FamilyMainWnd.hStartBuffBtn, false)
	end
end

function FamilyMainWnd.countingDown()
	FamilyMainWnd.buffRemainTime = FamilyMainWnd.buffRemainTime - 1
	if 0 > FamilyMainWnd.buffRemainTime then
		GUI:WndSetTextM(FamilyMainWnd.hStartBuffBtn, "开启")
		GUI:WndSetEnableM(FamilyMainWnd.hStartBuffBtn, true)
		GUI:WndDelAllTimer(FamilyMainWnd.hStartBuffBtn)
		return
	end
	local d, h, m, s = GetDetailTime(FamilyMainWnd.buffRemainTime)
	if 0 < h then
		if s < 10 then
			s = "0"..s
		end
		if m < 10 then
			m = "0"..m
		end
		GUI:WndSetTextM(FamilyMainWnd.hStartBuffBtn, h..":"..m..":"..s)
	end
end

--全部通过
function FamilyMainWnd.acceptAllApply()
	for i = 1, #FamilyMainWnd.curList do
		if CL:FamilyJoinDenyOrAccept(1, FamilyMainWnd.curList[i][1]) then
			UI:Lua_SubmitForm("行会", "joinFamilyLog", FamilyMainWnd.curList[i][2]) --提交服务端记录加入行会日志
		end
	end
	FamilyMainWnd.applyListRequest() --刷新申请列表
end

--全部拒绝
function FamilyMainWnd.clearApplyList()
	for i = 1, #FamilyMainWnd.curList do
		CL:FamilyJoinDenyOrAccept(0, FamilyMainWnd.curList[i][1])
	end
	FamilyMainWnd.applyListRequest() --刷新申请列表
end

function FamilyMainWnd.msgBox(str)
	MessageBox(0, str, nil, nil, false)
end

FamilyMainWnd.main()