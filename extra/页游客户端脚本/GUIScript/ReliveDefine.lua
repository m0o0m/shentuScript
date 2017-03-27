--Relive的宏定义
local i = 1
MAP_OPTION_MAP = i;i=i+1--为仅{回到附近城市}
MAP_OPTION_MAP_LOCAL = i;i=i+1--回到附近城市 or 原地复活
MAP_OPTION_DUNGEON = i;i=i+1--回到副本入口
MAP_OPTION_DUNGEON_LOCAL = i;i=i+1--回到副本入口 or 原地复活

i = 0
RELIVE_SKILL =  i;i=i+1--技能复活
RELIVE_LOCAL =  i;i=i+1--原地复活
RELIVE_MAP =  i;i=i+1--回城复活 复活点复活
RELIVE_DUNGEON =  i;i=i+1--副本复活