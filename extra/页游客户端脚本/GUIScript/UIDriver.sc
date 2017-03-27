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
			RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"�ű���Sc",UIDriver_Jiaoben_OnShowForm);
			RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"form���ݱ�Sc",UIDriver_Forminfo_OnShowForm);
			RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"form�ļ���Sc",UIDriver_Formfile_OnShowForm);
		}
		//�ű���
		function UIDriver_Jiaoben_OnShowForm()
		{
			if(LuaParam[1] != "�ű���Sc" )
			{
				return;
			}
			var func = LuaParam[2];
			Execute(func);
		}
		//form���ݱ�
		function UIDriver_Forminfo_OnShowForm()
		{
			if(LuaParam[1] != "form���ݱ�Sc")
			{
				return;
			}
			var str = LuaParam[2];
			CL.GenFormByStringSc(str);
		}
		//form�ļ���
		function UIDriver_Formfile_OnShowForm()
		{
			if(LuaParam[1] != "form�ļ���Sc" )
			{
				return;
			}
			var str = LuaParam[2];
			UI.Lua_GenForm(str);
		}
	}
}