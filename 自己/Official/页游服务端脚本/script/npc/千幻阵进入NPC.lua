local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("map/ǧ��������")


	
function main(npc, player)
	

	
	local msg = 
	[[#COLORCOLOR_GREENG#��������������ص�������Σ���Ȼ�������ҵ��ˣ�#COLOREND#
	#COLORCOLOR_BROWN#����������������������������������������������������������������������������#COLOREND#
	���ҵ�������Ե�֣�����ͨ��#COLORCOLOR_YELLOW#[������]#COLOREND#�Ĺؼ��������ҵ���걻������ǧ��������ĵ��У�
	˭�ܽ��ҵ�����ǧ���������ȳ�����˭���л���ͨ��һ�����ڲ�ͬ��ȫ�����磡
	#COLORCOLOR_BROWN#����������������������������������������������������������������������������#COLOREND#
	#COLORCOLOR_RED#����ǧ�����ÿ30���۳�1���غ���Ԫ������ǰ��׼���ô����غ���Ԫ��#COLOREND#
	#COLORCOLOR_BROWN#����������������������������������������������������������������������������#COLOREND#
	#OFFSET<X:0,Y:5>##IMAGE<ID:1902700018>#<@enter *01*����ǧ����>
	]]
	
	return msg
end

function enter(npc, player)
day = lualib:GetAllDays(0)
	today = lualib:GetInt(player, "qhz_daybl")
	lv = lualib:Level(player)
    if lv >= 40 then
        if today ~= day then
            lualib:SetInt(player, "qhz_daybl", day)
            lualib:SetInt(player, "qhz_cs", 0)
			qhz_enter_cs = lualib:GetInt(player, "qhz_cs")
			local dgn = lualib:Map_CreateDgn("ǧ����", false, 3600)
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
            if lualib:Player_EnterDgn(player, "ǧ����", 0, 0, 1) == false then
                    return 
                    [[
                    �����ͼʧ�ܣ�
                    <@leave *01*���뿪��>
                    ]]
            end
            lualib:SetInt(player, "qhz_cs", qhz_enter_cs + 1)
        else
            qhz_enter_cs = lualib:GetInt(player, "qhz_cs")
            if  	qhz_enter_cs >= 1 then
                    return 
                    [[#COLORCOLOR_RED#������Ѿ���ѽ����]]..qhz_enter_cs..[[���ˣ�#COLOREND#
#COLORCOLOR_BROWN#����������������������������������������������������������#COLOREND#
����������ô�г��⣬ֻҪ���ٸ���#COLORCOLOR_RED#100Ԫ��#COLOREND#,�Ҿ������ٽ�һ��
#COLORCOLOR_BROWN#����������������������������������������������������������#COLOREND#
#COLORCOLOR_BROWN#ע���ȼ�����40������ҿ�����������ÿ��������εͼ�ǧ���󣬵ȼ�����40������ҿ���ÿ����ѽ���һ�θ߼�ǧ����#COLOREND#
#IMAGE1902700037#<@huaqian *01*��ʩ�᡹>]]
            else
				qhz_enter_cs = lualib:GetInt(player, "qhz_cs")
                local dgn = lualib:Map_CreateDgn("ǧ����", false, 3600)
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
                
                if lualib:Player_EnterDgn(player, "ǧ����", 0, 0, 1) == false then
                    return 
                    [[
                    �����ͼʧ�ܣ�
                    <@leave *01*���뿪��>
                    ]]
                end
                lualib:SetInt(player, "qhz_cs", qhz_enter_cs + 1)
            end
        end
        return ""
    elseif lv <40 and lv >=35 then
        local bagfree = lualib:BagFree(player, true, false, false)
        if bagfree < 1 then
                        return "�����ռ䲻�㣡������Ҫһ�����ӣ�"
        else
            if today ~= day then
				lualib:SetInt(player, "qhz_daybl", day)
				lualib:SetInt(player, "qhz_cs_small", 0)
				qhz_enter_cs_small = lualib:GetInt(player, "qhz_cs_small")
				local dgn = lualib:Map_CreateDgn("ǧ����", false, 3600)
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
				if lualib:Player_EnterDgn(player, "ǧ����", 0, 0, 1) == false then
					return 
					[[
					�����ͼʧ�ܣ�
					<@leave *01*���뿪��>
					]]
				end
				lualib:SetInt(player, "qhz_cs_small", qhz_enter_cs_small + 1)
				lualib:AddItem(player, "�غ���Ԫ", 12, true, "�������ǧ������غ���Ԫ", "����ǧ����")
            else
				qhz_enter_cs_small = lualib:GetInt(player, "qhz_cs_small")
			    if  	qhz_enter_cs_small >= 3 then
                        return 
                        [[#COLORCOLOR_RED#������Ѿ���ѽ����]]..qhz_enter_cs_small..[[���ˣ�#COLOREND#
#COLORCOLOR_BROWN#����������������������������������������������������������#COLOREND#
						
#COLORCOLOR_BROWN#����������������������������������������������������������#COLOREND#
#COLORCOLOR_BROWN#ע���ȼ�����40������ҿ�����������ÿ��������εͼ�ǧ���󣬵ȼ�����40������ҿ���ÿ����ѽ���һ�θ߼�ǧ����#COLOREND#
                                                       <@leave *01*���뿪��>]]
                else
					qhz_enter_cs_small = lualib:GetInt(player, "qhz_cs_small")
                    local dgn = lualib:Map_CreateDgn("ǧ����", false, 3600)
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
                    if lualib:Player_EnterDgn(player, "ǧ����", 0, 0, 1) == false then
                        return 
                        [[
                        �����ͼʧ�ܣ�
                        <@leave *01*���뿪��>
                        ]]
                    end
                    lualib:SetInt(player, "qhz_cs_small", qhz_enter_cs_small + 1)
                    lualib:AddItem(player, "�غ���Ԫ", 12, true, "����ǧ������غ���Ԫ", "ǧ����")
                end
            end
            return ""
        end
    else 
            return
            [[��������ɽ����ͼ��




#COLORCOLOR_BROWN#ע���ȼ�����40������ҿ�����������ÿ��������εͼ�ǧ���󣬵ȼ�����40������ҿ���ÿ����ѽ���һ�θ߼�ǧ����#COLOREND#

                                                       <@leave *01*���뿪��>]]
    end
end

function huaqian(npc, player)
	
	
	if lualib:Player_IsIngotEnough(player, 100, false) == true then
		if lualib:Player_SubIngot(player, 100, false, "��Ǯ����ǧ����", npc) == false then
			return "�۳�Ԫ��ʧ��"
		end
		
		local dgn = lualib:Map_CreateDgn("ǧ����", false, 3600000)
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
		
		
		if lualib:Player_EnterDgn(player, "ǧ����", 0, 0, 1) == false then
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
