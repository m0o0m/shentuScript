--屏幕特效类型
local i = 0
ScreenParticleType_FlyDown		=i;i=i+1--飘落
ScreenParticleType_NoMove		=i;i=i+1--不动
--播放控制类型
i = 1
PlayCtrlType_None				=i;i=i*2
PlayCtrlType_StopLast			=i;i=i*2--播放停在最后一帧

function BeginFlower(_ImageIDStr, _Param)
	if _Param == nil then _Param = "" end
	local _ImageID = tonumber(_ImageIDStr)
	if _ImageID ~= 0 then
		return as3.tolua(UI:Lua_BeginFlower(_ImageID,_Param))
	else
		return false
	end
end

function Play_yanhua()
	BeginFlower("")
end

function Play_meiguihua()
	BeginFlower("1078600000")
end

function Play_9meiguihua()
	BeginFlower("")
end

function Play_99meiguihua()
	BeginFlower("")
end

function Play_999meiguihua()
	UI:Lua_GetScreenSize()
	local _X = as3.tolua(LuaRet[1]) / 2
	local _Y = as3.tolua(LuaRet[2]) / 2 - 80
	local _ParticleType = ScreenParticleType_NoMove
	local _PlayCtrlType = PlayCtrlType_StopLast
	local _LifeTime = 30000
	local _Speed = 100
	BeginFlower("1087900000","".._ParticleType.."#".._PlayCtrlType.."#".._X.."#".._Y.."#".._LifeTime.."#".._Speed)
end

local yanhua_table =
{
	{
		name = "烟花",
		play_fun = Play_yanhua
	},
	{
		name = "玫瑰花",
		play_fun = Play_meiguihua
	},
	{
		name = "9朵玫瑰花",
		play_fun = Play_9meiguihua
	},
	{
		name = "99朵玫瑰花",
		play_fun = Play_99meiguihua
	},
	{
		name = "999朵玫瑰花",
		play_fun = Play_999meiguihua
	},
}

function Init_piaoluo_table()
	if piaoluo_table ~= nil then
		return
	end
	piaoluo_table =
	{
		name = "特效飘落",
		index = 0,
		array = {},
		number = 50,       --屏幕上允许飘落的最大数量
		unit =
		{
			-- image   图片ID
			-- count   飘落数量
			-- verfre  垂直时钟频率 单位帧数
			-- vermin  垂直偏移最小值
			-- vermax  垂直偏移最大值
			-- horfre  水平时钟频率 单位帧数
			-- hormin  水平偏移最小值
			-- hormax  水平偏移最大值
			-- movmin  水平连续移动次数最小值
			-- movmax  水平连续移动次数最大值
		},

		Clear = function()
			local window = GetWindow(nil, piaoluo_table.name)
			if window ~= nil and window ~= 0 then
				WndSetID(window, nil, "~"..piaoluo_table.name)
				WndClose(window, nil)
			end
			piaoluo_table.index = 0
			piaoluo_table.array = {}
			piaoluo_table.unit = {}
		end,

		--默认值设置
		default_image  = 1078600000,   --默认图片ID
		default_count  = 1,            --默认飘落数量
		default_verfre = 1,            --默认垂直时钟频率 单位帧数
		default_vermin = 6,            --默认垂直偏移最小值
		default_vermax = 8,            --默认垂直偏移最大值
		default_horfre = 2,            --默认水平时钟频率 单位帧数
		default_hormin = 1,            --默认水平偏移最小值
		default_hormax = 4,            --默认水平偏移最大值
		default_movmin = 30,            --默认水平连续移动次数最小值
		default_movmax = 30,            --默认水平连续移动次数最大值
	}

end
Init_piaoluo_table()

-- 图片  数量  垂直频率  垂直滑落最小值  垂直滑落最大值  水平频率  水平滑动最小值  水平滑动最大值  水平连续移动次数最小值  水平连续移动次数最大值  屏幕允许飘落的最大数量
function piaoluo_client(image, count, verfre, vermin, vermax, horfre, hormin, hormax, movmin, movmax, maxcount)
	if maxcount ~= nil and maxcount > 0 then
		piaoluo_table.number = maxcount
	end
	local _image = tonumber(image)
	if _image == nil or _image == 0 then
		_image = piaoluo_table.default_image
	end
	local _count = tonumber(count)
	if _count == nil or _count <= 0 then
		log("鲜花飘落的数量设置错误!")
		return
	end
	local _verfre = tonumber(verfre)
	if _verfre == nil or _verfre <= 0 then
		_verfre = piaoluo_table.default_verfre
	end
	local _vermin = tonumber(vermin)
	local _vermax = tonumber(vermax)
	if _vermin == nil or _vermax == nil or _vermin <= 0 or _vermin > _vermax then
		_vermin = piaoluo_table.default_vermin
		_vermax = piaoluo_table.default_vermax
	end
	local _horfre = tonumber(horfre)
	if _horfre == nil or _horfre <= 0 then
		_horfre = piaoluo_table.default_horfre
	end
	local _hormin = tonumber(hormin)
	local _hormax = tonumber(hormax)
	if _hormin == nil or _hormax == nil or _hormin <= 0 or _hormin > _hormax then
		_hormin = piaoluo_table.default_hormin
		_hormax = piaoluo_table.default_hormax
	end
	local _movmin = tonumber(movmin)
	local _movmax = tonumber(movmax)
	if _movmin == nil or _movmax == nil or _movmin <= 0 or _movmin > _movmax then
		_movmin = piaoluo_table.default_movmin
		_movmax = piaoluo_table.default_movmax
	end

	local _table = {}
	_table.image = _image
	_table.count = _count
	_table.verfre = _verfre
	_table.vermin = _vermin
	_table.vermax = _vermax
	_table.horfre = _horfre
	_table.hormin = _hormin
	_table.hormax = _hormax
	_table.movmin = _movmin
	_table.movmax = _movmax

	local _current = #piaoluo_table.unit + 1
	piaoluo_table.unit[_current] = _table

	local window = GetWindow(nil, piaoluo_table.name)
	if window == nil or window == 0 then
		window = CreateImage(nil, nil, 0, 0, 0, 0, 0, piaoluo_table.name, "", "")
		WndMoveToParentBottom(window)
		WndSetCanRevMsg(window, nil, false)
		piaoluo_table.array = {}
		WndAddTimerBrief(window, nil, 1, "piaoluo_ontimer")
	end
end

function piaoluo_ontimer(handle, param, x, y)
	UI:Lua_GetScreenSize()
	local width = as3.tolua(LuaRet[1])
	local height = as3.tolua(LuaRet[2])

	local current_number = 0 --鲜花当前屏幕的数量
	for k,v in pairs(piaoluo_table.array) do
		local this = GetWindow(handle, v)
		if this ~= nil and this ~= 0 then
			local cur_verfre = tonumber(WndGetProperty(this, nil, "cur_verfre"))
			local cur_horfre = tonumber(WndGetProperty(this, nil, "cur_horfre"))
			if cur_verfre ~= nil and cur_horfre ~= nil then
				cur_verfre = cur_verfre - 1
				if cur_verfre <= 0 then
					cur_verfre = tonumber(WndGetProperty(this, nil, "verfre"))
					local x, y = WndGetPos(this)
					WndSetPos(this, nil, x, y + tonumber(WndGetProperty(this, nil, "ver")))
				end
				WndAddProperty(this, nil, "cur_verfre", tostring(cur_verfre))

				cur_horfre = cur_horfre - 1
				if cur_horfre <= 0 then
					cur_horfre = tonumber(WndGetProperty(this, nil, "horfre"))
					local cur_dir = tonumber(WndGetProperty(this, nil, "cur_dir"))
					local cur_mov = tonumber(WndGetProperty(this, nil, "cur_mov"))
					cur_mov = cur_mov - 1
					local hor = tonumber(WndGetProperty(this, nil, "hor"))
					if cur_dir == 1 then
						hor = -hor
					end
					local x, y = WndGetPos(this)
					WndSetPos(this, nil, x + hor, y)
					if cur_mov <= 0 then
						cur_mov = math.random(tonumber(WndGetProperty(this, nil, "movmin")), tonumber(WndGetProperty(this, nil, "movmax")))
						WndAddProperty(this, nil, "cur_dir", tostring(math.random(1, 2)))
					end
					WndAddProperty(this, nil, "cur_mov", tostring(cur_mov))
				end
				WndAddProperty(this, nil, "cur_horfre", tostring(cur_horfre))
			end
			local x, y = WndGetPos(this)
			if y + 275 > height then
				WndClose(this)
				piaoluo_table.array[k] = nil
			else
				current_number = current_number + 1
			end
		end
	end

	local gen_count = piaoluo_table.number - current_number
	if #piaoluo_table.unit > 0 and gen_count > 0 then
		local gen_extern = true
		if gen_count == 1 then
			gen_extern = false
		end

		while #piaoluo_table.unit > 0 and gen_count > 0 do
			gen_count = gen_count - 1
			local _table = piaoluo_table.unit[1]

			local x = math.random(0, width) - 234
			local y
			if gen_extern then
				y = math.random(-height, 0) - 275
			else
				y = -275
			end
			local this = CreateImage(handle, nil, _table.image, x, y, 0, 0, tostring(piaoluo_table.index), "", "")
			WndSetCanRevMsg(this, nil, false)
			WndAddProperty(this, nil, "verfre", tostring(_table.verfre))
			WndAddProperty(this, nil, "horfre", tostring(_table.horfre))
			WndAddProperty(this, nil, "cur_verfre", tostring(_table.verfre))
			WndAddProperty(this, nil, "cur_horfre", tostring(_table.horfre))
			WndAddProperty(this, nil, "ver", tostring(math.random(_table.vermin, _table.vermax)))
			WndAddProperty(this, nil, "hor", tostring(math.random(_table.hormin, _table.hormax)))
			WndAddProperty(this, nil, "movmin", tostring(_table.movmin))
			WndAddProperty(this, nil, "movmax", tostring(_table.movmax))
			WndAddProperty(this, nil, "cur_mov", tostring(math.random(_table.movmin, _table.movmax)))
			WndAddProperty(this, nil, "cur_dir", tostring(math.random(1, 2))) --0:↓ 1:← 2:→
			current_number = current_number + 1
			piaoluo_table.array[piaoluo_table.index] = tostring(piaoluo_table.index)
			piaoluo_table.index = piaoluo_table.index + 1
			piaoluo_table.unit[1].count = piaoluo_table.unit[1].count - 1
			if piaoluo_table.unit[1].count == 0 then
				local i = 2
				while piaoluo_table.unit[i] ~= nil do
					piaoluo_table.unit[i - 1] = piaoluo_table.unit[i]
					i = i + 1
				end
				piaoluo_table.unit[i - 1] = piaoluo_table.unit[i]
			end
		end
	end

	if current_number == 0 and #piaoluo_table.unit == 0 then
		piaoluo_table.Clear()
	end
end

function yanhua(_ItemIdx)
	local idx = tonumber(_ItemIdx)
	if idx ~= nil and yanhua_table[idx] ~= nil and yanhua_table[idx].play_fun ~= nil then
		yanhua_table[idx].play_fun();
	end
end


function choujiang(x, y)
	local x = tonumber(x) + 152
	local y = tonumber(y) - 30
	if as3.tolua(UI:Lua_GetWindow("NpcTalk")) then
		AddImage(1089300000, x, y, 0, 0, "choujiang", 0, "")
		UI:Lua_WndAddTimer(1, 1000, "ChoujiangTexiaoClose")
	end
end

function ChoujiangTexiaoClose(handle, param, x, y)
	UI:Lua_WndCloseM()
end

function texiao(magicid,posx,posy,speed,life)
	local x = tonumber(as3.tolua(posx))
	local y = tonumber(as3.tolua(posy))
	UI:Lua_AddMagicToPoint(tonumber(as3.tolua(magicid)),x,y,tonumber(as3.tolua(speed)),tonumber(as3.tolua(life)))
end

function PlaySound(SoundName, SoundType)
	if SoundType == nil or SoundType == "" then
		SoundType = SOUNDEFFECTTYPE_2D_EVT
	else
		SoundType = tonumber(SoundType)
	end
	return as3.tolua(UI:Lua_PlaySound(SoundName, SoundType))
end






function FlowerPiaoLuoWnd_OnQuiteGame()
	piaoluo_table.Clear()
end
RegisterUIEvent(LUA_EVENT_ONQUITEGAME,"FlowerPiaoLuoWnd",FlowerPiaoLuoWnd_OnQuiteGame)
