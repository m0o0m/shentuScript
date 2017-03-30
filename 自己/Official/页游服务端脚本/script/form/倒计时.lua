local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/online_gift")
require("system/充值礼包")
require("system/领取经验")
require("system/每日签到")
require("system/龙穴探宝")
require("system/目标系统")
require("system/攻略")
require("system/转生")
require("system/双蛋欢乐送")
require("system/日常")
require("system/自动打怪")
require("system/领取礼包")
require("system/奖励大厅")
require("form/收藏游戏")
require("form/客户端下载")
require("form/开服活动")
require("form/首充大礼_s")
require("form/每日充值_s")
require("form/TreasureHouse_s")
require("form/Marks2Item_s")
require("form/Gongcheng_s")
require("form/ChallengeBOSS")
require("form/MarsWnd_s")
require("form/BuyExp_s")
require("form/开服豪礼表单")
local all_timecount = 
{
	["在线礼包"] = { 
		complete = function(player)
			show_my_online_gift(player)            
		end,
		uncomplete = function(player)
			show_my_online_gift(player)            
		end,
	},
	["充值礼包"] = { 
		complete = function(player)
			show_my_first_bill_gift(player)            
		end,
		uncomplete = function(player)
			show_my_first_bill_gift(player)            
		end,
	},
	["领取经验"] = { 
		complete = function(player)
		lingqujingyan(player)            
		end,
		uncomplete = function(player)
		lingqujingyan(player)
		end,
	},
	["每日签到"] = { 
		complete = function(player)
			meiriqiandao(player)            
		end,
		uncomplete = function(player)
			meiriqiandao(player)
		end,
	},
		
	["龙穴探宝"] = { 
		complete = function(player)
			tanbao(player)            
		end,
		uncomplete = function(player)
			tanbao(player)            
		end,
	},	
	["目标系统"] = { 
		complete = function(player)
			mubiao(player)            
		end,
		uncomplete = function(player)
			mubiao(player)            
		end,
	},		
	["攻略"] = { 
		complete = function(player)
			gonglue(player)            
		end,
		uncomplete = function(player)
			gonglue(player)            
		end,
	},	
	["转生系统"] = { 
		complete = function(player)
			zhuansheng(player)            
		end,
		uncomplete = function(player)
			zhuansheng(player)            
		end,
	},	
	["双蛋欢乐送"] = { 
		complete = function(player)
			huanlesong(player)            
		end,
		uncomplete = function(player)
			huanlesong(player)            
		end,
	},
	["日常"] = { 
		complete = function(player)
			richang(player)            
		end,
		uncomplete = function(player)
			richang(player)            
		end,
	},
	["自动打怪"] = { 
	complete = function(player)
			guaji(player)            
		end,
		uncomplete = function(player)
			guaji(player)            
		end,
	},		
	["领取礼包"] = { 
		complete = function(player)
			libao_dianji(player)            
		end,
		uncomplete = function(player)
			libao_dianji(player)            
		end,
	},
	["收藏游戏"] = { 
		complete = function(player)
			store_aaa(player)            
		end,
		uncomplete = function(player)
			store_aaa(player)            
		end,
	},
	["客户端下载"] = { 
		complete = function(player)
			download(player)            
		end,
		uncomplete = function(player)
			download(player)            
		end,
	},	
	["开服活动"] = { 
		complete = function(player)
			openServiceActivities(player)            
		end,
		uncomplete = function(player)
			openServiceActivities(player)            
		end,
	},		
	["奖励大厅"] = { 
		complete = function(player)
			openOnlineReward(player)            
		end,
		uncomplete = function(player)
			openOnlineReward(player)            
		end,
	},
        ["首充大礼_s"] = { 
		complete = function(player)
			firstConsume_click(player)            
		end,
		uncomplete = function(player)
			firstConsume_click(player)            
		end,
	},
	["TreaureHouse_s"] = {
		complete = function(player)
			openTreasureHouse(player)            
		end,
		uncomplete = function(player)
			openTreasureHouse(player)            
		end,
	},
	["Marks2Item_s"] = {
		complete = function(player)
			openExchangePage(player)            
		end,
		uncomplete = function(player)
			openExchangePage(player)            
		end,
	},
	["每日充值_s"] = { 
		complete = function(player)
			dailyConsume_click(player)            
		end,
		uncomplete = function(player)
			dailyConsume_click(player)            
		end,
	},
        ["Gongcheng_s"] = { 
		complete = function(player)
			dailyConsume_click(player)            
		end,
		uncomplete = function(player)
			dailyConsume_click(player)            
		end,
	},
	["ChallengeBOSS"] = { 
		complete = function(player)
			openChallengeBoss(player)            
		end,
		uncomplete = function(player)
			openChallengeBoss(player)            
		end,
	},
	["MarsWnd_s"] = { 
		complete = function(player)
			openMarsPage(player)            
		end,
		uncomplete = function(player)
			openMarsPage(player)            
		end,
	},
	["BuyExp_s"] = { 
		complete = function(player)
			buyExp_IconOnClick(player)            
		end,
		uncomplete = function(player)
			buyExp_IconOnClick(player)            
		end,
	},
	
}








function main(player, notify)
    local time = lualib:Player_GetCustomVarInt(player, notify.."倒计时")

    if all_timecount[notify] ~= nil then
        if time > lualib:GetTime() then
            lualib:Print("倒计时未完成：玩家提交倒计时"..notify);
            all_timecount[notify].uncomplete(player)
        else
            lualib:Print("倒计时完成：玩家提交倒计时"..notify);
            all_timecount[notify].complete(player)
        end
    end

    return ""
end
