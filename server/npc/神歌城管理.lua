local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("include/攻城战玩法")

function main(strNpc, strPlayer)
	local strMsg = "我是城堡管理人.\n";
	strMsg = strMsg.."<@RepairCastleDoor *01* 修理城堡大门>\n";
	strMsg = strMsg.."<@RepairPalaceDoor *01* 修理皇宫大门>\n";
	strMsg = strMsg.."<@GenCastleGuard *01* 招募城堡弓箭手>\n\n";
	strMsg = strMsg.."<@RequestCastleWar *01* 申请攻城战>\n";
	strMsg = strMsg.."<@QueryCastleWar *01* 攻城战查询>\n\n";
	strMsg = strMsg.."<@Leave *01* 离开>";
	
	return strMsg;
end

function RepairCastleDoor(strNpc, strPlayer)
	local strMsg = nil;
	
	if CCastle:IsCastleDoorDie() then
		strMsg = "重建城堡大门需要100万金币:<@ReliveCastleDoor *01* 确定>\n\n";
	elseif CCastle:IsCastleDoorBreak() then
		strMsg = "修理城堡大门需要100万金币:<@RepairCastleDoorEx *01* 确定>\n\n";
	else
		strMsg = "城堡大门完好无损,无需修理.\n\n";
	end
	
	strMsg = strMsg.."<@main *01* 返回>    <@Leave *01* 离开>";
	return strMsg;
end

function ReliveCastleDoor(strNpc, strPlayer)
	local strMsg = "";
	
	---条件判断
	--判断攻城是否开始
    if CCastle:IsBattleStart() then
        return "攻城期间不允许重建城堡大门!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    end

    --判断是否为行会会长
    if not lualib:Player_IsGuildLeader(strPlayer) then
        return "只有行会会长才能重建城堡大门!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    end

    --判断是否为守城方
    if not CCastle:IsDefenceSide(strPlayer) then
        return "你没有该城堡的管理权!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    end
	
	CCastle:ReliveCastleDoor();
	strMsg = "重建城堡大门成功.\n\n";
	strMsg = strMsg.."<@main *01* 返回>    <@Leave *01* 离开>";
	return strMsg;
end

function RepairCastleDoorEx(strNpc, strPlayer)
	local strMsg = "";
	
	
	---条件判断
	--判断攻城是否开始
    if CCastle:IsBattleStart() then
        return "攻城期间不允许修理城堡大门!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    end

    --判断是否为行会会长
    if not lualib:Player_IsGuildLeader(strPlayer) then
        return "只有行会会长才能修理城堡大门!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    end

    --判断是否为守城方
    if not CCastle:IsDefenceSide(strPlayer) then
        return "你没有该城堡的管理权!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    end
	
	CCastle:RepairCastleDoor();
	strMsg = "修理城堡大门成功.\n\n";
	strMsg = strMsg.."<@main *01* 返回>    <@Leave *01* 离开>";
	return strMsg;
end

function RepairPalaceDoor(strNpc, strPlayer)
	local strMsg = "你要修理皇宫哪扇门?\n";
	strMsg = strMsg.."<@RepairPalaceDoorEx#1 *01*左边侧门>    <@RepairPalaceDoorEx#2 *01*中间侧门>    <@RepairPalaceDoorEx#3 *01*右边侧门>\n\n"
	strMsg = strMsg.."<@main *01* 返回>    <@Leave *01* 离开>";
	
	return strMsg;
end

function RepairPalaceDoorEx(strNpc, strPlayer, iDoorIdx)
	local i = tonumber(iDoorIdx);
	
	if CCastle:IsPalaceDoorDie(i) then
		strMsg = "重建皇宫侧门需要100万金币:<@RelivePalaceDoor#"..iDoorIdx.." *01* 确定>\n\n";
	elseif CCastle:IsPalaceDoorBreak(i) then
		strMsg = "修理皇宫侧门需要100万金币:<@RepairPalaceDoorEx2#"..iDoorIdx.." *01* 确定>\n\n";
	else
		strMsg = "皇宫侧门完好无损,无需修理.\n\n";
	end
	
	strMsg = strMsg.."<@RepairPalaceDoor *01* 返回>    <@Leave *01* 离开>";
	return strMsg;
end

function RelivePalaceDoor(strNpc, strPlayer, iDoorIdx)
	local strMsg = "";
	
	---条件判断
	--判断攻城是否开始
    if CCastle:IsBattleStart() then
        return "攻城期间不允许重建皇宫侧门!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    end

    --判断是否为行会会长
    if not lualib:Player_IsGuildLeader(strPlayer) then
        return "只有行会会长才能重建皇宫侧门!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    end

    --判断是否为守城方
    if not CCastle:IsDefenceSide(strPlayer) then
        return "你没有该城堡的管理权!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    end
	
	CCastle:RelivePalaceDoor(tonumber(iDoorIdx));
	strMsg = "重建皇宫侧门成功.\n\n";
	strMsg = strMsg.."<@main *01* 返回>    <@Leave *01* 离开>";
	return strMsg;
end

function RepairPalaceDoorEx2(strNpc, strPlayer, iDoorIdx)
	local strMsg = "";
	
	
	---条件判断
	--判断攻城是否开始
    if CCastle:IsBattleStart() then
        return "攻城期间不允许修理皇宫侧门!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    end

    --判断是否为行会会长
    if not lualib:Player_IsGuildLeader(strPlayer) then
        return "只有行会会长才能修理皇宫侧门!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    end

    --判断是否为守城方
    if not CCastle:IsDefenceSide(strPlayer) then
        return "你没有该城堡的管理权!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    end
	
	CCastle:RepairPalaceDoor(tonumber(iDoorIdx));
	strMsg = "修理皇宫侧门成功.\n\n";
	strMsg = strMsg.."<@main *01* 返回>    <@Leave *01* 离开>";
	return strMsg;
end

function GenCastleGuard(strNpc, strPlayer)
	local iCount, iMax = CCastle:CurCastleGuardCount(), CCastle:MaxCastleGuardCount();
	if iCount == iMax then
		return "守卫招募名额已满!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
	else
		return "守卫还有"..(iMax - iCount).."个名额!    <@GenCastleGuardEx *01* 招募>\n\n<@main *01* 返回>    <@Leave *01* 离开>";
	end
end

function GenCastleGuardEx(strNpc, strPlayer)
	local strMsg = "";
	
	---条件判断
	--判断攻城是否开始
    if CCastle:IsBattleStart() then
        return "攻城期间不允许招募守卫!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    end

    --判断是否为行会会长
    if not lualib:Player_IsGuildLeader(strPlayer) then
        return "只有行会会长才能不允许招募守卫!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    end

    --判断是否为守城方
    if not CCastle:IsDefenceSide(strPlayer) then
        return "你没有该城堡的管理权!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    end
	
	CCastle:ReliveCastleGuard();
	strMsg = "成功招募1名守卫!\n\n";
	strMsg = strMsg.."<@GenCastleGuard *01* 返回>    <@Leave *01* 离开>";
	return strMsg;
end

function RequestCastleWar(strNpc, strPlayer)
	--先判断是否开服第一次攻城
	local dwTime;
	local strCastleWar = lualib:GetConstVar("CastleWar");
    dwTime = ((strCastleWar == "") and 0 or lualib:Str2Time(strCastleWar));
	if dwTime > lualib:GetAllTime() then
		return "开服第一次攻城由系统自动开启,请下次再来!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
	end
	
	dwTime = CCastle:GenTNTime();--使用T+N时间

    --判断攻城是否开始
    if CCastle:IsBattleStart() then
        return "攻城已经开始了,请下次再来吧!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    end

    --判断是否为行会会长
    if not lualib:Player_IsGuildLeader(strPlayer) then
        return "只有行会会长才能申请攻城!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    end

    --判断是否为守城方
    if CCastle:IsDefenceSide(strPlayer) then
        return "不能攻打本行会占有的城堡!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    end

    --判断是否为攻城方
    if CCastle:IsAttackSide(strPlayer) then
        return "不能重复申请!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    end

    --注册攻城申请
    if not CCastle:RegisterBattle(strPlayer, dwTime, 7200) then
        return "系统错误,申请攻城战失败!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    end

    return "申请攻城战成功,攻城时间为:"..lualib:Time2Str("%Y-%m-%d %H:%M:%S", dwTime).."!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
end

function QueryCastleWar(strNpc, strPlayer)	
    local strMsg = "攻城战信息:\n\n";
    local strOwner = CCastle:GetOwner();
    if strOwner == "" then
        strOwner = "无";
    end
    
    local strAttacker = CCastle:GetAttacker();
    if strAttacker == "" then
        strAttacker = "无";
    else
        strAttacker = string.gsub(strAttacker, "&", " ");
    end
    
    strMsg = strMsg.."守城方:"..strOwner.."\n";
    strMsg = strMsg.."攻城方:"..strAttacker.."\n";

    local dwBattleTime = CCastle:GetBattleTime();
    if dwBattleTime == 0 then
        strMsg = strMsg.."攻城时间:无!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    else
        strMsg = strMsg.."攻城时间:"..lualib:Time2Str("%Y-%m-%d %H:%M:%S", dwBattleTime).."!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
    end

    return strMsg;
end

function Leave(strNpc, strPlayer)
	return "";
end