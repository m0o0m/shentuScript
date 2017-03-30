local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
--require("form/MarsWnd_s")


local GEN_MONSTER_INTERVAL =
{	
	--[[
	[1] = 
	{ 
		0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,
		9,4,4,4,4,4,4,4,4,4,4,4,4,4,4,
		9,4,4,4,4,4,4,4,4,4,4,4,4,4,4,
		9,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
		9,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
		8,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
		8,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
		8,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
		7,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
		7,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
		7,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
		7,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
		6,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
		6,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
		6,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
	},
	--]]
	[1] = 
	{ 
		0,4,8,12,16,20,24,28,32,36,40,44,48,52,56,
		64,68,72,76,80,84,88,92,96,100,104,108,112,116,120,
		128,132,136,140,144,148,152,156,160,164,168,172,176,180,184,
		192,196,200,204,208,212,216,220,224,228,232,236,240,244,248,
		256,260,264,268,272,276,280,284,288,292,296,300,304,308,312,
		320,324,328,332,336,340,344,348,352,356,360,364,368,372,376,
		384,388,392,396,400,404,408,412,416,420,424,428,432,436,440,
		448,452,456,460,464,468,472,476,480,484,488,492,496,500,504,
		511,515,519,523,527,531,535,539,543,547,551,555,559,563,567,
		574,578,582,586,590,594,598,602,606,610,614,618,622,626,630,
		637,641,645,649,653,657,661,665,669,673,677,681,685,689,693,
		700,704,708,712,716,720,724,728,732,736,740,744,748,752,756,
		763,767,771,775,779,783,787,791,795,799,803,807,811,815,819,
		826,830,834,838,842,846,850,854,858,862,866,870,874,878,882,
		889,893,897,901,905,909,913,917,921,925,929,933,937,941,945,
	},
	[2] = 
	{
		"Ëþ·À¼¦","Ëþ·À¼¦","Ëþ·À¼¦","Ëþ·À¼¦","Ëþ·À¼¦","Ëþ·À¼¦","Ëþ·ÀÂ¹","Ëþ·ÀÂ¹","Ëþ·ÀÂ¹","Ëþ·ÀÂ¹","Ëþ·ÀÂ¹","Ëþ·ÀÑò","Ëþ·ÀÑò","Ëþ·ÀÑò","Ëþ·ÀÑò",
		"Ëþ·À¼¦","Ëþ·À¼¦","Ëþ·À¼¦","Ëþ·À¼¦","Ëþ·À¼¦","Ëþ·ÀÂ¹","Ëþ·ÀÂ¹","Ëþ·ÀÂ¹","Ëþ·ÀÂ¹","Ëþ·ÀÑò","Ëþ·ÀÑò","Ëþ·ÀÑò","Ëþ·ÀÑò","Ëþ·À²ÔÀÇ","Ëþ·À²ÔÀÇ",
		"Ëþ·ÀÂ¹","Ëþ·ÀÂ¹","Ëþ·ÀÑò","Ëþ·ÀÑò","Ëþ·ÀÑò","Ëþ·À²ÔÀÇ","Ëþ·À²ÔÀÇ","Ëþ·À²ÔÀÇ","Ëþ·À²ÔÀÇ","Ëþ·À²ÔÀÇ","Ëþ·À²ÔÀÇ","Ëþ·ÀÉ³³æ","Ëþ·ÀÉ³³æ","Ëþ·ÀÉ³³æ","Ëþ·ÀÉ³³æ",
		"Ëþ·À²ÔÀÇ","Ëþ·À²ÔÀÇ","Ëþ·À²ÔÀÇ","Ëþ·ÀÉ³³æ","Ëþ·ÀÉ³³æ","Ëþ·ÀÉ³³æ","Ëþ·ÀÉ³³æ","Ëþ·ÀÉ³³æ","Ëþ·ÀòÚò¼","Ëþ·ÀòÚò¼","Ëþ·ÀòÚò¼","Ëþ·ÀòÚò¼","Ëþ·ÀÈä³æ","Ëþ·ÀÈä³æ","Ëþ·ÀÈä³æ",
		"Ëþ·ÀÉ³³æ","Ëþ·ÀÉ³³æ","Ëþ·ÀòÚò¼","Ëþ·ÀòÚò¼","Ëþ·ÀòÚò¼","Ëþ·ÀòÚò¼","Ëþ·ÀòÚò¼","Ëþ·ÀÈä³æ","Ëþ·ÀÈä³æ","Ëþ·ÀÈä³æ","Ëþ·ÀÈä³æ","Ëþ·ÀÈä³æ","Ëþ·ÀÇ¯³æ","Ëþ·ÀÇ¯³æ","Ëþ·ÀÇ¯³æ",
		"Ëþ·ÀòÚò¼","Ëþ·ÀòÚò¼","Ëþ·ÀÈä³æ","Ëþ·ÀÈä³æ","Ëþ·ÀÈä³æ","Ëþ·ÀÇ¯³æ","Ëþ·ÀÇ¯³æ","Ëþ·ÀÇ¯³æ","Ëþ·ÀÇ¯³æ","Ëþ·ÀÇ¯³æ","Ëþ·ÀÐ°¶ñÇ¯³æ","Ëþ·ÀÐ°¶ñÇ¯³æ","Ëþ·ÀÐ°¶ñÇ¯³æ","Ëþ·ÀÐ°¶ñÇ¯³æ","Ëþ·ÀÐ°¶ñÇ¯³æ",
		"Ëþ·ÀÇ¯³æ","Ëþ·ÀÇ¯³æ","Ëþ·ÀÇ¯³æ","Ëþ·ÀÐ°¶ñÇ¯³æ","Ëþ·ÀÐ°¶ñÇ¯³æ","Ëþ·ÀÐ°¶ñÇ¯³æ","Ëþ·ÀÐ°¶ñÇ¯³æ","Ëþ·À¶ñÁé½©Ê¬","Ëþ·À¶ñÁé½©Ê¬","Ëþ·À¶ñÁé½©Ê¬","Ëþ·À¶ñÁé½©Ê¬","Ëþ·À¶ñÁé½©Ê¬","Ëþ·ÀÅ£Ä§Õ½Ê¿","Ëþ·ÀÅ£Ä§Õ½Ê¿","Ëþ·ÀÅ£Ä§Õ½Ê¿",
		"Ëþ·ÀÐ°¶ñÇ¯³æ","Ëþ·ÀÐ°¶ñÇ¯³æ","Ëþ·À¶ñÁé½©Ê¬","Ëþ·À¶ñÁé½©Ê¬","Ëþ·À¶ñÁé½©Ê¬","Ëþ·À¶ñÁé½©Ê¬","Ëþ·ÀÅ£Ä§Õ½Ê¿","Ëþ·ÀÅ£Ä§Õ½Ê¿","Ëþ·ÀÅ£Ä§Õ½Ê¿","Ëþ·ÀÅ£Ä§Õ½Ê¿","Ëþ·ÀÅ£Ä§Õ½Ê¿","Ëþ·ÀÅ£Ä§·¨Ê¦","Ëþ·ÀÅ£Ä§·¨Ê¦","Ëþ·ÀÅ£Ä§·¨Ê¦","Ëþ·ÀÅ£Ä§·¨Ê¦",
		"Ëþ·À¶ñÁé½©Ê¬","Ëþ·À¶ñÁé½©Ê¬","Ëþ·ÀÅ£Ä§Õ½Ê¿","Ëþ·ÀÅ£Ä§Õ½Ê¿","Ëþ·ÀÅ£Ä§Õ½Ê¿","Ëþ·ÀÅ£Ä§·¨Ê¦","Ëþ·ÀÅ£Ä§·¨Ê¦","Ëþ·ÀÅ£Ä§·¨Ê¦","Ëþ·ÀÅ£Ä§·¨Ê¦","Ëþ·ÀÅ£Ä§·¨Ê¦","Ëþ·ÀÅ£Ä§¼ÀË¾","Ëþ·ÀÅ£Ä§¼ÀË¾","Ëþ·ÀÅ£Ä§¼ÀË¾","Ëþ·ÀÅ£Ä§¼ÀË¾","Ëþ·ÀÅ£Ä§¼ÀË¾",
		"Ëþ·ÀÅ£Ä§·¨Ê¦","Ëþ·ÀÅ£Ä§·¨Ê¦","Ëþ·ÀÅ£Ä§¼ÀË¾","Ëþ·ÀÅ£Ä§¼ÀË¾","Ëþ·ÀÅ£Ä§¼ÀË¾","Ëþ·ÀÅ£Ä§¼ÀË¾","Ëþ·À÷¼÷Ã³¤Ç¹±ø","Ëþ·À÷¼÷Ã³¤Ç¹±ø","Ëþ·À÷¼÷Ã³¤Ç¹±ø","Ëþ·À÷¼÷Ã³¤Ç¹±ø","Ëþ·ÀÅ£Ä§½«¾ü1","Ëþ·ÀÅ£Ä§½«¾ü1","Ëþ·ÀÅ£Ä§½«¾ü1","Ëþ·ÀÅ£Ä§½«¾ü1","Ëþ·ÀÅ£Ä§½«¾ü1",
		"Ëþ·ÀÅ£Ä§¼ÀË¾","Ëþ·ÀÅ£Ä§¼ÀË¾","Ëþ·À÷¼÷Ã³¤Ç¹±ø","Ëþ·À÷¼÷Ã³¤Ç¹±ø","Ëþ·À÷¼÷Ã³¤Ç¹±ø","Ëþ·À÷¼÷Ã³¤Ç¹±ø","Ëþ·À÷¼÷Ã³¤Ç¹±ø","Ëþ·ÀÅ£Ä§½«¾ü1","Ëþ·ÀÅ£Ä§½«¾ü1","Ëþ·ÀÅ£Ä§½«¾ü1","Ëþ·ÀÅ£Ä§½«¾ü1","Ëþ·À×æÂêÎÀÊ¿","Ëþ·À×æÂêÎÀÊ¿","Ëþ·À×æÂêÎÀÊ¿","Ëþ·À×æÂêÎÀÊ¿",
		"Ëþ·À÷¼÷Ã³¤Ç¹±ø","Ëþ·À÷¼÷Ã³¤Ç¹±ø","Ëþ·ÀÅ£Ä§½«¾ü1","Ëþ·ÀÅ£Ä§½«¾ü1","Ëþ·À×æÂêÎÀÊ¿","Ëþ·À×æÂêÎÀÊ¿","Ëþ·À×æÂêÎÀÊ¿","Ëþ·À×æÂêÎÀÊ¿","Ëþ·À×æÂêµñÏñ","Ëþ·À×æÂêµñÏñ","Ëþ·À×æÂêµñÏñ","Ëþ·À×æÂêµñÏñ","Ëþ·À×æÂê¹­¼ýÊÖ","Ëþ·À×æÂê¹­¼ýÊÖ","Ëþ·À×æÂê¹­¼ýÊÖ",
		"Ëþ·À×æÂêÎÀÊ¿","Ëþ·À×æÂêÎÀÊ¿","Ëþ·À×æÂêÎÀÊ¿","Ëþ·À×æÂêÎÀÊ¿","Ëþ·À×æÂêµñÏñ","Ëþ·À×æÂêµñÏñ","Ëþ·À×æÂêµñÏñ","Ëþ·À×æÂêµñÏñ","Ëþ·À×æÂê¹­¼ýÊÖ","Ëþ·À×æÂê¹­¼ýÊÖ","Ëþ·À×æÂê¹­¼ýÊÖ","Ëþ·À×æÂê¹­¼ýÊÖ","Ëþ·À°×É«¶ñÖí","Ëþ·À°×É«¶ñÖí","Ëþ·À°×É«¶ñÖí",
		"Ëþ·À×æÂêµñÏñ","Ëþ·À×æÂêµñÏñ","Ëþ·À×æÂêµñÏñ","Ëþ·À×æÂêµñÏñ","Ëþ·À×æÂê¹­¼ýÊÖ","Ëþ·À×æÂê¹­¼ýÊÖ","Ëþ·À×æÂê¹­¼ýÊÖ","Ëþ·À×æÂê¹­¼ýÊÖ","Ëþ·À×æÂê¹­¼ýÊÖ","Ëþ·À°×É«¶ñÖí","Ëþ·À°×É«¶ñÖí","Ëþ·À°×É«¶ñÖí","Ëþ·ÀÅ£Ä§Íõ","Ëþ·ÀÅ£Ä§Íõ","Ëþ·ÀÅ£Ä§Íõ",
		"Ëþ·À°×É«¶ñÖí","Ëþ·À°×É«¶ñÖí","Ëþ·À°×É«¶ñÖí","Ëþ·À°×É«¶ñÖí","Ëþ·À°×É«¶ñÖí","Ëþ·À°×É«¶ñÖí","Ëþ·ÀÅ£Ä§Íõ","Ëþ·ÀÅ£Ä§Íõ","Ëþ·ÀÅ£Ä§Íõ","Ëþ·ÀÅ£Ä§Íõ","Ëþ·ÀÅ£Ä§Íõ","Ëþ·ÀÅ£Ä§Íõ","Ëþ·ÀÅ£Ä§Íõ","Ëþ·ÀÅ£Ä§Íõ","Ëþ·ÀÅ£Ä§Íõ",
	},
}

local MONSTER_EXP = 
{
	["Ëþ·À¼¦"] = 25000,
	["Ëþ·ÀÂ¹"] = 40000,
	["Ëþ·ÀÑò"] = 55000,
	["Ëþ·À²ÔÀÇ"] = 70000,
	["Ëþ·ÀÉ³³æ"] = 85000,
	["Ëþ·ÀòÚò¼"] = 100000,
	["Ëþ·ÀÈä³æ"] = 115000,
	["Ëþ·ÀÇ¯³æ"] = 130000,
	["Ëþ·ÀÐ°¶ñÇ¯³æ"] = 145000,
	["Ëþ·À¶ñÁé½©Ê¬"] = 160000,
	["Ëþ·ÀÅ£Ä§Õ½Ê¿"] = 160000,
	["Ëþ·ÀÅ£Ä§·¨Ê¦"] = 175000,
	["Ëþ·ÀÅ£Ä§¼ÀË¾"] = 190000,
	["Ëþ·À÷¼÷Ã³¤Ç¹±ø"] = 205000,
	["Ëþ·ÀÅ£Ä§½«¾ü1"] = 220000,
	["Ëþ·À×æÂêÎÀÊ¿"] = 235000,
	["Ëþ·À×æÂêµñÏñ"] = 250000,
	["Ëþ·À×æÂê¹­¼ýÊÖ"] = 265000,
	["Ëþ·À°×É«¶ñÖí"] = 280000,
	["Ëþ·ÀÅ£Ä§Íõ"] = 295000,
}


function FM_BeginGenMonster(player)
	local map = lualib:MapGuid(player)
	local keyname = lualib:KeyName(map);
	if keyname ~= "·âÄ§¸±±¾" then
		lualib:SysPromptMsg(player, "µ±Ç°µØÍ¼²»ÊÇ·âÄ§¸±±¾µØÍ¼");
		return ""
	end
	local ISBeginGenMonster = lualib:GetInt(map, "ISBeginGenMonster");
	if ISBeginGenMonster == 1 then 
		lualib:SysPromptMsg(player, "ÒÑ¾­¿ªÊ¼Ë¢¹Ö");
		return ""
	end
	lualib:SetInt(map, "ISBeginGenMonster", 1);
	
	
	local time = 0;
	local GEN_TIME_TABLE = {};
	local TEM_TABLE = GEN_MONSTER_INTERVAL[1];
	local totalExp = 0;
	for i = 1, #TEM_TABLE do
		time = time + TEM_TABLE[i]
		GEN_TIME_TABLE[i] = time
		
		local KeyName = GEN_MONSTER_INTERVAL[2][i] 
		totalExp = totalExp + MONSTER_EXP[KeyName]
	end
	lualib:SetInt(player, "TotalOfMonster", #GEN_MONSTER_INTERVAL[2]);   --×ÜmonsterÊýÁ¿
	lualib:SetInt(player, "TotalOfExp", totalExp);   --×Ümonster¾­ÑéÊý
	local time_str = serialize(GEN_TIME_TABLE);
	lualib:SetStr(map, "time_str", time_str);
	lualib:SetInt(map, "next_index", 1);
	lualib:AddTimer(map, 1, 1000, -1, "OnGenMonsterCheck");
	lualib:ShowFormWithContent(player, "½Å±¾±íµ¥", "PreventMonsterChildWnd:SetEnableFalse()");
end

function OnGenMonsterCheck(map, id)
	local tickCounts = lualib:GetInt(map, "tickCounts");
	tickCounts = tickCounts + 1;
	lualib:SetInt(map, "tickCounts", tickCounts);
	--È¡³öÊ±¿Ì±í
	--[[
	local time_str = lualib:GetStr(map, "time_str");
	local TABLE = deserialize(time_str)
	--]]
	local index = lualib:GetInt(map, "next_index");
	local TEM_TABLE = GEN_MONSTER_INTERVAL[1];
	if TEM_TABLE[index] and GEN_MONSTER_INTERVAL[2][index] then 
		if tickCounts >= TEM_TABLE[index] then 
			local BATCH_INDEX = 
			{
				1, 16, 31, 46, 61, 76, 91, 106, 121, 136, 151, 166, 181, 196, 211,
			}
			local batchIndex = 0;
			for i = 1, 15 do 
				if index < BATCH_INDEX[i] then 
					break;
				elseif index == BATCH_INDEX[i] then 
					batchIndex = i;
					break;
				end
			end
			if batchIndex ~= 0 then 
				local player = lualib:GetStr(map, "player");
				if player ~= "" then 
					lualib:ShowFormWithContent(player, "½Å±¾±íµ¥", "PreventMonster_c2:PopBatchTips("..batchIndex..")");
				end
			end
			local next_monster = lualib:Map_GenSingleMonster(map, 1, 18, 1, 1, GEN_MONSTER_INTERVAL[2][index], false);
			if next_monster ~= "" then 
				if index == 225 then 
					lualib:DelayCall(map, 152*1000, "OnCampaignEnd", "");
				end
				lualib:SetCamp(next_monster, 1);  
				lualib:Monster_SetSeeker(next_monster, {36,18, 37,18, 38,19, 39,20, 40,21, 40,38, 39,39, 38,40, 2,40}, 0, true);
				--lualib:Monster_Escape(next_monster, 33, 17);
			end
			lualib:SetInt(map, "next_index", index + 1);
		end
	end 
	
	--É¾³ýµ½´ïÄ¿µÄµØµÄmonster
	local ranges = {1, 1, 40, 3, 1};
	local MONSTERS = lualib:Map_GetRegionMonstersEx(map, "", ranges, true, true);
	if #MONSTERS ~= 0 then 
		for k, v in ipairs(MONSTERS) do
			lualib:Monster_Remove(v)
		end
	end
end




function on_map_create(map)
    --lualib:Debug("Ñ°Áú¶á±¦µØÍ¼½¨´´»Øµ÷£¡")
	--lualib:SetDBNum("fengmo_existing_dgn", map)
	--lualib:Map_AddEffect(map, 4, 23, 200001500,900);
	local startTime   = lualib:GetAllTime()
	local endTime = 20 * 60 + startTime
    lualib:SetInt(map, "endTime", endTime)
	
	--[[
    local monster = lualib:Map_GenSingleMonster(map, require_monster[2], 
    require_monster[3], 6, 6, require_monster[1], false)
    if monster == ""  then
        lualib:Error(require_monster[1].."Ë¢ÐÂÊ§°Ü£¡")
        return
    end
	--]]
	lualib:AddTrigger(map, lua_trigger_enter_map, "on_trigger_enter_map");
	lualib:AddTrigger(map, lua_trigger_leave_map, "on_trigger_leave_map");
	lualib:AddTrigger(map, lua_trigger_pre_die, "on_trigger_pre_die");
    lualib:DelayCall(map, 60*1000, "ChenkhaveGenMonster", ""); 
	lualib:DelayCall(map, 90*1000, "ChenkBeginGenMonster", "");
	lualib:DelayCall(map, 20*60*1000 + 10000, "OnCampaignEnd", ""); 
	
	
	--lualib:AddTrigger(map, lua_trigger_pre_item_drop, "item_diu_chufa")
	--lualib:AddTrigger(map, lua_trigger_dungeon_end, "fuben_jieshu")
	
end

function ChenkhaveGenMonster(map)
	local bool = lualib:GetInt(map, "ISBeginGenMonster");
	if bool == 1 then 
		return ""
	else
		local player = lualib:GetStr(map, "player");
		if player ~= "" then 
			lualib:ShowFormWithContent(player, "½Å±¾±íµ¥", "PreventMonster_c2:PopTips(30)")
		end
		
	end
	
end

function ChenkBeginGenMonster(map)
	local bool = lualib:GetInt(map, "ISBeginGenMonster");
	if bool == 1 then 
		return ""
	else
		local player = lualib:GetStr(map, "player");
		if player ~= "" then 
			FM_BeginGenMonster(player)
		end
		
	end
end


function on_trigger_enter_map(player)
	
	--lualib:Error("index");
	if not lualib:Player_IsPlayer(player) then
		lualib:DestroyDummy(player)
		--lualib:Error("DestroyDummy")
		--lualib:SetCamp(player, 2);
		return ""
	end
	local SERVANT = lualib:Player_GetServantList(player)
	for k, v in ipairs(SERVANT) do 
		if lualib:Monster_IsMonster(v) then 
			lualib:Monster_Remove(v);
		end
	end
	lualib:AddBuff(player, "·âÄ§BUFF", 16*60);
	lualib:Player_ChangeAttackMode(player, 0); --½øÈë¹¥»÷Ä£Ê½
	--lualib:SysPromptMsg(player, "Player_ChangeAttackMode")
	
	
	
	
	lualib:SetCamp(player, 2)  
	lualib:AddItem(player,"¹­¼ýÊÖÁîÅÆ", 8, true, "½øÈë·âÄ§¸±±¾", player)
	--lualib:SysMsg_SendBroadcastColor("¡¾"..lualib:Name(player).."¡¿½øÈëÑ°Áú¶á±¦£¬Ñ°Áú¶á±¦¿É´ÓÁú³ÇÑ°Áú¶á±¦´«ËÍÔ±´¦½øÈë", "ÏµÍ³Í¨Öª", 1, 0)
	--lualib:Player_ChangeAttackMode(player, 0) --ÉèÖÃÍæ¼ÒµÄ¹¥»÷Ä£Ê½ÎªÈ«Ìå¹¥»÷Ä£Ê½
	--local mode = lualib:Player_GetAttackMode(player)
	local map = lualib:MapGuid(player)
	lualib:SetStr(map, "player", player);
	local now   = lualib:GetAllTime()
	local endTime = lualib:GetInt(map, "endTime")
	local remainderSeconds = endTime - now
	--lualib:SysPromptMsg(player, ""..remainderSeconds);
	
	local num1 = lualib:ItemCount(player, "¹­¼ýÊÖÁîÅÆ");
	local num2 = lualib:ItemCount(player, "·¨ÉñÁîÅÆ");
	lualib:ShowFormWithContent(player, "formÎÄ¼þ±íµ¥", "PreventMonsterChildWnd#".. remainderSeconds.."#"..num1.."#"..num2);
	local str = 
	[[
		GameMainBar.Taskitem(6)
		local taskWnd = GetWindow(0, "TaskWindow")
		if taskWnd ~= 0 then
			GUI:WndSetVisible(taskWnd, false)
		end
		taskWnd = GetWindow(0, "PreventMonster")
		if taskWnd ~= 0 then
			GUI:WndClose(taskWnd)
		end
	]]
	lualib:ShowFormWithContent(player, "½Å±¾±íµ¥", str);
	
	--[[
	local TABLE = 
	{
		{10, 17, 200001500},
		{20, 17, 200001500},
		{30, 17, 200001500},
		{40, 30, 200001501},
		{30, 40, 200001502},
		{14, 40, 200001502},
	}	
	for k, v in ipairs(TABLE) do 
		--lualib:RunClientScript(player, "ItemEffect", "texiao", v[3].."#"..v[1].."#"..v[2].."#0#0");
		lualib:Map_AddEffect(map, v[1], v[2], v[3], 900);
	end
	--]]
	--[==[
	local str2 = ""
	local clientType = lualib:GetClientType(player) 
	if clientType == 0 then
		str2 = [[CL:ChangeAttacMod(0)]]
	elseif clientType == 1 then 
		str2 = [[CLSetAttackMode(0)]]
	end	
	lualib:ShowFormWithContent(player, "½Å±¾±íµ¥", str2)
	--]==]
	
	--[[
	local heros = lualib:GetPlayerCurrentHeroList(player)
	if #heros > 0 then 
		for i = 1, #heros do
			lualib:DestroyDummy(heros[i])
			lualib:SetInt(player, "HeroRelive", 1)
		end
	end
	--]]
end

function on_trigger_leave_map(player)
	if not lualib:Player_IsPlayer(player) then
		return ""
	end
	lualib:DelBuff(player, "·âÄ§BUFF");
	local map = lualib:MapGuid(player);
	lualib:SetStr(map, "player", "");
	lualib:Map_DestroyDgn(map);
	
	local str = 
	[[
		if PreventMonsterChildWnd then 
			PreventMonsterChildWnd.RecoverTaskWindow();
			PreventMonsterChildWnd:close();
		end
	]]
	lualib:ShowFormWithContent(player, "½Å±¾±íµ¥", str)
	return true
end




function on_trigger_pre_die(actor, killer)
	
    if not lualib:Monster_IsMonster(actor) then 
		return true 
	end
	local keyname = lualib:KeyName(actor);
	local map = lualib:MapGuid(actor)
	if keyname == "Ëþ·À¹­¼ýÊÌÎÀ" then 
		local x = lualib:X(actor)
		local y = lualib:Y(actor)
		
		local monster = lualib:Map_GenSingleMonster(map, x, y, 0, 1, "Ëþ·ÀÄ§·¨ÊÌÎÀ", false);
		lualib:SetCamp(monster, 2);  
	else
		if MONSTER_EXP[keyname] then 
			local exp = MONSTER_EXP[keyname];
			local player = lualib:GetStr(map, "player");
			if player == "" then 
				--lualib:Error("388·âÄ§¸±±¾»ñÈ¡Íæ¼ÒGUIDÊ§°Ü")
				return true
			end
			lualib:SetInt(player, "exp", lualib:GetInt(player, "exp") + exp);
			lualib:SetInt(player, "KillCount", lualib:GetInt(player, "KillCount") + 1);
			exp = lualib:GetInt(player, "exp");
			lualib:ShowFormWithContent(player, "½Å±¾±íµ¥", "PreventMonsterChildWnd:UpDataScore(".. exp ..")");
		end
	end
	return true 
end


function OnCampaignEnd(map)
	local isEnd = lualib:GetInt(map, "IsEnd");
	if isEnd == 1 then 
		return
	end
	lualib:SetInt(map, "IsEnd", 1);
	lualib:Map_ClearDgnMonster(map)
	local player = lualib:GetStr(map, "player");
	if player == "" then 
		return ""
	end
	local total = lualib:GetInt(player, "TotalOfMonster");
	local kill = lualib:GetInt(player, "KillCount");
	local escape = total - kill;
	local totalExp = lualib:GetInt(player, "TotalOfExp");
	local getExp = lualib:GetInt(player, "exp");
	local loseExp = totalExp - getExp;
	local TABLE = {};
	TABLE[1] = kill;
	TABLE[2] = getExp;
	TABLE[3] = escape;
	TABLE[4] = loseExp;
	lualib:ShowFormWithContent(player, "½Å±¾±íµ¥", "PreventMonster_c3:main("..serialize(TABLE)..")");
end



	
