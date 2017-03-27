---���������������������������ļ��������и��ģ�����������������������������
--��1Ů2��ս1��2��3
--[[HeadImageList = {
	{
		1800500231,
		1800500232,
		1800500233
	},
	--1802700051
	{
		1800500234,
		1800500235,
		1800500236
	}
}--]]

HeadImageList = {
	{
		1805800001,
		1805800002,
		1805800003
	},
	--1802700051
	{
		1805800004,
		1805800005,
		1805800006
	}
}

HalfImageList = {
	{
		1804400035,
		1804400037,
		1804400039
	},
	{
		1804400036,
		1804400038,
		1804400040
	}
}
TeamImageList = {
	{
		1807300006,
		1807300007,
		1807300008
	},
	{
		1807300009,
		1807300010,
		1807300011
	}
}
function GetHeadImageID(Job,Sex) 
	Job = as3.tolua(Job)
	Sex = as3.tolua(Sex)
	return HeadImageList[Sex][Job]
end
function GetHalfImageID(Job,Sex) 
	Job = as3.tolua(Job)
	Sex = as3.tolua(Sex)
	return HalfImageList[Sex][Job]
end
function GetTeamImageID(Job,Sex) 
	Job = as3.tolua(Job)
	Sex = as3.tolua(Sex)
	return TeamImageList[Sex][Job]
end
function OnPlayerAddBuff()
    if UserOnPlayerAddBuff == nil then 
        UI:Lua_InitChannelTextColor(0, 10, 90, 0, 255);
        UI:Lua_InitChannelFillBackColor(0, 0, 0, 0, 0);
        local BuffID = tonumber(as3.tolua(LuaParam[1]))
        local BuffLife = as3.tolua(LuaParam[2])
        if BuffID > 1018 and BuffID < 1023 then
            local message = "̫����������Ч���������"..BuffLife.."��"
            UI:Lua_ShowTypeMsg(4, message)
        end 

        if BuffID == 36 or BuffID == 37 or BuffID == 38 or BuffID == 103 then
            local message = "�����������"..BuffLife.."��"
            UI:Lua_ShowTypeMsg(4, message)
        end 

        if BuffID == 33 or BuffID == 34 or BuffID == 35 or BuffID == 102 then
            local message = "ħ����������"..BuffLife.."��"
            UI:Lua_ShowTypeMsg(4, message)
        end 
    else
        UserOnPlayerAddBuff()
    end
end

function OnHeroAddBuff()
    if UserOnHeroAddBuff == nil then 
        UI:Lua_InitChannelTextColor(0, 10, 90, 0, 255);
        UI:Lua_InitChannelFillBackColor(0, 0, 0, 0, 0);
        local BuffID = tonumber(as3.tolua(LuaParam[1]))
        local BuffLife = as3.tolua(LuaParam[2])
        if BuffID > 1018 and BuffID < 1023 then
            local message = "Ӣ�ۣ�̫����������Ч���������"..BuffLife.."��"
           -- UI:Lua_ShowTypeMsg(4, message)
        end 


        if BuffID == 36 or BuffID == 37 or BuffID == 38 or BuffID == 103 then
            local message = "Ӣ�ۣ������������"..BuffLife.."��"
            --UI:Lua_ShowTypeMsg(4, message)
        end 

        if BuffID == 33 or BuffID == 34 or BuffID == 35 or BuffID == 102 then
            local message = "Ӣ�ۣ�ħ����������"..BuffLife.."��"
           -- UI:Lua_ShowTypeMsg(4, message)
        end 
    else
        UserOnHeroAddBuff()
    end
end





function OnPlayerDestoryBuff()
    if UserOnPlayerDestoryBuff == nil then 
        UI:Lua_InitChannelTextColor(0, 10, 90, 0, 255);
        UI:Lua_InitChannelFillBackColor(0, 0, 0, 0, 0);

        local BuffID = tonumber(as3.tolua(LuaParam[1]))
        if BuffID > 1018 and BuffID < 1023 then
            local message = "̫����������ʧ�������ָ�����"
            UI:Lua_ShowTypeMsg(4,message)
        end 

        if BuffID == 36 or BuffID == 37 or BuffID == 38 or BuffID == 103 then
            local message = "��������ָ�����"
            UI:Lua_ShowTypeMsg(4, message)
        end 

        if BuffID == 33 or BuffID == 34 or BuffID == 35 or BuffID == 102 then
            local message = "ħ�������ָ�����"
            UI:Lua_ShowTypeMsg(4, message)
        end 
    else
        UserOnPlayerDestoryBuff()
    end    
end

function OnHeroDestoryBuff()
    if UserOnHeroDestoryBuff == nil then 
        UI:Lua_InitChannelTextColor(0, 10, 90, 0, 255);
        UI:Lua_InitChannelFillBackColor(0, 0, 0, 0, 0);

        local BuffID = tonumber(as3.tolua(LuaParam[1]))
        if BuffID > 1018 and BuffID < 1023 then
            local message = "Ӣ�ۣ�̫����������ʧ�������ָ�����"
           -- UI:Lua_ShowTypeMsg(4,message)
        end 

        if BuffID == 36 or BuffID == 37 or BuffID == 38 or BuffID == 103 then
            local message = "Ӣ�ۣ���������ָ�����"
          --  UI:Lua_ShowTypeMsg(4, message)
        end 

        if BuffID == 33 or BuffID == 34 or BuffID == 35 or BuffID == 102 then
            local message = "Ӣ�ۣ�ħ�������ָ�����"
           -- UI:Lua_ShowTypeMsg(4, message)
        end 
    else
        UserOnHeroDestoryBuff()
    end
end


function OnHeroStateChange()
    if UserOnHeroStateChange == nil then 
        local State = tonumber(as3.tolua(LuaParam[1]))
    --[[    if State == 0 then
            UI:Lua_ShowTypeMsg(1, "(Ӣ��) ״̬: ��Ϣ")
        end

        if State == 2 then
            UI:Lua_ShowTypeMsg(1, "(Ӣ��) ״̬: ����")
        end

        if State == 3 then
            UI:Lua_ShowTypeMsg(1, "(Ӣ��) ״̬: ս��")
        end--]]

        if State == 4 then
            local XPos = as3.tolua(LuaParam[2])
            local YPos = as3.tolua(LuaParam[3])
            local Message = "Ӣ��Ϊ����״̬, �ػ�����Ϊ"..XPos.." "..YPos
            UI:Lua_ShowTypeMsg(1, Message)
        end
    else 
        UserOnHeroStateChange()
    end
end



function OnPlayerItemAdd()
    if UserOnPlayerItemAdd == nil then 
        local ItemName = as3.tolua(LuaParam[1])
        local Message = ItemName.."������"
        UI:Lua_ShowTypeMsg(2, Message)
    else
        UserOnPlayerItemAdd()
    end
end


function OnHeroItemAdd()
    if UserOnHeroItemAdd == nil then 
        local ItemName = as3.tolua(LuaParam[1])
        local Message = "Ӣ�ۣ�"..ItemName.."������"
        --UI:Lua_ShowTypeMsg(2, Message)
    else
        UserOnHeroItemAdd()
    end
end

function OnPlayerAttrRefChange()
    if UserOnPlayerAttrRefChange == nil then 
        local Info = as3.tolua(LuaParam[1])
        local AttrType = tonumber(as3.tolua(LuaParam[2]))
        local ChangeType = tonumber(as3.tolua(LuaParam[3]))
        local AttrName = GetAttrRefName(AttrType)

        local Message
        if ChangeType > 0 then
            Message = AttrName.."����"..Info
        else
			Info = 0 - tonumber(Info)
            Message = AttrName.."����"..Info
        end
        UI:Lua_ShowTypeMsg(2, Message)
    else
        UserOnPlayerAttrRefChange()
    end
end

function OnHeroAttrRefChange()
    if UserOnHeroAttrRefChange == nil then 
        local Info = as3.tolua(LuaParam[1])
        local AttrType = tonumber(as3.tolua(LuaParam[2]))
        local ChangeType = tonumber(as3.tolua(LuaParam[3]))
        local AttrName = GetAttrRefName(AttrType)

        local Message
        if ChangeType > 0 then
            Message = "Ӣ�ۣ�"..AttrName.."����"..Info
        else
            Message = "Ӣ�ۣ�"..AttrName.."����"..Info
        end
       -- UI:Lua_ShowTypeMsg(2, Message)
    else
        UserOnHeroAttrRefChange()
    end
end


-- enum role_attr_ext
-- {
--     role_exp = 0,           /// ����
--     role_ingot,             /// Ԫ��      
--     role_bind_ingot,        /// ��Ԫ��     
--     role_integral,          /// ����   
--     role_gold,              /// ���      
--     role_bind_gold,         /// �󶨽��
--     role_gold_deposit,      /// �ֿ���
--     role_attr_ext_max,
-- };

function GetAttrRefName(AttrType)
    if AttrType == 0 then
        return "����"
    elseif AttrType == 1 then
        return "Ԫ��"
    elseif AttrType == 2 then
        return "��Ԫ��"    
    elseif AttrType == 3 then
        return "����"    
    elseif AttrType == 4 then
        return "���"    
    elseif AttrType == 5 then
        return "�󶨽��"    
    elseif AttrType == 6 then
        return "�ֿ���"
    else
        return "δ֪����"
    end
end

function OnPlayerErrorCode()
   --[[ if UserOnPlayerErrorCode == nil then 
        local Code = tonumber(as3.tolua(LuaParam[1]))
        if Code == 1116 then
            --UI:Lua_ShowTypeMsg(1, "[����ն׼��������]")
        elseif Code == 1117 then
            --UI:Lua_ShowTypeMsg(1, "[����ն��ʧ]")
		elseif Code == 1001 then
            UI:Lua_ShowTypeMsg(4, "[��������]")
        end
    else
        UserOnPlayerErrorCode()
    end--]]
	local Code = tonumber(as3.tolua(LuaParam[1]))
    if Code == 3001 then
        luaMsgBox.new("Ԫ��", "�ܱ�Ǹ������Ԫ������", {"ǰ����ֵ", "ȡ��"}, {"MsgBoxBill", "MsgBoxOut"}, "")
	elseif Code == 1001 then
		--GameMainBar.PackageIsFull()
        --UI:Lua_ShowTypeMsg(4, "[��������]")
    end
end

function MsgBoxBill(h)
	CLOpenUrlUseIEByType(3)
	luaWndClose(h)
end

function MsgBoxOut(h)
	luaWndClose(h)
end

function OnHeroErrorCode()
    if UserOnHeroErrorCode == nil then 
        local Code = tonumber(as3.tolua(LuaParam[1]))
        if Code == 1116 then
            --UI:Lua_ShowTypeMsg(1, "Ӣ��[����ն׼��������]")
        elseif Code == 1117 then
            --UI:Lua_ShowTypeMsg(1, "Ӣ��[����ն��ʧ]")
        end
    else
        UserOnHeroErrorCode()
    end
end


function OnPlayerShieldRemove()
    if UserOnPlayerShieldRemove == nil then 
        UI:Lua_ShowTypeMsg(1, "�������������")
    else
        UserOnPlayerShieldRemove()
    end
end


function OnPlayerShieldRemove()
    if UserOnPlayerShieldRemove == nil then 
        UI:Lua_ShowTypeMsg(1, "�������������")
    else
        UserOnPlayerShieldRemove()
    end
end

function OnPlayerInAthleticsRegion()
    if UserOnPlayerInAthleticsRegion == nil then 
        UI:Lua_ShowTypeMsg(1, "���Ѿ����빥�����򣬸������л���������Ҳ�����PKֵ��")
    else
        UserOnPlayerInAthleticsRegion()
    end
end

function OnPlayerOutAthleticsRegion()
    if UserOnPlayerOutAthleticsRegion == nil then 
        UI:Lua_ShowTypeMsg(1, "���Ѿ��뿪�������򣬻���������һ�����PKֵ��")
    else
        UserOnPlayerOutAthleticsRegion()
    end
end

function PackageIsFullTip()
	local count = as3.tolua(LuaParam[1])
	local tolCount = as3.tolua(LuaParam[2])
	if count == tolCount then
		local handle = GetWindow(GameMainBar._wnd, "EmptyPackage2")
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
			GUIWndMoveToParentTop(handle)
		end
	else
		local handle = GetWindow(GameMainBar._wnd, "EmptyPackage2")
		if handle ~= 0 then
			GUIWndSetVisible(handle, false)
		end
	end
end

--RegisterUIEvent(LUA_EVENT_HERO_CHANGESTATE, EVENT_DEFAULT_TAG, OnHeroStateChange)
RegisterUIEvent(LUA_EVENT_PLAYERADDBUFF, EVENT_DEFAULT_TAG, OnPlayerAddBuff)
RegisterUIEvent(LUA_EVENT_PLAYERDESTORYBUFF, EVENT_DEFAULT_TAG, OnPlayerDestoryBuff)
RegisterUIEvent(LUA_EVENT_HEROADDBUFF, EVENT_DEFAULT_TAG, OnHeroAddBuff)
RegisterUIEvent(LUA_EVENT_HERODESTORYBUFF, EVENT_DEFAULT_TAG, OnHeroDestoryBuff)
RegisterUIEvent(LUA_EVENT_ONADDITEM, EVENT_DEFAULT_TAG, OnPlayerItemAdd)
RegisterUIEvent(LUA_EVENT_ONHEROADDITEM, EVENT_DEFAULT_TAG, OnHeroItemAdd)
RegisterUIEvent(LUA_EVENT_PLAYERATTREXTREF, EVENT_DEFAULT_TAG, OnPlayerAttrRefChange)
RegisterUIEvent(LUA_EVENT_HEROATTREXTREF, EVENT_DEFAULT_TAG, OnHeroAttrRefChange)
RegisterUIEvent(LUA_EVENT_PLAYERERRORCODE, EVENT_DEFAULT_TAG, OnPlayerErrorCode)
RegisterUIEvent(LUA_EVENT_HEROERRORCODE, EVENT_DEFAULT_TAG, OnHeroErrorCode)
RegisterUIEvent(LUA_EVENT_SHIELDREMOVE, EVENT_DEFAULT_TAG, OnPlayerShieldRemove)
RegisterUIEvent(LUA_EVENT_INATHLETICSREGION, EVENT_DEFAULT_TAG, OnPlayerInAthleticsRegion)
RegisterUIEvent(LUA_EVENT_OUTATHLETICSREGION, EVENT_DEFAULT_TAG, OnPlayerOutAthleticsRegion)
RegisterUIEvent(LUA_EVENT_PACKAGECOUNT, "PACKAGECOUNTCHANGE", PackageIsFullTip)

atk_mode_all      = 0
atk_mode_peace    = 1
atk_mode_team     = 2
atk_mode_guild    = 3
atk_mode_pk       = 4
atk_mode_alliance = 5
atk_mode_camp     = 6



function OnSetAttacMode(_SetAttackMode,_CurrenAttackMode)

    if UserOnSetAttacMode == nil then 
        UI:Lua_InitChannelTextColor(0, 41, 170, 66, 255);
        UI:Lua_InitChannelFillBackColor(0, 0, 0, 0, 0);
        if _CurrenAttackMode == 0xFF then
            local _Message = "��ǰ����ģʽ��"
            if _SetAttackMode == atk_mode_all then
                _Message = _Message.."ȫ��ģʽ"
            elseif _SetAttackMode == atk_mode_peace then
                _Message = _Message.."��ƽģʽ"
            elseif _SetAttackMode == atk_mode_team then
                _Message = _Message.."���ģʽ"
            elseif _SetAttackMode == atk_mode_guild then
                _Message = _Message.."�л�ģʽ"
            elseif _SetAttackMode == atk_mode_pk then
                _Message = _Message.."�ƶ�ģʽ"
            elseif _SetAttackMode == atk_mode_alliance then
                _Message = _Message.."����ģʽ"
            elseif _SetAttackMode == atk_mode_camp then
                _Message = _Message.."��Ӫģʽ"
            end
            UI:Lua_ShowTypeMsg(4, _Message)
            UI:Lua_ShowTypeMsg(4, "[��CTRL+H���Ĺ���ģʽ]")
        else
            if _SetAttackMode == atk_mode_all then
                UI:Lua_ShowTypeMsg(4, "[����ģʽ:ȫ��ģʽ]")
            elseif _SetAttackMode == atk_mode_peace then
                UI:Lua_ShowTypeMsg(4, "[����ģʽ:��ƽģʽ]")
            elseif _SetAttackMode == atk_mode_team then
                UI:Lua_ShowTypeMsg(4, "[����ģʽ:���ģʽ]")
            elseif _SetAttackMode == atk_mode_guild then
                UI:Lua_ShowTypeMsg(4, "[����ģʽ:�л�ģʽ]")
            elseif _SetAttackMode == atk_mode_pk then
                UI:Lua_ShowTypeMsg(4, "[����ģʽ:�ƶ�ģʽ]")
            elseif _SetAttackMode == atk_mode_alliance then
                UI:Lua_ShowTypeMsg(4, "[����ģʽ:����ģʽ]")
            elseif _SetAttackMode == atk_mode_camp then
                UI:Lua_ShowTypeMsg(4, "[����ģʽ:��Ӫģʽ]")
            end
        end 
    else
        UserOnSetAttacMode(_SetAttackMode,_CurrenAttackMode)
    end    
end

function GetNextAttacModeBtnText(_CurrenAttackMode)
    if UserGetNextAttacModeBtnText == nil then
        if _CurrenAttackMode == atk_mode_all then
            return atk_mode_peace
        elseif _CurrenAttackMode == atk_mode_peace then
            return atk_mode_pk
        elseif _CurrenAttackMode == atk_mode_team then
            return atk_mode_guild
        elseif _CurrenAttackMode == atk_mode_guild then
            return atk_mode_alliance
        elseif _CurrenAttackMode == atk_mode_pk then
            return atk_mode_team
        elseif _CurrenAttackMode == atk_mode_alliance then
            return atk_mode_camp
        elseif _CurrenAttackMode == atk_mode_camp then
            return atk_mode_all
        end
        return atk_mode_all
    else
        return UserGetNextAttacModeBtnText(_CurrenAttackMode)
    end
end



function GetAttacModeBtnText(_CurrenAttackMode)
    if UserGetAttacModeBtnText == nil then
        if _CurrenAttackMode == atk_mode_all then
            return "[����ģʽ:ȫ��ģʽ]"
        elseif _CurrenAttackMode == atk_mode_peace then
            return "[����ģʽ:��ƽģʽ]"
        elseif _CurrenAttackMode == atk_mode_team then
            return "[����ģʽ:���ģʽ]"
        elseif _CurrenAttackMode == atk_mode_guild then
            return "[����ģʽ:�л�ģʽ]"
        elseif _CurrenAttackMode == atk_mode_pk then
            return "[����ģʽ:�ƶ�ģʽ]"
        elseif _CurrenAttackMode == atk_mode_alliance then
            return "[����ģʽ:����ģʽ]"
        elseif _CurrenAttackMode == atk_mode_camp then
            return "[����ģʽ:��Ӫģʽ]"
        end
        return ""
    else
        return UserGetAttacModeBtnText(_CurrenAttackMode)
    end
end



POS_CHANGEGUI = {
    "GUI_3",
    "Pakage",
    "Role",
    "Skill",
    "Task",
    "PlayerWeight",
    "QuiteToLogin",
    "Quite",
    "Shop",
    "HeroList",
    "HeroPkg",
    "HeroProp",
    "HeroSkill",
    "SummonHero",
    "PkgLeftCount",
    "AttackMode",
    "PlayerLevelEdit",
    "PlayerEXP",
    "Angry",
    "Sound",
    "MuteEdit",
    "PlayerWeightEffect",
    "AngryMagic"
}

function GetPosChangeUIID(Index)
    if USER_POS_CHANGEGUI == nil then
        if POS_CHANGEGUI[Index] ~= nil then
            return POS_CHANGEGUI[Index]
        end        
    else
        if USER_POS_CHANGEGUI[Index] ~= nil then
            return USER_POS_CHANGEGUI[Index]
        end        
    end
    return ""
end

function GetPosChangeUICount()
    return 23
end


function OnLuaBrokenEquiment()
    local _GetData = as3.tolua(UI:Lua_GetBrokenEquiment())
    if _GetData then
       local _BrokenCount = 0 
       _BrokenCount = tonumber(as3.tolua(LuaRet[1]))
       for i = 1, _BrokenCount do
            local _HintMessage = as3.tolua(LuaRet[i + 1])
            UI:Lua_ShowTypeMsg(1, "װ���;ò���  ".._HintMessage)
       end
    end
end

function OnAutoMoveItemFaild()
    if UserOnAutoMoveItemFaild == nil then
        UI:Lua_ShowTypeMsg(1, "ȱ����ң����Ʒ���޷�����")
    else
        return UserOnAutoMoveItemFaild()
    end    
end




function OnMainUIInit()
    if UserInit == nil then
        UI:Lua_GetWindow("GameMainInterface,EquimentNoticWindow")
        UI:Lua_WndSetPosM(20,120)
        UI:Lua_SetDownLoadMessageInfo(50, 60, "GREENG")
        --UI:Lua_AddDelayTask("OnLuaBrokenEquiment()", 30000, 0)
    else
        UserInit()
    end
end
--RegisterUIEvent(LUA_EVENT_INITRESCOMPLETE, "MainInti", OnMainUIInit)


function OnSwitchSkillActive()
    if UserOnSwitchSkillActive == nil then
        local SkillType = tonumber(as3.tolua(LuaParam[1]))
        local Active = tonumber(as3.tolua(LuaParam[2]))
        local SkillName = ""

        if SkillType == 2 then
            SkillName = "����ն"
        elseif SkillType == 3 then
            SkillName = "��̽���"
        elseif SkillType == 4 then
            SkillName = "�»��䵶"
        end


        local SkillActive = "����"
        if Active == 0 then
            SkillActive = "�ر�"
        end

        UI:Lua_ShowTypeMsg(1, SkillActive..SkillName)
    else
        UserOnSwitchSkillActive()
    end
end
RegisterUIEvent(LUA_EVENT_SWITICHSKILLACTIVE, EVENT_DEFAULT_TAG, OnSwitchSkillActive)

function OnStallSell()
    if UserOnStallSell == nil then
        local _PlayerName = as3.tolua(LuaParam[1])
        local _ItemCount = as3.tolua(LuaParam[2])
        local _ItemName = as3.tolua(LuaParam[3])
        _MessageString = _PlayerName.."����".._ItemCount.."��".._ItemName
        UI:Lua_ShowTypeMsg(1, _MessageString)
    else
        UserOnStallSell()
    end
end
RegisterUIEvent(LUA_EVENT_STALLSELL, EVENT_DEFAULT_TAG, OnStallSell)


function OnReciveChatMessage(_SenderName, _MessageText, _IsPlayerSelf)
    if UserOnReciveChatMessage == nil then
        if _IsPlayerSelf then
            return _MessageText
        else
            return _MessageText
        end         
    else
        return UserOnReciveChatMessage(_SenderName, _MessageText, _IsPlayerSelf)
    end
end



function DrawBrokenEquimentHint()
    if UserDrawBrokenEquimentHint == nil then
        local _BrokenCount = tonumber(as3.tolua(CL:GetBrokenEquiment()))
        if _BrokenCount > 0 then
            local _CurYPos = 0;
            for i = 1, _BrokenCount do
                local _HintString = as3.tolua(LuaRet[i][1])
                local _Color = as3.tolua(LuaRet[i][2])
                CL:TextOut(0, _CurYPos, _HintString, _Color)
                _CurYPos = _CurYPos + 14
            end
        end
    else
        UserDrawBrokenEquimentHint()
    end
end


function OnCustomDataLoad()
    if UserOnCustomDataLoad == nil then
        if as3.tolua(CL:GetPlayerCustomData("AutoKaiTian")) then
            local _AutoKaiTian = tonumber(as3.tolua(LuaRet))
            if _AutoKaiTian ~= 0 then
                CL:AddAttackAutoUseSkill(1060)
            end
        end
    else
        UserOnCustomDataLoad()
    end
end

function getTable(op)
	if type(op)=="table" then
		return op
	else
		local tb={}
		local b=true
		local len=1
		while(b)
		do
			if as3.tolua(op[len])==nil then
				b=false
				return tb
			else
				tb[len]=as3.tolua(op[len])
				len=len+1
			end
		end
	end
end

function LeaveCurrentPage()
	local constVar1 = 6				--BOSS����ʣ�������
	local constVar2 = 12			--���ϸ���ʣ�������
	CL:GetPlayerSelfProperty32(201)
	local lv = as3.tolua(LuaRet)
	if type(lv) ~= "number" then
		return "�����ղػ�����΢�ˣ������´μ�����Ϸ"
	end
	if lv >= 4 then
		constVar2 = 18
	end
	local constVar3 = 3				--��ħ����ʣ�����
	local constVar4 = 0				--��ħ����ʣ�������
	local constVar5 = 5				--�ڿ�
	
	local dailyFbArr = {"62�����鸱��","63����ë����","64�����Ƹ���","65�����鸱��","65�����鸱��","67����ʯ����"}
	if CLGetPlayerSelfPropBase(ROLE_PROP_ROLEID) then
		for i = 5, 10 do
			constVar1 = constVar1 - CLGetPlayerCustomIntData(as3.tolua(LuaRet),"qianwang"..i)
		end
		for i = 1, #dailyFbArr do
			constVar2 = constVar2 - CLGetPlayerCustomIntData(as3.tolua(LuaRet),dailyFbArr[i])
		end
		constVar3 = constVar3 - CLGetPlayerCustomIntData(as3.tolua(LuaRet),"fengmo_count")
		constVar4 = CLGetPlayerCustomIntData(as3.tolua(LuaRet),"cmDayNum")
		local str = "����������δ���\n".."\nBOSS����ʣ�������"..constVar1.."\n���ϸ���ʣ�������"..constVar2.."\n��ħ����ʣ�������"
		..constVar3.."\n��ħ����ʣ�������"..constVar4.."\n\n���뿪��Ϸ����ʧ����������"
		return str
	else
		return "�����ղػ�����΢�ˣ������´μ�����Ϸ"
	end

	--[[local str = "������ҳ����Ϣ��\n".."\n����;����ʾ��".."\n����������δ���\n".."\nBOSS����ʣ�������"..constVar1.."\n���ϸ���ʣ�������"..constVar2.."\n��ħ����ʣ�������"
		..constVar3.."\n��ħ����ʣ�������"..constVar4.."\n�����ڿ�ʣ�������"..constVar5.."\n\n���뿪��Ϸ����ʧ����������"--]]
	
end

RegisterUIEvent(LUA_EVENT_CUSTOMDATALOAD, EVENT_DEFAULT_TAG, OnCustomDataLoad)