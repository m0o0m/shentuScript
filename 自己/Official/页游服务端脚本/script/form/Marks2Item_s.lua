local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")

local shownItem = ""	
local str1 = ""
local item1 = {
				{
					{"神武战刃","天武战刃",50},{"圣武战刃","神武战刃",100},{"威武战刃","圣武战刃",200},
					{"洪武行天战刃","威武战刃",300},{"雄武震天战刃","洪武行天战刃",400},{"尊武凌天战刃","雄武震天战刃",600},
					{"神威亢天战刃","尊武凌天战刃",800}
				},
				{
					{"神武战甲","天武战甲",40},{"神武战袍","天武战袍",40},{"圣武战甲","神武战甲",80},{"圣武战袍","神武战袍",80},
					{"威武战甲","圣武战甲",150},{"威武战袍","圣武战袍",150},{"洪武行天战甲","威武战甲",200},{"洪武行天战袍","威武战袍",200},
					{"雄武震天战甲","洪武行天战甲",300},{"雄武震天战袍","洪武行天战袍",300},{"尊武凌天战甲","雄武震天战甲",450},{"尊武凌天战袍","雄武震天战袍",450},
					{"神威亢天战甲" ,"尊武凌天战甲",650},{"神威亢天战袍","尊武凌天战袍",650},
				},
				{
					{"神武战袍","神武战甲",10},{"神武战甲","神武战袍",10},{"圣武战袍","圣武战甲",20},{"圣武战甲","圣武战袍",20},
					{"威武战袍","威武战甲",30},{"威武战甲","威武战袍",30},{"洪武行天战袍","洪武行天战甲",40},{"洪武行天战甲","洪武行天战袍",40},
					{"雄武震天战袍","雄武震天战甲",60},{"雄武震天战甲","雄武震天战袍",60},{"尊武凌天战袍","尊武凌天战甲",80},{"尊武凌天战甲","尊武凌天战袍",80}
				},
				{
					{"威武头盔","神武头盔",35},{"威武手镯","神武手镯",45},{"威武靴子","神武靴子",35},
					{"洪武行天项链","圣武项链",100},{"洪武行天戒指","圣武戒指",100},{"洪武行天腰带","圣武腰带",100}
				},
				{
					{"宝石结晶小","",1},{"宝石结晶中","",20},{"宝石结晶大","",200},{"魂珠碎片中","",20},
					{"魂珠碎片大","",180},{"金砖小","",1},{"金砖大","",2}
				}
			 }


local item2 = {
				{
					{"神魔法杖","天魔法杖",50},{"圣魔法杖","神魔法杖",100},{"幻神法杖","圣魔法杖",200},
					{"天地玄奇法杖","幻神法杖",300},{"天异玄奥法杖","天地玄奇法杖",400},{"天魁玄灵法杖","天异玄奥法杖",600},
					{"天暴玄宗法杖","天魁玄灵法杖",800}
				},
				{
					{"神魔法袍","天魔法袍",40},{"神魔羽衣","天魔羽衣",40},{"圣魔法袍","神魔法袍",80},{"圣魔羽衣","神魔羽衣",80},
					{"幻神法袍","圣魔法袍",150},{"幻神羽衣","圣魔羽衣",150},{"天地玄奇法袍","幻神法袍",200},{"天地玄奇羽衣","幻神羽衣",200},
					{"天异玄奥法袍","天地玄奇法袍",300},{"天异玄奥羽衣","天地玄奇羽衣",300},{"天魁玄灵法袍","天异玄奥法袍",450},{"天魁玄灵羽衣","天异玄奥羽衣",450},
					{"天暴玄宗法袍" ,"天魁玄灵法袍",650},{"天暴玄宗羽衣","天魁玄灵羽衣",650},
				},
				{
					{"神魔羽衣","神魔法袍",10},{"神魔法袍","神魔羽衣",10},{"圣魔羽衣","圣魔法袍",20},{"圣魔法袍","圣魔羽衣",20},
					{"幻神羽衣","幻神法袍",30},{"幻神法袍","幻神羽衣",30},{"天地玄奇羽衣","天地玄奇法袍",40},{"天地玄奇法袍","天地玄奇羽衣",40},
					{"天异玄奥羽衣","天异玄奥法袍",60},{"天异玄奥法袍","天异玄奥羽衣",60},{"天魁玄灵羽衣","天魁玄灵法袍",80},{"天魁玄灵法袍","天魁玄灵羽衣",80}
				},
				{
					{"幻神头盔","神魔头盔",35},{"幻神手镯","神魔手镯",45},{"幻神靴子","神魔靴子",35},
					{"天地玄奇项链","圣魔项链",100},{"天地玄奇戒指","圣魔戒指",100},{"天地玄奇腰带","圣魔腰带",100}
				},
				{
					{"宝石结晶小","",1},{"宝石结晶中","",20},{"宝石结晶大","",200},{"魂珠碎片中","",20},
					{"魂珠碎片大","",180},{"金砖小","",1},{"金砖大","",2}
				}
			 }

local item3 = {
				{
					{"神灵道扇","天灵道剑",50},{"圣灵道剑","神灵道扇",100},{"无量道剑","圣灵道剑",200},
					{"玄天妙法道扇","无量道剑",300},{"混天广法道剑","玄天妙法道扇",400},{"鸿天明法道剑","混天广法道剑",600},
					{"昊天玄尊道剑","鸿天明法道剑",800}
				},
				{
					{"神灵道袍","天灵道袍",40},{"神灵道衣","天灵道衣",40},{"圣灵道袍","神灵道袍",80},{"圣灵道衣","神灵道衣",80},
					{"无量道袍","圣灵道袍",150},{"无量道衣","圣灵道衣",150},{"玄天妙法道袍","无量道袍",200},{"玄天妙法道衣","无量道衣",200},
					{"混天广法道袍","玄天妙法道袍",300},{"混天广法道衣","玄天妙法道衣",300},{"鸿天明法道袍","混天广法道袍",450},{"鸿天明法道衣","混天广法道衣",450},
					{"昊天玄尊道袍" ,"鸿天明法道袍",650},{"昊天玄尊道衣","鸿天明法道衣",650},
				},
				{
					{"神灵道衣","神灵道袍",10},{"神灵道袍","神灵道衣",10},{"圣灵道衣","圣灵道袍",20},{"圣灵道袍","圣灵道衣",20},
					{"无量道衣","无量道袍",30},{"无量道袍","无量道衣",30},{"玄天妙法道衣","玄天妙法道袍",40},{"玄天妙法道袍","玄天妙法道衣",40},
					{"混天广法道衣","混天广法道袍",60},{"混天广法道袍","混天广法道衣",60},{"鸿天明法道衣","鸿天明法道袍",80},{"鸿天明法道袍","鸿天明法道衣",80}
				},
				{
					{"无量头盔","神灵头盔",35},{"无量手镯","神灵手镯",45},{"无量靴子","神灵靴子",35},
					{"玄天妙法项链","圣灵项链",100},{"玄天妙法戒指","圣灵戒指",100},{"玄天妙法腰带","圣灵腰带",100}
				},
				{
					{"宝石结晶小","",1},{"宝石结晶中","",20},{"宝石结晶大","",200},{"魂珠碎片中","",20},
					{"魂珠碎片大","",180},{"金砖小","",1},{"金砖大","",2}
				}
			 }

local itemExchangeTb = {

					["神武战刃"]={"天武战刃",50},["圣武战刃"]={"神武战刃",100},["威武战刃"]={"圣武战刃",200},
					["洪武行天战刃"]={"威武战刃",300},["雄武震天战刃"]={"洪武行天战刃",400},["尊武凌天战刃"]={"雄武震天战刃",600},
					["神威亢天战刃"]={"尊武凌天战刃",800},

					["神武战甲"]={"天武战甲",40},["神武战袍"]={"天武战袍",40},["圣武战甲"]={"神武战甲",80},["圣武战袍"]={"神武战袍",80},
					["威武战甲"]={"圣武战甲",150},["威武战袍"]={"圣武战袍",150},["洪武行天战甲"]={"威武战甲",200},["洪武行天战袍"]={"威武战袍",200},
					["雄武震天战甲"]={"洪武行天战甲",300},["雄武震天战袍"]={"洪武行天战袍",300},["尊武凌天战甲"]={"雄武震天战甲",450},["尊武凌天战袍"]={"雄武震天战袍",450},
					["神威亢天战甲"]={"尊武凌天战甲",650},["神威亢天战袍"]={"尊武凌天战袍",650},


					["威武头盔"]={"神武头盔",35},["威武手镯"]={"神武手镯",45},["威武靴子"]={"神武靴子",35},
					["洪武行天项链"]={"圣武项链",100},["洪武行天戒指"]={"圣武戒指",100},["洪武行天腰带"]={"圣武腰带",100},

					["神魔法杖"]={"天魔法杖",50},["圣魔法杖"]={"神魔法杖",100},["幻神法杖"]={"圣魔法杖",200},
					["天地玄奇法杖"]={"幻神法杖",300},["天异玄奥法杖"]={"天地玄奇法杖",400},["天魁玄灵法杖"]={"天异玄奥法杖",600},
					["天暴玄宗法杖"]={"天魁玄灵法杖",800},

					["神魔法袍"]={"天魔法袍",40},["神魔羽衣"]={"天魔羽衣",40},["圣魔法袍"]={"神魔法袍",80},["圣魔羽衣"]={"神魔羽衣",80},
					["幻神法袍"]={"圣魔法袍",150},["幻神羽衣"]={"圣魔羽衣",150},["天地玄奇法袍"]={"幻神法袍",200},["天地玄奇羽衣"]={"幻神羽衣",200},
					["天异玄奥法袍"]={"天地玄奇法袍",300},["天异玄奥羽衣"]={"天地玄奇羽衣",300},["天魁玄灵法袍"]={"天异玄奥法袍",450},["天魁玄灵羽衣"]={"天异玄奥羽衣",450},
					["天暴玄宗法袍"]={"天魁玄灵法袍",650},["天暴玄宗羽衣"]={"天魁玄灵羽衣",650},

				

					["幻神头盔"]={"神魔头盔",35},["幻神手镯"]={"神魔手镯",45},["幻神靴子"]={"神魔靴子",35},
					["天地玄奇项链"]={"圣魔项链",100},["天地玄奇戒指"]={"圣魔戒指",100},["天地玄奇腰带"]={"圣魔腰带",100},

					["神灵道扇"]={"天灵道剑",50},["圣灵道剑"]={"神灵道扇",100},["无量道剑"]={"圣灵道剑",200},
					["玄天妙法道扇"]={"无量道剑",300},["混天广法道剑"]={"玄天妙法道扇",400},["鸿天明法道剑"]={"混天广法道剑",600},
					["昊天玄尊道剑"]={"鸿天明法道剑",800},

					["神灵道袍"]={"天灵道袍",40},["神灵道衣"]={"天灵道衣",40},["圣灵道袍"]={"神灵道袍",80},["圣灵道衣"]={"神灵道衣",80},
					["无量道袍"]={"圣灵道袍",150},["无量道衣"]={"圣灵道衣",150},["玄天妙法道袍"]={"无量道袍",200},["玄天妙法道衣"]={"无量道衣",200},
					["混天广法道袍"]={"玄天妙法道袍",300},["混天广法道衣"]={"玄天妙法道衣",300},["鸿天明法道袍"]={"混天广法道袍",450},["鸿天明法道衣"]={"混天广法道衣",450},
					["昊天玄尊道袍"]={"鸿天明法道袍",650},["昊天玄尊道衣"]={"鸿天明法道衣",650},

					

					["无量头盔"]={"神灵头盔",35},["无量手镯"]={"神灵手镯",45},["无量靴子"]={"神灵靴子",35},
					["玄天妙法项链"]={"圣灵项链",100},["玄天妙法戒指"]={"圣灵戒指",100},["玄天妙法腰带"]={"圣灵腰带",100},

					["宝石结晶小"]={"",1},["宝石结晶中"]={"",20},["宝石结晶大"]={"",200},["魂珠碎片中"]={"",20},
					["魂珠碎片大"]={"",180},["金砖小"]={"",1},["金砖大"]={"",2}
			 }
--男女互换获得的物品和需要的物品（由于和神甲里面的索引有重复，需要另外拎出来）	
local genderEx = {
					["神武战袍"]={"神武战甲",10},["神武战甲"]={"神武战袍",10},["圣武战袍"]={"圣武战甲",20},["圣武战甲"]={"圣武战袍",20},
					["威武战袍"]={"威武战甲",30},["威武战甲"]={"威武战袍",30},["洪武行天战袍"]={"洪武行天战甲",40},["洪武行天战甲"]={"洪武行天战袍",40},
					["雄武震天战袍"]={"雄武震天战甲",60},["雄武震天战甲"]={"雄武震天战袍",60},["尊武凌天战袍"]={"尊武凌天战甲",80},["尊武凌天战甲"]={"尊武凌天战袍",80},
					
					["神魔羽衣"]={"神魔法袍",10},["神魔法袍"]={"神魔羽衣",10},["圣魔羽衣"]={"圣魔法袍",20},["圣魔法袍"]={"圣魔羽衣",20},
					["幻神羽衣"]={"幻神法袍",30},["幻神法袍"]={"幻神羽衣",30},["天地玄奇羽衣"]={"天地玄奇法袍",40},["天地玄奇法袍"]={"天地玄奇羽衣",40},
					["天异玄奥羽衣"]={"天异玄奥法袍",60},["天异玄奥法袍"]={"天异玄奥羽衣",60},["天魁玄灵羽衣"]={"天魁玄灵法袍",80},["天魁玄灵法袍"]={"天魁玄灵羽衣",80},
					
					["神灵道衣"]={"神灵道袍",10},["神灵道袍"]={"神灵道衣",10},["圣灵道衣"]={"圣灵道袍",20},["圣灵道袍"]={"圣灵道衣",20},
					["无量道衣"]={"无量道袍",30},["无量道袍"]={"无量道衣",30},["玄天妙法道衣"]={"玄天妙法道袍",40},["玄天妙法道袍"]={"玄天妙法道衣",40},
					["混天广法道衣"]={"混天广法道袍",60},["混天广法道袍"]={"混天广法道衣",60},["鸿天明法道衣"]={"鸿天明法道袍",80},["鸿天明法道袍"]={"鸿天明法道衣",80},
}

local itemOpt = {item1,item2,item3}

--——————————图标显示——————————
function openExchangePage_show(player)
	AddSEIcon(player, 2, -5, "积分装备", 1800200039, "倒计时", "openExchangePage","","兑换极品装备")
	return ""
end

-------------------图标被点击-----------------------
function openExchangePage(player)



	local index = lualib:Job(player)
	local item = itemOpt[index]
	local _isExistlist1 = isExistItem(player)
	local str = lualib:GetDBStr("exchange_MsgDataBase")
	local score = lualib:GetInt(player,"tanbao_score")
	if str ~= "" then
		local tab = json.decode(str)		
		lualib:ShowFormWithContent(player, "form文件表单", "Marks2Item_c#"..serialize(item).."#"..score.."#"..serialize(_isExistlist1).."#"..serialize(tab))
	else
		lualib:ShowFormWithContent(player, "form文件表单", "Marks2Item_c#"..serialize(item).."#"..score.."#"..serialize(_isExistlist1))
	end	
    return ""
end



function isExistItem(player)
	local isExitlist1 = {{},{},{},{},{}}
	local index = lualib:Job(player)
	local item = itemOpt[index]
	
		for i = 1,#item do
			for j = 1,#item[i] do
				if i ~=5 then
					if lualib:ItemCountEx(player, item[i][j][2], 2, false, true, false, false) > 0 then
						isExitlist1[i][j] = 1
					else
						isExitlist1[i][j] = 0
					end
				else	
					isExitlist1[i][j] = 1
				end
			end
		end
	return isExitlist1
end

function getItem(player,item_KeyName,item_page)
	if lualib:GetBagFree(player) < 1 then
		--lualib:SysPromptMsg(player, "包裹空间不足")
		lualib:ShowFormWithContent(player, "脚本表单", "Marks2Item_c.MessagePrompt();")
		return ""
	end
	local item_Req, score_Req = "", 0
	if tonumber(item_page) == 3 then
		item_Req = genderEx[item_KeyName][1]
		score_Req = genderEx[item_KeyName][2]
	else
		item_Req = itemExchangeTb[item_KeyName][1]
		score_Req = itemExchangeTb[item_KeyName][2]
	end

	if tonumber(item_page) < 5 then
		if lualib:ItemCountEx(player, item_Req, 2, false, true, false, false) > 0 and lualib:GetInt(player,"tanbao_score") >= tonumber(score_Req) then
			
			if lualib:AddItem(player,item_KeyName,1,false,"积分兑换","装备积分") then

				local tb1 = lualib:GetItemsByKeys(player, item_Req, true, true, false, false)   --own item
				local guid1 = tb1[1]
				local tb2 = lualib:GetItemsByKeys(player, item_KeyName, true, true, false, false)   --new item
				local guid2 = ""
				local jl_level = 0
				local zl_level = 0
				local hole = {}
				local tb_bs = {}
				local tb_qh = {}
				local tb_zl = {}
				
				for i = 1, #tb2 do
					if lualib:Equip_GetRefineLevel(player, tb2[i]) == 0 and lualib:GetInt(tb2[i],"zhul_level") == 0 then
						guid2 = tb2[i]
						break
					end
				end
				
				jl_level = lualib:Equip_GetRefineLevel(player, guid1)
				zl_level = lualib:GetInt(guid1,"zhul_level")
				if jl_level > 0 then
					lualib:Equip_SetRefineLevel(player, guid2, jl_level) --设置强化等级
					for i = 1, 10 do                              --设置动态属性
						tb_qh[i] = lualib:Equip_GetExtProp(player, guid1, i-1)
						lualib:Equip_SetExtProp(player, guid2, i-1, tb_qh[i][0], tb_qh[i][1])
					end	
				end
				
				if zl_level > 0 then
					lualib:SetInt(guid2,"zhul_level",zl_level)          --设置蕴魂等级
					for i = 10 , 19 do                              --设置动态属性
						tb_zl[i-9] = lualib:GetDynamicAttr(guid1, i)
						lualib:SetDynamicAttr(guid2, i, tb_zl[i-9]["attr_name"], tb_zl[i-9]["attr_value"])
					end	
				end
				
				for i = 1 , 4 do 
					hole[i] = lualib:GetStr(guid1, "EquipHole" .. i)
					if hole[i] ~= "" then
						lualib:SetStr(guid2, "EquipHole" .. i,hole[i])
					end
				end
				
				for i = 30 , 40 do 
					tb_bs[i] = lualib:GetDynamicAttr(guid1, i)
					if tb_bs[i]["attr_name"] ~= nil and tb_bs[i]["attr_value"] ~= nil then 
						lualib:SetDynamicAttr(guid2, i, tb_bs[i]["attr_name"], tb_bs[i]["attr_value"])
					end
				end
				lualib:Item_NotifyUpdate(player, guid2)
				if lualib:Item_Destroy("", guid1, "探宝积分兑换", "系统") then		
					local score = lualib:GetInt(player,"tanbao_score") - tonumber(score_Req)
					lualib:SetInt(player,"tanbao_score",score)

					local _isExistlist1 = isExistItem(player)
					lualib:ShowFormWithContent(player, "脚本表单", "Marks2Item_c.getParam("..score..","..serialize(_isExistlist1).. ");")
					shownItem = item_KeyName
					lualib:SetStr(player,"lastItem",shownItem)
					--lualib:SysMsg_SendBroadcastMsg(shownItem, "sys:")
					ExchangeMsgDataBase(player,shownItem)
					personalMSG(player)
				end
			end
		end
	else
		if lualib:GetInt(player,"tanbao_score") >= tonumber(score_Req) then
			if lualib:AddItem(player,item_KeyName,1,false,"积分兑换","装备积分") then
				local score = lualib:GetInt(player,"tanbao_score") - tonumber(score_Req)
				lualib:SetInt(player,"tanbao_score",score)
				local _isExistlist1 = isExistItem(player)
				lualib:ShowFormWithContent(player, "脚本表单", "Marks2Item_c.getParam("..score..","..serialize(_isExistlist1).. ");")
				
				shownItem = item_KeyName
				lualib:SetStr(player,"lastItem",shownItem)
				--lualib:SysMsg_SendBroadcastMsg(tostring(str1), "sys:")
				ExchangeMsgDataBase(player,shownItem)
				personalMSG(player)
			end
		end
	end

	return ""
end

function SetNewItemAttr(player,guid1,guid2)
	local jl_level = 0
	local zl_level = 0
	local hole = {}
	local tb_bs = {}
	local tb_qh = {}
	local tb_zl = {}
	
	jl_level = lualib:Equip_GetRefineLevel(player, guid1)
	zl_level = lualib:GetInt(guid1,"zhul_level")
	if jl_level > 0 then
		lualib:Equip_SetRefineLevel(player, guid2, jl_level) --设置强化等级
		for i = 1, 10 do                              --设置动态属性
			tb_qh[i] = lualib:Equip_GetExtProp(player, guid1, i)
			lualib:Equip_SetExtProp(player, guid2, i, tb_qh[i][0], tb_qh[i][1])
		end	
	end
	
	if zl_level > 0 then
		lualib:SetInt(guid2,"zhul_level",zl_level)          --设置蕴魂等级
		for i = 10 , 19 do                              --设置动态属性
			tb_zl[i-9] = lualib:GetDynamicAttr(guid1, i)
			lualib:SetDynamicAttr(guid2, i, tb_zl[i-9]["attr_name"], tb_zl[i-9]["attr_value"])
		end	
	end
	
	for i = 1 , 4 do 
		hole[i] = lualib:GetStr(guid1, "EquipHole" .. i)
		if hole[i] ~= "" then
			lualib:SetStr(guid2, "EquipHole" .. i,hole[i])
		end
	end
	
	for i = 30 , 40 do 
		tb_bs[i] = lualib:GetDynamicAttr(guid1, i)
		if tb_bs[i]["attr_name"] ~= nil and tb_bs[i]["attr_value"] ~= nil then 
			lualib:SetDynamicAttr(guid2, i, tb_bs[i]["attr_name"], tb_bs[i]["attr_value"])
		end
	end
	
	
	
	return ""
end


function ExchangeMsgDataBase(player,shownItem)
	local str = lualib:GetDBStr("exchange_MsgDataBase")
	local exchange_MsgDataBase = {}
	local name = lualib:Name(player)
	if str ~= nil and str ~= "" then
		exchange_MsgDataBase = json.decode(str)
		local a = #exchange_MsgDataBase
		exchange_MsgDataBase[a + 1] = name .. ":" .. shownItem
	else
		exchange_MsgDataBase[1] = name .. ":" .. shownItem
	end
	
	while #exchange_MsgDataBase>5 do
		table.remove(exchange_MsgDataBase,1)
	end	
	
	lualib:SetDBStr("exchange_MsgDataBase", json.encode(exchange_MsgDataBase))
	return ""
end


function setExchangeMsg(player)
	local str = json.decode(lualib:GetDBStr("exchange_MsgDataBase"))
	local shownItem = lualib:GetStr(player,"lastItem")
	local str1 = lualib:Name(player)..":".. shownItem
	if str1 ~= str[#str]  then
		lualib:ShowFormWithContent(player, "脚本表单", "Marks2Item_c.setExchangeMsg(" .. serialize(str) .. ");")
	end
	
	return ""	
end

function personalMSG(player)
	local str = json.decode(lualib:GetDBStr("exchange_MsgDataBase"))
	lualib:ShowFormWithContent(player, "脚本表单", "Marks2Item_c.setExchangeMsg(" .. serialize(str) .. ");")
	return ""	
end