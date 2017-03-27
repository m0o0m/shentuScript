--函数名字随便起，至少需要一个参数_MagicEntityHandle
--特效配置XML里例子：
--	<h i="303" d="OnMagicHideRole(_MagicEntityHandle,'hide')" />
--	<h i="319" d="OnMagicHideRole(_MagicEntityHandle,'show')" />

--脚本里加

--特效创建/销毁时隐藏/显示角色, flag='hide'/'show'
function OnMagicHideRole(_MagicEntityHandle,flag)
	local TemplateId = 0
	if UI:Lua_GetMagicEntityPropByHandle(_MagicEntityHandle,MAGIC_PROP_TEMPLATEID) then
		TemplateId = LuaRet
	end
	if TemplateId ~= 0 then
		if UI:Lua_GetMagicEntityPropByHandle(_MagicEntityHandle,MAGIC_PROP_ROLELIST) then
			local _Roles = LuaRet
			if _Roles[2] ~= nil then
				UI:Lua_RoleSetDrawAvatar(_Roles[2],(flag=='show'))
			end
		end
	end
end
