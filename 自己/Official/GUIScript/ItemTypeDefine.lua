--Item类型的宏定义

--/// 物品类型
local i = 0
ITEM_TYPE_NULL		       =i;i=i+1
ITEM_TYPE_EQUIP	           =i;i=i+1--/// 装备
ITEM_TYPE_CONSUMABLE       =i;i=i+1--/// 消耗品
ITEM_TYPE_FINITE           =i;i=i+1--/// 有限品
ITEM_TYPE_MATERIAL         =i;i=i+1--/// 材料
ITEM_TYPE_SUNDRIES         =i;i=i+1--/// 杂货
ITEM_TYPE_BAG              =i;i=i+1--/// 包裹
ITEM_TYPE_WAREHOUSE_ADV    =i;i=i+1--/// 高级仓库
ITEM_TYPE_GOLD             =i;i=i+1--/// 金币
ITEM_TYPE_BUNDLE           =i;i=i+1--/// 打捆物品
ITEM_TYPE_SKILL            =i;i=i+1--/// 技能特效类物品
ITEM_TYPE_SCRIPT           =i;i=i+1--/// 脚本物品
ITEM_TYPE_MAX              =i;i=i+1

--/// 装备类型
i = 0
EQUIP_NULL		 	        =i;i=i+1
EQUIP_WEAPON		 	    =i;i=i+1--/// 武器
EQUIP_HELMET				=i;i=i+1--/// 头盔
EQUIP_WRIST 				=i;i=i+1--/// 护腕
EQUIP_ARMOR				    =i;i=i+1--/// 衣服
EQUIP_JUJU				    =i;i=i+1--/// 符咒
EQUIP_SHOES			        =i;i=i+1--/// 鞋子
EQUIP_SHOULDER				=i;i=i+1--/// 护肩
EQUIP_NECKLACE  			=i;i=i+1--/// 项链
EQUIP_RING  				=i;i=i+1--/// 戒指
EQUIP_MEDAL				    =i;i=i+1--/// 勋章
EQUIP_GEM  				    =i;i=i+1--/// 宝石
EQUIP_WINGS  				=i;i=i+1--/// 翅膀
EQUIP_AMULET				=i;i=i+1--/// 守护
EQUIP_MOUNT		    	    =i;i=i+1--/// 坐骑
EQUIP_SHIELD		    	=i;i=i+1--/// 盾牌
EQUIP_FASHION		    	=i;i=i+1--/// 时装
EQUIP_HAT		    		=i;i=i+1--/// 斗笠
EQUIP_GLOVES		    	=i;i=i+1--/// 手套
EQUIP_JEWELRY		    	=i;i=i+1--/// 珠宝
EQUIP_MAX		    	    =i;i=i+1


--/// 材料类型
i = 0
MATERIAL_NULL		    	    =i;i=i+1
MATERIAL_WEAPON_UPGRADE         =i;i=i+1--/// 升级武器材料
MATERIAL_RESERVED		        =i;i=i+1--/// (保留未使用)
MATERIAL_IDENTIFY 				=i;i=i+1--/// 鉴定装备材料
MATERIAL_DRILL				    =i;i=i+1--/// 装备打孔材料
MATERIAL_LUCKY				    =i;i=i+1--/// 附加武器祝福材料
MATERIAL_GEM			        =i;i=i+1--/// 宝石
MATERIAL_SYNTHESIS			    =i;i=i+1--/// 宝石合成符
MATERIAL_DIG			        =i;i=i+1--/// 宝石摘除符
MATERIAL_EMBED			        =i;i=i+1--/// 宝石镶嵌符
MATERIAL_REFINE			        =i;i=i+1--/// 装备精练材料
MATERIAL_REFINE_LUCKY			=i;i=i+1--/// 装备精练幸运符材料
MATERIAL_SPEAKER			    =i;i=i+1--/// 喇叭
MATERIAL_MAX		    	    =i;i=i+1

--/// 武器类型
i = 0
WEAPON_NULL		    	   =i;i=i+1--/// 通用类
WEAPON_KNIFE               =i;i=i+1--/// 刀类（战士类）
WEAPON_SWORD               =i;i=i+1--/// 剑类（道士类）
WEAPON_STICK               =i;i=i+1--/// 仗类（法师类）
WEAPON_MAX		    	   =i;i=i+1


--/// 符咒类型
i = 0
JUJU_NULL		    	   =i;i=i+1
JUJU_JUJU                  =i;i=i+1--/// 符咒类
JUJU_POISON                =i;i=i+1--/// 毒药类
JUJU_MAX		    	   =i;i=i+1

