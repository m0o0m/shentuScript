local castle_weapon = "���"

function on_timer_check(item)
    local self = lualib:Item_GetRole(item)
    if self == "" then return end
    
    local count = lualib:ItemCountByKey(self, castle_weapon, true, true, true, 2)
    if count > 1 then 
		if not lualib:DelItemEx(self, castle_weapon, count - 1, 2, true, true, true, true, "ɾ��Ʒ������Լ�", "���") then
			 lualib:SysMsg_SendWarnMsg(self, "�۳�����ʧ��")
			return 
		end
        --lualib:DelItem(self, castle_weapon, count - 1, 2, "ɾ��Ʒ������Լ�", "���")
        lualib:SysMsg_SendWarnMsg(self, "������ֻ��һ����裡")
    end
        
    local weapon_owner = lualib:IO_GetCustomVarStr("����_leader_weapon")
    if weapon_owner ~= self then 
        if not lualib:Item_Destroy(self, item, "ɾ��Ʒ������Լ�", "���") then
			lualib:SysMsg_SendWarnMsg(self, "�۳�����ʧ��")
			return
		end
		
        lualib:SysMsg_SendWarnMsg(self, "�����������������������������Ϊ֮��")
        lualib:SysMsg_SendCenterMsg(1, "�������������������������"..lualib:Name(self).."ʧȥ�˶�����ӵ��Ȩ��", "")
        return
    end
end