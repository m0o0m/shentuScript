package script
{
	public class RoleDefine
	{
		//Role的宏定义
		var ROLE_PROP_ROLEID                          = 0;
		var ROLE_PROP_ROLENAME                        = 0;
		var ROLE_PROP_SEX                             = 0;
		var ROLE_PROP_JOB                             = 0;
		var ROLE_PROP_STATUS                          = 0;
		var ROLE_PROP_POSX                            = 0;
		var ROLE_PROP_POSY                            = 0;
		var ROLE_PROP_DIR                             = 0;
		var ROLE_PROP_RESTHP                          = 0;
		var ROLE_PROP_HELMETID                        = 0;
		var ROLE_PROP_CLOTHESID                       = 0;
		var ROLE_PROP_WEAPONID                        = 0;
		var ROLE_PROP_WEAPONITEMID                    = 0;
		var ROLE_PROP_WINGSID                         = 0;
		var ROLE_PROP_MOUNTID                         = 0;
		var ROLE_PROP_HAIRCOLOR                       = 0;
		var ROLE_PROP_HAIRSTYLE                       = 0;
		var ROLE_PROP_HEADER                          = 0;
		var ROLE_PROP_LEVEL                           = 0;
		var ROLE_PROP_FAMILY_NAME                     = 0;
		var ROLE_PROP_FAMILY_TITLE                    = 0;
		var ROLE_PROP_ALIAS                           = 0;

		var ROLE_PROP64_EXP                           = 0;
		var ROLE_PROP64_INGOT                         = 0;
		var ROLE_PROP64_BIND_INGOT                    = 0;
		var ROLE_PROP64_INTEGRAL                      = 0;
		var ROLE_PROP64_GOLD                          = 0;
		var ROLE_PROP64_BIND_GOLD                     = 0;
		var ROLE_PROP64_GOLD_DEPOSIT                  = 0;
		var ROLE_PROP64_INNER_FORCE_EXP			=0;

		var ROLE_PROP32_LEVEL                         = 0;
		var ROLE_PROP32_JOB                           = 0;
		var ROLE_PROP32_HP                            = 0;
		var ROLE_PROP32_MAX_HP                        = 0;
		var ROLE_PROP32_MP                            = 0;
		var ROLE_PROP32_MAX_MP                        = 0;
		var ROLE_PROP32_MAX_PHY_DEF                   = 0;
		var ROLE_PROP32_MIN_PHY_DEF                   = 0;
		var ROLE_PROP32_MAX_MAG_DEF                   = 0;
		var ROLE_PROP32_MIN_MAG_DEF                   = 0;
		var ROLE_PROP32_MAX_PHY_ATK                   = 0;
		var ROLE_PROP32_MIN_PHY_ATK                   = 0;
		var ROLE_PROP32_MAX_MAG_ATK                   = 0;
		var ROLE_PROP32_MIN_MAG_ATK                   = 0;
		var ROLE_PROP32_MAX_TAO_ATK                   = 0;
		var ROLE_PROP32_MIN_TAO_ATK                   = 0;

		var ROLE_PROP32_HIT                           = 0;
		var ROLE_PROP32_MISS                          = 0;
		var ROLE_PROP32_MOVE_SPEED                    = 0;
		var ROLE_PROP32_ATTACK_SPEED                  = 0;

		var ROLE_PROP32_WEIGHT                        = 0;
		var ROLE_PROP32_MAX_WEIGHT                    = 0;
		var ROLE_PROP32_EQUIP_WEIGHT                  = 0;
		var ROLE_PROP32_MAX_EQUIP_WEIGHT              = 0;
		var ROLE_PROP32_BRAWN                         = 0;
		var ROLE_PROP32_MAX_BRAWN                     = 0;

		var ROLE_PROP32_POINT                         = 0;
		var ROLE_PROP32_POINT_HP                      = 0;
		var ROLE_PROP32_POINT_MP                      = 0;
		var ROLE_PROP32_POINT_PHY_ATK                 = 0;
		var ROLE_PROP32_POINT_MAG_ATK                 = 0;
		var ROLE_PROP32_POINT_TAO_ATK                 = 0;
		var ROLE_PROP32_POINT_PHY_DEF                 = 0;
		var ROLE_PROP32_POINT_MAG_DEF                 = 0;

		var ROLE_PROP32_ELE_1_ATK                     = 0;
		var ROLE_PROP32_ELE_2_ATK                     = 0;
		var ROLE_PROP32_ELE_3_ATK                     = 0;
		var ROLE_PROP32_ELE_4_ATK                     = 0;
		var ROLE_PROP32_ELE_5_ATK                     = 0;

		var ROLE_PROP32_ELE_1_DEF                     = 0;
		var ROLE_PROP32_ELE_2_DEF                     = 0;
		var ROLE_PROP32_ELE_3_DEF                     = 0;
		var ROLE_PROP32_ELE_4_DEF                     = 0;
		var ROLE_PROP32_ELE_5_DEF                     = 0;

		var ROLE_PROP32_HP_REC                        = 0;
		var ROLE_PROP32_MP_REC                        = 0;
		var ROLE_PROP32_POISON_REC                    = 0;

		var ROLE_PROP32_ENERGY                        = 0;
		var ROLE_PROP32_MAX_ENERGY                    = 0;

		var ROLE_PROP32_BURST                         = 0;
		var ROLE_PROP32_LUCK_CURSE                    = 0;
		var ROLE_PROP32_PK                            = 0;
		var ROLE_PROP32_PRESTIGE                      = 0;
		var ROLE_PROP32_MERITORIOUS                   = 0;
		var ROLE_PROP32_ACHIEVEMENT                   = 0;

		/////    转生
		var ROLE_PROP32_REINCARNATION                 = 0;
		var ROLE_PROP32_REIN_HP                       = 0;
		var ROLE_PROP32_REIN_MP                       = 0;
		var ROLE_PROP32_REIN_MAX_PHY_DEF              = 0;
		var ROLE_PROP32_REIN_MIN_PHY_DEF              = 0;
		var ROLE_PROP32_REIN_MAX_MAG_DEF              = 0;
		var ROLE_PROP32_REIN_MIN_MAG_DEF              = 0;
		var ROLE_PROP32_REIN_MAX_PHY_ATK              = 0;
		var ROLE_PROP32_REIN_MIN_PHY_ATK              = 0;
		var ROLE_PROP32_REIN_MAX_MAG_ATK              = 0;
		var ROLE_PROP32_REIN_MIN_MAG_ATK              = 0;
		var ROLE_PROP32_REIN_MAX_TAO_ATK              = 0;
		var ROLE_PROP32_REIN_MIN_TAO_ATK              = 0;
		var ROLE_PROP32_REIN_HIT                      = 0;
		var ROLE_PROP32_REIN_MISS                     = 0;
		var ROLE_PROP32_REIN_BURST                    = 0;
		var ROLE_PROP32_REIN_WEIGHT                   = 0;
		var ROLE_PROP32_REIN_EQUIP_WEIGHT             = 0;
		var ROLE_PROP32_REIN_BRAWN                    = 0;

		var ROLE_PROP32_BAG_SIZE_0                    = 0;
		var ROLE_PROP32_BAG_SIZE_1                    = 0;
		var ROLE_PROP32_BAG_SIZE_2                    = 0;
		var ROLE_PROP32_BAG_SIZE_3                    = 0;
		var ROLE_PROP32_BAG_SIZE_4                    = 0;

		var ROLE_PROP32_WAREHOUSE_SIZE                = 0;
		var ROLE_PROP32_WAREHOUSE_ADV_SIZE            = 0;

		/////    role 运行时百分比加成
		var ROLE_PROP32_MAX_HP_PCT                    = 0;
		var ROLE_PROP32_MAX_MP_PCT                    = 0;
		var ROLE_PROP32_MAX_PHY_DEF_PCT               = 0;
		var ROLE_PROP32_MIN_PHY_DEF_PCT               = 0;
		var ROLE_PROP32_MAX_MAG_DEF_PCT               = 0;
		var ROLE_PROP32_MIN_MAG_DEF_PCT               = 0;
		var ROLE_PROP32_MAX_PHY_ATK_PCT               = 0;
		var ROLE_PROP32_MIN_PHY_ATK_PCT               = 0;
		var ROLE_PROP32_MAX_MAG_ATK_PCT               = 0;
		var ROLE_PROP32_MIN_MAG_ATK_PCT               = 0;
		var ROLE_PROP32_MAX_TAO_ATK_PCT               = 0;
		var ROLE_PROP32_MIN_TAO_ATK_PCT               = 0;

		var ROLE_PROP32_ELE_1_ATK_PCT                 = 0;
		var ROLE_PROP32_ELE_2_ATK_PCT                 = 0;
		var ROLE_PROP32_ELE_3_ATK_PCT                 = 0;
		var ROLE_PROP32_ELE_4_ATK_PCT                 = 0;
		var ROLE_PROP32_ELE_5_ATK_PCT                 = 0;

		var ROLE_PROP32_ELE_1_DEF_PCT                 = 0;
		var ROLE_PROP32_ELE_2_DEF_PCT                 = 0;
		var ROLE_PROP32_ELE_3_DEF_PCT                 = 0;
		var ROLE_PROP32_ELE_4_DEF_PCT                 = 0;
		var ROLE_PROP32_ELE_5_DEF_PCT                 = 0;

		var ROLE_PROP32_MAX_WEIGHT_PCT                = 0;
		var ROLE_PROP32_MAX_EQUIP_WEIGHT_PCT          = 0;
		var ROLE_PROP32_MAX_BRAWN_PCT                 = 0;

		var ROLE_PROP32_HP_REC_PCT                    = 0;
		var ROLE_PROP32_MP_REC_PCT                    = 0;
		var ROLE_PROP32_POISON_REC_PCT                = 0;

		//    速度相关，另外一套运算
		var ROLE_PROP32_MOVE_SPEED_PCT                = 0;
		var ROLE_PROP32_ATTACK_SPEED_PCT              = 0;

		//   战斗属性

		var ROLE_PROP32_SUCK_HP                       = 0;
		var ROLE_PROP32_SUCK_HP_PCT                   = 0;
		var ROLE_PROP32_SUCK_MAX_HP_PCT               = 0;
		 
		var ROLE_PROP32_SUCK_MP                       = 0;
		var ROLE_PROP32_SUCK_MP_PCT                   = 0;
		var ROLE_PROP32_SUCK_MAX_MP_PCT               = 0;
		 
		var ROLE_PROP32_REF_PHY                       = 0;
		var ROLE_PROP32_REF_PHY_PCT                   = 0;
		 
		var ROLE_PROP32_REF_MAG                       = 0;
		var ROLE_PROP32_REF_MAG_PCT                   = 0;
		 
		var ROLE_PROP32_IMM_MAG                       = 0;
		var ROLE_PROP32_IMM_MAG_PCT                   = 0;
		 
		var ROLE_PROP32_IMM_PHY                       = 0;
		var ROLE_PROP32_IMM_PHY_PCT                   = 0;
		
		var ROLE_PROP32_ATK_MODE                      = 0;
		 
		/////    状态开关		 
		var ROLE_PROP32_CAN_WALK					= 0;
		var ROLE_PROP32_CAN_RUN					= 0;
		var ROLE_PROP32_CAN_TURN					= 0;
		var ROLE_PROP32_CAN_JUMP_MAP			= 0;
		var ROLE_PROP32_CAN_PHY_ATK				= 0;
		var ROLE_PROP32_CAN_MAG_ATK			= 0;
		var ROLE_PROP32_CAN_USE_ITEM			= 0;
		 
		var ROLE_PROP32_IS_PHY_IMM                    = 0;
		var ROLE_PROP32_IS_MAG_IMM                    = 0;
		var ROLE_PROP32_IS_STEALTH                    = 0;
		 
		var ROLE_PROP32_HAS_MANA_SHIELD               = 0;
		var ROLE_PROP32_HAS_COLLIDE                   = 0;
		var ROLE_PROP32_HAS_REPELLED                  = 0;
		var ROLE_PROP32_CAN_PUSH                      = 0;
		var ROLE_PROP32_CAN_USE_SKILL                 = 0;
		 
		var ROLE_PROP32_IS_BLACK                      = 0;
		 
		var ROLE_PROP32_HAS_IMM_SHIELD                = 0;
		var ROLE_PROP32_IMM_SHIELD                    = 0;
		 
		var ROLE_PROP32_HAS_BAG_GUARD                 = 0;
		var ROLE_PROP32_HAS_EQUIP_GUARD               = 0;
		var ROLE_PROP32_IS_GRAY                       = 0;
		var ROLE_PROP32_IS_CHAOS                      = 0;
		var ROLE_PROP32_IS_POISONING                  = 0;
		 
		var ROLE_PROP32_INNER_FORCE                     =0;
		var ROLE_PROP32_INNER_FORCE_LV            		 =0;
		var ROLE_PROP32_INNER_FORCE_REC                =0;
		var ROLE_PROP32_INNER_FORCE_REC_PCT         =0;

		 
		var ROLE_PROP32_HAS_TEAM                      = 0;
		var ROLE_PROP32_GENDER                        = 0;
		var ROLE_PROP32_HEAD                          = 0;
		var ROLE_PROP32_HAIR                          = 0;
		var ROLE_PROP32_HAIR_COLOR                    = 0;
		var ROLE_PROP32_GM_LEVEL                      = 0;
		var ROLE_PROP32_IDENTIFY                      = 0;
		var ROLE_PROP32_TITLE                         = 0;
		var ROLE_PROP32_GOLD_SETTLEMENT               = 0;
		var ROLE_PROP32_STALL                         = 0;
		var ROLE_PROP32_FRIEND_SWITCH                 = 0;
		var ROLE_PROP32_TEAM_SWITCH                   = 0;
		var ROLE_PROP32_HAS_FAMILY                    = 0;
		var ROLE_PROP32_EXP_PCT                       = 0;
		var ROLE_PROP32_MAG_MISS                      = 0;
		var ROLE_PROP32_INTENSITY                     = 0;
		
		var ROLE_PROP32_VIP_LEVEL                     = 0;
		
		var ROLE_PROP32_INTIMACY                    = 0;
		var ROLE_PROP32_JJC_RONGYAO                 = 0;
	
		//组队Tip头像上的信息查询索引定义////////                     
		var TEAMINFO_NAME                           = 0;
		var TEAMINFO_HEAD                           = 0;
		var TEAMINFO_ONLINE                         = 0;
		var TEAMINFO_LEVEL                          = 0;
		var TEAMINFO_JOB                            = 0;
		var TEAMINFO_GENDER                         = 0;
		var TEAMINFO_MAPCODE                        = 0;
		var TEAMINFO_MAPNAME                        = 0;


		public function RoleDefine()
		{
			//Role的宏定义
			var i = 0;
			ROLE_PROP_ROLEID                          =i;i=i+1;////角色ID
			ROLE_PROP_ROLENAME                        =i;i=i+1;////角色名
			ROLE_PROP_SEX                             =i;i=i+1;////性别
			ROLE_PROP_JOB                             =i;i=i+1;////职业
			ROLE_PROP_STATUS                          =i;i=i+1;////状态:0＝活着的，1＝死亡,尸体完整的， 2＝残骸,被挖过的
			ROLE_PROP_POSX                            =i;i=i+1;////位置X坐标
			ROLE_PROP_POSY                            =i;i=i+1;////位置Y坐标
			ROLE_PROP_DIR                             =i;i=i+1;////方向
			ROLE_PROP_RESTHP                          =i;i=i+1;////HP百分比
			ROLE_PROP_HELMETID                        =i;i=i+1;////头盔ID
			ROLE_PROP_CLOTHESID                       =i;i=i+1;////衣服ID
			ROLE_PROP_WEAPONID                        =i;i=i+1;////武器ID
			ROLE_PROP_WEAPONITEMID                    =i;i=i+1;////武器ID
			ROLE_PROP_WINGSID                         =i;i=i+1;////翅膀ID
			ROLE_PROP_MOUNTID                         =i;i=i+1;////坐骑ID
			ROLE_PROP_HAIRCOLOR                       =i;i=i+1;////发型颜色
			ROLE_PROP_HAIRSTYLE                       =i;i=i+1;////发型
			ROLE_PROP_HEADER                          =i;i=i+1;////头像
			ROLE_PROP_LEVEL                           =i;i=i+1;////等级
			ROLE_PROP_FAMILY_NAME                     =i;i=i+1;////行会名称
			ROLE_PROP_FAMILY_TITLE                    =i;i=i+1;////行会称号
			ROLE_PROP_ALIAS                           =i;i=i+1;////别名

			i = 0;
			ROLE_PROP64_EXP                           =i;i=i+1;/////经验
			ROLE_PROP64_INGOT                         =i;i=i+1;/////元宝
			ROLE_PROP64_BIND_INGOT                    =i;i=i+1;/////绑定元宝
			ROLE_PROP64_INTEGRAL                      =i;i=i+1;/////积分
			ROLE_PROP64_GOLD                          =i;i=i+1;/////金币
			ROLE_PROP64_BIND_GOLD                     =i;i=i+1;/////绑定金币
			ROLE_PROP64_GOLD_DEPOSIT                  =i;i=i+1;/////仓库金币
			ROLE_PROP64_INNER_FORCE_EXP                =i;i=i+1;///内功经验

			i = 0;
			ROLE_PROP32_LEVEL                         =i;i=i+1;
			ROLE_PROP32_JOB                           =i;i=i+1;
			ROLE_PROP32_HP                            =i;i=i+1;/////hp
			ROLE_PROP32_MAX_HP                        =i;i=i+1;
			ROLE_PROP32_MP                            =i;i=i+1;/////mp
			ROLE_PROP32_MAX_MP                        =i;i=i+1;
			ROLE_PROP32_MAX_PHY_DEF                   =i;i=i+1;/////physical defense
			ROLE_PROP32_MIN_PHY_DEF                   =i;i=i+1;
			ROLE_PROP32_MAX_MAG_DEF                   =i;i=i+1;/////magical defense
			ROLE_PROP32_MIN_MAG_DEF                   =i;i=i+1;
			ROLE_PROP32_MAX_PHY_ATK                   =i;i=i+1;/////physical attack
			ROLE_PROP32_MIN_PHY_ATK                   =i;i=i+1;
			ROLE_PROP32_MAX_MAG_ATK                   =i;i=i+1;/////magical attack
			ROLE_PROP32_MIN_MAG_ATK                   =i;i=i+1;
			ROLE_PROP32_MAX_TAO_ATK                   =i;i=i+1;/////taoism attack
			ROLE_PROP32_MIN_TAO_ATK                   =i;i=i+1;

			ROLE_PROP32_HIT                           =i;i=i+1;/////命中
			ROLE_PROP32_MISS                          =i;i=i+1;/////闪避
			ROLE_PROP32_MOVE_SPEED                    =i;i=i+1;/////移动速度，基准值
			ROLE_PROP32_ATTACK_SPEED                  =i;i=i+1;/////攻击速度，基准值

			ROLE_PROP32_WEIGHT                        =i;i=i+1;/////背包负重
			ROLE_PROP32_MAX_WEIGHT                    =i;i=i+1;
			ROLE_PROP32_EQUIP_WEIGHT                  =i;i=i+1;/////装备负重
			ROLE_PROP32_MAX_EQUIP_WEIGHT              =i;i=i+1;
			ROLE_PROP32_BRAWN                         =i;i=i+1;/////腕力
			ROLE_PROP32_MAX_BRAWN                     =i;i=i+1;

			ROLE_PROP32_POINT                         =i;i=i+1;/////剩余属性点
			ROLE_PROP32_POINT_HP                      =i;i=i+1;/////hp point
			ROLE_PROP32_POINT_MP                      =i;i=i+1;/////mp point
			ROLE_PROP32_POINT_PHY_ATK                 =i;i=i+1;/////physical attack point
			ROLE_PROP32_POINT_MAG_ATK                 =i;i=i+1;/////magical attack point
			ROLE_PROP32_POINT_TAO_ATK                 =i;i=i+1;/////taoism attack point
			ROLE_PROP32_POINT_PHY_DEF                 =i;i=i+1;/////physical defense point
			ROLE_PROP32_POINT_MAG_DEF                 =i;i=i+1;/////magical defense point

			ROLE_PROP32_ELE_1_ATK                     =i;i=i+1;/////属性攻击1
			ROLE_PROP32_ELE_2_ATK                     =i;i=i+1;/////属性攻击2
			ROLE_PROP32_ELE_3_ATK                     =i;i=i+1;/////属性攻击3
			ROLE_PROP32_ELE_4_ATK                     =i;i=i+1;/////属性攻击4
			ROLE_PROP32_ELE_5_ATK                     =i;i=i+1;/////属性攻击5

			ROLE_PROP32_ELE_1_DEF                     =i;i=i+1;/////属性防御1
			ROLE_PROP32_ELE_2_DEF                     =i;i=i+1;/////属性防御2
			ROLE_PROP32_ELE_3_DEF                     =i;i=i+1;/////属性防御3
			ROLE_PROP32_ELE_4_DEF                     =i;i=i+1;/////属性防御4
			ROLE_PROP32_ELE_5_DEF                     =i;i=i+1;/////属性防御5

			ROLE_PROP32_HP_REC                        =i;i=i+1;/////hp回复速度
			ROLE_PROP32_MP_REC                        =i;i=i+1;/////mp回复速度
			ROLE_PROP32_POISON_REC                    =i;i=i+1;/////中毒恢复速度

			ROLE_PROP32_ENERGY                        =i;i=i+1;/////活力
			ROLE_PROP32_MAX_ENERGY                    =i;i=i+1;/////活力上限

			ROLE_PROP32_BURST                         =i;i=i+1;/////暴击率
			ROLE_PROP32_LUCK_CURSE                    =i;i=i+1;/////幸运/诅咒
			ROLE_PROP32_PK                            =i;i=i+1;/////PK值
			ROLE_PROP32_PRESTIGE                      =i;i=i+1;/////声望
			ROLE_PROP32_MERITORIOUS                   =i;i=i+1;/////功勋
			ROLE_PROP32_ACHIEVEMENT                   =i;i=i+1;/////成就

			////////////////////////////////////////////////////////////////////////////
			/////    转生
			ROLE_PROP32_REINCARNATION                 =i;i=i+1;
			ROLE_PROP32_REIN_HP                       =i;i=i+1;
			ROLE_PROP32_REIN_MP                       =i;i=i+1;
			ROLE_PROP32_REIN_MAX_PHY_DEF              =i;i=i+1;/////physical defense
			ROLE_PROP32_REIN_MIN_PHY_DEF              =i;i=i+1;
			ROLE_PROP32_REIN_MAX_MAG_DEF              =i;i=i+1;/////magical defense
			ROLE_PROP32_REIN_MIN_MAG_DEF              =i;i=i+1;
			ROLE_PROP32_REIN_MAX_PHY_ATK              =i;i=i+1;/////physical attack
			ROLE_PROP32_REIN_MIN_PHY_ATK              =i;i=i+1;
			ROLE_PROP32_REIN_MAX_MAG_ATK              =i;i=i+1;/////magical attack
			ROLE_PROP32_REIN_MIN_MAG_ATK              =i;i=i+1;
			ROLE_PROP32_REIN_MAX_TAO_ATK              =i;i=i+1;/////taoism attack
			ROLE_PROP32_REIN_MIN_TAO_ATK              =i;i=i+1;
			ROLE_PROP32_REIN_HIT                      =i;i=i+1;/////命中
			ROLE_PROP32_REIN_MISS                     =i;i=i+1;/////闪避
			ROLE_PROP32_REIN_BURST                    =i;i=i+1;/////暴击率
			ROLE_PROP32_REIN_WEIGHT                   =i;i=i+1;/////背包负重
			ROLE_PROP32_REIN_EQUIP_WEIGHT             =i;i=i+1;/////装备负重
			ROLE_PROP32_REIN_BRAWN                    =i;i=i+1;/////腕力
			////////////////////////////////////////////////////////////////////////////

			ROLE_PROP32_BAG_SIZE_0                    =i;i=i+1;/////包裹0大小
			ROLE_PROP32_BAG_SIZE_1                    =i;i=i+1;/////包裹1大小
			ROLE_PROP32_BAG_SIZE_2                    =i;i=i+1;/////包裹2大小
			ROLE_PROP32_BAG_SIZE_3                    =i;i=i+1;/////包裹3大小
			ROLE_PROP32_BAG_SIZE_4                    =i;i=i+1;/////包裹4大小

			ROLE_PROP32_WAREHOUSE_SIZE                =i;i=i+1;/////玩家的仓库大小
			ROLE_PROP32_WAREHOUSE_ADV_SIZE            =i;i=i+1;/////玩家高级仓库大小
			////////////////////////////////////////////////////////////////////////////

			/////    role 运行时百分比加成
			ROLE_PROP32_MAX_HP_PCT                    =i;i=i+1;/////hp
			ROLE_PROP32_MAX_MP_PCT                    =i;i=i+1;/////mp
			ROLE_PROP32_MAX_PHY_DEF_PCT               =i;i=i+1;/////physical defense
			ROLE_PROP32_MIN_PHY_DEF_PCT               =i;i=i+1;
			ROLE_PROP32_MAX_MAG_DEF_PCT               =i;i=i+1;/////magical defense
			ROLE_PROP32_MIN_MAG_DEF_PCT               =i;i=i+1;
			ROLE_PROP32_MAX_PHY_ATK_PCT               =i;i=i+1;/////physical attack
			ROLE_PROP32_MIN_PHY_ATK_PCT               =i;i=i+1;
			ROLE_PROP32_MAX_MAG_ATK_PCT               =i;i=i+1;/////magical attack
			ROLE_PROP32_MIN_MAG_ATK_PCT               =i;i=i+1;
			ROLE_PROP32_MAX_TAO_ATK_PCT               =i;i=i+1;/////taoism attack
			ROLE_PROP32_MIN_TAO_ATK_PCT               =i;i=i+1;

			ROLE_PROP32_ELE_1_ATK_PCT                 =i;i=i+1;/////属性攻击1
			ROLE_PROP32_ELE_2_ATK_PCT                 =i;i=i+1;/////属性攻击2
			ROLE_PROP32_ELE_3_ATK_PCT                 =i;i=i+1;/////属性攻击3
			ROLE_PROP32_ELE_4_ATK_PCT                 =i;i=i+1;/////属性攻击4
			ROLE_PROP32_ELE_5_ATK_PCT                 =i;i=i+1;/////属性攻击5

			ROLE_PROP32_ELE_1_DEF_PCT                 =i;i=i+1;/////属性防御1
			ROLE_PROP32_ELE_2_DEF_PCT                 =i;i=i+1;/////属性防御2
			ROLE_PROP32_ELE_3_DEF_PCT                 =i;i=i+1;/////属性防御3
			ROLE_PROP32_ELE_4_DEF_PCT                 =i;i=i+1;/////属性防御4
			ROLE_PROP32_ELE_5_DEF_PCT                 =i;i=i+1;/////属性防御5

			ROLE_PROP32_MAX_WEIGHT_PCT                =i;i=i+1;/////背包负重
			ROLE_PROP32_MAX_EQUIP_WEIGHT_PCT          =i;i=i+1;/////装备负重
			ROLE_PROP32_MAX_BRAWN_PCT                 =i;i=i+1;/////腕力

			ROLE_PROP32_HP_REC_PCT                    =i;i=i+1;/////hp回复速度
			ROLE_PROP32_MP_REC_PCT                    =i;i=i+1;/////mp回复速度
			ROLE_PROP32_POISON_REC_PCT                =i;i=i+1;/////中毒恢复速度

			////////////////////////////////////////////////////////////////////////////
			/////    速度相关，另外一套运算
			ROLE_PROP32_MOVE_SPEED_PCT                =i;i=i+1;/////移动速度
			ROLE_PROP32_ATTACK_SPEED_PCT              =i;i=i+1;/////攻击速度
			////////////////////////////////////////////////////////////////////////////

			////////////////////////////////////////////////////////////////////////////
			/////    战斗属性
			////////////////////////////////////////////////////////////////////////////
			ROLE_PROP32_SUCK_HP                       =i;i=i+1;/////吸当前hp - 数值
			ROLE_PROP32_SUCK_HP_PCT                   =i;i=i+1;/////吸当前hp - 百分比
			ROLE_PROP32_SUCK_MAX_HP_PCT               =i;i=i+1;/////吸hp上限 - 百分比

			ROLE_PROP32_SUCK_MP                       =i;i=i+1;/////吸当前mp - 数值
			ROLE_PROP32_SUCK_MP_PCT                   =i;i=i+1;/////吸当前mp - 百分比
			ROLE_PROP32_SUCK_MAX_MP_PCT               =i;i=i+1;/////吸mp上限 - 百分比

			ROLE_PROP32_REF_PHY                       =i;i=i+1;/////物理伤害反射 - 数值
			ROLE_PROP32_REF_PHY_PCT                   =i;i=i+1;/////物理伤害反射 - 百分比

			ROLE_PROP32_REF_MAG                       =i;i=i+1;/////魔法伤害反射 - 数值
			ROLE_PROP32_REF_MAG_PCT                   =i;i=i+1;/////魔法伤害反射 - 百分比

			ROLE_PROP32_IMM_MAG                       =i;i=i+1;/////魔法伤害减免 - 数值
			ROLE_PROP32_IMM_MAG_PCT                   =i;i=i+1;/////魔法伤害减免 - 百分比

			ROLE_PROP32_IMM_PHY                       =i;i=i+1;/////物理伤害减免 - 数值
			ROLE_PROP32_IMM_PHY_PCT                   =i;i=i+1;/////物理伤害减免 - 百分比
			////////////////////////////////////////////////////////////////////////////

			ROLE_PROP32_ATK_MODE                      =i;i=i+1;/////攻击类型

			////////////////////////////////////////////////////////////////////////////
			/////    状态开关
			////////////////////////////////////////////////////////////////////////////
			ROLE_PROP32_CAN_WALK                      =i;i=i+1;/////能走路
			ROLE_PROP32_CAN_RUN                       =i;i=i+1;/////能跑步
			ROLE_PROP32_CAN_TURN                      =i;i=i+1;/////能转向
			ROLE_PROP32_CAN_JUMP_MAP                  =i;i=i+1;/////能跳地图
			ROLE_PROP32_CAN_PHY_ATK                   =i;i=i+1;/////能物理攻击
			ROLE_PROP32_CAN_MAG_ATK                   =i;i=i+1;/////能魔法攻击
			ROLE_PROP32_CAN_USE_ITEM                  =i;i=i+1;/////能使用道具(包括换装)

			ROLE_PROP32_IS_PHY_IMM                    =i;i=i+1;/////物理免疫
			ROLE_PROP32_IS_MAG_IMM                    =i;i=i+1;/////魔法免疫
			ROLE_PROP32_IS_STEALTH                    =i;i=i+1;/////隐形

			ROLE_PROP32_HAS_MANA_SHIELD               =i;i=i+1;/////有mana shield
			ROLE_PROP32_HAS_COLLIDE                   =i;i=i+1;/////处于冲撞状态
			ROLE_PROP32_HAS_REPELLED                  =i;i=i+1;/////处于击退状态
			ROLE_PROP32_CAN_PUSH                      =i;i=i+1;/////能被推
			ROLE_PROP32_CAN_USE_SKILL                 =i;i=i+1;/////能使用技能

			ROLE_PROP32_IS_BLACK                      =i;i=i+1;/////是否为黑名

			ROLE_PROP32_HAS_IMM_SHIELD                =i;i=i+1;/////有imm shield
			ROLE_PROP32_IMM_SHIELD                    =i;i=i+1;/////imm shield 值

			ROLE_PROP32_HAS_BAG_GUARD                 =i;i=i+1;/////有包裹防掉落
			ROLE_PROP32_HAS_EQUIP_GUARD               =i;i=i+1;/////有装备防掉落
			ROLE_PROP32_IS_GRAY                       =i;i=i+1;/////灰名
			ROLE_PROP32_IS_CHAOS                      =i;i=i+1;/////混沌
			ROLE_PROP32_IS_POISONING                  =i;i=i+1;///// 是否中毒(绿毒, 红毒走减防BUFF, 没有属性)
			ROLE_PROP32_IS_GHOST							=i;i=i+1;//ghost
			
			i = 155;
			ROLE_PROP32_INNER_FORCE                     =i;i=i+1;///角色内功值
			ROLE_PROP32_INNER_FORCE_LV                    =i;i=i+1;///角色内功等级
			ROLE_PROP32_INNER_FORCE_REC                  =i;i=i+1;///内功恢复速度
			ROLE_PROP32_INNER_FORCE_REC_PCT           =i;i=i+1;///内功恢复速度百分比

			
			////////////////////////////////////////////////////////////////////////////
			i = 180;
			ROLE_PROP32_HAS_TEAM                      =i;i=i+1;/////有队伍
			ROLE_PROP32_GENDER                        =i;i=i+1;/////性别
			ROLE_PROP32_HEAD                          =i;i=i+1;/////头像
			ROLE_PROP32_HAIR                          =i;i=i+1;/////头发
			ROLE_PROP32_HAIR_COLOR                    =i;i=i+1;/////头发颜色
			ROLE_PROP32_GM_LEVEL                      =i;i=i+1;/////gm等级
			ROLE_PROP32_IDENTIFY                      =i;i=i+1;/////鉴定积分
			ROLE_PROP32_TITLE                         =i;i=i+1;/////称号
			ROLE_PROP32_GOLD_SETTLEMENT               =i;i=i+1;/////金币结算: 1金币结算 0:绑币结算
			ROLE_PROP32_STALL                         =i;i=i+1;/////0: 未摆摊 1: 摆摊准备 2: 摆摊中
			ROLE_PROP32_FRIEND_SWITCH                 =i;i=i+1;/////0: 不可加好友       1: 可加好友
			ROLE_PROP32_TEAM_SWITCH                   =i;i=i+1;/////0: 不接收队伍邀请   1: 接收队伍邀请
			ROLE_PROP32_HAS_FAMILY                    =i;i=i+1;///// 有行会
			ROLE_PROP32_EXP_PCT                       =i;i=i+1;///// 经验倍数
			ROLE_PROP32_MAG_MISS                      =i;i=i+1;///// 魔法闪避
			ROLE_PROP32_INTENSITY                     =i;i=i+1;///// 强度
			////////////////////////////////////////////////////////////////////////////

			i = 201;
			ROLE_PROP32_VIP_LEVEL					=i;i=i+1;/////角色vip等级

			i = 211;
			ROLE_PROP32_INTIMACY					=i;i=i+1;/////亲密度
			ROLE_PROP32_JJC_RONGYAO					=i;i=i+1;/////荣耀值

			//组队Tip头像上的信息查询索引定义//////////////////////////////////////////
			i = 0;
			TEAMINFO_NAME							=i;i=i+1;
			TEAMINFO_HEAD							=i;i=i+1;
			TEAMINFO_ONLINE							=i;i=i+1;
			TEAMINFO_LEVEL							=i;i=i+1;
			TEAMINFO_JOB							=i;i=i+1;
			TEAMINFO_GENDER							=i;i=i+1;
			TEAMINFO_MAPCODE						=i;i=i+1;
			TEAMINFO_MAPNAME						=i;i=i+1;
			
			addApi("ROLE_PROP_ROLEID",ROLE_PROP_ROLEID);
			addApi("ROLE_PROP_ROLENAME",ROLE_PROP_ROLENAME);
			addApi("ROLE_PROP_SEX",ROLE_PROP_SEX);
			addApi("ROLE_PROP_JOB",ROLE_PROP_JOB);
			addApi("ROLE_PROP_STATUS",ROLE_PROP_STATUS);
			addApi("ROLE_PROP_POSX",ROLE_PROP_POSX);
			addApi("ROLE_PROP_POSY",ROLE_PROP_POSY);
			addApi("ROLE_PROP_DIR",ROLE_PROP_DIR);
			addApi("ROLE_PROP_RESTHP",ROLE_PROP_RESTHP);
			addApi("ROLE_PROP_HELMETID",ROLE_PROP_HELMETID);
			addApi("ROLE_PROP_CLOTHESID",ROLE_PROP_CLOTHESID);
			addApi("ROLE_PROP_WEAPONID",ROLE_PROP_WEAPONID);
			addApi("ROLE_PROP_WEAPONITEMID",ROLE_PROP_WEAPONITEMID);
			addApi("ROLE_PROP_WINGSID",ROLE_PROP_WINGSID);
			addApi("ROLE_PROP_MOUNTID",ROLE_PROP_MOUNTID);
			addApi("ROLE_PROP_HAIRCOLOR",ROLE_PROP_HAIRCOLOR);
			addApi("ROLE_PROP_HAIRSTYLE",ROLE_PROP_HAIRSTYLE);
			addApi("ROLE_PROP_HEADER",ROLE_PROP_HEADER);
			addApi("ROLE_PROP_LEVEL",ROLE_PROP_LEVEL);
			addApi("ROLE_PROP_FAMILY_NAME",ROLE_PROP_FAMILY_NAME);
			addApi("ROLE_PROP_FAMILY_TITLE",ROLE_PROP_FAMILY_TITLE);
			addApi("ROLE_PROP_ALIAS",ROLE_PROP_ALIAS);
			addApi("ROLE_PROP64_EXP",ROLE_PROP64_EXP);
			addApi("ROLE_PROP64_INGOT",ROLE_PROP64_INGOT);
			addApi("ROLE_PROP64_BIND_INGOT",ROLE_PROP64_BIND_INGOT);
			addApi("ROLE_PROP64_INTEGRAL",ROLE_PROP64_INTEGRAL);
			addApi("ROLE_PROP64_GOLD",ROLE_PROP64_GOLD);
			addApi("ROLE_PROP64_BIND_GOLD",ROLE_PROP64_BIND_GOLD);
			addApi("ROLE_PROP64_GOLD_DEPOSIT",ROLE_PROP64_GOLD_DEPOSIT);
			addApi("ROLE_PROP32_LEVEL",ROLE_PROP32_LEVEL);
			addApi("ROLE_PROP32_JOB",ROLE_PROP32_JOB);
			addApi("ROLE_PROP32_HP",ROLE_PROP32_HP);
			addApi("ROLE_PROP32_MAX_HP",ROLE_PROP32_MAX_HP);
			addApi("ROLE_PROP32_MP",ROLE_PROP32_MP);
			addApi("ROLE_PROP32_MAX_MP",ROLE_PROP32_MAX_MP);
			addApi("ROLE_PROP32_MAX_PHY_DEF",ROLE_PROP32_MAX_PHY_DEF);
			addApi("ROLE_PROP32_MIN_PHY_DEF",ROLE_PROP32_MIN_PHY_DEF);
			addApi("ROLE_PROP32_MAX_MAG_DEF",ROLE_PROP32_MAX_MAG_DEF);
			addApi("ROLE_PROP32_MIN_MAG_DEF",ROLE_PROP32_MIN_MAG_DEF);
			addApi("ROLE_PROP32_MAX_PHY_ATK",ROLE_PROP32_MAX_PHY_ATK);
			addApi("ROLE_PROP32_MIN_PHY_ATK",ROLE_PROP32_MIN_PHY_ATK);
			addApi("ROLE_PROP32_MAX_MAG_ATK",ROLE_PROP32_MAX_MAG_ATK);
			addApi("ROLE_PROP32_MIN_MAG_ATK",ROLE_PROP32_MIN_MAG_ATK);
			addApi("ROLE_PROP32_MAX_TAO_ATK",ROLE_PROP32_MAX_TAO_ATK);
			addApi("ROLE_PROP32_MIN_TAO_ATK",ROLE_PROP32_MIN_TAO_ATK);
			addApi("ROLE_PROP32_HIT",ROLE_PROP32_HIT);
			addApi("ROLE_PROP32_MISS",ROLE_PROP32_MISS);
			addApi("ROLE_PROP32_MOVE_SPEED",ROLE_PROP32_MOVE_SPEED);
			addApi("ROLE_PROP32_ATTACK_SPEED",ROLE_PROP32_ATTACK_SPEED);
			addApi("ROLE_PROP32_WEIGHT",ROLE_PROP32_WEIGHT);
			addApi("ROLE_PROP32_MAX_WEIGHT",ROLE_PROP32_MAX_WEIGHT);
			addApi("ROLE_PROP32_EQUIP_WEIGHT",ROLE_PROP32_EQUIP_WEIGHT);
			addApi("ROLE_PROP32_MAX_EQUIP_WEIGHT",ROLE_PROP32_MAX_EQUIP_WEIGHT);
			addApi("ROLE_PROP32_BRAWN",ROLE_PROP32_BRAWN);
			addApi("ROLE_PROP32_MAX_BRAWN",ROLE_PROP32_MAX_BRAWN);
			addApi("ROLE_PROP32_POINT",ROLE_PROP32_POINT);
			addApi("ROLE_PROP32_POINT_HP",ROLE_PROP32_POINT_HP);
			addApi("ROLE_PROP32_POINT_MP",ROLE_PROP32_POINT_MP);
			addApi("ROLE_PROP32_POINT_PHY_ATK",ROLE_PROP32_POINT_PHY_ATK);
			addApi("ROLE_PROP32_POINT_MAG_ATK",ROLE_PROP32_POINT_MAG_ATK);
			addApi("ROLE_PROP32_POINT_TAO_ATK",ROLE_PROP32_POINT_TAO_ATK);
			addApi("ROLE_PROP32_POINT_PHY_DEF",ROLE_PROP32_POINT_PHY_DEF);
			addApi("ROLE_PROP32_POINT_MAG_DEF",ROLE_PROP32_POINT_MAG_DEF);
			addApi("ROLE_PROP32_ELE_1_ATK",ROLE_PROP32_ELE_1_ATK);
			addApi("ROLE_PROP32_ELE_2_ATK",ROLE_PROP32_ELE_2_ATK);
			addApi("ROLE_PROP32_ELE_3_ATK",ROLE_PROP32_ELE_3_ATK);
			addApi("ROLE_PROP32_ELE_4_ATK",ROLE_PROP32_ELE_4_ATK);
			addApi("ROLE_PROP32_ELE_5_ATK",ROLE_PROP32_ELE_5_ATK);
			addApi("ROLE_PROP32_ELE_1_DEF",ROLE_PROP32_ELE_1_DEF);
			addApi("ROLE_PROP32_ELE_2_DEF",ROLE_PROP32_ELE_2_DEF);
			addApi("ROLE_PROP32_ELE_3_DEF",ROLE_PROP32_ELE_3_DEF);
			addApi("ROLE_PROP32_ELE_4_DEF",ROLE_PROP32_ELE_4_DEF);
			addApi("ROLE_PROP32_ELE_5_DEF",ROLE_PROP32_ELE_5_DEF);
			addApi("ROLE_PROP32_HP_REC",ROLE_PROP32_HP_REC);
			addApi("ROLE_PROP32_MP_REC",ROLE_PROP32_MP_REC);
			addApi("ROLE_PROP32_POISON_REC",ROLE_PROP32_POISON_REC);
			addApi("ROLE_PROP32_ENERGY",ROLE_PROP32_ENERGY);
			addApi("ROLE_PROP32_MAX_ENERGY",ROLE_PROP32_MAX_ENERGY);
			addApi("ROLE_PROP32_BURST",ROLE_PROP32_BURST);
			addApi("ROLE_PROP32_LUCK_CURSE",ROLE_PROP32_LUCK_CURSE);
			addApi("ROLE_PROP32_PK",ROLE_PROP32_PK);
			addApi("ROLE_PROP32_PRESTIGE",ROLE_PROP32_PRESTIGE);
			addApi("ROLE_PROP32_MERITORIOUS",ROLE_PROP32_MERITORIOUS);
			addApi("ROLE_PROP32_ACHIEVEMENT",ROLE_PROP32_ACHIEVEMENT);
			addApi("ROLE_PROP32_REINCARNATION",ROLE_PROP32_REINCARNATION);
			addApi("ROLE_PROP32_REIN_HP",ROLE_PROP32_REIN_HP);
			addApi("ROLE_PROP32_REIN_MP",ROLE_PROP32_REIN_MP);
			addApi("ROLE_PROP32_REIN_MAX_PHY_DEF",ROLE_PROP32_REIN_MAX_PHY_DEF);
			addApi("ROLE_PROP32_REIN_MIN_PHY_DEF",ROLE_PROP32_REIN_MIN_PHY_DEF);
			addApi("ROLE_PROP32_REIN_MAX_MAG_DEF",ROLE_PROP32_REIN_MAX_MAG_DEF);
			addApi("ROLE_PROP32_REIN_MIN_MAG_DEF",ROLE_PROP32_REIN_MIN_MAG_DEF);
			addApi("ROLE_PROP32_REIN_MAX_PHY_ATK",ROLE_PROP32_REIN_MAX_PHY_ATK);
			addApi("ROLE_PROP32_REIN_MIN_PHY_ATK",ROLE_PROP32_REIN_MIN_PHY_ATK);
			addApi("ROLE_PROP32_REIN_MAX_MAG_ATK",ROLE_PROP32_REIN_MAX_MAG_ATK);
			addApi("ROLE_PROP32_REIN_MIN_MAG_ATK",ROLE_PROP32_REIN_MIN_MAG_ATK);
			addApi("ROLE_PROP32_REIN_MAX_TAO_ATK",ROLE_PROP32_REIN_MAX_TAO_ATK);
			addApi("ROLE_PROP32_REIN_MIN_TAO_ATK",ROLE_PROP32_REIN_MIN_TAO_ATK);
			addApi("ROLE_PROP32_REIN_HIT",ROLE_PROP32_REIN_HIT);
			addApi("ROLE_PROP32_REIN_MISS",ROLE_PROP32_REIN_MISS);
			addApi("ROLE_PROP32_REIN_BURST",ROLE_PROP32_REIN_BURST);
			addApi("ROLE_PROP32_REIN_WEIGHT",ROLE_PROP32_REIN_WEIGHT);
			addApi("ROLE_PROP32_REIN_EQUIP_WEIGHT",ROLE_PROP32_REIN_EQUIP_WEIGHT);
			addApi("ROLE_PROP32_REIN_BRAWN",ROLE_PROP32_REIN_BRAWN);
			addApi("ROLE_PROP32_BAG_SIZE_0",ROLE_PROP32_BAG_SIZE_0);
			addApi("ROLE_PROP32_BAG_SIZE_1",ROLE_PROP32_BAG_SIZE_1);
			addApi("ROLE_PROP32_BAG_SIZE_2",ROLE_PROP32_BAG_SIZE_2);
			addApi("ROLE_PROP32_BAG_SIZE_3",ROLE_PROP32_BAG_SIZE_3);
			addApi("ROLE_PROP32_BAG_SIZE_4",ROLE_PROP32_BAG_SIZE_4);
			addApi("ROLE_PROP32_WAREHOUSE_SIZE",ROLE_PROP32_WAREHOUSE_SIZE);
			addApi("ROLE_PROP32_WAREHOUSE_ADV_SIZE",ROLE_PROP32_WAREHOUSE_ADV_SIZE);
			addApi("ROLE_PROP32_MAX_HP_PCT",ROLE_PROP32_MAX_HP_PCT);
			addApi("ROLE_PROP32_MAX_MP_PCT",ROLE_PROP32_MAX_MP_PCT);
			addApi("ROLE_PROP32_MAX_PHY_DEF_PCT",ROLE_PROP32_MAX_PHY_DEF_PCT);
			addApi("ROLE_PROP32_MIN_PHY_DEF_PCT",ROLE_PROP32_MIN_PHY_DEF_PCT);
			addApi("ROLE_PROP32_MAX_MAG_DEF_PCT",ROLE_PROP32_MAX_MAG_DEF_PCT);
			addApi("ROLE_PROP32_MIN_MAG_DEF_PCT",ROLE_PROP32_MIN_MAG_DEF_PCT);
			addApi("ROLE_PROP32_MAX_PHY_ATK_PCT",ROLE_PROP32_MAX_PHY_ATK_PCT);
			addApi("ROLE_PROP32_MIN_PHY_ATK_PCT",ROLE_PROP32_MIN_PHY_ATK_PCT);
			addApi("ROLE_PROP32_MAX_MAG_ATK_PCT",ROLE_PROP32_MAX_MAG_ATK_PCT);
			addApi("ROLE_PROP32_MIN_MAG_ATK_PCT",ROLE_PROP32_MIN_MAG_ATK_PCT);
			addApi("ROLE_PROP32_MAX_TAO_ATK_PCT",ROLE_PROP32_MAX_TAO_ATK_PCT);
			addApi("ROLE_PROP32_MIN_TAO_ATK_PCT",ROLE_PROP32_MIN_TAO_ATK_PCT);
			addApi("ROLE_PROP32_ELE_1_ATK_PCT",ROLE_PROP32_ELE_1_ATK_PCT);
			addApi("ROLE_PROP32_ELE_2_ATK_PCT",ROLE_PROP32_ELE_2_ATK_PCT);
			addApi("ROLE_PROP32_ELE_3_ATK_PCT",ROLE_PROP32_ELE_3_ATK_PCT);
			addApi("ROLE_PROP32_ELE_4_ATK_PCT",ROLE_PROP32_ELE_4_ATK_PCT);
			addApi("ROLE_PROP32_ELE_5_ATK_PCT",ROLE_PROP32_ELE_5_ATK_PCT);
			addApi("ROLE_PROP32_ELE_1_DEF_PCT",ROLE_PROP32_ELE_1_DEF_PCT);
			addApi("ROLE_PROP32_ELE_2_DEF_PCT",ROLE_PROP32_ELE_2_DEF_PCT);
			addApi("ROLE_PROP32_ELE_3_DEF_PCT",ROLE_PROP32_ELE_3_DEF_PCT);
			addApi("ROLE_PROP32_ELE_4_DEF_PCT",ROLE_PROP32_ELE_4_DEF_PCT);
			addApi("ROLE_PROP32_ELE_5_DEF_PCT",ROLE_PROP32_ELE_5_DEF_PCT);
			addApi("ROLE_PROP32_MAX_WEIGHT_PCT",ROLE_PROP32_MAX_WEIGHT_PCT);
			addApi("ROLE_PROP32_MAX_EQUIP_WEIGHT_PCT",ROLE_PROP32_MAX_EQUIP_WEIGHT_PCT);
			addApi("ROLE_PROP32_MAX_BRAWN_PCT",ROLE_PROP32_MAX_BRAWN_PCT);
			addApi("ROLE_PROP32_HP_REC_PCT",ROLE_PROP32_HP_REC_PCT);
			addApi("ROLE_PROP32_MP_REC_PCT",ROLE_PROP32_MP_REC_PCT);
			addApi("ROLE_PROP32_POISON_REC_PCT",ROLE_PROP32_POISON_REC_PCT);
			addApi("ROLE_PROP32_MOVE_SPEED_PCT",ROLE_PROP32_MOVE_SPEED_PCT);
			addApi("ROLE_PROP32_ATTACK_SPEED_PCT",ROLE_PROP32_ATTACK_SPEED_PCT);
			addApi("ROLE_PROP32_SUCK_HP",ROLE_PROP32_SUCK_HP);
			addApi("ROLE_PROP32_SUCK_HP_PCT",ROLE_PROP32_SUCK_HP_PCT);
			addApi("ROLE_PROP32_SUCK_MAX_HP_PCT",ROLE_PROP32_SUCK_MAX_HP_PCT);
			addApi("ROLE_PROP32_SUCK_MP",ROLE_PROP32_SUCK_MP);
			addApi("ROLE_PROP32_SUCK_MP_PCT",ROLE_PROP32_SUCK_MP_PCT);
			addApi("ROLE_PROP32_SUCK_MAX_MP_PCT",ROLE_PROP32_SUCK_MAX_MP_PCT);
			addApi("ROLE_PROP32_REF_PHY",ROLE_PROP32_REF_PHY);
			addApi("ROLE_PROP32_REF_PHY_PCT",ROLE_PROP32_REF_PHY_PCT);
			addApi("ROLE_PROP32_REF_MAG",ROLE_PROP32_REF_MAG);
			addApi("ROLE_PROP32_REF_MAG_PCT",ROLE_PROP32_REF_MAG_PCT);
			addApi("ROLE_PROP32_IMM_MAG",ROLE_PROP32_IMM_MAG);
			addApi("ROLE_PROP32_IMM_MAG_PCT",ROLE_PROP32_IMM_MAG_PCT);
			addApi("ROLE_PROP32_IMM_PHY",ROLE_PROP32_IMM_PHY);
			addApi("ROLE_PROP32_IMM_PHY_PCT",ROLE_PROP32_IMM_PHY_PCT);
			addApi("ROLE_PROP32_ATK_MODE",ROLE_PROP32_ATK_MODE);
			addApi("ROLE_PROP32_CAN_WALK",ROLE_PROP32_CAN_WALK);
			addApi("ROLE_PROP32_CAN_RUN",ROLE_PROP32_CAN_RUN);
			addApi("ROLE_PROP32_CAN_TURN",ROLE_PROP32_CAN_TURN);
			addApi("ROLE_PROP32_CAN_JUMP_MAP",ROLE_PROP32_CAN_JUMP_MAP);
			addApi("ROLE_PROP32_CAN_PHY_ATK",ROLE_PROP32_CAN_PHY_ATK);
			addApi("ROLE_PROP32_CAN_MAG_ATK",ROLE_PROP32_CAN_MAG_ATK);
			addApi("ROLE_PROP32_CAN_USE_ITEM",ROLE_PROP32_CAN_USE_ITEM);
			addApi("ROLE_PROP32_IS_PHY_IMM",ROLE_PROP32_IS_PHY_IMM);
			addApi("ROLE_PROP32_IS_MAG_IMM",ROLE_PROP32_IS_MAG_IMM);
			addApi("ROLE_PROP32_IS_STEALTH",ROLE_PROP32_IS_STEALTH);
			addApi("ROLE_PROP32_HAS_MANA_SHIELD",ROLE_PROP32_HAS_MANA_SHIELD);
			addApi("ROLE_PROP32_HAS_COLLIDE",ROLE_PROP32_HAS_COLLIDE);
			addApi("ROLE_PROP32_HAS_REPELLED",ROLE_PROP32_HAS_REPELLED);
			addApi("ROLE_PROP32_CAN_PUSH",ROLE_PROP32_CAN_PUSH);
			addApi("ROLE_PROP32_CAN_USE_SKILL",ROLE_PROP32_CAN_USE_SKILL);
			addApi("ROLE_PROP32_IS_BLACK",ROLE_PROP32_IS_BLACK);
			addApi("ROLE_PROP32_HAS_IMM_SHIELD",ROLE_PROP32_HAS_IMM_SHIELD);
			addApi("ROLE_PROP32_IMM_SHIELD",ROLE_PROP32_IMM_SHIELD);
			addApi("ROLE_PROP32_HAS_BAG_GUARD",ROLE_PROP32_HAS_BAG_GUARD);
			addApi("ROLE_PROP32_HAS_EQUIP_GUARD",ROLE_PROP32_HAS_EQUIP_GUARD);
			addApi("ROLE_PROP32_IS_GRAY",ROLE_PROP32_IS_GRAY);
			addApi("ROLE_PROP32_IS_CHAOS",ROLE_PROP32_IS_CHAOS);
			addApi("ROLE_PROP32_IS_POISONING",ROLE_PROP32_IS_POISONING);
			addApi("ROLE_PROP32_HAS_TEAM",ROLE_PROP32_HAS_TEAM);
			addApi("ROLE_PROP32_GENDER",ROLE_PROP32_GENDER);
			addApi("ROLE_PROP32_HEAD",ROLE_PROP32_HEAD);
			addApi("ROLE_PROP32_HAIR",ROLE_PROP32_HAIR);
			addApi("ROLE_PROP32_HAIR_COLOR",ROLE_PROP32_HAIR_COLOR);
			addApi("ROLE_PROP32_GM_LEVEL",ROLE_PROP32_GM_LEVEL);
			addApi("ROLE_PROP32_IDENTIFY",ROLE_PROP32_IDENTIFY);
			addApi("ROLE_PROP32_TITLE",ROLE_PROP32_TITLE);
			addApi("ROLE_PROP32_GOLD_SETTLEMENT",ROLE_PROP32_GOLD_SETTLEMENT);
			addApi("ROLE_PROP32_STALL",ROLE_PROP32_STALL);
			addApi("ROLE_PROP32_FRIEND_SWITCH",ROLE_PROP32_FRIEND_SWITCH);
			addApi("ROLE_PROP32_TEAM_SWITCH",ROLE_PROP32_TEAM_SWITCH);
			addApi("ROLE_PROP32_HAS_FAMILY",ROLE_PROP32_HAS_FAMILY);
			addApi("ROLE_PROP32_EXP_PCT",ROLE_PROP32_EXP_PCT);
			addApi("ROLE_PROP32_MAG_MISS",ROLE_PROP32_MAG_MISS);
			addApi("ROLE_PROP32_INTENSITY",ROLE_PROP32_INTENSITY);
			addApi("ROLE_PROP32_VIP_LEVEL",ROLE_PROP32_VIP_LEVEL);
			addApi("ROLE_PROP32_INTIMACY",ROLE_PROP32_INTIMACY);
			addApi("ROLE_PROP32_JJC_RONGYAO",ROLE_PROP32_JJC_RONGYAO);
			addApi("TEAMINFO_NAME",TEAMINFO_NAME);
			addApi("TEAMINFO_HEAD",TEAMINFO_HEAD);
			addApi("TEAMINFO_ONLINE",TEAMINFO_ONLINE);
			addApi("TEAMINFO_LEVEL",TEAMINFO_LEVEL);
			addApi("TEAMINFO_JOB",TEAMINFO_JOB);
			addApi("TEAMINFO_GENDER",TEAMINFO_GENDER);
			addApi("TEAMINFO_MAPCODE",TEAMINFO_MAPCODE);
			addApi("TEAMINFO_MAPNAME",TEAMINFO_MAPNAME);
		}
	}
}