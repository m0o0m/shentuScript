local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/online_gift")
require("system/��ֵ���")
require("system/��ȡ����")
require("system/ÿ��ǩ��")
require("system/��Ѩ̽��")
require("system/Ŀ��ϵͳ")
require("system/����")
require("system/ת��")
require("system/˫��������")
require("system/�ճ�")
require("system/�Զ����")
require("system/��ȡ���")
require("system/��������")
require("form/�ղ���Ϸ")
require("form/�ͻ�������")
require("form/�����")
require("form/�׳����_s")
require("form/ÿ�ճ�ֵ_s")
require("form/TreasureHouse_s")
require("form/Marks2Item_s")
require("form/Gongcheng_s")
require("form/ChallengeBOSS")
require("form/MarsWnd_s")
require("form/BuyExp_s")
require("form/���������")
local all_timecount = 
{
	["�������"] = { 
		complete = function(player)
			show_my_online_gift(player)            
		end,
		uncomplete = function(player)
			show_my_online_gift(player)            
		end,
	},
	["��ֵ���"] = { 
		complete = function(player)
			show_my_first_bill_gift(player)            
		end,
		uncomplete = function(player)
			show_my_first_bill_gift(player)            
		end,
	},
	["��ȡ����"] = { 
		complete = function(player)
		lingqujingyan(player)            
		end,
		uncomplete = function(player)
		lingqujingyan(player)
		end,
	},
	["ÿ��ǩ��"] = { 
		complete = function(player)
			meiriqiandao(player)            
		end,
		uncomplete = function(player)
			meiriqiandao(player)
		end,
	},
		
	["��Ѩ̽��"] = { 
		complete = function(player)
			tanbao(player)            
		end,
		uncomplete = function(player)
			tanbao(player)            
		end,
	},	
	["Ŀ��ϵͳ"] = { 
		complete = function(player)
			mubiao(player)            
		end,
		uncomplete = function(player)
			mubiao(player)            
		end,
	},		
	["����"] = { 
		complete = function(player)
			gonglue(player)            
		end,
		uncomplete = function(player)
			gonglue(player)            
		end,
	},	
	["ת��ϵͳ"] = { 
		complete = function(player)
			zhuansheng(player)            
		end,
		uncomplete = function(player)
			zhuansheng(player)            
		end,
	},	
	["˫��������"] = { 
		complete = function(player)
			huanlesong(player)            
		end,
		uncomplete = function(player)
			huanlesong(player)            
		end,
	},
	["�ճ�"] = { 
		complete = function(player)
			richang(player)            
		end,
		uncomplete = function(player)
			richang(player)            
		end,
	},
	["�Զ����"] = { 
	complete = function(player)
			guaji(player)            
		end,
		uncomplete = function(player)
			guaji(player)            
		end,
	},		
	["��ȡ���"] = { 
		complete = function(player)
			libao_dianji(player)            
		end,
		uncomplete = function(player)
			libao_dianji(player)            
		end,
	},
	["�ղ���Ϸ"] = { 
		complete = function(player)
			store_aaa(player)            
		end,
		uncomplete = function(player)
			store_aaa(player)            
		end,
	},
	["�ͻ�������"] = { 
		complete = function(player)
			download(player)            
		end,
		uncomplete = function(player)
			download(player)            
		end,
	},	
	["�����"] = { 
		complete = function(player)
			openServiceActivities(player)            
		end,
		uncomplete = function(player)
			openServiceActivities(player)            
		end,
	},		
	["��������"] = { 
		complete = function(player)
			openOnlineReward(player)            
		end,
		uncomplete = function(player)
			openOnlineReward(player)            
		end,
	},
        ["�׳����_s"] = { 
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
	["ÿ�ճ�ֵ_s"] = { 
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
    local time = lualib:Player_GetCustomVarInt(player, notify.."����ʱ")

    if all_timecount[notify] ~= nil then
        if time > lualib:GetTime() then
            lualib:Print("����ʱδ��ɣ�����ύ����ʱ"..notify);
            all_timecount[notify].uncomplete(player)
        else
            lualib:Print("����ʱ��ɣ�����ύ����ʱ"..notify);
            all_timecount[notify].complete(player)
        end
    end

    return ""
end
