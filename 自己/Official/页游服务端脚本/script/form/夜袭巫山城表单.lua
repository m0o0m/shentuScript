local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("form/ActivityDegree_s")

function EnterMap(player)
	
	local start = lualib:GetInt("","ҹϮ��ɽ�ǿ���")
	if start == 1 then
		local newTime = lualib:Str2Time(lualib:Now())
		local oldTime =lualib:GetInt(player,"ҹϮ��ɽ�Ǽ��")
		if newTime-oldTime > 30 then
			local level = lualib:Level(player)
			if level > 49 then
				local dgn_guid = lualib:GetStr("","ҹϮ��ɽ��GUID")
				lualib:Player_SetDgnTicket(player, dgn_guid)
				lualib:Player_MapMove(player, "ҹϮ��ɽ��")
				---------------------ÿ�ջ�Ծ�ȼ�¼�μ�ҹϮ��ɽ�Ǵ���-------------------
				local count = lualib:GetDayInt(player, "activityDgr_yxwsc")
				if 0 == count then
					lualib:SetDayInt(player, "activityDgr_yxwsc", 1)
					lualib:SetDayInt(player, "totalActivityDegree", lualib:GetDayInt(player, "totalActivityDegree") + 15)
					ActivityDegree_setFlag(player)
				end
				---------------------ÿ�ջ�Ծ�ȼ�¼�μ�ҹϮ��ɽ�Ǵ���END----------------
				local num = tonumber(math.random(1,4))
				local tab = {{40,104},{58,85},{73,100},{55,118}}
				lualib:Player_EnterDgn(player , "ҹϮ��ɽ��" , 	tab[num][1] ,tab[num][2] , 5)
				lualib:ShowFormWithContent(player,"�ű���","NightWnd.closeWnd();")
			else 
				lualib:ShowFormWithContent(player,"�ű���"," NightWnd.msg(\"�ȼ�����\");")
			end
		else
			local num = 30-(newTime-oldTime)
			lualib:ShowFormWithContent(player,"�ű���"," NightWnd.msg(\""..num.."s��ɽ���\");")
			
		end
	else
		lualib:ShowFormWithContent(player,"�ű���","NightWnd.msg(\"�ܱ�Ǹ�����δ����\");")
	end
	return ""
	
end

function Back(player)
	lualib:SetInt("","ҹϮ��ɽ�ǿ���",0)
	lualib:Player_NpcMove(player, "����ҹս�����", 5)

	return ""
	
end

function Time_Out(player,int,ranker)
	local tab = {}
	--local playerList = lualib:Map_GetMapPlayers(mapguid, true)
	local tab = lualib:GetStr("", "ҹϮ��ɽ������")      --û������
	if #tab > 0 then 
		tab = json.decode(tab)
		for  j = 1,#tab do 
			if j<#tab then 
				for  i = 1,#tab-1 do 
					if tab[i][2] < tab[i+1][2] then 
						local index = tab[i]
						tab[i] = tab[i+1]
						tab[i+1] = index
					end
				end
			end
		end
	end 
	
	lualib:ShowFormWithContent(player,"form�ļ���","Night_RankWnd#"..serialize(tab).."#"..int.."#"..ranker)
	return ""
	
end