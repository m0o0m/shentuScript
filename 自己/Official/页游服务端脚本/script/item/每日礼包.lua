local name_table = {"��Ǯ��(5��)", "���鵤"}

local tb2 = {"�������(10��)", "����ʯ", "����", "С����", "���Ǵ���ʯ", "�������", "��Ԫ��"}
local count_table = {1, 1}
local bind_table = {1, 1}
local opr_table = {0, 0}


function main(player, item)
		 
	 local bagfree = lualib:Player_GetBagFree(player)
			if	bagfree < 3 then
				lualib:SysPromptMsg(player, "��İ����ո���3����")
				return false
				
			end
	
		local keyname = lualib:KeyName(item)
	--	lualib:DelItem(player, keyname, 1, 2, "����ÿ�����ʱɾ���������", keyname)
	
	
	    if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "����������������", player) then
			lualib:SysMsg_SendWarnMsg(player, "����������")
        return false
    end
	
	local suijis = lualib:GenRandom(1, 100)
	
	local suijitable = {30, 50, 60, 70, 80, 90, 100}
	
		for i = 1, #suijitable do
			if suijis <= suijitable[i] then
			
					if not lualib:AddSingleItem(player, tb2[i], 1, 1, "ÿ���������Ʒ", keyname) then
					return false
					end

			return true	
			end
		end
		

		


    return true
end
