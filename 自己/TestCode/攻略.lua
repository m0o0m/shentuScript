local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")

-----------------------ͼ����ʾ-----------------------------
function gonglue_xianshi(player)	
	local script = 
	[[
	function ServerFuncGL()
		local wnd = GetWindow(nil, "���Կ�")
		if 0 == wnd then
			UI:Lua_SubmitForm("����ʱ", "gonglue", "")
		else
			WndClose(wnd, nil)
		end
	end
	UI:Lua_HotKeyRegister("ALT + G", KEY_TRIGER_KEYUP, "ServerFuncGL")
	]]
	lualib:ShowFormWithContent(player, "�ű���", script)
	
	AddSEIcon(player, 1, -3, "����", 1906100029, "����ʱ", "gonglue", "", "ALT + G[����]:ͨ�����Կ������ɸ���!")
	AddIconMagic(player, "����", 1094200000, -6, -6, 150)
end

-------------------ͼ�걻���-----------------------
function gonglue(player)
	DelIconMagic(player, "����")
	local str_1 = "#COLORCOLOR_BLUE#[������]#COLOREND#\n���ǵ�:\n#OFFSET<X:30,Y:0>##COLORCOLOR_YELLOW#����Ϊ����ɱһҹ�����ӡ���#COLOREND#\n#OFFSET<X:180,Y:0>#��"
	local str_2 = "#COLORCOLOR_BLUE#[��    ��]#COLOREND#\n���ǵ�:\n#OFFSET<X:30,Y:0>##COLORCOLOR_YELLOW#��������򼶴���ֵ����ӡ���#COLOREND#\n#OFFSET<X:180,Y:0>#��"   
	local str_3 = "#COLORCOLOR_BLUE#[��������]#COLOREND#\n���ǵ�:\n#OFFSET<X:30,Y:0>##COLORCOLOR_YELLOW#��������ĺŽǽ����лᡭ��#COLOREND#\n#OFFSET<X:180,Y:0>#��"
	local str_4 = "#COLORCOLOR_BLUE#[��    ��]#COLOREND#\n���ǵ�:\n#OFFSET<X:30,Y:0>##COLORCOLOR_YELLOW#��������ҩȥ��������ӡ���#COLOREND#\n#OFFSET<X:180,Y:0>#��"   
	local str_5 = "#COLORCOLOR_BLUE#[��������]#COLOREND#\n���ǵ�:\n#OFFSET<X:30,Y:0>##COLORCOLOR_YELLOW#[��̬��ʿ]��[����ͷ��]����#COLOREND#\n#OFFSET<X:180,Y:0>#��"
	local str_6 = "#COLORCOLOR_BLUE#[��ħʯ��]#COLOREND#\n���ǵ�:\n#OFFSET<X:30,Y:0>##COLORCOLOR_YELLOW#���¶�ħ�����ر�����#COLOREND#\n#OFFSET<X:150,Y:0>#���ϴ�����ˣ�"
	local str_7 = "#COLORCOLOR_BLUE#[�����ؾ�]#COLOREND#\n���ǵ�:\n#OFFSET<X:30,Y:0>##COLORCOLOR_YELLOW#�����к�ȴ�����º�̽����#COLOREND#\n#OFFSET<X:150,Y:0>#�������º��ˣ�"
	local str_8 = "#COLORCOLOR_BLUE#[��ħ����]#COLOREND#\n���ǵ�:\n#OFFSET<X:30,Y:0>##COLORCOLOR_YELLOW#�Ǹ���ħ�Ⱥ������ݺ������#COLOREND#\n#OFFSET<X:180,Y:0>#��\n\n\n"
	local str_9 = "#COLORCOLOR_BLUE#[���ײ���]#COLOREND#\n���ǵ�:\n#OFFSET<X:30,Y:8>##COLORCOLOR_YELLOW#������Ѫ�����ǵļ���ͻ�����#COLOREND#\n#OFFSET<X:180,Y:0>#���ǻ����ˣ�"
	
	local s = " str_1 = "..string.format("%q",str_1)
	s = s .." str_2 = "..string.format("%q",str_2)
	s = s .." str_3 = "..string.format("%q",str_3)
	s = s .." str_4 = "..string.format("%q",str_4)
	s = s .." str_5 = "..string.format("%q",str_5)
	s = s .." str_6 = "..string.format("%q",str_6)
	s = s .." str_7 = "..string.format("%q",str_7)
	s = s .." str_8 = "..string.format("%q",str_8)
	s = s .." str_9 = "..string.format("%q",str_9)


	lualib:ShowFormWithContent(player,"�ű���",s)
	lualib:ShowFormWithContent(player,"form�ļ���","����")
	return ""
end
