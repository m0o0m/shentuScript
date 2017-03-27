---！！！！！！！！！！！！此文件不可自行更改！！！！！！！！！！！！！！！
function OnPlayerAddBuff()
    if UserOnPlayerAddBuff == nil then 
        UI:Lua_InitChannelTextColor(0, 10, 90, 0, 255);
        UI:Lua_InitChannelFillBackColor(0, 0, 0, 0, 0);
        local BuffID = LuaParam[1]
        local BuffLife = LuaParam[2]
        if BuffID > 1018 and BuffID < 1023 then
            local message = "太极玄清术生效：道术提高"..BuffLife.."秒"
            UI:Lua_ShowTypeMsg(4, message)
        end 

        if BuffID == 36 or BuffID == 37 or BuffID == 38 or BuffID == 103 then
            local message = "物理防御增加"..BuffLife.."秒"
            UI:Lua_ShowTypeMsg(4, message)
        end 

        if BuffID == 33 or BuffID == 34 or BuffID == 35 or BuffID == 102 then
            local message = "魔法防御增加"..BuffLife.."秒"
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
        local BuffID = LuaParam[1]
        local BuffLife = LuaParam[2]
        if BuffID > 1018 and BuffID < 1023 then
            local message = "英雄：太极玄清术生效：道术提高"..BuffLife.."秒"
            UI:Lua_ShowTypeMsg(4, message)
        end 


        if BuffID == 36 or BuffID == 37 or BuffID == 38 or BuffID == 103 then
            local message = "英雄：物理防御增加"..BuffLife.."秒"
            UI:Lua_ShowTypeMsg(4, message)
        end 

        if BuffID == 33 or BuffID == 34 or BuffID == 35 or BuffID == 102 then
            local message = "英雄：魔法防御增加"..BuffLife.."秒"
            UI:Lua_ShowTypeMsg(4, message)
        end 
    else
        UserOnHeroAddBuff()
    end
end

function OnPlayerDestoryBuff()
    if UserOnPlayerDestoryBuff == nil then 
        UI:Lua_InitChannelTextColor(0, 10, 90, 0, 255);
        UI:Lua_InitChannelFillBackColor(0, 0, 0, 0, 0);

        local BuffID = LuaParam[1]
        if BuffID > 1018 and BuffID < 1023 then
            local message = "太极玄清术消失：道术恢复正常"
            UI:Lua_ShowTypeMsg(4,message)
        end 

        if BuffID == 36 or BuffID == 37 or BuffID == 38 or BuffID == 103 then
            local message = "物理防御恢复正常"
            UI:Lua_ShowTypeMsg(4, message)
        end 

        if BuffID == 33 or BuffID == 34 or BuffID == 35 or BuffID == 102 then
            local message = "魔法防御恢复正常"
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

        local BuffID = LuaParam[1]
        if BuffID > 1018 and BuffID < 1023 then
            local message = "英雄：太极玄清术消失：道术恢复正常"
            UI:Lua_ShowTypeMsg(4,message)
        end 

        if BuffID == 36 or BuffID == 37 or BuffID == 38 or BuffID == 103 then
            local message = "英雄：物理防御恢复正常"
            UI:Lua_ShowTypeMsg(4, message)
        end 

        if BuffID == 33 or BuffID == 34 or BuffID == 35 or BuffID == 102 then
            local message = "英雄：魔法防御恢复正常"
            UI:Lua_ShowTypeMsg(4, message)
        end 
    else
        UserOnHeroDestoryBuff()
    end
end


function OnHeroStateChange()
    if UserOnHeroStateChange == nil then 
        local State = LuaParam[1]
        if State == 0 then
            UI:Lua_ShowTypeMsg(1, "(英雄) 状态: 休息")
        end

        if State == 2 then
            UI:Lua_ShowTypeMsg(1, "(英雄) 状态: 跟随")
        end

        if State == 3 then
            UI:Lua_ShowTypeMsg(1, "(英雄) 状态: 战斗")
        end

        if State == 4 then
            local XPos = LuaParam[2]
            local YPos = LuaParam[3]
            local Message = "英雄为保护状态, 守护坐标为"..XPos.." "..YPos
            UI:Lua_ShowTypeMsg(1, Message)
        end
    else 
        UserOnHeroStateChange()
    end
end



function OnPlayerItemAdd()
    if UserOnPlayerItemAdd == nil then 
        local ItemName = LuaParam[1]
        local Message = ItemName.."被发现"
        UI:Lua_ShowTypeMsg(2, Message)
    else
        UserOnPlayerItemAdd()
    end
end


function OnHeroItemAdd()
    if UserOnHeroItemAdd == nil then 
        local ItemName = LuaParam[1]
        local Message = "英雄："..ItemName.."被发现"
        UI:Lua_ShowTypeMsg(2, Message)
    else
        UserOnHeroItemAdd()
    end
end

function OnPlayerAttrRefChange()
    if UserOnPlayerAttrRefChange == nil then 
        local Info = LuaParam[1]
        local AttrType = LuaParam[2]
        local ChangeType = LuaParam[3]
        local AttrName = GetAttrRefName(AttrType)

        local Message
        if ChangeType > 0 then
            Message = AttrName.."增加"..Info
        else
            Message = AttrName.."减少"..Info
        end
        UI:Lua_ShowTypeMsg(2, Message)
    else
        UserOnPlayerAttrRefChange()
    end
end

function OnHeroAttrRefChange()
    if UserOnHeroAttrRefChange == nil then 
        local Info = LuaParam[1]
        local AttrType = LuaParam[2]
        local ChangeType = LuaParam[3]
        local AttrName = GetAttrRefName(AttrType)

        local Message
        if ChangeType > 0 then
            Message = "英雄："..AttrName.."增加"..Info
        else
            Message = "英雄："..AttrName.."减少"..Info
        end
        UI:Lua_ShowTypeMsg(2, Message)
    else
        UserOnHeroAttrRefChange()
    end
end


-- enum role_attr_ext
-- {
--     role_exp = 0,           /// 经验
--     role_ingot,             /// 元宝      
--     role_bind_ingot,        /// 绑定元宝     
--     role_integral,          /// 积分   
--     role_gold,              /// 金币      
--     role_bind_gold,         /// 绑定金币
--     role_gold_deposit,      /// 仓库金币
--     role_attr_ext_max,
-- };

function GetAttrRefName(AttrType)
    if AttrType == 0 then
        return "经验"
    elseif AttrType == 1 then
        return "元宝"
    elseif AttrType == 2 then
        return "绑定元宝"    
    elseif AttrType == 3 then
        return "积分"    
    elseif AttrType == 4 then
        return "金币"    
    elseif AttrType == 5 then
        return "绑定金币"    
    elseif AttrType == 6 then
        return "仓库金币"
    else
        return "未知属性"
    end
end

function OnPlayerErrorCode()
    if UserOnPlayerErrorCode == nil then 
        local Code = LuaParam[1]
        if Code == 1116 then
            UI:Lua_ShowTypeMsg(1, "[烈焰斩准备就绪！]")
        elseif Code == 1117 then
            UI:Lua_ShowTypeMsg(1, "[烈焰斩消失]")
        end
    else
        UserOnPlayerErrorCode()
    end
end

function OnHeroErrorCode()
    if UserOnHeroErrorCode == nil then 
        local Code = LuaParam[1]
        if Code == 1116 then
            UI:Lua_ShowTypeMsg(1, "英雄[烈焰斩准备就绪！]")
        elseif Code == 1117 then
            UI:Lua_ShowTypeMsg(1, "英雄[烈焰斩消失]")
        end
    else
        UserOnHeroErrorCode()
    end
end


function OnPlayerShieldRemove()
    if UserOnPlayerShieldRemove == nil then 
        UI:Lua_ShowTypeMsg(1, "护体神盾已破碎")
    else
        UserOnPlayerShieldRemove()
    end
end


function OnPlayerShieldRemove()
    if UserOnPlayerShieldRemove == nil then 
        UI:Lua_ShowTypeMsg(1, "护体神盾已破碎")
    else
        UserOnPlayerShieldRemove()
    end
end

function OnPlayerInAthleticsRegion()
    if UserOnPlayerInAthleticsRegion == nil then 
        UI:Lua_ShowTypeMsg(1, "你已经进入攻城区域，该区域中击败其他玩家不增加PK值！")
    else
        UserOnPlayerInAthleticsRegion()
    end
end

function OnPlayerOutAthleticsRegion()
    if UserOnPlayerOutAthleticsRegion == nil then 
        UI:Lua_ShowTypeMsg(1, "你已经离开攻城区域，击败其他玩家会增加PK值！")
    else
        UserOnPlayerOutAthleticsRegion()
    end
end


RegisterUIEvent(LUA_EVENT_HERO_CHANGESTATE, EVENT_DEFAULT_TAG, OnHeroStateChange)
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
            local _Message = "当前攻击模式："
            if _SetAttackMode == atk_mode_all then
                _Message = _Message.."全体模式"
            elseif _SetAttackMode == atk_mode_peace then
                _Message = _Message.."和平模式"
            elseif _SetAttackMode == atk_mode_team then
                _Message = _Message.."组队模式"
            elseif _SetAttackMode == atk_mode_guild then
                _Message = _Message.."行会模式"
            elseif _SetAttackMode == atk_mode_pk then
                _Message = _Message.."善恶模式"
            elseif _SetAttackMode == atk_mode_alliance then
                _Message = _Message.."联盟模式"
            elseif _SetAttackMode == atk_mode_camp then
                _Message = _Message.."阵营模式"
            end
            UI:Lua_ShowTypeMsg(4, _Message)
            UI:Lua_ShowTypeMsg(4, "[按CTRL+H更改攻击模式]")
        else
            if _SetAttackMode == atk_mode_all then
                UI:Lua_ShowTypeMsg(4, "[攻击模式:全体模式]")
            elseif _SetAttackMode == atk_mode_peace then
                UI:Lua_ShowTypeMsg(4, "[攻击模式:和平模式]")
            elseif _SetAttackMode == atk_mode_team then
                UI:Lua_ShowTypeMsg(4, "[攻击模式:组队模式]")
            elseif _SetAttackMode == atk_mode_guild then
                UI:Lua_ShowTypeMsg(4, "[攻击模式:行会模式]")
            elseif _SetAttackMode == atk_mode_pk then
                UI:Lua_ShowTypeMsg(4, "[攻击模式:善恶模式]")
            elseif _SetAttackMode == atk_mode_alliance then
                UI:Lua_ShowTypeMsg(4, "[攻击模式:联盟模式]")
            elseif _SetAttackMode == atk_mode_camp then
                UI:Lua_ShowTypeMsg(4, "[攻击模式:阵营模式]")
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
            return "[攻击模式:全体模式]"
        elseif _CurrenAttackMode == atk_mode_peace then
            return "[攻击模式:和平模式]"
        elseif _CurrenAttackMode == atk_mode_team then
            return "[攻击模式:组队模式]"
        elseif _CurrenAttackMode == atk_mode_guild then
            return "[攻击模式:行会模式]"
        elseif _CurrenAttackMode == atk_mode_pk then
            return "[攻击模式:善恶模式]"
        elseif _CurrenAttackMode == atk_mode_alliance then
            return "[攻击模式:联盟模式]"
        elseif _CurrenAttackMode == atk_mode_camp then
            return "[攻击模式:阵营模式]"
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
    local _GetData = UI:Lua_GetBrokenEquiment()
    if _GetData then
       local _BrokenCount = 0 
       _BrokenCount = LuaRet[1]
       for i = 1, _BrokenCount do
            local _HintMessage = LuaRet[i + 1]
            UI:Lua_ShowTypeMsg(1, "装备耐久不足  ".._HintMessage)
       end
    end
end

function OnAutoMoveItemFaild()
    if UserOnAutoMoveItemFaild == nil then
        UI:Lua_ShowTypeMsg(1, "缺少逍遥游物品，无法传送")
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
RegisterUIEvent(LUA_EVENT_INITRESCOMPLETE, "MainInti", OnMainUIInit)


function OnSwitchSkillActive()
    if UserOnSwitchSkillActive == nil then
        local SkillType = LuaParam[1]
        local Active = LuaParam[2]
        local SkillName = ""

        if SkillType == 2 then
            SkillName = "攻心斩"
        elseif SkillType == 3 then
            SkillName = "风刺剑法"
        elseif SkillType == 4 then
            SkillName = "月弧弯刀"
        end


        local SkillActive = "开启"
        if Active == 0 then
            SkillActive = "关闭"
        end

        UI:Lua_ShowTypeMsg(1, SkillActive..SkillName)
    else
        UserOnSwitchSkillActive()
    end
end
RegisterUIEvent(LUA_EVENT_SWITICHSKILLACTIVE, EVENT_DEFAULT_TAG, OnSwitchSkillActive)

function OnStallSell()
    if UserOnStallSell == nil then
        local _PlayerName = LuaParam[1]
        local _ItemCount = LuaParam[2]
        local _ItemName = LuaParam[3]
        _MessageString = _PlayerName.."买走".._ItemCount.."个".._ItemName
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
        local _BrokenCount = CL:GetBrokenEquiment()
        if _BrokenCount > 0 then
            local _CurYPos = 0;
            for i = 1, _BrokenCount do
                local _HintString = LuaRet[i][1]
                local _Color = LuaRet[i][2]
                CL:TextOut(0, _CurYPos, _HintString, _Color)
                _CurYPos = _CurYPos + 14
            end
        end
    else
        UserDrawBrokenEquimentHint()
    end
end

function GetSoundDataName(_SoundName)
	if UserGetSoundDataName == nil then 
		local _NameString = ""
		if _SoundName == "Start" then 
			_NameString = "Sound/Music/BGM_Title"
		elseif _SoundName == "LoginIn" then
			_NameString = "Sound/Music/Sound/UI/denglu_huoyansheng"
		elseif _SoundName == "SelectRole" then
			_NameString = "Sound/Music/BGM_XuanRen"
		elseif _SoundName == "OpenDoor" then
			_NameString = "Sound/UI/denglu_kaimensheng"
		else
			_NameString = ""
		end
		return _NameString
	else
		return UserGetSoundDataName(_SoundName)
	end
end

function GetSelectRoleSoundName(_Gender, _Job)
	local _SoundFileName = ""
	if UserGetSelectRoleSoundName == nil then 
		if _Gender == 1 then 
			if _Job == 1 then
				_SoundFileName = "Sound/UI/juese_nanzhanshi" 
			elseif _Job == 2 then
				_SoundFileName = "Sound/UI/juese_nanfashi" 
			elseif _Job == 3 then
				_SoundFileName = "Sound/UI/juese_nandaoshi" 
			else

			end
		elseif _Gender == 2 then
			if _Job == 1 then
				_SoundFileName = "Sound/UI/juese_nvzhanshi" 
			elseif _Job == 2 then
				_SoundFileName = "Sound/UI/juese_nvfashi" 
			elseif _Job == 3 then
				_SoundFileName = "Sound/UI/juese_nvdaoshi" 
			else

			end
		end
		return _SoundFileName
	else
		return UserGetSelectRoleSoundName(_Gender, _Job)
	end
end


function GetMonsterNameColorByLevel(_Level, _KeyName)
    if UserGetMonsterNameColorByKeyName ~= nil then
        local _Color = UserGetMonsterNameColorByKeyName(_KeyName)
        if _Color ~= 0 then
            return _Color
        end
    end
    if UserGetMonsterNameColorByLevel == nil then
		local _Color = CL:MakeARGB(255, 255, 255, 255)
        if 1 == _Level then
			_Color = CL:MakeARGB(255, 0, 255, 255)
        elseif 2 == _Level then
			_Color = CL:MakeARGB(255, 0, 183, 212)
        elseif 3 == _Level then
			_Color = CL:MakeARGB(255, 0, 134, 200)
        elseif 4 == _Level then
			_Color = CL:MakeARGB(255, 109, 109, 205)
        elseif 5 == _Level then
			_Color = CL:MakeARGB(255, 75, 75, 227)
        elseif 6 == _Level then
			_Color = CL:MakeARGB(255, 0, 51, 255)
        elseif 7 == _Level then
			_Color = CL:MakeARGB(255, 0, 8, 197)
        elseif 8 < _Level then
			_Color = CL:MakeARGB(255, 0, 8, 197)
        end
		return _Color
    else
        return UserGetMonsterNameColorByLevel(_Level)
    end
end

function OnCustomDataLoad()
    if UserOnCustomDataLoad == nil then
        if CL:GetPlayerCustomData("AutoKaiTian") then
            local _AutoKaiTian = LuaRet
            if _AutoKaiTian ~= 0 then
                CL:AddAttackAutoUseSkill(1060)
            end
        end
    else
        UserOnCustomDataLoad()
    end
end
RegisterUIEvent(LUA_EVENT_CUSTOMDATALOAD, EVENT_DEFAULT_TAG, OnCustomDataLoad)