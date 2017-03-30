onlinegif_award = {}

function onlinegif_award.main()
	local ui = "<form><dialog id=下载奖励 x='0' y='0' w='612' h='352' image='1800100001' magic='1' savepos='1' center='true' OnInit='onlinegif_award.UIInit'>"
		.."<image id='背景角色' x='-42' y='-26' image='1800100002' enable='false' />"
		.."<image id='微端下载' x='192' y='14' image='1800100003' enable='false' />"
		.."<image id='箱子1' x='180' y='94' image='1800100010' enable='false' />"
		.."<image id='箱子2' x='200' y='134' image='1800100009' enable='false' />"
		.."<image id='箱子3' x='170' y='230' image='1800100008' enable='false' />"
		.."<button id='按钮' x='260' y='270' image='1903800004' OnLButtonClick='onlinegif_award.anniu' />"
		.."<button id='关闭' x='520' y='43' image='1930001002'  OnLButtonClick='onlinegif_award.Close' />"
		.."<itemctrl id = '奖励物品1' x = '280'  y='180'  is_bound='false' use_back='true' />"
		.."<itemctrl id = '奖励物品2' x = '335'  y='180'  is_bound='false' use_back='true' />"
		.."<itemctrl id = '奖励物品3' x = '390'  y='180'  is_bound='false' use_back='true' />"
		.."<itemctrl id = '奖励物品4' x = '445'  y='180'  is_bound='false' use_back='true' />"
		.."</dialog></form>"
	GenFormByString(ui)
end

onlinegif_award.Close = function(handle, param, x, y)
	if WndPtInWindow(handle, nil, x, y) then WndClose(handle, "parent") end
end

onlinegif_award.info_str = [[描述

怎么兑换
怎么兑换
怎么兑换
]]

onlinegif_award.show = 1
onlinegif_award.UIInit = function(this)	
	--local client_award_t = deserialize(FormParam[1])
	
	RichEditAppendString(nil, "下载奖励,说明文字", onlinegif_award.info_str)
	
	for i = 1, #client_award_t do
		RDItemCtrlSetProp(nil, "下载奖励,奖励物品"..i, true, true, true, true, false, false)
		local handle = GetWindow(nil, "下载奖励,奖励物品"..i)
		RDItemCtrlSetGUIDataByKeyName(handle, client_award_t[i][1], onlinegif_award[i][2], false)
	end
end		

onlinegif_award.anniu = function(this)
	local str = WndGetProperty(this, nil, "index")
	UI:Lua_SubmitForm("客户端下载","download_web", "")
	
end

onlinegif_award.main()