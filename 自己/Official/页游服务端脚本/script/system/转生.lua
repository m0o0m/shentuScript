local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")

-------------------------判断图标是否显示-------------------------
function zhuansheng_xianshi(player)
	local reinNum = lualib:GetInt(player,  "reinNum")
	local Level = lualib:Level(player)
	if reinNum < 1 and Level < 60 then
		return
	end
	ShowTimeCount2(player, 0, 1905600001, "转生系统",0,"") --显示转生系统图标
    --[[local chongzhi_number = lualib:GetTotalBill(player)
	local chongzhi_cishu = lualib:GetInt(player, "chongzhi_cishu")

	if first_bill_gift[chongzhi_cishu] ~= nil and chongzhi_number >= first_bill_gift[chongzhi_cishu].number then
        ShowTimeCount(player, 0, first_bill_icon.enable, "充值礼包") --图标亮起来
	elseif first_bill_gift[chongzhi_cishu] ~= nil then
		ShowTimeCount(player, 0, first_bill_icon.disable, "充值礼包") --图标灰掉
    end]]
end

------------------------图标点击或关闭---------------------
function zhuansheng(player)
	ShowTimeCount2(player, 0, 1905600001, "转生系统",0,"") --显示目标图标
	local msg = ""

	lualib:NPCTalkDetail(player, re_showfrom_zhuanshen(player), 540, 260)
	return ""
end

function re_showfrom_zhuanshen(player)
    local msg =  "                            #COLORCOLOR_SKYBLUE#生死运转，六道轮回！#COLOREND#\n \n"

    msg = msg .. "    #COLORCOLOR_GREENG#转生的意义#COLOREND#\n"
    msg = msg .. "        1.#COLORCOLOR_RED#角色50级以上每次升级会获得1点自由分配的强化点数#COLOREND#（按F10打开的界面点击“强化”查看）通过转生降级到50以下，再重新升级到50以上重复获得每级的强化点，实现角色属性的突破\n"
    msg = msg .. "        2.转生的特定阶段可以获得特殊模型，可以通过替换称号来使用新模型\n"
    msg = msg .. "    #COLORCOLOR_GREENG#转生的条件：#COLOREND#\n"
    msg = msg .. "        1.转生需要人物达到60级，转生后降低一定等级\n"
    msg = msg .. "        2.转生需要花费金币和转生石，转生石可在巫山城炼药师处用药灵进行兑换\n"
    msg = msg .. "        3.#COLORCOLOR_RED#每个角色最多转生6次#COLOREND#\n"
    msg = msg .. "                             #IMAGE<ID:1905600007>##OFFSET<X:-184,Y:-35>#<@showfrom_zhuanshen *01*                             >\n"
    msg = msg .. "                              #OFFSET<X:0,Y:-5>#<@showfrom_zhuanshen *01*                             >\n"
    msg = msg .. "                              #OFFSET<X:0,Y:-5>#<@showfrom_zhuanshen *01*                             >\n"
    return msg
end

function showfrom_zhuanshen(player)
	local reinNum = lualib:GetInt(player,  "reinNum")
    if reinNum >= 6 then
        return "你已经转生达到6次，无法继续转生！"
    end
	lualib:ShowFormWithContent(player, "转生表单", ""..reinNum.."")
	zhuansheng_xianshi(player)
    return ""
end