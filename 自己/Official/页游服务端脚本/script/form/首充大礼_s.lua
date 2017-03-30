local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("form/每日充值_s")
require("system/timecount_def")

local _weapons = ""
local firstConsume_cmpt = 0

-----------------------图标显示-----------------------------
function firstConsume_show(player)
	------*****************页游、微端资源同步后删除*****************------
--[[	if lualib:GetClientType(player) == 0 then
		AddSEIcon(player, 2, -2, "首充大礼", 1800200043, "倒计时", "firstConsume_click","","充值任意金额，获得+6神兵")
		return ""
	end--]]
	------------*******************END********************-----------------
	
	AddSEIcon(player,2, -2, "首充大礼", 1800200023, "倒计时", "firstConsume_click","","充值任意金额，获得+6神兵")

--	AddIconMagic(player, "首充大礼",3020101100, -19,-19, 150)
	AddIconMagic(player, "首充大礼",3020300700, -40,-40, 150)
	return ""
end

-------------------图标被点击-----------------------
function firstConsume_click(player)

	local _weaponsPic = 0
	local job = lualib:Job(player)
	if job == 1 then 
		_weapons = "武魂战刃Plus"
		_weaponsPic = 1990440649
	end
	if job == 2 then 
		_weapons = "魔魂法杖Plus"
		_weaponsPic = 1990440491
	end
	if job == 3 then 
		_weapons = "玄魂道剑Plus"
		_weaponsPic = 1990409003
	end

local gift_ = {
	{	6, _weapons, 1, 1,_weaponsPic},
	{	"直升一级丹", 1, 1,
		"高级转生丹", 1, 1,
		"七日返利", 1, 1,
	}
}
	if lualib:GetTotalBill(player) ~= 0 then
		--firstConsume_cmpt = 1
		lualib:ShowFormWithContent(player, "form文件表单", "首充大礼_c#"..serialize(gift_).."#"..firstConsume_cmpt)
	else
		lualib:ShowFormWithContent(player, "form文件表单", "首充大礼_c#"..serialize(gift_))
	end

	return ""
end





-------------------发送礼包-----------------------
function firstConsume_reward(player)
	local id = tostring(lualib:Player_GetAccountID(player))
	if lualib:GetDBNum(id) ~= 0 then
		lualib:SysPromptMsg(player, "同一个账号只能领取一次首充大礼")
		return ""
	end
	if lualib:GetInt(player, "firstConsume_reward") ~= 1 then
		local job = lualib:Job(player)
		if job == 1 then 
			_weapons = "武魂战刃Plus"
		end
		if job == 2 then 
			_weapons = "魔魂法杖Plus"
		end
		if job == 3 then 
			_weapons = "玄魂道剑Plus"
		end
		if lualib:GetTotalBill(player) ~= 0 then 
			if lualib:MailToPlayer("首充大礼包", player, "为了让您游戏旅程更加舒畅，特送一组首充道具。游戏愉快！", 0, 0,	{	
			_weapons,1,1,
			"直升一级丹", 1, 1,
			"高级转生丹", 1, 1,
			"七日返利", 1, 1,
			} ) then 
				lualib:SetInt(player, "firstConsume_reward", 1)
				lualib:SetDBNum(id,1)
				lualib:RunClientScript(player, "首充大礼_c", "FirstConsume.wndClose","")
				DelIcon(player,"首充大礼")
				dailyConsume_show(player)
			end
		end
	end	
	return ""	
end
