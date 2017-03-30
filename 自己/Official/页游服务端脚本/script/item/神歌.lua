local castle_weapon = "神歌"

function on_timer_check(item)
    local self = lualib:Item_GetRole(item)
    if self == "" then return end
    
    local count = lualib:ItemCountByKey(self, castle_weapon, true, true, true, 2)
    if count > 1 then 
		if not lualib:DelItemEx(self, castle_weapon, count - 1, 2, true, true, true, true, "删物品：神歌自检", "神歌") then
			 lualib:SysMsg_SendWarnMsg(self, "扣除道具失败")
			return 
		end
        --lualib:DelItem(self, castle_weapon, count - 1, 2, "删物品：神歌自检", "神歌")
        lualib:SysMsg_SendWarnMsg(self, "这世间只有一把神歌！")
    end
        
    local weapon_owner = lualib:IO_GetCustomVarStr("神歌城_leader_weapon")
    if weapon_owner ~= self then 
        if not lualib:Item_Destroy(self, item, "删物品：神歌自检", "神歌") then
			lualib:SysMsg_SendWarnMsg(self, "扣除道具失败")
			return
		end
		
        lualib:SysMsg_SendWarnMsg(self, "镇城神器神歌已另择良主，望你好自为之！")
        lualib:SysMsg_SendCenterMsg(1, "镇城神器神歌已另择良主，玩家"..lualib:Name(self).."失去了对它的拥有权！", "")
        return
    end
end