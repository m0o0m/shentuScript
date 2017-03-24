local data = [[{
	{
		req = 1,--当前称号等级
		title = 32,--称号ID--实现特效[无属性切记]
		name = "猴子请来的救兵",--称号名称[也是BUFF索引名,实现属性]
		gold = 100,--消耗积分
		ingot = 0,--消耗元宝
		image = {3020760000, 330, -15},--特效+特效x坐标+特效y坐标
		desc = "#COLORCOLOR_MAGENTA#攻击：200-200\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P：2000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#感谢您的支持\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#祝您游戏愉快",
	},
	{
		req = 2,
		title = 33,
		name = "我自横刀向天笑",
		gold = 100,
		ingot = 0,
		image = {3020770000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#攻击：400-400\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P：4000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#感谢您的支持\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#祝您游戏愉快",
	},
	{
		req = 3,
		title = 34,
		name = "横扫千军",
		gold = 200,
		ingot = 0,
		image = {3020600000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#攻击：600-600\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P：6000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#感谢您的支持\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#祝您游戏愉快",
	},
	{
		req = 4,
		title = 35,
		name = "胯下有凶兽",
		gold = 300,
		ingot = 0,
		image = {3020430000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#攻击：1000-1000\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P：10000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#感谢您的支持\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#祝您游戏愉快",
	},
	{
		req = 5,
		title = 10,
		name = "一骑当千",
		gold = 500,
		ingot = 0,
		image = {3020530000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#攻击：1500-1500\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P：15000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#感谢您的支持\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#祝您游戏愉快",
	},
	{
		req = 6,
		title = 36,
		name = "挥剑扫四舍",
		gold = 1000,
		ingot = 0,
		image = {3020420000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#攻击：2100-2100\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P：21000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#感谢您的支持\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#祝您游戏愉快",
	},
	{
		req = 7,
		title = 44,
		name = "嗜血杀神",
		gold = 2000,
		ingot = 0,
		image = {3020580000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#攻击：2800-2800\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P：28000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#感谢您的支持\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#祝您游戏愉快",
	},
	{
		req = 8,
		title = 45,
		name = "绝世武尊",
		gold = 3000,
		ingot = 0,
		image = {3020590000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#攻击：3700-3700\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P：37000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#感谢您的支持\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#祝您游戏愉快",
	},
}]]


local data1 = [[{
	
	{
		req = 9,
		title = 46,
		name = "灭世武圣",
		gold = 300,
		ingot = 0,
		image = {3020560000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#攻击：4800-4800\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P：48000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#感谢您的支持\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#祝您游戏愉快",
	},
	{
		req = 10,
		title = 48,
		name = "霸气侧漏",
		gold = 500,
		ingot = 0,
		image = {3020440000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#攻击：5800-5800\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P：58000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#感谢您的支持\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#祝您游戏愉快",
	},
	{
		req = 11,
		title = 49,
		name = "威震九州",
		gold = 1000,
		ingot = 0,
		image = {3020460000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#攻击：6800-6800\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P：68000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#感谢您的支持\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#祝您游戏愉快",
	},
	{
		req = 12,
		title = 50,
		name = "九天揽月",
		gold = 2000,
		ingot = 0,
		image = {3020470000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#攻击：8000-8000\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P：80000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#感谢您的支持\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#祝您游戏愉快",
	},
}]]

local data2 = [[{
	{
		req = 13,
		title = 51,
		name = "一代豪杰",
		gold = 3000,
		ingot = 0,
		image = {3020540000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#攻击：10000-10000\n#OFFSET<Y:3>##COLORCOLOR_BLUE#暴击：+ 3\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P：100000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#感谢您的支持\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#祝您游戏愉快",
	},
	{
		req = 14,
		title = 52,
		name = "舍我其谁",
		gold = 5000,
		ingot = 0,
		image = {3020480000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#攻击：12000-12000\n#OFFSET<Y:3>##COLORCOLOR_BLUE#暴击：+ 6\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P：120000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#感谢您的支持\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#祝您游戏愉快",
	},
	{
		req = 15,
		title = 53,
		name = "齐天大圣",
		gold = 10000,
		ingot = 0,
		image = {3020550000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#攻击：15000-15000\n#OFFSET<Y:3>##COLORCOLOR_BLUE#暴击：+ 9\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P：150000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#感谢您的支持\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#祝您游戏愉快",
	},
}]]


function show(player, num)
	local tab = loadstring(" return "..data)()
	local tab1 = loadstring(" return "..data1)()
	local num =  tonumber(num)
	if num < 0 or num > 3 then 
		showmsg(player, "NPC脚本设置错误,请联系管理员")
		return""
	end
	local dj = lualib:GetInt(player, "nobility")
	if num == 2 then 
		if dj < #tab then 
		showmsg(player, "进阶中级称号,需要初级称号全部开通")
		return""
		end
	end
	
	if num == 3 then 
		lek = #tab + #tab1
		if dj < lek then 
		showmsg(player, "进阶高级称号,需要中级称号全部开通")
		return""
		end
	end
	local att = data 
	if num == 2 then 
		att = data1
	elseif num == 3  then 
	   att = data2	
	end
	
	local strs = [[
		local handle = GetWindow(nil, "nobility")
		if handle ~= 0 then WndClose(handle) return end
	]]
	lualib:ShowFormWithContent(player, "脚本表单", strs)
	
	local str = " nobility_t = "..att
	str = str .." nobility_itx = "..num
	str = str .." nobility_lv = "..lualib:GetInt(player, "nobility")
	lualib:ShowFormWithContent(player, "脚本表单", str)
	lualib:ShowFormWithContent(player, "form文件表单", "Nobility")
	return ""
end


function main(player, idx,num)
	local idx = tonumber(idx)
	local num = tonumber(num)
	local tab = nil 
	
	   if num == 1 then
		  tab = loadstring(" return "..data)()[idx]
	elseif num == 2 then 
		 tab = loadstring(" return "..data1)()[idx]
	elseif num == 3 then 
		tab = loadstring(" return "..data2)()[idx]
	end 	 
		

	
	local lv = lualib:GetInt(player, "nobility")
	
	if lv >= tab.req then
		showmsg(player, "您已经晋升过该称号了。")
		return ""
	end
	
	
	if tab.msg ~= nil then
		if lv + idx < tab.req then
			showmsg(player, tab.msg)
			return ""
		end
	end
	
	if lv + 1 ~= tab.req then
		showmsg(player, "请先晋升上一级称号。")
		return ""
	end
	
	if lualib:GetIngot(player) < tab.ingot then
		showmsg(player, "抱歉，您的元宝数量不足，无法晋升称号。")
		return ""
	end
	
	if lualib:GetGold(player) < tab.gold then
		showmsg(player, "抱歉，您的金币不足，无法晋升称号。")
		return ""
	end
	
	if not lualib:SubGold(player, tab.gold, "晋升称号", player) then
		showmsg(player, "抱歉，您的金币不足，无法晋升称号。")
		return ""
	end
	
	if not lualib:SubIngot(player, tab.ingot, "晋升称号", player) then
		showmsg(player, "抱歉，您的元宝数量不足，无法晋升称号。")
		return ""
	end
	
	lualib:AddBuff(player, tab.name, 0)
	lualib:AddTitle(player, tab.title)
	lualib:ApplyTitle(player, tab.title)
	lualib:SetInt(player, "nobility", lv + 1)
	
	showmsg(player, "恭喜您获得“"..tab.name.."”称号，属性获得大幅度提升。")
	local str = "nobility_lv = "..lualib:GetInt(player, "nobility")
	lualib:ShowFormWithContent(player, "脚本表单", str);
	local str = 
	[[
	  
		nobility.gengxin()
	]]
	lualib:ShowFormWithContent(player, "脚本表单", str)
	return ""
end

function showmsg(player, msg)
	lualib:ShowFormWithContent(player, "脚本表单", "msgbox = "..string.format("%q", msg))
	lualib:ShowFormWithContent(player, "form文件表单", "MsgBox")
end