RoleTitle = {}
RoleTitle.title_tab  = {}
RoleTitle.title_list = {}
RoleTitle.id = 0
RoleTitle.name = ""  --Ñ¡ÖÐµÄ³ÆºÅ
function RoleTitle.main()
    local _Parent = GetWindow(nil,"RoleGUI")

    local _GUIHandle = GUIWndCreateWnd(_Parent, "RoleTitle", 0, 0, 0)
   
	local _BackImage = GUIImageCreate(_GUIHandle, "BackImage", 1800900008, 15, 30)
    if _BackImage ~= 0 then
		GUIWndSetEnableM(_BackImage, false) 
	end	
	local _Image = GUIImageCreate(_GUIHandle, "image0",1801500079, 127, 42)
	if _Image ~= 0 then
		GUIWndSetEnableM(_Image, false) 
	end	
	local _BackImage = GUIImageCreate(_GUIHandle, "BackImage1", 1800900096, 90, 72)
    if _BackImage ~= 0 then
		GUIWndSetEnableM(_BackImage, false) 
	end	
	
	local _BackImage = GUIImageCreate(_GUIHandle, "BackImage2", 1800900095, 18, 315)
    if _BackImage ~= 0 then
		GUIWndSetEnableM(_BackImage, false) 
	end	
	local _BackImage = GUIImageCreate(_GUIHandle, "BackImage3", 1800900094, 18, 108)
    if _BackImage ~= 0 then
		GUIWndSetEnableM(_BackImage, false) 
	end	
	local _EditHandle = GUIEditCreate(_GUIHandle, "Edit", 20, 75, 55, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	
		  	    
		EditSetText(_EditHandle,nil,"µ±Ç°³ÆºÅ")
	end
	
	local _EditHandle = GUIEditCreate(_GUIHandle, "Edit0", 100, 75, 55, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	
		  	    
		EditSetText(_EditHandle,nil,"")
	end
	
	local _ListHandle = GUIListBoxCreate(_GUIHandle,"List",18,110,270,165)	
	if _ListHandle ~= 0 then
		CLGetTitleList() 
		RoleTitle.title_tab = getTable(LuaRet) 
		CLGetMyTitleList() 
		RoleTitle.title_list = getTable(LuaRet)
		if #RoleTitle.title_tab > 0 then
			if #RoleTitle.title_list > 0 then
				for i = 1 , #RoleTitle.title_list do 
					GUIListBoxAddString(_ListHandle,RoleTitle.title_list[i][2],MakeARGB(255, 255, 255, 255))	
				end	
			end	
			for i = 1 ,#RoleTitle.title_tab do
				local a = 0
				for j = 1 , #RoleTitle.title_list do 
					if as3.tolua(RoleTitle.title_tab[i][2]) == as3.tolua(RoleTitle.title_list[j][2]) then	
						a = 1
						break
					end
				end	
				if a == 0 then
					GUIListBoxAddString(_ListHandle,RoleTitle.title_tab[i][2],MakeARGB(255, 99, 97, 99))	
				end
			end
		end	
		GUIWndRegistScript(_ListHandle,RDWnd2DListBoxCL_select_change,"RoleTitle.ListLine")
	end	
	
	local Show_handle = GUIButtonCreate(_GUIHandle, "ShowTitle", 1800000129, 130, 280)
	if Show_handle ~= 0 then
		GUIWndSetSizeM(Show_handle,80,30)
		GUIWndRegistScript(Show_handle, RDWndBaseCL_mouse_lbUp, "RoleTitle.ShowTitle")
		WndSetTextM(Show_handle,nil,"ÏÔÊ¾³ÆºÅ")		
		WndSetTextColorM(Show_handle,nil,MakeARGB(255, 158, 104, 6))
	end
	local Hide_handle = GUIButtonCreate(_GUIHandle, "HideTitle", 1800000129, 210, 280)
	if Hide_handle ~= 0 then
		GUIWndSetSizeM(Hide_handle,80,30)
		GUIWndRegistScript(Hide_handle, RDWndBaseCL_mouse_lbUp, "RoleTitle.HideTitle")
		WndSetTextM(Hide_handle,nil,"Òþ²Ø³ÆºÅ")
		WndSetTextColorM(Hide_handle,nil,MakeARGB(255, 158, 104, 6))
	end


	local TitleMiaoEdit = GUIRichEditCreate(_GUIHandle, "TitleMEdit", 20, 320, 265, 60)
    if TitleMiaoEdit ~= 0 then
        GUIRichEditSetEditEnable(TitleMiaoEdit, false)
        GUIWndAddFlags(TitleMiaoEdit, 2097152)  
		--GUIRichEditAppendString(TitleMiaoEdit,"12345645464645646465454646465465464654564645464654564564646455445")		
    end
	
	
    RoleTitle.UIInit(_GUIHandle)
end


--UI Logic Code Start
RoleTitle.WndHandle = 0
function RoleTitle.UIInit(_GUIHandle)
	RoleTitle.WndHandle = _GUIHandle
	local Property = 0
	local name = ""
	if CLGetPlayerSelfProperty32(ROLE_PROP32_TITLE) then 
		Property = as3.tolua(LuaRet)
	end    
	for i = 1 , #RoleTitle.title_list do 
		if Property == as3.tolua(RoleTitle.title_list[i][1]) then
			name = as3.tolua(RoleTitle.title_list[i][2])
			break
		end	 	
	end
	local _EditHandle = GUIWndFindWindow(RoleTitle.WndHandle, "Edit0")
	EditSetText(_EditHandle,nil,""..name)
	local TitleMiaoEdit = GUIWndFindWindow(RoleTitle.WndHandle, "TitleMEdit")
	GUIRichEditClear(TitleMiaoEdit)
	if #RoleTitle.title_list > 0 then
		GUIRichEditAppendString(TitleMiaoEdit,as3.tolua(RoleTitle.title_list[1][3]))
	else
		GUIRichEditAppendString(TitleMiaoEdit,as3.tolua(RoleTitle.title_tab[1][3]))
	end	
end

function RoleTitle.ShowTitle(_handle)
	if #RoleTitle.title_list > 0 then
		for i = 1 , #RoleTitle.title_list do 
			if RoleTitle.id == as3.tolua(RoleTitle.title_list[i][1]) then
				CLOnTitleApply(RoleTitle.id)
				local _EditHandle = GUIWndFindWindow(RoleTitle.WndHandle, "Edit0")
				EditSetText(_EditHandle,nil,as3.tolua(RoleTitle.title_list[i][2]))
				break
			end	 	
		end
	end	

end

function RoleTitle.ListLine(_handle,line_index)	
	RoleTitle.name = GUIListBoxGetString(_handle,line_index)
	local handle = GUIWndFindWindow(RoleTitle.WndHandle, "TitleMEdit")
	for i = 1 ,#RoleTitle.title_tab do
		if RoleTitle.name == as3.tolua(RoleTitle.title_tab[i][2]) then
			RoleTitle.id = as3.tolua(RoleTitle.title_tab[i][1])
			GUIRichEditClear(handle)
			GUIRichEditAppendString(handle,as3.tolua(RoleTitle.title_tab[i][3]))
			break
		end		
	end
end	
	
function RoleTitle.HideTitle(_handle)
	CLOnTitleApply(0)
	local _EditHandle = GUIWndFindWindow(RoleTitle.WndHandle, "Edit0")
	EditSetText(_EditHandle,nil,"")
end

RoleTitle.main()