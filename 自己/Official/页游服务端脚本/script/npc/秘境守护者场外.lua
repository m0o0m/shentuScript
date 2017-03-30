local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("map/�غ���ӡ����")



	
function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#�غ���ӡ#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
	msg = msg..
	[[�غ���ӡ��ħ��׼�������ӡ����ֹ��Щ��ħ���ж��ɻ�ò��ٽ�ң�#COLORCOLOR_GREENG#30��#COLOREND#�Ժ��#COLORCOLOR_YELLOW#���#COLOREND#������������#COLOREND#
	#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#
#COLORCOLOR_GREENG#С��ʾ1�������ͼ��ʹ��#COLOREND##COLORCOLOR_RED#�ٻ�ʯ#COLOREND##COLORCOLOR_GREENG#�ٻ��ػ��ߣ�����ֹ��ħ��#COLOREND#
	#COLORCOLOR_GREENG#С��ʾ2���ٻ�ʯ�����еع��Ĺ������Ͽ��Ի�ã�#COLOREND#
	#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#
	#OFFSET<X:0,Y:5>##IMAGE<ID:1902700018>#<@enter *01*�����غ���ӡ>]]
	return msg
end

function enter(npc, player)
	day = lualib:GetAllDays(0)
	today = lualib:GetInt(player, "td_daybl")
	lv = lualib:Level(player)
	lualib:SetInt(player, "L_V", lv)
	lualib:SetCamp(player, 1)
    if lv >= 35 then
        if today ~= day then
            lualib:SetInt(player, "td_daybl", day)
            lualib:SetInt(player, "td_cs", 0)
			td_enter_cs = lualib:GetInt(player, "td_cs")
			local dgn = lualib:Map_CreateDgn("�غ���ӡ", false, 3600)
            if dgn == "" then
                    return 
                    [[
                    ����������ʧ�ܣ�
                    <@leave *01*���뿪��>
                    ]]
            end
            if lualib:Player_SetDgnTicket(player, dgn) == false then
                    return 
                    [[
                    ��������ɽ����ͼ��
                    <@leave *01*���뿪��>
                    ]]
            end
            if lualib:Player_EnterDgn(player, "�غ���ӡ", 29, 84, 1) == false then
                    return 
                    [[
                    �����ͼʧ�ܣ�
                    <@leave *01*���뿪��>
                    ]]
            end
            lualib:SetInt(player, "td_cs", td_enter_cs + 1)
        else
            td_enter_cs = lualib:GetInt(player, "td_cs")
            if  	td_enter_cs >= 1 then
                    return 
                    [[#COLORCOLOR_RED#������Ѿ���ѽ����]]..td_enter_cs..[[���ˣ�#COLOREND#
#COLORCOLOR_BROWN#����������������������������������������������������������#COLOREND#
����������ô�г��⣬ֻҪ���ٸ���#COLORCOLOR_RED#100Ԫ��#COLOREND#,�Ҿ������ٽ�һ��
#COLORCOLOR_BROWN#����������������������������������������������������������#COLOREND#
#COLORCOLOR_BROWN#ע���ȼ�����30������ҿ�����������ÿ��������εͼ��غ���ӡ���ȼ�����30������ҿ���ÿ����ѽ���һ�θ߼��غ���ӡ��#COLOREND#
#IMAGE1902700037#<@huaqian *01*��ʩ�᡹>]]
            else
				td_enter_cs = lualib:GetInt(player, "td_cs")
                local dgn = lualib:Map_CreateDgn("�غ���ӡ", false, 3600)
                if dgn == "" then
                    return 
                    [[
                    ����������ʧ�ܣ�
                    <@leave *01*���뿪��>
                    ]]
                end
                
                if lualib:Player_SetDgnTicket(player, dgn) == false then
                    return 
                    [[
                    ��������ɽ����ͼ��
                    <@leave *01*���뿪��>
                    ]]
                end
                
                if lualib:Player_EnterDgn(player, "�غ���ӡ", 29, 84, 1) == false then
                    return 
                    [[
                    �����ͼʧ�ܣ�
                    <@leave *01*���뿪��>
                    ]]
                end
                lualib:SetInt(player, "td_cs", td_enter_cs + 1)
            end
        end
        return ""
    elseif lv <35 and lv >=20 then
        local bagfree = lualib:BagFree(player, true, false, false)
        if bagfree < 1 then
                        return "�����ռ䲻�㣡������Ҫһ�����ӣ�"
        else
            if today ~= day then
				lualib:SetInt(player, "td_daybl", day)
				lualib:SetInt(player, "td_cs_small", 0)
				td_enter_cs_small = lualib:GetInt(player, "td_cs_small")
				local dgn = lualib:Map_CreateDgn("�غ���ӡ", false, 3600)
				if dgn == "" then
					return 
					[[
					����������ʧ�ܣ�
					<@leave *01*���뿪��>
					]]
				end
				if lualib:Player_SetDgnTicket(player, dgn) == false then
					return 
					[[
					��������ɽ����ͼ��
					<@leave *01*���뿪��>
					]]
				end
				if lualib:Player_EnterDgn(player, "�غ���ӡ", 29, 84, 1) == false then
					return 
					[[
					�����ͼʧ�ܣ�
					<@leave *01*���뿪��>
					]]
				end
				lualib:SetInt(player, "td_cs_small", td_enter_cs_small + 1)
            else
				td_enter_cs_small = lualib:GetInt(player, "td_cs_small")
			    if  	td_enter_cs_small >= 3 then
                        return 
                        [[#COLORCOLOR_RED#������Ѿ���ѽ����]]..td_enter_cs_small..[[���ˣ�#COLOREND#
#COLORCOLOR_BROWN#����������������������������������������������������������#COLOREND#
						
#COLORCOLOR_BROWN#����������������������������������������������������������#COLOREND#
#COLORCOLOR_BROWN#ע���ȼ�����35������ҿ�����������ÿ��������εͼ��غ���ӡ���ȼ�����35������ҿ���ÿ����ѽ���һ�θ߼��غ���ӡ��#COLOREND#
                                                       <@leave *01*���뿪��>]]
                else
					td_enter_cs_small = lualib:GetInt(player, "td_cs_small")
                    local dgn = lualib:Map_CreateDgn("�غ���ӡ", false, 3600)
                    if dgn == "" then
                        return 
                        [[
                        ����������ʧ�ܣ�
                        <@leave *01*���뿪��>
                        ]]
                    end
                    if lualib:Player_SetDgnTicket(player, dgn) == false then
                        return 
                        [[
                        ��������ɽ����ͼ��
                        <@leave *01*���뿪��>
                        ]]
                    end
                    if lualib:Player_EnterDgn(player, "�غ���ӡ", 29, 84, 1) == false then
                        return 
                        [[
                        �����ͼʧ�ܣ�
                        <@leave *01*���뿪��>
                        ]]
                    end
                    lualib:SetInt(player, "td_cs_small", td_enter_cs_small + 1)
                end
            end
            return ""
        end
    else 
            return
            [[��������ɽ����ͼ��




#COLORCOLOR_BROWN#ע���ȼ�����35������ҿ�����������ÿ��������εͼ��غ���ӡ���ȼ�����35������ҿ���ÿ����ѽ���һ�θ߼��غ���ӡ��#COLOREND#

                                                       <@leave *01*���뿪��>]]
    end
end

function huaqian(npc, player)
	lv = lualib:Level(player)
	lualib:SetInt(player, "L_V", lv)
	lualib:SetCamp(player, 1)
	
	if lualib:Player_IsIngotEnough(player, 100, false) == true then
		if lualib:Player_SubIngot(player, 100, false, "��Ǯ�����غ���ӡ", npc) == false then
			return "�۳�Ԫ��ʧ��"
		end
		
		local dgn = lualib:Map_CreateDgn("�غ���ӡ", false, 3600000)
		if dgn == "" then
			return 
			[[
			����������ʧ�ܣ�
			<@leave *01*���뿪��>
			]]
		end
		if lualib:Player_SetDgnTicket(player, dgn) == false then
			return 
			[[
			��������ɽ����ͼ��
			<@leave *01*���뿪��>
			]]
		end
		
		
		if lualib:Player_EnterDgn(player, "�غ���ӡ", 29, 84, 1) == false then
			return 
			[[
			�����ͼʧ�ܣ�
			<@leave *01*���뿪��>
			]]
		end
	else
		return
		[[#COLORCOLOR_YELLOW#���Ԫ������100��#COLOREND#]]
	end
	
	return ""
end



function leave(player)
    return ""
end
