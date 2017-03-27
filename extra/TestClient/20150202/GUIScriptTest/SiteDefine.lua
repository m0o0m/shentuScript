--Item位置的宏定义

--/// 背包数量
MAX_BAG_COUNT = 5
--/// 一个背包最大格子数
MAX_SLOT_PER_BAG = 40
--/// 背包最大的格子数
MAX_BAG_SLOT = (MAX_BAG_COUNT * MAX_SLOT_PER_BAG)
--/// 仓库最大格子数
MAX_WAREHOUSE_SIZE = 40
--/// 高级仓库最大格子数
MAX_WAREHOUSE_ADV_SIZE = 144

local i = 0
SITE_NULL             	=i;i=i+1--/// 无位置
SITE_WEAPON             =i;i=i+1--/// 武器
SITE_HELMET             =i;i=i+1--/// 头盔
SITE_WRIST_0            =i;i=i+1--/// 护腕0
SITE_WRIST_1            =i;i=i+1--/// 护腕1
SITE_ARMOR              =i;i=i+1--/// 衣服
SITE_JUJU               =i;i=i+1--/// 符咒
SITE_SHOES              =i;i=i+1--/// 鞋子
SITE_SHOULDER           =i;i=i+1--/// 护肩
SITE_NECKLACE           =i;i=i+1--/// 项链
SITE_RING_0             =i;i=i+1--/// 戒指0
SITE_RING_1             =i;i=i+1--/// 戒指1
SITE_MEDAL              =i;i=i+1--/// 勋章

SITE_GEM                =i;i=i+1--/// 宝石
SITE_WINGS              =i;i=i+1--/// 翅膀
SITE_AMULET             =i;i=i+1--/// 守护
SITE_MOUNT              =i;i=i+1--/// 坐骑
SITE_SHIELD		    	=i;i=i+1--/// 盾牌
SITE_FASHION		    =i;i=i+1--/// 时装
SITE_HAT		    	=i;i=i+1--/// 斗笠
SITE_GLOVES		    	=i;i=i+1--/// 手套
SITE_JEWELRY		    =i;i=i+1--/// 珠宝

SITE_BAG_0			= 22                                        --/// 第0背包
SITE_BAG_1			= SITE_BAG_0 + MAX_SLOT_PER_BAG             --/// 第1背包
SITE_BAG_2			= SITE_BAG_1 + MAX_SLOT_PER_BAG             --/// 第2背包
SITE_BAG_3			= SITE_BAG_2 + MAX_SLOT_PER_BAG             --/// 第3背包
SITE_BAG_4          = SITE_BAG_3 + MAX_SLOT_PER_BAG             --/// 第4背包

SITE_WAREHOUSE      = SITE_BAG_4 + MAX_SLOT_PER_BAG             --/// 仓库
SITE_WAREHOUSE_ADV  = SITE_WAREHOUSE + MAX_WAREHOUSE_SIZE       --/// 高级仓库

SITE_BAG_END            = SITE_WAREHOUSE_ADV + MAX_WAREHOUSE_ADV_SIZE

i = SITE_BAG_END
SITE_EXPAND_0           =SITE_BAG_END;
SITE_EXPAND_1           =SITE_BAG_END + 1;--/// 背包1扩充位置
SITE_EXPAND_2           =SITE_BAG_END + 2;--/// 背包2扩充位置
SITE_EXPAND_3           =SITE_BAG_END + 3;--/// 背包3扩充位置
SITE_EXPAND_4           =SITE_BAG_END + 4;--/// 背包4扩充位置
SITE_EXPAND_END         =SITE_BAG_END + 5;--/// 背包扩充结束

i = SITE_EXPAND_END
SITE_GLASSES                      =i;i=i+1     --/// 眼镜
SITE_BRACELET_0                   =i;i=i+1     --/// 手镯0
SITE_BRACELET_1                   =i;i=i+1     --/// 手镯1
SITE_MASK                         =i;i=i+1     --/// 面甲
SITE_KNEELET                      =i;i=i+1     --/// 护膝
SITE_CHESTPLATE                   =i;i=i+1     --/// 护胸
SITE_CLOAK                        =i;i=i+1     --/// 披风
SITE_EARRINGS                     =i;i=i+1     --/// 耳环
SITE_HEADWEAR                     =i;i=i+1     --/// 头饰
SITE_LEGGUARD                     =i;i=i+1     --/// 护腿
SITE_JADE                         =i;i=i+1     --/// 玉佩
SITE_INSTRUMENT                   =i;i=i+1     --/// 乐器
SITE_HANGINGS                     =i;i=i+1     --/// 挂饰
SITE_EQUIP_RESERVED_0             =i;i=i+1
SITE_EQUIP_RESERVED_1             =i;i=i+1
SITE_EQUIP_RESERVED_2             =i;i=i+1
SITE_EQUIP_RESERVED_3             =i;i=i+1
SITE_EQUIP_RESERVED_4             =i;i=i+1
SITE_EQUIP_RESERVED_5             =i;i=i+1
SITE_EQUIP_RESERVED_6             =i;i=i+1
SITE_EQUIP_RESERVED_7             =i;i=i+1
SITE_EQUIP_RESERVED_8             =i;i=i+1
SITE_EQUIP_RESERVED_9             =i;i=i+1

--// 自定义装备位
SITE_EQUIP_CUSTOM_0             =i;i=i+1
SITE_EQUIP_CUSTOM_1             =i;i=i+1
SITE_EQUIP_CUSTOM_2             =i;i=i+1
SITE_EQUIP_CUSTOM_3             =i;i=i+1
SITE_EQUIP_CUSTOM_4             =i;i=i+1
SITE_EQUIP_CUSTOM_5             =i;i=i+1
SITE_EQUIP_CUSTOM_6             =i;i=i+1
SITE_EQUIP_CUSTOM_7             =i;i=i+1
SITE_EQUIP_CUSTOM_8             =i;i=i+1
SITE_EQUIP_CUSTOM_9             =i;i=i+1
SITE_EQUIP_CUSTOM_10             =i;i=i+1
SITE_EQUIP_CUSTOM_11             =i;i=i+1
SITE_EQUIP_CUSTOM_12             =i;i=i+1
SITE_EQUIP_CUSTOM_13             =i;i=i+1
SITE_EQUIP_CUSTOM_14             =i;i=i+1
SITE_EQUIP_CUSTOM_15             =i;i=i+1
SITE_EQUIP_CUSTOM_16             =i;i=i+1
SITE_EQUIP_CUSTOM_17             =i;i=i+1
SITE_EQUIP_CUSTOM_18             =i;i=i+1
SITE_EQUIP_CUSTOM_19             =i;i=i+1
SITE_EQUIP_CUSTOM_END             =i;i=i+1
SITE_END            = SITE_EQUIP_CUSTOM_END  --/// 结束格

--道具所在位置相关定义
ROLEEQUIEMNT_COUNT = 16
PACKTOOL_COUNT = 5

SKILLBARDATA_SIZE = 10
SKILLBARDATA_STARTPOS = 100000

PACKDATA_STARTPOS = SITE_BAG_0
PACKDATA_PAGE_COUNT = 5
PACKDATA_SIZE = 40

ROLEEQUIMENTDATA_SIZE = ROLEEQUIEMNT_COUNT
ROLEEQUIMENTDATA_STARTPOS1 = SITE_WEAPON
ROLEEQUIMENTDATA_ENDPOS1 = SITE_JEWELRY+1
ROLEEQUIMENTDATA_STARTPOS2 = SITE_GLASSES
ROLEEQUIMENTDATA_ENDPOS2 = SITE_EQUIP_CUSTOM_END

ROLESKILLDATA_SIZE = 5
ROLESKILLDATA_PAGESIZE = 5
ROLESKILLDATA_STARTPOS = 200000

NPCSHOPDATA_SIZE = 8
NPCSHOPDATA_PAGESIZE = 12
NPCSHOPDATA_STARTPOS = 110000

WAREHOUSEDATA_SIZE = MAX_WAREHOUSE_SIZE
WAREHOUSEDATA_STARTPOS = SITE_WAREHOUSE

ADVWAREHOUSEDATA_SIZE = 50
ADVWAREHOUSEDATA_STARTPOS = SITE_WAREHOUSE_ADV

GAMESTALLDATA_SIZE = 25
GAMESTALLDATA_GAMESTALL_STARTPOS = 300100
GAMESTALLDATA_VISITSTALL_STARTPOS = 300200

SKILLHOTKEYDATA_SIZE = 16

ITEMTRADEDATA_SIZE = 10

--位置类型
i = 0
INVALID_POS 	=i;i=i+1
PACKAGE_POS 	=i;i=i+1
SKILLBAR_POS 	=i;i=i+1
EQUIMENT_POS 	=i;i=i+1
GAMESTALL_POS	=i;i=i+1
VISITSTALL_POS	=i;i=i+1

i = 0
ITEMGUIDATA_ITEMGUID			=i;i=i+1
ITEMGUIDATA_IMAGEID				=i;i=i+1
ITEMGUIDATA_TYPE				=i;i=i+1
ITEMGUIDATA_ITEMID				=i;i=i+1
ITEMGUIDATA_PARAM				=i;i=i+1
ITEMGUIDATA_ITEMCOUNT			=i;i=i+1
ITEMGUIDATA_INVALIDATE			=i;i=i+1
ITEMGUIDATA_ISSTACKITEM			=i;i=i+1
ITEMGUIDATA_ITEMPOS				=i;i=i+1
ITEMGUIDATA_CDTIME				=i;i=i+1
ITEMGUIDATA_CDSTARTTICK			=i;i=i+1
ITEMGUIDATA_INCDSTATE			=i;i=i+1
ITEMGUIDATA_ITEMLOCK			=i;i=i+1
ITEMGUIDATA_ITEMPRICETYPE		=i;i=i+1
ITEMGUIDATA_ITEMPRICE			=i;i=i+1
ITEMGUIDATA_ISSHOWBIND			=i;i=i+1

function GetItemPosType(ItemPos)
	local PosType = INVALID_POS
	if (ItemPos >= SKILLBARDATA_STARTPOS) and (ItemPos <= SKILLBARDATA_STARTPOS + SKILLBARDATA_SIZE) then
		PosType = SKILLBAR_POS
	elseif (ItemPos >= GAMESTALLDATA_GAMESTALL_STARTPOS) and (ItemPos <= GAMESTALLDATA_GAMESTALL_STARTPOS + GAMESTALLDATA_SIZE) then
		PosType = GAMESTALL_POS
	elseif (ItemPos >= GAMESTALLDATA_VISITSTALL_STARTPOS) and (ItemPos <= GAMESTALLDATA_VISITSTALL_STARTPOS + GAMESTALLDATA_SIZE) then
		PosType = VISITSTALL_POS
	elseif ((ItemPos >= SITE_BAG_0) and (ItemPos < SITE_BAG_4 + MAX_SLOT_PER_BAG)) then
		PosType = PACKAGE_POS
	elseif ((ItemPos >= ROLEEQUIMENTDATA_STARTPOS1) and (ItemPos < ROLEEQUIMENTDATA_ENDPOS1)) or ((ItemPos >= ROLEEQUIMENTDATA_STARTPOS2) and (ItemPos < ROLEEQUIMENTDATA_ENDPOS2)) then
		PosType = EQUIMENT_POS
	end
	return PosType;
end



