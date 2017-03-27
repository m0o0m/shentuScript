local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")

-----------------------图标显示-----------------------------
function gonglue_xianshi(player)	
	local script = 
	[[
	function ServerFuncGL()
		local wnd = GetWindow(nil, "攻略框")
		if 0 == wnd then
			UI:Lua_SubmitForm("倒计时", "gonglue", "")
		else
			WndClose(wnd, nil)
		end
	end
	UI:Lua_HotKeyRegister("ALT + G", KEY_TRIGER_KEYUP, "ServerFuncGL")
	]]
	lualib:ShowFormWithContent(player, "脚本表单", script)
	
	AddSEIcon(player, 1, -3, "攻略", 1906100029, "倒计时", "gonglue", "", "ALT + G[攻略]:通过攻略可令你变成高手!")
	AddIconMagic(player, "攻略", 1094200000, -6, -6, 150)
end

-------------------图标被点击-----------------------
function gonglue(player)
	DelIconMagic(player, "攻略")
	local str_1 = "#COLORCOLOR_BLUE#[废弃矿洞]#COLOREND#\n还记得:\n#OFFSET<X:30,Y:0>##COLORCOLOR_YELLOW#当年为本书杀一夜的日子……#COLOREND#\n#OFFSET<X:180,Y:0>#吗？"
	local str_2 = "#COLORCOLOR_BLUE#[虫    巢]#COLOREND#\n还记得:\n#OFFSET<X:30,Y:0>##COLORCOLOR_YELLOW#当年在蜈蚣洞抢怪的日子……#COLOREND#\n#OFFSET<X:180,Y:0>#吗？"   
	local str_3 = "#COLORCOLOR_BLUE#[妖玛寺庙]#COLOREND#\n还记得:\n#OFFSET<X:30,Y:0>##COLORCOLOR_YELLOW#妖玛教主的号角建立行会……#COLOREND#\n#OFFSET<X:180,Y:0>#吗？"
	local str_4 = "#COLORCOLOR_BLUE#[猪    洞]#COLOREND#\n还记得:\n#OFFSET<X:30,Y:0>##COLORCOLOR_YELLOW#超负重买药去烧猪的日子……#COLOREND#\n#OFFSET<X:180,Y:0>#吗？"   
	local str_5 = "#COLORCOLOR_BLUE#[诅玛寺庙]#COLOREND#\n还记得:\n#OFFSET<X:30,Y:0>##COLORCOLOR_YELLOW#[变态卫士]与[诅玛头像]……#COLOREND#\n#OFFSET<X:180,Y:0>#吗？"
	local str_6 = "#COLORCOLOR_BLUE#[天魔石窟]#COLOREND#\n还记得:\n#OFFSET<X:30,Y:0>##COLORCOLOR_YELLOW#赤月恶魔的神秘背后吗？#COLOREND#\n#OFFSET<X:150,Y:0>#它老大出现了！"
	local str_7 = "#COLORCOLOR_BLUE#[海角秘境]#COLOREND#\n还记得:\n#OFFSET<X:30,Y:0>##COLORCOLOR_YELLOW#苍月有海却不能下海探索吗？#COLOREND#\n#OFFSET<X:150,Y:0>#现在能下海了！"
	local str_8 = "#COLORCOLOR_BLUE#[镇魔禁地]#COLOREND#\n还记得:\n#OFFSET<X:30,Y:0>##COLORCOLOR_YELLOW#那个封魔谷和那条纵横道……#COLOREND#\n#OFFSET<X:180,Y:0>#吗？\n\n\n"
	local str_9 = "#COLORCOLOR_BLUE#[赤炎部落]#COLOREND#\n还记得:\n#OFFSET<X:30,Y:8>##COLORCOLOR_YELLOW#当年热血的我们的激情和回忆吗？#COLOREND#\n#OFFSET<X:180,Y:0>#我们回来了！"
	
	local s = " str_1 = "..string.format("%q",str_1)
	s = s .." str_2 = "..string.format("%q",str_2)
	s = s .." str_3 = "..string.format("%q",str_3)
	s = s .." str_4 = "..string.format("%q",str_4)
	s = s .." str_5 = "..string.format("%q",str_5)
	s = s .." str_6 = "..string.format("%q",str_6)
	s = s .." str_7 = "..string.format("%q",str_7)
	s = s .." str_8 = "..string.format("%q",str_8)
	s = s .." str_9 = "..string.format("%q",str_9)


	lualib:ShowFormWithContent(player,"脚本表单",s)
	lualib:ShowFormWithContent(player,"form文件表单","攻略")
	return ""
end
