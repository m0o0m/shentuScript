//加载所有需要的Lua文件
UI.Lua_LoadLuaFile("GlobalDefine");
UI.Lua_LoadLuaFile("RoleDefine");
UI.Lua_LoadLuaFile("SiteDefine");
UI.Lua_LoadLuaFile("SettingDefine");
UI.Lua_LoadLuaFile("ItemTypeDefine");
UI.Lua_LoadLuaFile("WndDefine");
UI.Lua_LoadLuaFile("MagicDefine");
UI.Lua_LoadLuaFile("ReliveDefine");

//工具产生的定义
UI.Lua_LoadLuaFile("DB_AttDefine");
UI.Lua_LoadLuaFile("DB_ItemDefine");
UI.Lua_LoadLuaFile("DB_SkillDefine");
UI.Lua_LoadLuaFile("DB_SuitDefine");
UI.Lua_LoadLuaFile("DB_BuffDefine");

//物品实体相关定义,依赖于上面的定义,所以需要放在后面一点
UI.Lua_LoadLuaFile("ItemEntityDefine");

//游戏事件定义
UI.Lua_LoadLuaFile("GameEventDefine");
--常用函数
UI.Lua_LoadLuaFile("CommonFun");

//UI窗口
UI.Lua_LoadLuaFile("UIMain");
UI.Lua_LoadLuaFile("UIWndApi");
UI.Lua_LoadLuaFile("UIDriver");