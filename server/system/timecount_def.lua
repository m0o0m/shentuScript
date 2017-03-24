local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("form/Common")

function ShowTimeCount(player, time, icon, notify)
    local content = time.."\n"..icon.."\n"..notify
    lualib:Player_SetCustomVarInt(player, notify.."倒计时", lualib:GetTime() + time)
    lualib:ShowFormWithContent(player, "倒计时", content)
end

function ShowTimeCount2(player, time, icon, notify, xianshi, ziti)
    local content = time.."\n"..icon.."\n"..notify.."\n"..xianshi.."\n"..ziti
    lualib:Player_SetCustomVarInt(player, notify.."倒计时", lualib:GetTime() + time)
    lualib:ShowFormWithContent(player, "倒计时", content)
end

function ShowTimeCount3(player, time, icon, notify, xianshi, ziti, str)
    local content = time.."\n"..icon.."\n"..notify.."\n"..xianshi.."\n"..ziti.."\n"..str
    lualib:Player_SetCustomVarInt(player, notify.."倒计时", lualib:GetTime() + time)
    lualib:ShowFormWithContent(player, "倒计时", content)
end


--行，点, 图标唯一的标识, 图标， 服务端文件名，服务端函数，参数
function AddSEIcon(player, hang, dian, biaoshi, icon, biaodan, hanshu, canshu, tips)
	if tips == nil or type(tips) ~= "string" then
		tips = ""
	end
	local script = "AddSEIcon("..hang..","..dian..","..string.format("%q", biaoshi)..","..icon..","..string.format("%q", biaodan)..","..string.format("%q", hanshu)..","..string.format("%q", canshu)..","..string.format("%q", tips)..")"
    lualib:ShowFormWithContent(player, "脚本表单", script)

end

--行，点, 图标唯一的标识, 图标， 服务端文件名，服务端函数，倒计时秒数，参数
function AddSETimeIcon(player, hang, dian, biaoshi, icon, biaodan, hanshu, time, canshu, tips)
	if tips == nil or type(tips) ~= "string" then
		tips = ""
	end
	local script = "AddSETimeIcon("..hang..","..dian..","..string.format("%q", biaoshi)..","..icon..","..string.format("%q", biaodan)..","..string.format("%q", hanshu)..","..time..","..string.format("%q", canshu)..","..string.format("%q", tips)..")"
    lualib:ShowFormWithContent(player, "脚本表单", script)

end

-- 添加：图标唯一的标识, 图标ID， x，y(相对该ICON的偏移)，特效两帧之间的时间间隔(毫秒)
function AddIconMagic(player, name, image, x, y, elapse)
	Invoke(player, "AddIconMagic", name, image, x, y, elapse)
end

--删除：图标唯一的标识
function DelIconMagic(player, name)
	Invoke(player, "DelIconMagic", name)
end



-- 文件名
function DelIcon(player, file)
	local script = "DelIcon("..string.format("%q", file)..")"
	lualib:ShowFormWithContent(player, "脚本表单", script)		
end

