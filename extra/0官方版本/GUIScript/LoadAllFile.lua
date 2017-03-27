--加载所有需要的Lua文件
UI:Lua_LoadLuaFile("GlobalDefine")
UI:Lua_LoadLuaFile("RoleDefine")
UI:Lua_LoadLuaFile("SiteDefine")
UI:Lua_LoadLuaFile("ItemTypeDefine")
UI:Lua_LoadLuaFile("WndDefine")
UI:Lua_LoadLuaFile("MagicDefine")

--工具产生的定义
UI:Lua_LoadLuaFile("DB_AttDefine")
UI:Lua_LoadLuaFile("DB_ItemDefine")
UI:Lua_LoadLuaFile("DB_SkillDefine")
UI:Lua_LoadLuaFile("DB_SuitDefine")
UI:Lua_LoadLuaFile("DB_BuffDefine")

--物品实体相关定义,依赖于上面的定义,所以需要放在后面一点
UI:Lua_LoadLuaFile("ItemEntityDefine")

--游戏事件定义
UI:Lua_LoadLuaFile("GameEventDefine")
UI:Lua_LoadLuaFile("GameEvent")

--常用函数
UI:Lua_LoadLuaFile("CommonFun")

--角色名字颜色，精炼封印等逻辑相关功能函数
UI:Lua_LoadLuaFile("LogicFunction")

--道具Tip
UI:Lua_LoadLuaFile("TipLayoutDesign")
UI:Lua_LoadLuaFile("TipLayout")
UI:Lua_LoadLuaFile("GuideFunction")
UI:Lua_LoadLuaFile("GuideData")

--屏幕特效
UI:Lua_LoadLuaFile("ItemEffect")

--UI窗口
UI:Lua_LoadLuaFile("UIMain")
UI:Lua_LoadLuaFile("UIWndApi")
UI:Lua_LoadLuaFile("UIDriver")
--倒计时礼包窗口
UI:Lua_LoadLuaFile("UITimeGiftBox")
--礼包物品领取窗口
UI:Lua_LoadLuaFile("UITimeGiftItemWnd")

UI:Lua_GenForm("时间礼包")

--特效事件
UI:Lua_LoadLuaFile("MagicEvent")
UI:Lua_LoadLuaFile("PlayerRelive")

UI:Lua_LoadLuaFile("gmbox")
UI:Lua_LoadLuaFile("EquipMagic")