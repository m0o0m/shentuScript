local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")
local enter_xy =  {
					{75, 125},
					{115, 125},
					{115, 85},
					{75, 85},
				}

function enter(player)
	local level = lualib:Level(player)
	if level < 50 or level >= 200 then
		lualib:ShowFormWithContent(player, "�ű���", "LongHunZL_outside.msg(\"�ȼ�����!\")")
		return ""
	end
	

	local dgn_id = lualib:GetStr(lualib:Map_GetMapGuid("��ɽ��"), "active_lhzr_map")
	if dgn_id == "" then
		lualib:ShowFormWithContent(player, "�ű���", "LongHunZL_outside.msg(\"�δ��������ע��ϵͳ����!\")")
		return ""
	end
	
	if lualib:Player_SetDgnTicket(player, dgn_id) == false then
		lualib:ShowFormWithContent(player, "�ű���", "LongHunZL_outside.msg(\"��δ����ɽ�������֮�е�ͼ!\")")
		return ""
    end
	local rand = math.random(1, #enter_xy)
    if lualib:Player_EnterDgn(player, "����֮��", enter_xy[rand][1], enter_xy[rand][2], 3) == false then
		lualib:ShowFormWithContent(player, "�ű���", "LongHunZL_outside.msg(\"�����ͼ����֮��ʧ��!\")")
        return ""
	else
		lualib:ShowFormWithContent(player, "�ű���", "LongHunZL_outside.closeWnd()")
    end
	
	local curTime =  lualib:Str2Time(lualib:Now())
	local startTime = lualib:GetInt(dgn_id, "����֮��dc")
	local restTime = 15*60-(curTime - startTime)
	lualib:ShowFormWithContent(player,"form�ļ���","LongHunZL#"..restTime) 
	return ""
end