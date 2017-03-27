RankListWnd = {}
function RankListWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"btnBackground",0,32,45)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,891, 502)
		GUI:WndSetMoveWithLBM(_Parent)
		GUI:WndSetIsESCClose(_Parent,true)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"mainBackground",0,0,0)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
		GUI:WndSetSizeM(_GUIHandle,940, 542)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"closebtn",1850000385,890,6)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,39, 39)
		GUI:WndRegistScript(_GUIHandle,1002, "RankListWnd.CloseWnd")
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"btnBackground",0,32,55)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle, 1850600052, 1850600054, 1850600058, 1850600060, 1850600056, 1850600053, 1850600059, 1850600055, 1850600057)
		GUI:WndSetSizeM(_GUIHandle,372, 413)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"mainChart",1850600012,45,80)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,337, 71)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		--GUI:WndSetTextOffset(_GUIHandle, 0, -6)
		GUI:WndSetTextM(_GUIHandle,"总排行")
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"knightBtn",1850600012,45,175)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,337, 71)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		--GUI:WndSetTextOffset(_GUIHandle, 0, -6)
		GUI:WndSetTextM(_GUIHandle,"战神榜")
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"magicBtn",1850600012,45,270)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,337, 71)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		--GUI:WndSetTextOffset(_GUIHandle, 0, -6)
		GUI:WndSetTextM(_GUIHandle,"法神榜")
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"taoistBtn",1850600012,45,365)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,337, 71)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		--GUI:WndSetTextOffset(_GUIHandle, 0, -6)
		GUI:WndSetTextM(_GUIHandle,"道尊榜")
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"titleImgLeft",1850100038,334,7)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,97, 32)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"titleImgRight",1850100039,509,8)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,97, 32)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"contentBackground",0,428,53)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle, 1850400015, 1850400017, 1850400021, 1850400023, 1850400019,1850400016, 1850400022, 1850400018, 1850400020)
		GUI:WndSetSizeM(_GUIHandle,472, 413)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"title",438,8,60,33)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"排行榜")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"chart",454,72,60,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"排名")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"name",558,72,60,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"姓名")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"level",668,72,60,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"等级")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"job",744,72,60,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"职业")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"gender",815,72,60,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"性别")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	--[[_GUIHandle = GUI:EditCreate(_Parent,"rankLine1",460,115,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"1")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine1",519,115,105,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"按时打算的撒啊")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine1",664,116,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"100")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"jobLine1",744,116,60,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"法师")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"genderLine1",822,117,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"男")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"rankLine2",460,155,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"2")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine2",519,155,105,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"按时打算的撒啊")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine2",664,156,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"100")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"jobLine2",744,156,60,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"法师")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"genderLine2",822,157,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"男")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"rankLine3",460,195,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"3")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine3",519,195,105,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"按时打算的撒啊")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine3",664,196,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"100")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"jobLine3",744,196,60,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"法师")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"genderLine3",822,197,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"男")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"rankLine4",460,235,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"4")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine4",519,235,105,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"按时打算的撒啊")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine4",664,236,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"100")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"jobLine4",744,236,60,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"法师")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"genderLine4",822,237,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"男")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"rankLine5",460,275,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"5")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine5",519,275,105,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"按时打算的撒啊")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine5",664,276,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"100")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"jobLine5",744,276,60,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"法师")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"genderLine5",822,277,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"男")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"rankLine6",460,315,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"6")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine6",519,315,105,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"按时打算的撒啊")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine6",664,316,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"100")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"jobLine6",744,316,60,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"法师")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"genderLine6",822,317,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"男")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"rankLine7",460,360,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"7")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine7",519,360,105,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"按时打算的撒啊")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine7",664,361,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"100")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"jobLine7",744,361,60,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"法师")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"genderLine7",822,362,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"男")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"rankLine8",460,405,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"8")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine8",519,405,105,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"按时打算的撒啊")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine8",664,406,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"100")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"jobLine8",744,406,60,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"法师")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"genderLine8",822,407,30,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"男")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"rank1Img",1851600000,457,124)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,15, 23)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"rank2Img",1851600001,458,165)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,15, 23)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"rank3Img",1851600002,458,207)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,15, 23)
		GUI:WndSetEnableM(_GUIHandle, false)
	end--]]
	
	_GUIHandle = GUI:EditCreate(_Parent,"myRankText",760,473,200,29)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"我的排名：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"myRankNum",849,473,65,29)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"未上榜")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	
	RankListWnd.UIInit(_Parent)
end

--UI Logic Code Start
function RankListWnd.UIInit(_Handle)
	RankListWnd.handle = _Handle
	local ClipWndHandle = GUI:WndCreateWnd(_Handle,"RankListClipWnd",0,428,108)
	if ClipWndHandle then
		GUI:WndSetFlagsM(ClipWndHandle, flg_wndBase_useBkBuffer)
		GUI:WndSetSizeM(ClipWndHandle,472, 333)
		RankListWnd.ClipWndHandle = ClipWndHandle
	end
	
	RankListWnd.CreateRankList()
end

--//创建排名列表
function RankListWnd.CreateRankList()

	local _GUIHandle = 0
	local totalCount = 100
	local _Parent = RankListWnd.ClipWndHandle
	for i = 1, totalCount do
		if i > 3 then
			--//top3 show ranking by image
			_GUIHandle = GUI:EditCreate(_Parent,"ranking"..i,31,5+(i-1)*40,30,28)
			if _GUIHandle ~= 0 then
				GUI:WndSetParam(_GUIHandle, i)
				GUI:WndSetTextColorM(_GUIHandle, 4290950816)
				GUI:EditSetTextM(_GUIHandle,""..i)
				GUI:WndSetEnableM(_GUIHandle, false)
				GUI:EditSetFontCenter(_GUIHandle)
			end
		else
			_GUIHandle = GUI:ImageCreate(_Parent,"rankImg"..i,1851600000+i-1,40,7+(i-1)*41)
			if _GUIHandle ~= 0 then
				GUI:WndSetParam(_GUIHandle, 0)
				GUI:WndSetSizeM(_GUIHandle,15, 23)
				GUI:WndSetEnableM(_GUIHandle, false)
			end
			
		end
	
		_GUIHandle = GUI:EditCreate(_Parent,"playerName"..i,51,5+(i-1)*40,200,28)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, i)
			GUI:WndSetTextColorM(_GUIHandle, 4290950816)
			
			if i%2 ~= 0 then
				GUI:EditSetTextM(_GUIHandle,"短短")
			else
				GUI:EditSetTextM(_GUIHandle,"我的名字七个字")
			end
			
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		
		_GUIHandle = GUI:EditCreate(_Parent,"playerLevel"..i,244,5+(i-1)*40,30,28)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, i)
			GUI:WndSetTextColorM(_GUIHandle, 4290950816)
			GUI:EditSetTextM(_GUIHandle,"100")
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		
		_GUIHandle = GUI:EditCreate(_Parent,"playerJob"..i,306,5+(i-1)*40,60,28)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, i)
			GUI:WndSetTextColorM(_GUIHandle, 4290950816)
			GUI:EditSetTextM(_GUIHandle,"法师")
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		
		_GUIHandle = GUI:EditCreate(_Parent,"playerGender"..i,391,5+(i-1)*40,30,28)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, i)
			GUI:WndSetTextColorM(_GUIHandle, 4290950816)
			GUI:EditSetTextM(_GUIHandle,"男")
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
	end
end

function RankListWnd.CloseWnd()
	GUI:WndClose(RankListWnd.handle)
end

RankListWnd.main()




