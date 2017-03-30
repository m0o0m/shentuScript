package script
{
	public class ReliveDefine
	{
		var MAP_OPTION_MAP				= 0;
		var MAP_OPTION_MAP_LOCAL		= 0;
		var MAP_OPTION_DUNGEON			= 0;
		var MAP_OPTION_DUNGEON_LOCAL	= 0;

		var RELIVE_SKILL	= 0;
		var RELIVE_LOCAL	= 0;
		var RELIVE_MAP		= 0;
		var RELIVE_DUNGEON	= 0;
		public function ReliveDefine()
		{
			//Relive的宏定义
			var i = 1;
			MAP_OPTION_MAP = i;i=i+1;//为仅{回到附近城市}
			MAP_OPTION_MAP_LOCAL = i;i=i+1;//回到附近城市 or 原地复活
			MAP_OPTION_DUNGEON = i;i=i+1;//回到副本入口
			MAP_OPTION_DUNGEON_LOCAL = i;i=i+1;//回到副本入口 or 原地复活

			i = 0;
			RELIVE_SKILL = i;i=i+1;//技能复活
			RELIVE_LOCAL = i;i=i+1;//原地复活
			RELIVE_MAP = i;i=i+1;//回城复活 复活点复活
			RELIVE_DUNGEON = i;i=i+1;//副本复活
			addApi("MAP_OPTION_MAP",MAP_OPTION_MAP);
			addApi("MAP_OPTION_MAP_LOCAL",MAP_OPTION_MAP_LOCAL);
			addApi("MAP_OPTION_DUNGEON",MAP_OPTION_DUNGEON);
			addApi("MAP_OPTION_DUNGEON_LOCAL",MAP_OPTION_DUNGEON_LOCAL);
			addApi("RELIVE_SKILL",RELIVE_SKILL);
			addApi("RELIVE_LOCAL",RELIVE_LOCAL);
			addApi("RELIVE_MAP",RELIVE_MAP);
			addApi("RELIVE_DUNGEON",RELIVE_DUNGEON);
		}
	}
}