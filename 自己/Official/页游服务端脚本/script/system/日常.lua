-----------------------ͼ����ʾ-----------------------------
function richang_xianshi(player)	
	ShowTimeCount2(player, 0, 1903800075, "�ճ�",0,"") --��ʾĿ��ͼ��
end

-------------------ͼ�걻���-----------------------
function richang(player)
	richang_xianshi(player) --��ʾĿ��ͼ��
	
	--��ʼ��������������
	local all_days = lualib:GetAllDays(0)
	local days = lualib:Player_GetCustomVarInt(player, "custom_var_ss_task_days")
	if days < all_days then
		lualib:Player_SetCustomVarInt(player, "custom_var_ss_task_count", 0)
	end
	
	--��ʼ����ս������
	if lualib:GetAllDays(0) - lualib:GetInt(player,"fuben_chushihua") >= 1 then
		lualib:SetInt(player,"fuben_chushihua",lualib:GetAllDays(0)) --��¼������ʱ�ĵ�ǰ����
		lualib:SetInt(player,"fuben_cishu",0) --���ո���������ʼ��
	end
	local cishu = 1 --��ͨ���ÿ�մ���
	if lualib:GetVipLevel(player) > 0 then
		cishu = 3 --vip���ÿ�մ���
	end
	
	local str_1 = "#COLORCOLOR_BLUE#�ر���#COLOREND#\nʹ��#COLORCOLOR_ORANGE#ʱ֮ɳ��#COLOREND#��ȡʱ�����"
	local str_2 = "#COLORCOLOR_BLUE#��������#COLOREND##COLORCOLOR_GREENG#("..lualib:GetInt(player,"custom_var_ss_task_count").."/10)#COLOREND#\n#COLORCOLOR_ORANGE#20��#COLOREND#������ҿ���ȡ"
	local str_3 = "#COLORCOLOR_BLUE#��ħ��#COLOREND##COLORCOLOR_GREENG#("..lualib:CampCount(player, 4).."/3)#COLOREND#\n#COLORCOLOR_ORANGE#35��#COLOREND#��������������ս"
	local str_4 = "#COLORCOLOR_BLUE#Ѻ��#COLOREND##COLORCOLOR_GREENG#("..lualib:CampCount(player, 12).."/3)#COLOREND#\n#COLORCOLOR_ORANGE#35��#COLOREND#������ҿ���ȡ"
	local str_5 = "#COLORCOLOR_BLUE#��ս��#COLOREND##COLORCOLOR_GREENG#("..lualib:GetInt(player,"fuben_cishu").."/1)#COLOREND#\n#COLORCOLOR_ORANGE#40��#COLOREND#������������ս"
	local str_6 = "#COLORCOLOR_BLUE#������Ԩ#COLOREND##COLORCOLOR_GREENG#("..lualib:CampCount(player, 16).."/1)#COLOREND#\n#COLORCOLOR_ORANGE#40��#COLOREND#������ҿ������ս"
	local s = " str_1 = "..string.format("%q",str_1)
	s = s .." str_2 = "..string.format("%q",str_2)
	s = s .." str_3 = "..string.format("%q",str_3)
	s = s .." str_4 = "..string.format("%q",str_4)
	s = s .." str_5 = "..string.format("%q",str_5)
	s = s .." str_6 = "..string.format("%q",str_6)

	local time = {
		lualib:GetInt("0","boss_shuaxin1"), --ţħ����ˢ��ʱ��
		lualib:GetInt("0","boss_shuaxin2"), --ǧ����ħˢ��ʱ��
		lualib:GetInt("0","boss_shuaxin3"), --����ɮˢ��ʱ��
		lualib:GetInt("0","boss_shuaxin4"), --Ѫ��ʦˢ��ʱ��
		lualib:GetInt("0","boss_shuaxin5"), --��ħ��ˢ��ʱ��
		lualib:GetInt("0","boss_shuaxin6"), --��ħˢ��ʱ��
		lualib:GetInt("0","boss_shuaxin7"), --���ض�ħ����ˢ��ʱ��
		lualib:GetInt("0","boss_shuaxin8"), --��������ˢ��ʱ��
	}
	
	local killer = {
		lualib:GetStr("0","boss_killer1"), --ţħ����������
		lualib:GetStr("0","boss_killer2"), --ǧ����ħ������
		lualib:GetStr("0","boss_killer3"), --����ɮ������
		lualib:GetStr("0","boss_killer4"), --Ѫ��ʦ������
		lualib:GetStr("0","boss_killer5"), --��ħ��������
		lualib:GetStr("0","boss_killer6"), --��ħ������
		lualib:GetStr("0","boss_killer7"), --���ض�ħ����������
		lualib:GetStr("0","boss_killer8"), --��������������
	}
	
	for i=1,#time do
		s = s .. " time_"..i.." = "..string.format("%q",time[i]).." killer_"..i.." = "..string.format("%q",killer[i])
	end

	lualib:ShowFormWithContent(player,"�ű���",s)
	lualib:ShowFormWithContent(player,"form�ļ���","�ճ�")
	return ""
end