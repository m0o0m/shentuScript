package script
{
	public class ItemTypeDefine
	{
		var ITEM_TYPE_NULL				= 0;
		var ITEM_TYPE_EQUIP				= 0;
		var ITEM_TYPE_CONSUMABLE		= 0;
		var ITEM_TYPE_FINITE			= 0;
		var ITEM_TYPE_MATERIAL			= 0;
		var ITEM_TYPE_SUNDRIES			= 0;
		var ITEM_TYPE_BAG				= 0;
		var ITEM_TYPE_WAREHOUSE_ADV		= 0;
		var ITEM_TYPE_GOLD				= 0;
		var ITEM_TYPE_BUNDLE			= 0;
		var ITEM_TYPE_SKILL				= 0;
		var ITEM_TYPE_SCRIPT			= 0;
		var ITEM_TYPE_MAX				= 0;

		var EQUIP_NULL					= 0;
		var EQUIP_WEAPON				= 0;	/// 武器
		var EQUIP_HELMET				= 0;	/// 头盔
		var EQUIP_WRIST 				= 0;	/// 护腕
		var EQUIP_ARMOR					= 0;	/// 衣服
		var EQUIP_JUJU					= 0;	/// 符咒
		var EQUIP_SHOES					= 0;	/// 鞋子
		var EQUIP_SHOULDER				= 0;	/// 护肩
		var EQUIP_NECKLACE				= 0;	/// 项链
		var EQUIP_RING					= 0;	/// 戒指
		var EQUIP_MEDAL					= 0;	/// 勋章
		var EQUIP_GEM					= 0;	/// 宝石
		var EQUIP_WINGS					= 0;	/// 翅膀
		var EQUIP_AMULET				= 0;	/// 守护
		var EQUIP_MOUNT					= 0;	/// 坐骑
		var EQUIP_SHIELD				= 0;	/// 盾牌
		var EQUIP_FASHION				= 0;	/// 时装
		var EQUIP_MAX					= 0;

		//材料类型
		var MATERIAL_NULL				= 0;
		var MATERIAL_WEAPON_UPGRADE		= 0;	/// 升级武器材料
		var MATERIAL_RESERVED			= 0;	/// (保留未使用)
		var MATERIAL_IDENTIFY 			= 0;	/// 鉴定装备材料
		var MATERIAL_DRILL				= 0;	/// 装备打孔材料
		var MATERIAL_LUCKY				= 0;	/// 附加武器祝福材料
		var MATERIAL_GEM				= 0;	/// 宝石
		var MATERIAL_SYNTHESIS			= 0;	/// 宝石合成符
		var MATERIAL_DIG				= 0;	/// 宝石摘除符
		var MATERIAL_EMBED				= 0;	/// 宝石镶嵌符
		var MATERIAL_REFINE				= 0;	/// 装备精练材料
		var MATERIAL_REFINE_LUCKY		= 0;	/// 装备精练幸运符材料
		var MATERIAL_SPEAKER			= 0;	/// 喇叭
		var MATERIAL_MAX				= 0;

		//武器类型
		var WEAPON_NULL					= 0;	/// 通用类
		var WEAPON_KNIFE				= 0;	/// 刀类（战士类）
		var WEAPON_SWORD				= 0;	/// 剑类（道士类）
		var WEAPON_STICK				= 0;	/// 仗类（法师类）
		var WEAPON_MAX					= 0;

		///符咒类型
		var JUJU_NULL					= 0;
		var JUJU_JUJU					= 0;	/// 符咒类
		var JUJU_POISON					= 0;	/// 毒药类
		var JUJU_MAX					= 0;

		public function ItemTypeDefine()
		{
			Item类型的宏定义
			/// 物品类型
			var i = 0;
			ITEM_TYPE_NULL		   		=i;i=i+1;
			ITEM_TYPE_EQUIP	       		=i;i=i+1;	/// 装备
			ITEM_TYPE_CONSUMABLE   		=i;i=i+1;	/// 消耗品
			ITEM_TYPE_FINITE       		=i;i=i+1;	/// 有限品
			ITEM_TYPE_MATERIAL     		=i;i=i+1;	/// 材料
			ITEM_TYPE_SUNDRIES     		=i;i=i+1;	/// 杂货
			ITEM_TYPE_BAG          		=i;i=i+1;	/// 包裹
			ITEM_TYPE_WAREHOUSE_ADV		=i;i=i+1;	/// 高级仓库
			ITEM_TYPE_GOLD         		=i;i=i+1;	/// 金币
			ITEM_TYPE_BUNDLE       		=i;i=i+1;	/// 打捆物品
			ITEM_TYPE_SKILL        		=i;i=i+1;	/// 技能特效类物品
			ITEM_TYPE_SCRIPT       		=i;i=i+1;	/// 脚本物品
			ITEM_TYPE_MAX          		=i;i=i+1;

			/// 装备类型
			i = 0;
			EQUIP_NULL					=i;i=i+1;
			EQUIP_WEAPON				=i;i=i+1;	/// 武器
			EQUIP_HELMET				=i;i=i+1;	/// 头盔
			EQUIP_WRIST 				=i;i=i+1;	/// 护腕
			EQUIP_ARMOR					=i;i=i+1;	/// 衣服
			EQUIP_JUJU					=i;i=i+1;	/// 符咒
			EQUIP_SHOES					=i;i=i+1;	/// 鞋子
			EQUIP_SHOULDER				=i;i=i+1;	/// 护肩
			EQUIP_NECKLACE  			=i;i=i+1;	/// 项链
			EQUIP_RING  				=i;i=i+1;	/// 戒指
			EQUIP_MEDAL					=i;i=i+1;	/// 勋章
			EQUIP_GEM  					=i;i=i+1;	/// 宝石
			EQUIP_WINGS  				=i;i=i+1;	/// 翅膀
			EQUIP_AMULET				=i;i=i+1;	/// 守护
			EQUIP_MOUNT					=i;i=i+1;	/// 坐骑
			EQUIP_SHIELD				=i;i=i+1;	/// 盾牌
			EQUIP_FASHION				=i;i=i+1;	/// 时装
			EQUIP_MAX					=i;i=i+1;

			/// 材料类型
			i = 0;
			MATERIAL_NULL		   		=i;i=i+1;
			MATERIAL_WEAPON_UPGRADE		=i;i=i+1;	/// 升级武器材料
			MATERIAL_RESERVED			=i;i=i+1;	/// (保留未使用)
			MATERIAL_IDENTIFY 			=i;i=i+1;	/// 鉴定装备材料
			MATERIAL_DRILL				=i;i=i+1;	/// 装备打孔材料
			MATERIAL_LUCKY				=i;i=i+1;	/// 附加武器祝福材料
			MATERIAL_GEM				=i;i=i+1;	/// 宝石
			MATERIAL_SYNTHESIS			=i;i=i+1;	/// 宝石合成符
			MATERIAL_DIG				=i;i=i+1;	/// 宝石摘除符
			MATERIAL_EMBED				=i;i=i+1;	/// 宝石镶嵌符
			MATERIAL_REFINE				=i;i=i+1;	/// 装备精练材料
			MATERIAL_REFINE_LUCKY		=i;i=i+1;	/// 装备精练幸运符材料
			MATERIAL_SPEAKER			=i;i=i+1;	/// 喇叭
			MATERIAL_MAX		   		=i;i=i+1;

			/// 武器类型
			i = 0;
			WEAPON_NULL		    	   =i;i=i+1;	/// 通用类
			WEAPON_KNIFE               =i;i=i+1;	/// 刀类（战士类）
			WEAPON_SWORD               =i;i=i+1;	/// 剑类（道士类）
			WEAPON_STICK               =i;i=i+1;	/// 仗类（法师类）
			WEAPON_MAX		    	   =i;i=i+1;

			/// 符咒类型
			i = 0;
			JUJU_NULL					=i;i=i+1;
			JUJU_JUJU   				=i;i=i+1;	/// 符咒类
			JUJU_POISON 				=i;i=i+1;	/// 毒药类
			JUJU_MAX					=i;i=i+1;
			
			addApi("ITEM_TYPE_NULL",ITEM_TYPE_NULL);
			addApi("ITEM_TYPE_EQUIP",ITEM_TYPE_EQUIP);
			addApi("ITEM_TYPE_CONSUMABLE",ITEM_TYPE_CONSUMABLE);
			addApi("ITEM_TYPE_FINITE",ITEM_TYPE_FINITE);
			addApi("ITEM_TYPE_MATERIAL",ITEM_TYPE_MATERIAL);
			addApi("ITEM_TYPE_SUNDRIES",ITEM_TYPE_SUNDRIES);
			addApi("ITEM_TYPE_BAG",ITEM_TYPE_BAG);
			addApi("ITEM_TYPE_WAREHOUSE_ADV",ITEM_TYPE_WAREHOUSE_ADV);
			addApi("ITEM_TYPE_GOLD",ITEM_TYPE_GOLD);
			addApi("ITEM_TYPE_BUNDLE",ITEM_TYPE_BUNDLE);
			addApi("ITEM_TYPE_SKILL",ITEM_TYPE_SKILL);
			addApi("ITEM_TYPE_SCRIPT",ITEM_TYPE_SCRIPT);
			addApi("ITEM_TYPE_MAX",ITEM_TYPE_MAX);
			addApi("EQUIP_NULL",EQUIP_NULL);
			addApi("EQUIP_WEAPON",EQUIP_WEAPON);
			addApi("EQUIP_HELMET",EQUIP_HELMET);
			addApi("EQUIP_WRIST",EQUIP_WRIST);
			addApi("EQUIP_ARMOR",EQUIP_ARMOR);
			addApi("EQUIP_JUJU",EQUIP_JUJU);
			addApi("EQUIP_SHOES",EQUIP_SHOES);
			addApi("EQUIP_SHOULDER",EQUIP_SHOULDER);
			addApi("EQUIP_NECKLACE",EQUIP_NECKLACE);
			addApi("EQUIP_RING",EQUIP_RING);
			addApi("EQUIP_MEDAL",EQUIP_MEDAL);
			addApi("EQUIP_GEM",EQUIP_GEM);
			addApi("EQUIP_WINGS",EQUIP_WINGS);
			addApi("EQUIP_AMULET",EQUIP_AMULET);
			addApi("EQUIP_MOUNT",EQUIP_MOUNT);
			addApi("EQUIP_SHIELD",EQUIP_SHIELD);
			addApi("EQUIP_FASHION",EQUIP_FASHION);
			addApi("EQUIP_MAX",EQUIP_MAX);
			addApi("MATERIAL_NULL",MATERIAL_NULL);
			addApi("MATERIAL_WEAPON_UPGRADE",MATERIAL_WEAPON_UPGRADE);
			addApi("MATERIAL_RESERVED",MATERIAL_RESERVED);
			addApi("MATERIAL_IDENTIFY",MATERIAL_IDENTIFY);
			addApi("MATERIAL_DRILL",MATERIAL_DRILL);
			addApi("MATERIAL_LUCKY",MATERIAL_LUCKY);
			addApi("MATERIAL_GEM",MATERIAL_GEM);
			addApi("MATERIAL_SYNTHESIS",MATERIAL_SYNTHESIS);
			addApi("MATERIAL_DIG",MATERIAL_DIG);
			addApi("MATERIAL_EMBED",MATERIAL_EMBED);
			addApi("MATERIAL_REFINE",MATERIAL_REFINE);
			addApi("MATERIAL_REFINE_LUCKY",MATERIAL_REFINE_LUCKY);
			addApi("MATERIAL_SPEAKER",MATERIAL_SPEAKER);
			addApi("MATERIAL_MAX",MATERIAL_MAX);
			addApi("WEAPON_NULL",WEAPON_NULL);
			addApi("WEAPON_KNIFE",WEAPON_KNIFE);
			addApi("WEAPON_SWORD",WEAPON_SWORD);
			addApi("WEAPON_STICK",WEAPON_STICK);
			addApi("WEAPON_MAX",WEAPON_MAX);
			addApi("JUJU_NULL",JUJU_NULL);
			addApi("JUJU_JUJU",JUJU_JUJU);
			addApi("JUJU_POISON",JUJU_POISON);
			addApi("JUJU_MAX",JUJU_MAX);
		}
	}
}