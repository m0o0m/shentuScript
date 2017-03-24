local data = [[{
	{
		key = "紫衣仙女",--仙子索引名
		exp = 20,--升级经验值
		att = "#COLOR<R:222,G:165,B:0,A:255>#仙女等阶：#COLORCOLOR_WHITE#[#COLOR<R:255,G:119,B:0,A:255>#一阶#COLORCOLOR_WHITE#]\n\n#OFFSET<Y:7>##COLOR<R:222,G:165,B:0,A:255>#仙女攻击：#COLORCOLOR_WHITE#[#COLORCOLOR_SKYBLUE#10000-10000#COLORCOLOR_WHITE#]\n\n#OFFSET<Y:7>##COLOR<R:222,G:165,B:0,A:255>#仙女防御：#COLORCOLOR_WHITE#[#COLOR<R:227,G:23,B:179,A:255>#1000-1000#COLORCOLOR_WHITE#]\n\n#OFFSET<Y:7>##COLOR<R:222,G:165,B:0,A:255>#仙女体力：#COLORCOLOR_WHITE#[#COLOR<R:255,G:0,B:0,A:255>#10000000#COLORCOLOR_WHITE#]",--属性描述
		tip = {{"紫衣仙女", "#FF0000"}, {"攻击加成[100-100]", "GREENG"}, {"生命加成[2000]", "YELLOW"}},
		img = {id = 2560600303, x = -75, y = -45, w = 555, h = 555},--仙子模型ID，X坐标，Y坐标，w宽度，h高度
	},
	
	{
		key = "蓝衣仙女",
		exp = 50,
		att = "#COLOR<R:222,G:165,B:0,A:255>#仙女等阶：#COLORCOLOR_WHITE#[#COLOR<R:255,G:119,B:0,A:255>#二阶#COLORCOLOR_WHITE#]\n\n#OFFSET<Y:7>##COLOR<R:222,G:165,B:0,A:255>#仙女攻击：#COLORCOLOR_WHITE#[#COLORCOLOR_SKYBLUE#20000-20000#COLORCOLOR_WHITE#]\n\n#OFFSET<Y:7>##COLOR<R:222,G:165,B:0,A:255>#仙女防御：#COLORCOLOR_WHITE#[#COLOR<R:227,G:23,B:179,A:255>#4000-4000#COLORCOLOR_WHITE#]\n\n#OFFSET<Y:7>##COLOR<R:222,G:165,B:0,A:255>#仙女体力：#COLORCOLOR_WHITE#[#COLOR<R:255,G:0,B:0,A:255>#10000000#COLORCOLOR_WHITE#]",
		tip = {{"蓝衣仙女", "#FF0000"}, {"攻击加成[200-200]", "GREENG"}, {"生命加成[4000]", "YELLOW"}},
		img = {id = 2550200303, x = -75, y = -45, w = 555, h = 555},
	},
	
	{
		key = "青衣仙女",
		exp = 100,
		att = "#COLOR<R:222,G:165,B:0,A:255>#仙女等阶：#COLORCOLOR_WHITE#[#COLOR<R:255,G:119,B:0,A:255>#三阶#COLORCOLOR_WHITE#]\n\n#OFFSET<Y:7>##COLOR<R:222,G:165,B:0,A:255>#仙女攻击：#COLORCOLOR_WHITE#[#COLORCOLOR_SKYBLUE#40000-40000#COLORCOLOR_WHITE#]\n\n#OFFSET<Y:7>##COLOR<R:222,G:165,B:0,A:255>#仙女防御：#COLORCOLOR_WHITE#[#COLOR<R:227,G:23,B:179,A:255>#10000-10000#COLORCOLOR_WHITE#]\n\n#OFFSET<Y:7>##COLOR<R:222,G:165,B:0,A:255>#仙女体力：#COLORCOLOR_WHITE#[#COLOR<R:255,G:0,B:0,A:255>#10000000#COLORCOLOR_WHITE#]",
		tip = {{"青衣仙女", "#FF0000"}, {"攻击加成[300-300]", "GREENG"}, {"生命加成[6000]", "YELLOW"}},
		img = {id = 2560700303, x = -75, y = -45, w = 555, h = 555},
	},
	
	{
		key = "绿衣仙女",
		exp = 200,
		att = "#COLOR<R:222,G:165,B:0,A:255>#仙女等阶：#COLORCOLOR_WHITE#[#COLOR<R:255,G:119,B:0,A:255>#四阶#COLORCOLOR_WHITE#]\n\n#OFFSET<Y:7>##COLOR<R:222,G:165,B:0,A:255>#仙女攻击：#COLORCOLOR_WHITE#[#COLORCOLOR_SKYBLUE#60000-60000#COLORCOLOR_WHITE#]\n\n#OFFSET<Y:7>##COLOR<R:222,G:165,B:0,A:255>#仙女防御：#COLORCOLOR_WHITE#[#COLOR<R:227,G:23,B:179,A:255>#30000-30000#COLORCOLOR_WHITE#]\n\n#OFFSET<Y:7>##COLOR<R:222,G:165,B:0,A:255>#仙女体力：#COLORCOLOR_WHITE#[#COLOR<R:255,G:0,B:0,A:255>#10000000#COLORCOLOR_WHITE#]",
		tip = {{"绿衣仙女", "#FF0000"}, {"攻击加成[400-400]", "GREENG"}, {"生命加成[8000]", "YELLOW"}},
		img = {id = 2550400303, x = -75, y = -45, w = 555, h = 555},
	},
	
	{
		key = "黄衣仙女",
		exp = 300,
		att = "#COLOR<R:222,G:165,B:0,A:255>#仙女等阶：#COLORCOLOR_WHITE#[#COLOR<R:255,G:119,B:0,A:255>#五阶#COLORCOLOR_WHITE#]\n\n#OFFSET<Y:7>##COLOR<R:222,G:165,B:0,A:255>#仙女攻击：#COLORCOLOR_WHITE#[#COLORCOLOR_SKYBLUE#100000-100000#COLORCOLOR_WHITE#]\n\n#OFFSET<Y:7>##COLOR<R:222,G:165,B:0,A:255>#仙女防御：#COLORCOLOR_WHITE#[#COLOR<R:227,G:23,B:179,A:255>#60000-60000#COLORCOLOR_WHITE#]\n\n#OFFSET<Y:7>##COLOR<R:222,G:165,B:0,A:255>#仙女体力：#COLORCOLOR_WHITE#[#COLOR<R:255,G:0,B:0,A:255>#10000000#COLORCOLOR_WHITE#]",
		tip = {{"黄衣仙女", "#FF0000"}, {"攻击加成[600-600]", "GREENG"}, {"生命加成[12000]", "YELLOW"}},
		img = {id = 2551100303, x = -75, y = -45, w = 555, h = 555},
	},
	
	{
		key = "橙衣仙女",
		exp = 500,
		att = "#COLOR<R:222,G:165,B:0,A:255>#仙女等阶：#COLORCOLOR_WHITE#[#COLOR<R:255,G:119,B:0,A:255>#六阶#COLORCOLOR_WHITE#]\n\n#OFFSET<Y:7>##COLOR<R:222,G:165,B:0,A:255>#仙女攻击：#COLORCOLOR_WHITE#[#COLORCOLOR_SKYBLUE#180000-180000#COLORCOLOR_WHITE#]\n\n#OFFSET<Y:7>##COLOR<R:222,G:165,B:0,A:255>#仙女防御：#COLORCOLOR_WHITE#[#COLOR<R:227,G:23,B:179,A:255>#80000-80000#COLORCOLOR_WHITE#]\n\n#OFFSET<Y:7>##COLOR<R:222,G:165,B:0,A:255>#仙女体力：#COLORCOLOR_WHITE#[#COLOR<R:255,G:0,B:0,A:255>#10000000#COLORCOLOR_WHITE#]",
		tip = {{"橙衣仙女", "#FF0000"}, {"攻击加成[800-800]", "GREENG"}, {"生命加成[16000]", "YELLOW"}},
		img = {id = 2551300303, x = -75, y = -45, w = 555, h = 555},
	},
	
	{
		key = "赤焰仙女",
		exp = 0,
		att = "#COLOR<R:222,G:165,B:0,A:255>#仙女等阶：#COLORCOLOR_WHITE#[#COLOR<R:255,G:119,B:0,A:255>#七阶#COLORCOLOR_WHITE#]\n\n#OFFSET<Y:7>##COLOR<R:222,G:165,B:0,A:255>#仙女攻击：#COLORCOLOR_WHITE#[#COLORCOLOR_SKYBLUE#300000-300000#COLORCOLOR_WHITE#]\n\n#OFFSET<Y:7>##COLOR<R:222,G:165,B:0,A:255>#仙女防御：#COLORCOLOR_WHITE#[#COLOR<R:227,G:23,B:179,A:255>#150000-150000#COLORCOLOR_WHITE#]\n\n#OFFSET<Y:7>##COLOR<R:222,G:165,B:0,A:255>#仙女体力：#COLORCOLOR_WHITE#[#COLOR<R:255,G:0,B:0,A:255>#10000000#COLORCOLOR_WHITE#]",
		tip = {{"赤焰仙女", "#FF0000"}, {"攻击加成[1000-1000]", "GREENG"}, {"生命加成[20000]", "YELLOW"}},
		img = {id = 2551600303, x = -75, y = -45, w = 555, h = 555},
	},
}]]


local list = loadstring("return "..data)()


local mapping = {--所有仙子列表 = 给玩家buff[不给留空]用来实现给玩家属性加成
	["紫衣仙女"] = "0",
	["蓝衣仙子"] = "0",
	["青衣仙子"] = "0",
	["绿衣仙子"] = "0",
	["黄衣仙子"] = "0",
	["橙衣仙子"] = "0",
	["赤焰仙子"] = "0",
}

local xianzi_buff = {--给予仙子的BUFF用来实现变身
	["紫衣仙女"] = "紫衣仙子",
	["蓝衣仙子"] = "蓝衣仙子",
	["青衣仙子"] = "青衣仙子",
	["绿衣仙子"] = "绿衣仙子",
	["黄衣仙子"] = "黄衣仙子",
	["橙衣仙子"] = "橙衣仙子",
	["赤焰仙子"] = "赤焰仙子",
}

local food = "蟠桃"	--道具索引名

local point = 1	--1个道具增加多少经验值

local ingot = 10		--1个道具购买消耗元宝

local second = 1

local tb_map = {  --禁止仙子出战地图 可按格式添加
	["行会争霸"] = 1,
	["天怒"] = 1,
	["雷劫之地"] = 1,
}

function show(player)
	local petexp = lualib:GetInt(player, "petexp")
	local petlv = lualib:GetInt(player, "petlv")
	local str = " PetData = "..data
	str = str .." PetLv = "..petlv
	str = str .." PetExp = "..petexp
	str = str .." PetIngot = "..ingot
	lualib:ShowFormWithContent(player, "脚本表单", str)
	lualib:ShowFormWithContent(player, "form文件表单", "仙子系统Wnd")
	return ""
end

function feed(player)
	local petlv = lualib:GetInt(player, "petlv")
	
	if list[petlv + 1] == nil then
		msgbox(player, "当前仙女已经达到最高等级了。")
		return ""
	end

	lualib:SysMsg_SendInputDlg(player, 2, "请输入喂养蟠桃的数量", 60, 39, "feed_ex", "")
	return ""
end

function buff(player)
	if lualib:GetInt(player, "petlv") == 0 then
		lualib:SetInt(player, "petlv", 1)
	end
	local petlv = lualib:GetInt(player, "petlv")
	local key = list[petlv].key
	if mapping[key] ~= nil then
		lualib:AddBuff(player, mapping[key], 0)
	end
end

function feed_ex(id, player, silver)
	
	local silver = tonumber(silver)
	
	if silver == nil then
		msgbox(player, "请输入纯数字。")
		return true
	end
	
	silver = math.floor(silver)
	
	if silver <= 0  then
		msgbox(player, "请输入一个大于0正整数。")
		return true
	end
	
	local petexp = lualib:GetInt(player, "petexp")
	local petlv = lualib:GetInt(player, "petlv")
	
	local count = lualib:ItemCount(player, food)
	
	if count < silver then
		msgbox(player, "您背包里没有这么多蟠桃。")
		return ""
	end
	
	if petexp >= list[petlv].exp then
		msgbox(player, "仙女经验值已满，请先升级。")
		return ""
	end
	
	if not lualib:DelItem(player, food, silver, 2, "喂养仙女", player) then
		msgbox(player, "扣除饲料失败。")
		return ""
	end
	
	lualib:SetInt(player, "petexp", petexp + silver * point)
	
	local str = [[FairySystem.SetCont(]]..petlv..[[, ]]..(petexp + silver * point)..[[)]]
	
	lualib:ShowFormWithContent(player, "脚本表单", str)
	
	lualib:SysWarnMsg(player, "仙女喂养成功。")
	
	return ""
end


function uplv(player)
	
	local petlv = lualib:GetInt(player, "petlv")
	
	if list[petlv + 1] == nil then
		msgbox(player, "当前仙女已经达到最高等级了。")
		return ""
	end
	
	local petexp = lualib:GetInt(player, "petexp")
	if petexp < list[petlv].exp then
		msgbox(player, "抱歉，当前经验值未满，无法升级！")
		return ""
	end
	
	lualib:SetInt(player, "petlv", petlv + 1)
	lualib:SetInt(player, "petexp", petexp - list[petlv].exp)
	msgbox(player, "恭喜您仙女升级成功。")
	
	local key = list[petlv+1].key
	if mapping[key] ~= nil then
		lualib:AddBuff(player, mapping[key], 0)
	end
	
	local str = " FairySystem.SetCont("..(petlv + 1)..", "..(petexp - list[petlv].exp)..") "
	lualib:ShowFormWithContent(player, "脚本表单", str)
	
	return ""
end


function summon(player, power)
	local map = lualib:MapGuid(player)
	local mapkey = lualib:KeyName(map)
	if tb_map[mapkey] ~= nil  then
		msgbox(player, "此地图禁止召唤仙女。")
		return ""	
	end
	
	local petlv = lualib:GetInt(player, "petlv")
	local pets = lualib:Player_GetServantList(player)
	if #pets > 0 then
		for _, v in ipairs(pets) do
			local n = lualib:KeyName(v)
			if mapping[n] ~= nil then
				if power ~= nil and power == "bz" then
					local x = lualib:X(player)
					local y = lualib:Y(player)
					lualib:Monster_JumpXY(map, v, x, y, 3)
				else
					msgbox(player, "您已经召唤过仙女了。")
				end
				return ""
			end
		end
	end
	
	local key = list[petlv].key
	local pet = lualib:Player_Summon(player, key, petlv)
	if pet == "" then
		msgbox(player, "召唤失败：怪物模版表不存在该仙女。")
		return ""
	end
	lualib:AddBuff(pet, xianzi_buff[key], 0)
	local id = lualib:GenTimerId(pet)
	lualib:AddTimerEx(pet, id, second * 1000, -1, "check", player)
	lualib:SysWarnMsg(player, "召唤仙女成功。")
	return ""
end


function check(pet, id, player)
	local matser = lualib:Monster_GetMaster(pet)
	if lualib:Name(player) ~= matser then
		lualib:DisableTimer(pet, id)
		lualib:Monster_Remove(pet)
	return end
	local map = lualib:MapGuid(pet)
	local mapkey = lualib:KeyName(map)
	if tb_map[mapkey] ~= nil  then
		lualib:DisableTimer(pet, id)
		lualib:Monster_Remove(pet)
		lualib:SysWarnMsg(player, "此地图禁止召唤仙女。")
	end
end


function relext(player)
	local petlv = lualib:GetInt(player, "petlv")
	local pets = lualib:Player_GetServantList(player)
	if #pets > 0 then
		for _, v in ipairs(pets) do
			local n = lualib:KeyName(v)
			if mapping[n] ~= nil then
				lualib:Monster_Remove(v)
				return "收回仙女成功。"
			end
		end
	end
	
	return "您当前尚未召唤仙女出战。"
end


function buy(player)
	lualib:SysMsg_SendInputDlg(player, 2, "输入购买数量(2元宝/个)", 60, 39, "buy_ex", "")
	return ""
end


function buy_ex(id, player, silver)
	
	local silver = tonumber(silver)
	
	if silver == nil then
		msgbox(player, "请输入纯数字。")
		return true
	end
	
	silver = math.floor(silver)
	
	if silver <= 0  then
		msgbox(player, "请输入一个大于0正整数。")
		return true
	end
	
	local stack = lualib:Item_GetStack(food)
	
	if lualib:GetBagFree(player) < math.ceil(silver / stack) then
		msgbox(player, "您的背包空间不足"..math.ceil(silver / stack).."个。")
		return true
	end
	
	if lualib:GetIngot(player) < silver * ingot then
		msgbox(player, "元宝不足，请尝试购买少一些。")
		return true
	end
	
	if not lualib:SubIngot(player, silver * ingot, "购买蟠桃", player) then
		msgbox(player, "元宝不足，请尝试购买少一些。")
		return true
	end
	
	lualib:AddItem(player, food, silver, false, "元宝购买蟠桃", player)
	
	lualib:SysWarnMsg(player, "购买成功，恭喜您获得"..food.." * "..silver.."。")
end


function msgbox(player, msg)
	lualib:ShowFormWithContent(player, "脚本表单", "MessageBox(0, \""..msg.."\")")
end