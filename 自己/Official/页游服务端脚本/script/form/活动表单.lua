local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")


function WarsStart(player)
	
	local tab = {0,0,0}
	local ServerTime = lualib:QueryCastleStart("神歌城")
	if ServerTime ~= 0 then 
		tab[2] = lualib:Time2Str("%H:%M:%S",ServerTime)
		tab[3] = lualib:Time2Str("%H:%M:%S",ServerTime+7200)
		ServerTime =lualib:Time2Str("%Y-%m-%d",ServerTime)
		local strdTime = lualib:Now()
		local strTimes = lualib:Str2Time(strdTime)  
		local strTime =lualib:Time2Str("%Y-%m-%d",strTimes)
		if strTime == ServerTime then
			tab[1]  = 1
			local day1 =lualib:Str2Time(lualib:Time2Str("%Y-%m-%d %H:%M:%S",lualib:Str2Time(strTime)+(20*60*60)))
			local day2 =lualib:Str2Time(lualib:Time2Str("%Y-%m-%d %H:%M:%S",lualib:Str2Time(strTime .." "..tab[3]) ))
			
			--[[if day1 <= strTimes then 
				tab[1]  = 2
			end--]]
			
			if day2 <= strTimes then 
				tab[1] = 3
			end
		end
	end
	lualib:ShowFormWithContent(player,"脚本表单","Campaign.getListBack("..serialize(tab)..")")
	return ""
end