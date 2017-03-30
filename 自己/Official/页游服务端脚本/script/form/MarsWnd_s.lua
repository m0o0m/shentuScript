local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")
require("system/ScriptPackage")
--��������������������ͼ����ʾ��������������������
function openMarsPage_show(player)
	------*****************ҳ�Ρ�΢����Դͬ����ɾ��*****************------
--[[	if lualib:GetClientType(player) == 0 then
		if lualib:GetInt(player,"tanbao_score") > 0 then
			AddSEIcon(player, 2, -5, "ս��", 1800200011, "����ʱ", "openMarsPage","","Ӣ��ս������һ��ս��")
		else
			AddSEIcon(player, 2, -4, "ս��", 1800200011, "����ʱ", "openMarsPage","","Ӣ��ս������һ��ս��")
		end
		return ""
	end--]]
	------------*******************END********************-----------------
	local l = lualib:Level(player)
	if lualib:GetInt(player,"login_days") <= 2 and l >=55 and l < 80 then
		AddSEIcon(player, 2, -3, "ս��", 1800200107, "����ʱ", "openMarsPage","","Ӣ��������һ��ս��")
	else
		AddSEIcon(player, 2, -3, "ս��������", 1800200107, "����ʱ", "openMarsPage","","Ӣ��������һ��ս��")
	end
	return ""
end
function AddMarsIcon(player)
	------*****************ҳ�Ρ�΢����Դͬ����ɾ��*****************------
--[[	if lualib:GetClientType(player) == 0 then
		if lualib:GetInt(player,"tanbao_score") > 0 then
			AddSEIcon(player, 2, -5, "ս��", 1800200011, "����ʱ", "openMarsPage","","Ӣ��ս������һ��ս��")
		else
			AddSEIcon(player, 2, -4, "ս��", 1800200011, "����ʱ", "openMarsPage","","Ӣ��ս������һ��ս��")
		end
		return ""
	end--]]
	------------*******************END********************-----------------
	
	local tanbaoScore = lualib:GetInt(player,"tanbao_score")
	AddSEIcon(player, 2, -3, "ս��������", 1800200107, "����ʱ", "openMarsPage","","Ӣ��������һ��ս��")
	FirstCall(player)
	return ""
end

local item = {
				{"ս������ս��","��ʾ����ս��","ս������ͷ��","ս����������","ս����������",5000},
				{"ս��ʥ��ս��","��ʾʥ��ս��","ս��ʥ��ͷ��","ս��ʥ������","ս��ʥ������",7500},
				{"ս������ս��","��ʾ����ս��","ս������ͷ��","ս����������","ս����������",9800},
				{"ս���������ս��","��ʾ��������ս��","ս���������ͷ��","ս�������������","ս�������������",11300},
				{"ս����������ս��","��ʾ��������ս��","ս����������ͷ��","ս��������������","ս��������������",13700}
			}

local marsInfo = {
					{3000000,2537,5000,3737,"������,����ϰ�䣬���ܿ�������ɽ��һ��һս����"},
					{4000000,2537,7500,3737,"ʥ����,�������壬δ���ܼ����ݴ������һλ���Ϲ�����ɱ���߽��߳��Ľ�������"},
					{5000000,2537,9800,3737,"ŭ����,�����޵У�������˫������һ����˵��Ĵ���"},
					{6000000,2537,11300,3737,"��Х��,�������£���Ȼ���ƣ��������ѳ���������"},
					{7000000,2537,13700,3737,"�ȷ���,���е������½����������������Ĺ���"},
				}

local btnHint = {"�������ɣ����Ҵ�ֿ�һ����","�������ɣ����ҿ�BOSS��������","�������ɣ���ǰ��2���һ�������","�������ɣ���ǰ��3���һ������࣡","�������ɣ���Ӣ˧������ս�����������������ս����Bossûѹ����"}

function RenameHero(player)
	local heros = lualib:GetPlayerHeroList(player)
	if #heros == 0 or heros == nil or heros == "" then  
		--continue
	else		--herolist is valid
		local curHeroList = lualib:GetPlayerCurrentHeroList(player)
		local playerName = lualib:Name(player)
		local heroNameTB = {["����ս��"]="������",["ʥ��ս��"]="ʥ����",["ŭ��ս��"]="ŭ����",["��Хս��"]="��Х��",["�ȷ�սʥ"]="�ȷ���",}
		for k = 1 , #heros do
			if curHeroList[1] ~= heros[k]["guid"] then
				local a = heros[k]["name"]
				local ending = string.find(a, "��") - 1
				local heroName = string.sub(a, 1, ending)
				local newName = heroNameTB[heroName]
				if newName == nil then
					--lualib:SetInt(player,"unnessChangeName",1)
					return ""
				end
				if lualib:GenHeroForPlayer(player,tostring(heros[k]["guid"]),"ChangeHeroName",heros[k]["guid"].."?"..newName) then
					
				end
			else
				local a = heros[k]["name"]
				local ending = string.find(a, "��") - 1
				local heroName = string.sub(a, 1, ending)
				local newName = heroNameTB[heroName]
				if newName == nil then
					--lualib:SetInt(player,"unnessChangeName",1)
					return ""
				end
				lualib:Player_ChangeName(curHeroList[1], newName .."��"..playerName.."��")
			end
		end
	end
end

function ChangeHeroName(player, err, param)
	
	local str = tostring(param)
	local a1 = string.find(str, "?")
	local heroGuid = string.sub(str, 1, a1-1)
	local length = string.len(str)
	local newName = string.sub(str, a1+1, length)
	local playerName = lualib:Name(player)
	if lualib:Player_ChangeName(heroGuid, newName .."��"..playerName.."��") then
		lualib:DestroyDummy(heroGuid)
		--lualib:SysPromptMsg(player, "name has changed")
	else
		--lualib:SysPromptMsg(player, "failed:::::")
	end
	lualib:SetInt(player,"heroNameChangedFlag",1)
	return ""
end





-------------------ͼ�걻���-----------------------
function openMarsPage(player)
	if lualib:GetInt(player, "heroNameHasChanged") == 0 then
		RenameHero(player)
		lualib:SetInt(player, "heroNameHasChanged", 1)
		if lualib:GetInt(player, "heroNameChangedFlag") == 1 then
			lualib:SysPromptMsg(player,"ս�������Ѹ��ģ���������½��Ϸ��")
		end
	end
	--abcdefg(player)
	
	local loginDaynum , Is_activate , cishu , vip_lv = 	getcallNum(player)
	
	local heroName = getCurrentHeroName(player)
	local defaultHero = lualib:GetInt(player, "defaultHero")
	local heroIsExist = "is_not_Exist"
	if heroName ~= "" then

		heroIsExist = "is_Exist"
		lualib:ShowFormWithContent(player, "form�ļ���", "MarsWnd_c#"..serialize(item).."#"..serialize(marsInfo).."#"..serialize(btnHint).."#"..loginDaynum.."#"..vip_lv.."#"..Is_activate.."#"..cishu.."#"..serialize(heroName).."#"..serialize(heroIsExist))
	else

		lualib:ShowFormWithContent(player, "form�ļ���", "MarsWnd_c#"..serialize(item).."#"..serialize(marsInfo).."#"..serialize(btnHint).."#"..loginDaynum.."#"..vip_lv.."#"..Is_activate.."#"..cishu.."#"..serialize(defaultHero).."#"..serialize(heroIsExist))
	end

	return ""
end

---------��ȡ��ҵ�ǰʹ�õ�Ӣ������------
function getCurrentHeroName(player)
	local heros = lualib:GetPlayerCurrentHeroList(player)
	if #heros ~= 0 then
		local a = lualib:Guid2Name(heros[1])
		local ending = string.find(a,"��") - 1
		local heroName = string.sub(a,1,ending)
---------------------------------------------------------

-----------------------------------------------------------
		return heroName
	else
		return ""
	end
end

---------ս���ٻ�����----------------
function getcallNum(player)
	if lualib:GetDayInt(player,"free_Opportunity") == 0 then 
		lualib:SetInt(player,"callnumber",(lualib:GetInt(player,"callnumber")+1))     ----ÿ���״���ѻ���
		lualib:SetDayInt(player,"daynum",1)
		lualib:SetDayInt(player,"free_Opportunity",1)
	end
	
	local cishu = lualib:GetInt(player,"callnumber")
	local daynum = lualib:GetDayInt(player,"daynum")
	local cur_onlinetime = 0
	if daynum < 5 then
		cur_onlinetime = lualib:GetDayInt(player,"online_times") + lualib:OnlineTime(player) - 60*30*daynum    ----ÿ30��������һ��
		if cur_onlinetime > 0 then
			cishu = cishu + 1
			lualib:SetInt(player,"callnumber",cishu)
			lualib:SetDayInt(player,"daynum",daynum+1)
		end
	end

	--lualib:SysMsg_SendCenterMsg(1, "ÿ�����Ӵ���" .. tostring(daynum-1), "")
	--lualib:SysMsg_SendCenterMsg(1, "����ʱ��" .. tostring(cur_onlinetime), "")


	local Is_activate = lualib:GetInt(player,"is_Activate")
	local loginDaynum = lualib:GetInt(player,"login_days")

	local vip_lv = lualib:GetVipLevel(player)
	return loginDaynum , Is_activate , cishu , vip_lv
end

-------------�ͽ���������������--------------------
function abcdefg(player)
	local player_Name = lualib:Name(player)
	local heroTB = {"������", "ʥ����", "ŭ����", "��Х��"}

	local loginDaynum = lualib:GetInt(player,"login_days")
	if lualib:GetInt(player,"viaVipLv_CreateHero1") == 0 then
		if loginDaynum >= 1 then
			if lualib:CreateHeroForPlayer(player,heroTB[1].."��"..player_Name.."��",1,1, "","") then
				lualib:SetInt(player,"viaVipLv_CreateHero1",1)
			end
		end
	end	
	if lualib:GetInt(player,"viaVipLv_CreateHero2") == 0 then
		if loginDaynum >= 2 then
			if lualib:CreateHeroForPlayer(player,heroTB[2].."��"..player_Name.."��",1,1, "","") then
				lualib:SetInt(player,"viaVipLv_CreateHero2",1)
			end
		end
	end	
	if lualib:GetInt(player,"viaVipLv_CreateHero3") == 0 then
		if loginDaynum >= 3 then
			if lualib:CreateHeroForPlayer(player,heroTB[3].."��"..player_Name.."��",1,1, "","") then
				lualib:SetInt(player,"viaVipLv_CreateHero3",1)
			end
		end
	end
	if lualib:GetInt(player,"viaVipLv_CreateHero4") == 0 then
		if loginDaynum >= 5 then
			if lualib:CreateHeroForPlayer(player,heroTB[4].."��"..player_Name.."��",1,1, "","") then
				lualib:SetInt(player,"viaVipLv_CreateHero4",1)
			end
		end
	end
	
	return ""
end

------------����ս��-----------
function ActivateMars(player)
	if lualib:GetInt(player, "nameChanged_notrelogin") ~= 0 then
		lualib:SysPromptMsg(player, "���ոո����ɹ������ص���Ч�󼤻�ս��")
		return ""
	end
	local nowYb = lualib:GetIngot(player)
	if nowYb >= 8888 then
		if lualib:SubIngot(player, 8888 , "����ս��", "ս��ϵͳ") then
			lualib:SetInt(player,"is_Activate",1)
			local player_Name = lualib:Name(player)
			if  lualib:CreateHeroForPlayer(player,"�ȷ��񽫣�"..player_Name.."��",1,1, "","") then
				--lualib:SysMsg_SendBroadcastMsg("����Ӣ�۳ɹ�","ϵͳ")
			end  
			--********************************--
			local indexx = lualib:GetDBNum("consumeTerm")
			local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + 8888
			RecordTop10ConsumeInfo(player,totalYb)
			--********************************--   
		end
	else
		lualib:ShowFormWithContent(player, "�ű���", "MarsWnd.MsgBox()")
	end
	local param = lualib:GetInt(player,"is_Activate")
	lualib:ShowFormWithContent(player, "�ű���", "MarsWnd.SetParam(" .. param .. ");")
	return ""
end

----------����ʱ�ٻ�--------
function FirstCall(player)
	local i = 1
	local heros = lualib:GetPlayerHeroList(player)          --��ȡ���ӵ�е�Ӣ���б�
	for k = 1 , #heros do
		local a = heros[k]["name"]
		local ending = string.find(a, "��") - 1
		local heroName = string.sub(a, 1, ending)
		if heroName == "������" then
			i = k 
			break
		end
	end
	
	if tostring(heros[1]["guid"]) == "" or tostring(heros[1]["guid"]) == nil or tostring(heros[1]["guid"]) == 0 then
		lualib:SysPromptMsg(player,"���ص���Ϸ��")
		return ""
	end

	
	if lualib:GenHeroForPlayer(player,tostring(heros[1]["guid"]),"GenHeroResult",tostring(heros[1]["guid"])) then		
		lualib:SetInt(player,"defaultHero",1)   --��¼���һ�γɹ��ٻ���Ӣ��			
	end
	return ""
end


---------�ٻ�ս��----------
function CallMars(player,index)
	--lualib:SysPromptMsg(player, "index= "..index)
	local heroNameTB = {["1"]="������",["2"]="ʥ����",["3"]="ŭ����",["4"]="��Х��",["5"]="�ȷ���",}
	local i = 1
	local heros = lualib:GetPlayerHeroList(player)          --��ȡ���ӵ�е�Ӣ���б�

	for k = 1 , #heros do
		local a = heros[k]["name"]
		local ending = string.find(a, "��") - 1
		local heroName = string.sub(a, 1, ending)
-------------------------------------------------------------------------------
		--lualib:SysPromptMsg(player, "heroName"..k.."= "..heroName)
----------------------------------------------------------------------------------

		if heroName == heroNameTB[tostring(index)] then
			--lualib:SysPromptMsg(player, "matchingName= "..heroName)
			i = k 
			break
		end
	end
	
	if tostring(heros[i]["guid"]) == "" or tostring(heros[i]["guid"]) == nil or tostring(heros[i]["guid"]) == 0 then
		lualib:SysPromptMsg(player,"���ص���Ϸ��")
		return ""
	else
		--lualib:SysPromptMsg(player,"ssss")
	end
	
	

	local callnum  = lualib:GetInt(player,"callnumber")
	if callnum > 0 then
		DellOtherHero(player)                  --ɾ���Ѿ��ٻ���Ӣ��
		if lualib:GenHeroForPlayer(player,tostring(heros[i]["guid"]),"GenHeroResult",tostring(heros[i]["guid"])) then	
			--lualib:SysPromptMsg(player, "qwer")	
			lualib:SetInt(player,"defaultHero",tonumber(index))   --��¼���һ�γɹ��ٻ���Ӣ��			
			lualib:SetInt(player,"callnumber",callnum-1)
			--callnum = lualib:GetInt(player,"callnumber")
			lualib:ShowFormWithContent(player, "�ű���", "MarsWnd.CloseWnd();")
		else
			--lualib:SysPromptMsg(player,"2222222")
		end
	elseif callnum <= 0 and lualib:GetIngot(player) >= 88 then
		if lualib:SubIngot(player, 88 , "�ٻ�ս��", "ս��ϵͳ") then
			DellOtherHero(player)
			--lualib:SysPromptMsg(player, "qwert")	
			if lualib:GenHeroForPlayer(player,tostring(heros[i]["guid"]),"GenHeroResult",tostring(heros[i]["guid"])) then
				lualib:SetInt(player,"defaultHero",tonumber(index))   --��¼���һ�γɹ��ٻ���Ӣ��
				lualib:ShowFormWithContent(player, "�ű���", "MarsWnd.CloseWnd();")
			else
				--lualib:SysPromptMsg(player,"3333333")
			end
		end
	else
		lualib:ShowFormWithContent(player, "�ű���", "MarsWnd.WndMsg_up();")
	end
	
	lualib:ShowFormWithContent(player, "�ű���", "MarsWnd.ShowCallNum(" .. callnum .. ");")
	return ""

end

function HeroRelive(player)
	local index = lualib:GetInt(player, "defaultHero")
	local heroNameTB = {["1"]="������",["2"]="ʥ����",["3"]="ŭ����",["4"]="��Х��",["5"]="�ȷ���",}
	local i = 1
	local heros = lualib:GetPlayerHeroList(player)          --��ȡ���ӵ�е�Ӣ���б�
	for k = 1 , #heros do
		local a = heros[k]["name"]
		
		local ending = string.find(a, "��") - 1
		local heroName = string.sub(a, 1, ending)
		if heroName == heroNameTB[tostring(index)] then
			i = k
			break
		end
	end

	--DellOtherHero(player,heros[i]["guid"])
	if lualib:GenHeroForPlayer(player,tostring(heros[i]["guid"]),"GenHeroResult",tostring(heros[i]["guid"])) then	

	end
	return ""
end

function DellOtherHero(player)             --ɾ������Ӣ��
    local heros = lualib:GetPlayerCurrentHeroList(player)
	--lualib:SysPromptMsg(player, "��ǰӢ��������"tostring(#heros))
    for i = 1, #heros do
		if heros[i] ~= nil then
			--if heroGuid ~= heros[i] then
				lualib:DestroyDummy(heros[i])
			--end
		end
    end
    return ""
end


function GenHeroResult(player, err, heroGuid)
	--lualib:SysPromptMsg(player, "err:"..err)
	--lualib:SysPromptMsg(player, ""..lualib:Level(heroGuid))
	lualib:SendRoleHPNtf(heroGuid)
	lualib:AddTrigger(heroGuid, 317, "on_hero_die")
	lualib:AddTrigger(player, lua_trigger_post_die, "on_post_player_die")  --�����󴥷�
	--lualib:SetDynamicAttr(heroGuid, 2, 10, 0)
	--lualib:SetDynamicAttr(heroGuid, 3, 11, 0)
	local heroTotalItemTB = {                                                                 --�ȼ�,������
						["������"] = {"ս��ר��1","ս������ս��","","","",91,5000, "�����»��䵶"},
						["ʥ����"] = {"ս��ר��2","ս��ʥ��ս��","","","",92,7500, "ʥ���»��䵶"},
						["ŭ����"] = {"ս��ר��3","ս������ս��","","","",93,9800, "ŭ���»��䵶"},
						["��Х��"] = {"ս��ר��4","ս���������ս��","","","",94,11300, "��Х�»��䵶"},
						["�ȷ���"] = {"ս��ר��5","ս����������ս��","","","",95,13700, "�ȷ��»��䵶"}			
	}

	local a = lualib:Guid2Name(heroGuid)
	local ending = string.find(a,"��")-1
	local heroName = string.sub(a,1,ending)
	--lualib:SysPromptMsg(player, ""..heroName)
-------------------------------------------------------------------------------

----------------------------------------------------------------------------------	
	local heroSingleItemTB = heroTotalItemTB[heroName]
	if not lualib:SetHeroState(player,heroGuid,3) then
		--lualib:SysMsg_SendBroadcastMsg("state set failed?","sys")   --����Ӣ��ս��
	end
	--if lualib:GetInt(heroGuid,"getEquip") == 0 then
	lualib:ClearBag(heroGuid, false, true, false, false, "�����:ԭ��", "������")
		lualib:SetInt(heroGuid,"getEquip",1)
		for i = 1 , 2 do
			lualib:AddItem(heroGuid,heroSingleItemTB[i],1,true,"mars","mars")
		end
	--end
	if not lualib:HasSkill(heroGuid, heroSingleItemTB[8], false) then --ѧϰ����
		lualib:AddSkill(heroGuid, heroSingleItemTB[8])
	end
	lualib:SetLevel(heroGuid, tonumber(heroSingleItemTB[6]))   --����Ӣ�۵ȼ�
	for i = 1 , 2 do
		lualib:ApplyEquipEx(heroGuid,heroSingleItemTB[i])
	end
	
	--[[local marsAtk_low = lualib:PhyAtk(heroGuid, false)  --Ӣ���﹥����
	local marsAtk_hei = lualib:PhyAtk(heroGuid, true)  --Ӣ���﹥����
	local playerAtk_hei = 0
	local playerAtk_low = 0
	local playerJob = lualib:Job(player)
	if playerJob == 1 then 
		playerAtk_hei = lualib:PhyAtk(player, true) --����﹥����
		playerAtk_low = lualib:PhyAtk(player, false) --����﹥����
	elseif playerJob == 2 then
		playerAtk_hei = lualib:MagAtk(player, true) --���ħ������
		playerAtk_low = lualib:MagAtk(player, false) --���ħ������
	elseif playerJob == 3 then
		playerAtk_hei = lualib:TaoAtk(player, true) --��ҵ�������
		playerAtk_low = lualib:TaoAtk(player, false) --��ҵ�������
	end
	

	if playerAtk_hei >= heroSingleItemTB[7] then
		playerAtk_hei = heroSingleItemTB[7]
	end
	if playerAtk_low >= heroSingleItemTB[7] then
		playerAtk_low = heroSingleItemTB[7]
	end
	local a = playerAtk_hei - marsAtk_hei
	local b = playerAtk_low - marsAtk_low --]]
	
	--lualib:SetDynamicAttr(heroGuid, 2, 10, tonumber(a))
	--lualib:SetDynamicAttr(heroGuid, 3, 11, tonumber(b))
	return ""

end

function on_hero_die(heroGuid)
    lualib:DestroyDummy(heroGuid)
	return ""
end

function on_post_player_die(player, killer)
	local heros = lualib:GetPlayerCurrentHeroList(player)   --��������ٻ�Ӣ��
	if #heros ~= 0 then
		lualib:DestroyDummy(heros[1])
	end	
	return ""
end

