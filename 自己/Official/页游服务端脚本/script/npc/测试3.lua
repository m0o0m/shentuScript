function main(npc,player)
	lualib:SetPanelSize(npc,400,200)
	local msg = "请问客官想要去哪里？\n\n\n"
	msg = msg .. "#IMAGE20150703131810# <@Deliver#1 *01*[城市传送]> #COLORCOLOR_MAGENTA#\n\n\n"            
	msg = msg .. "#OFFSET<X:80,Y:-3>##IMAGE# <@Deliver#2 *01*[危险传送]> #COLORCOLOR_MAGENTA#\n\n\n"
    msg = msg .. "#OFFSET<X:40,Y:-3>##IMAGE# <@web#2 *01*[测试]> #COLORCOLOR_MAGENTA#\n\n\n"
          return msg
end

function Deliver(npc,player,type)
	local msg = "请问客官想要去哪里？\n\n\n\n"
	type = tonumber(type)
	if type == 1 then


		msg = msg .. "#IMAGE1902700015# <@Deliver1#龙城#248#274 *01*[龙  城]> \n"

	elseif type == 2 then

		local str = "已刷新"
		
		local now = lualib:GetAllTime()

		lualib:SetPanelSize(npc,400,200)


	

		
		msg = msg .. "#IMAGE1902700015# <@Deliver4#0#魔月峡谷南#0#0#93#328 *01*[赤月魔窟]>\n\n\n"


                msg = msg .. "#IMAGE1902700015# <@Deliver4#0#沃玛祠庙1#0#0#76#80 *01*[天荒祠庙]>\n\n"
		
	elseif type == 5 then
            lualib:SetPanelSize(npc,500,600)
			
		local str = "已刷新"
		
		local now = lualib:GetAllTime()
		
		msg = msg .. "#IMAGE1902700015# <@Deliver5#2#石窟六层#45#0#72#66 *01*[猪洞六层]> #COLORCOLOR_MAGENTA#→→→→#COLOREND##COLORCOLOR_MAGENTA# 45级（赤月雷霆装备出处）#COLOREND#\n\n"
		
		if lualib:GetInt("0", "猪王石窟七层") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "猪王石窟七层") - now) / 60)
			str = "还有"..times.."分钟刷新"
		else
			str = "已刷新"
		end
		
		msg = msg .. "#COLORCOLOR_GREENG#    刷新BOSS：猪王                      当前状态："..str.."\n\n"
		
		msg = msg .. "#IMAGE1902700015# <@Deliver5#3#山谷密道2#45#0#207#43 *01*[赤月魔穴]> #COLORCOLOR_MAGENTA#→→→→#COLOREND##COLORCOLOR_MAGENTA# 45级（赤月雷霆装备出处）#COLOREND#\n\n"
		
		if lualib:GetInt("0", "赤月蚁后赤月魔穴") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "赤月蚁后赤月魔穴") - now) / 60)
			str = "还有"..times.."分钟刷新"
		else
			str = "已刷新"
		end
		
		msg = msg .. "#COLORCOLOR_GREENG#    刷新BOSS：赤月蚁后                  当前状态："..str.."\n\n"
		
		msg = msg .. "#IMAGE1902700015# <@Deliver5#4#山谷密道1#45#0#177#84 *01*[恶魔祭坛]> #COLORCOLOR_MAGENTA#→→→→#COLOREND##COLORCOLOR_MAGENTA# 45级（赤月雷霆装备出处）#COLOREND#\n\n"
		
		if lualib:GetInt("0", "双头血魔恶魔祭坛") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "双头血魔恶魔祭坛") - now) / 60)
			str = "还有"..times.."分钟刷新"
		else
			str = "已刷新"
		end
		
		msg = msg .. "#COLORCOLOR_GREENG#    刷新BOSS：双头血魔                  当前状态："..str.."\n"
		
		if lualib:GetInt("0", "双头金刚恶魔祭坛") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "双头金刚恶魔祭坛") - now) / 60)
			str = "还有"..times.."分钟刷新"
		else
			str = "已刷新"
		end
		
		msg = msg .. "    刷新BOSS：双头血魔                  当前状态："..str.."\n\n"
		
		msg = msg .. "#IMAGE1902700015# <@Deliver5#6#龙源血路#45#0#271#122 *01*[龙源血路]> #COLORCOLOR_MAGENTA#→→→→#COLOREND##COLORCOLOR_MAGENTA# 45级（雷霆终极装备出处）#COLOREND#\n\n"
		
		if lualib:GetInt("0", "暗之魔龙教主魔龙大殿") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "暗之魔龙教主魔龙大殿") - now) / 60)
			str = "还有"..times.."分钟刷新"
		else
			str = "已刷新"
		end
		
		msg = msg .. "#COLORCOLOR_GREENG#    刷新BOSS：暗之魔龙教主              当前状态："..str.."\n"
		
		if lualib:GetInt("0", "魔龙教主魔龙大殿") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "魔龙教主魔龙大殿") - now) / 60)
			str = "还有"..times.."分钟刷新"
		else
			str = "已刷新"
		end
		
		msg = msg .. "#COLORCOLOR_GREENG#    刷新BOSS：魔龙教主                  当前状态："..str.."\n\n"
		
		msg = msg .. "#IMAGE1902700015# <@Deliver5#7#赤炎一层#48#100#36#78 *01*[赤炎巢穴]> #COLORCOLOR_MAGENTA#→→→→#COLOREND##COLORCOLOR_MAGENTA# 48级+100元宝（雷霆终极装备出处）#COLOREND#\n\n"
		
		if lualib:GetInt("0", "赤炎酋长赤炎巢穴") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "赤炎酋长赤炎巢穴") - now) / 60)
			str = "还有"..times.."分钟刷新"
		else
			str = "已刷新"
		end
		
		msg = msg .. "#COLORCOLOR_GREENG#    刷新BOSS：赤炎酋长                  当前状态："..str.."\n\n"
		
		
        msg = msg .. "#IMAGE1902700015# <@Deliver5#8#海底世界#48#100#58#51 *01*[海底世界]> #COLORCOLOR_MAGENTA#→→→→#COLOREND##COLORCOLOR_MAGENTA# 48级+100元宝（雷霆终极装备出处）#COLOREND#\n\n"
		
		if lualib:GetInt("0", "深海盘龙海龍巢穴") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "深海盘龙海龍巢穴") - now) / 60)
			str = "还有"..times.."分钟刷新"
		else
			str = "已刷新"
		end
		
		msg = msg .. "#COLORCOLOR_GREENG#    刷新BOSS：深海盘龙                  当前状态："..str.."\n\n"
					
					
		msg = msg .. "#IMAGE1902700015# <@Deliver5#5#火龙洞一层#48#200#29#85 *01*[火龙洞穴]> #COLORCOLOR_MAGENTA#→→→→#COLOREND##COLORCOLOR_MAGENTA# 48级+200元宝（雷霆雷霆装备出处）#COLOREND#\n\n"
		
		if lualib:GetInt("0", "火龙教主火龙巢穴") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "火龙教主火龙巢穴") - now) / 60)
			str = "还有"..times.."分钟刷新"
		else
			str = "已刷新"
		end
		
		msg = msg .. "#COLORCOLOR_GREENG#    刷新BOSS：火龙教主                  当前状态："..str.."\n\n"
		
		msg = msg .. "#IMAGE1902700015# <@Deliver5#11#冰封一层#48#200#59#115 *01*[冰封雪原]> #COLORCOLOR_MAGENTA#→→→→#COLOREND##COLORCOLOR_MAGENTA# 48级+200元宝（雷霆雷霆装备出处）#COLOREND#\n\n"
		
		if lualib:GetInt("0", "冰封神冰封雪原") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "冰封神冰封雪原") - now) / 60)
			str = "还有"..times.."分钟刷新"
		else
			str = "已刷新"
		end
		
		msg = msg .. "#COLORCOLOR_GREENG#    刷新BOSS：冰封神                    当前状态："..str
	elseif type == 6 then
            lualib:SetPanelSize(npc,500,300)
		msg = msg .. "#IMAGE1902700015# <@Deliver5#9#白日门#30#0#48#285 *01*[30级法师招宝宝地图]> #COLORCOLOR_RED##COLOREND##COLORCOLOR_BLUE##COLOREND#\n\n\n\n"
		msg = msg .. "#IMAGE1902700015# <@Deliver5#9#白日门#45#0#96#94 *01*[45级法师招宝宝地图]> #COLORCOLOR_RED##COLOREND#\n\n\n\n"
		msg = msg .. "#IMAGE1902700015# <@Deliver5#9#白日门#50#0#450#494 *01*[50级法师招宝宝地图]> #COLORCOLOR_RED##COLOREND#\n\n\n\n"
		msg = msg .. "#IMAGE1902700015# <@Deliver5#9#白日门#1#0#534#150 *01*[法道宝宝★陪练地图]> #COLORCOLOR_RED#\n\n"
	elseif type == 7 then
        lualib:SetPanelSize(npc,500,300)

		msg = msg .. "\n#IMAGE1902700015# <@Deliver5#10#散人打宝#30#0#368#426 *01*[散人打宝]→→→→本地图BOSS两小时随机刷新一次 小怪暴药 适合散人玩家打宝> #COLORCOLOR_GREENG#\n\n"
		
		local str = "已刷新"
		
		local now = lualib:GetAllTime()
		
		if lualib:GetInt("0", "双头血魔散人打宝") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "双头血魔散人打宝") - now) / 60)
			str = "还有"..times.."分钟刷新"
		else
			str = "已刷新"
		end
		
		msg = msg .. "刷新BOSS：双头血魔                        当前状态："..str.."\n"
		
		if lualib:GetInt("0", "双头金刚散人打宝") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "双头金刚散人打宝") - now) / 60)
			str = "还有"..times.."分钟刷新"
		else
			str = "已刷新"
		end
		
		msg = msg .. "刷新BOSS：双头金刚                        当前状态："..str.."\n"
		
		if lualib:GetInt("0", "猪王散人打宝") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "猪王散人打宝") - now) / 60)
			str = "还有"..times.."分钟刷新"
		else
			str = "已刷新"
		end
		
		msg = msg .. "刷新BOSS：猪王                            当前状态："..str.."\n"
		
		if lualib:GetInt("0", "暗之魔龙教主散人打宝") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "暗之魔龙教主散人打宝") - now) / 60)
			str = "还有"..times.."分钟刷新"
		else
			str = "已刷新"
		end
		
		msg = msg .. "刷新BOSS：暗之魔龙教主                    当前状态："..str.."\n"
		
		if lualib:GetInt("0", "魔龙教主散人打宝") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "魔龙教主散人打宝") - now) / 60)
			str = "还有"..times.."分钟刷新"
		else
			str = "已刷新"
		end
		
		msg = msg .. "刷新BOSS：魔龙教主                        当前状态："..str.."\n"
		
		if lualib:GetInt("0", "虹魔教主散人打宝") ~= 0 then
			local times = math.floor((lualib:GetInt("0", "虹魔教主散人打宝") - now) / 60)
			str = "还有"..times.."分钟刷新"
		else
			str = "已刷新"
		end
		
		msg = msg .. "刷新BOSS：虹魔教主                        当前状态："..str.."\n"

	end
	
	return msg
end

function Deliver1(npc,player,mapKeyname,x,y)
	x = tonumber(x)
	y = tonumber(y)
	local r = 0
	lualib:Player_MapMoveXY(player,mapKeyname,x,y,r)
	return ""
end

function Deliver3(npc,player,mapKeyname,x,y)
	x = tonumber(x)
	y = tonumber(y)
	local r = 0
	local playerLevel = lualib:Level(player)
	if playerLevel < 40 then
		return "你的等级未达到要求，需40级及以上才能免费进入          #IMAGE<ID:1902700019>#<@main *01* [返回]>"
	end
	lualib:Player_MapMoveXY(player,mapKeyname,x,y,r)
	return ""
end
function Deliver4(npc,player,type,mapKeyname,level,gold,x,y)
	type = tonumber(type)
	x = tonumber(x)
	y = tonumber(y)
	local r = 0
	level = tonumber(level)
	gold = tonumber(gold) * 10000
	local playerLevel = lualib:Level(player)
	if playerLevel < level then
		return "你的等级未达到要求，需"..level.."级及以上才能免费进入          #IMAGE<ID:1902700019>#<@main *01* [返回]>"
	end
	if not lualib:Player_SubGold(player,gold,false,"扣金币：传送","城市传送员") then
		return "你的金币不足，不能传送，需要"..gold.."金币！！"
	end
	lualib:Player_MapMoveXY(player,mapKeyname,x,y,r)
	if mapKeyname == "沃玛祠庙1" then
	--	lualib:DelayCall(player, 100, "地图验证:verify_ex", mapKeyname.."#"..x.."#"..y)
	end
	if type == 1 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_BLUE#英雄（"..lualib:Name(player).."）币进入了；祖玛寺庙；欢迎你的加入","")
	elseif type == 2 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_BLUE#英雄（"..lualib:Name(player).."）进入了；猪洞入口；欢迎你的加入","")
	elseif type == 3 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_BLUE#英雄（"..lualib:Name(player).."）进入了；封魔矿区；欢迎你的加入","")
	elseif type == 4 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_BLUE#英雄（"..lualib:Name(player).."）进入了；赤月魔窟；欢迎你的加入","")
	elseif type == 5 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_BLUE#英雄（"..lualib:Name(player).."）进入了；魔龙入口；欢迎你的加入","")
           end
	return ""
end
function Deliver5(npc,player,type,mapKeyname,level,ingot,x,y)
	type = tonumber(type)
	level = tonumber(level)
	ingot = tonumber(ingot)
	x = tonumber(x)
	y = tonumber(y)
	local r = 0
	
	local playerLevel = lualib:Level(player)
	if playerLevel < level then
		return "你的等级未达到要求，需"..level.."级及以上才能免费进入          #IMAGE<ID:1902700019>#<@main *01* [返回]>"
	end
	if not lualib:Player_SubIngot(player,ingot,false,"扣元宝：传送","城市传送员") then
		return "你的金币不足，不能传送，需要"..ingot.."元宝！！"
	end
	lualib:Player_MapMoveXY(player,mapKeyname,x,y,r)
	if type == 1 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#英雄（"..lualib:Name(player).."）花费了50元宝进入了；祖玛六层；欢迎你的加入","")
	elseif type == 2 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#英雄（"..lualib:Name(player).."）进入了；猪洞六层；欢迎你的加入","")
	elseif type == 3 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#英雄（"..lualib:Name(player).."）进入了；赤月魔穴；欢迎你的加入","")
	elseif type == 4 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#英雄（"..lualib:Name(player).."）进入了；恶魔祭坛；欢迎你的加入","")
	elseif type == 5 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#英雄（"..lualib:Name(player).."）花费了200元宝进入了；火龙洞一层；欢迎你的加入","")
	elseif type == 6 then
		lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#英雄（"..lualib:Name(player).."）进入了；龙源血路；欢迎你的加入","")
           elseif type == 7 then
                     lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#英雄（"..lualib:Name(player).."）花费了100元宝进入了；赤炎一层；欢迎你的加入","")
          elseif type == 8 then
                     lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#英雄（"..lualib:Name(player).."）花费了100元宝进入了；海底世界；欢迎你的加入","")
          elseif type == 9 then
                     lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#英雄（"..lualib:Name(player).."）通过城市传送进入了法师招宝宝地图；欢迎你的加入","")
          elseif type == 10 then
                     lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#英雄（"..lualib:Name(player).."）进入了 散人打宝※本地图BOSS两小时随机刷新一次 小怪暴药 适合散人玩家打宝；欢迎你的加入","")
          elseif type == 11 then
                     lualib:SysMsg_SendBroadcastMsg("#COLORCOLOR_GREENG#英雄（"..lualib:Name(player).."）花费了200元宝进入了；冰封一层；欢迎你的加入","")
       end	
	return ""
end
function jump(npc,player)
	local ret = lualib:Player_MapMoveXY(player,"古代庄园",97,90,0)
	
	if ret ~= true then
		return "跳地图失败"
	end
	return ""
end
function web(npc, player)
    local name = lualib:Player_GetStrProp(player,  lua_role_user_name)
    local userid = lualib:Player_GetAccountID(player)
    local grpid = lualib:GetGroupId()
    local msg = lualib:WebBoxEx(player, "防沉迷验证", "http://passport.173uu.com/verifygame/index.html?uid="..userid">http://passport.173uu.com/verifygame/index.html?uid="..userid, "")
	lualib:SysMsg_SendWebPage(player,msg)
    return ""
end