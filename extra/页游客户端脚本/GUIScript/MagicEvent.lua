--�������������������Ҫһ������_MagicEntityHandle
--��Ч����XML�����ӣ�
--	<h i="303" d="OnMagicHideRole(_MagicEntityHandle,'hide')" />
--	<h i="319" d="OnMagicHideRole(_MagicEntityHandle,'show')" />

--�ű����

--��Ч����/����ʱ����/��ʾ��ɫ, flag='hide'/'show'
function OnMagicHideRole(_MagicEntityHandle,flag)
	local TemplateId = 0
	if as3.tolua(UI:Lua_GetMagicEntityPropByHandle(_MagicEntityHandle,MAGIC_PROP_TEMPLATEID)) then
		TemplateId = as3.tolua(LuaRet)
	end
	if TemplateId ~= 0 then
		if as3.tolua(UI:Lua_GetMagicEntityPropByHandle(_MagicEntityHandle,MAGIC_PROP_ROLELIST)) then
			local _Roles = as3.tolua(LuaRet)
			if _Roles[2] ~= nil then
				UI:Lua_RoleSetDrawAvatar(_Roles[2],(flag=='show'))
			end
		end
	end
end
