package script
{
	public class UIDriver
	{
		public function UIDriver()
		{
			main();
		}
		private function main()
		{
			RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"脚本表单Sc",UIDriver_Jiaoben_OnShowForm);
			RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"form内容表单Sc",UIDriver_Forminfo_OnShowForm);
			RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"form文件表单Sc",UIDriver_Formfile_OnShowForm);
		}
		//脚本表单
		function UIDriver_Jiaoben_OnShowForm()
		{
			if(LuaParam[1] != "脚本表单Sc" )
			{
				return;
			}
			var func = LuaParam[2];
			Execute(func);
		}
		//form内容表单
		function UIDriver_Forminfo_OnShowForm()
		{
			if(LuaParam[1] != "form内容表单Sc")
			{
				return;
			}
			var str = LuaParam[2];
			CL.GenFormByStringSc(str);
		}
		//form文件表单
		function UIDriver_Formfile_OnShowForm()
		{
			if(LuaParam[1] != "form文件表单Sc" )
			{
				return;
			}
			var str = LuaParam[2];
			UI.Lua_GenForm(str);
		}
	}
}