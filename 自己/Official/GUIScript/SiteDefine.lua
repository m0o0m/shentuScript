--Itemλ�õĺ궨��

--/// ��������
MAX_BAG_COUNT = 5
--/// һ��������������
MAX_SLOT_PER_BAG = 40
--/// �������ĸ�����
MAX_BAG_SLOT = (MAX_BAG_COUNT * MAX_SLOT_PER_BAG)
--/// �ֿ���������
MAX_WAREHOUSE_SIZE = 40
--/// �߼��ֿ���������
MAX_WAREHOUSE_ADV_SIZE = 144

local i = 0
SITE_NULL             	=i;i=i+1--/// ��λ��
SITE_WEAPON             =i;i=i+1--/// ����
SITE_HELMET             =i;i=i+1--/// ͷ��
SITE_WRIST_0            =i;i=i+1--/// ����0
SITE_WRIST_1            =i;i=i+1--/// ����1
SITE_ARMOR              =i;i=i+1--/// �·�
SITE_JUJU               =i;i=i+1--/// ����
SITE_SHOES              =i;i=i+1--/// Ь��
SITE_SHOULDER           =i;i=i+1--/// ����
SITE_NECKLACE           =i;i=i+1--/// ����
SITE_RING_0             =i;i=i+1--/// ��ָ0
SITE_RING_1             =i;i=i+1--/// ��ָ1
SITE_MEDAL              =i;i=i+1--/// ѫ��

SITE_GEM                =i;i=i+1--/// ��ʯ
SITE_WINGS              =i;i=i+1--/// ���
SITE_AMULET             =i;i=i+1--/// �ػ�
SITE_MOUNT              =i;i=i+1--/// ����
SITE_SHIELD		    	=i;i=i+1--/// ����
SITE_FASHION		    =i;i=i+1--/// ʱװ
SITE_HAT		    	=i;i=i+1--/// ����
SITE_GLOVES		    	=i;i=i+1--/// ����
SITE_JEWELRY		    =i;i=i+1--/// �鱦

SITE_BAG_0			= 22                                        --/// ��0����
SITE_BAG_1			= SITE_BAG_0 + MAX_SLOT_PER_BAG             --/// ��1����
SITE_BAG_2			= SITE_BAG_1 + MAX_SLOT_PER_BAG             --/// ��2����
SITE_BAG_3			= SITE_BAG_2 + MAX_SLOT_PER_BAG             --/// ��3����
SITE_BAG_4          = SITE_BAG_3 + MAX_SLOT_PER_BAG             --/// ��4����

SITE_WAREHOUSE      = SITE_BAG_4 + MAX_SLOT_PER_BAG             --/// �ֿ�
SITE_WAREHOUSE_ADV  = SITE_WAREHOUSE + MAX_WAREHOUSE_SIZE       --/// �߼��ֿ�

SITE_BAG_END            = SITE_WAREHOUSE_ADV + MAX_WAREHOUSE_ADV_SIZE

i = SITE_BAG_END
SITE_EXPAND_0           =SITE_BAG_END;
SITE_EXPAND_1           =SITE_BAG_END + 1;--/// ����1����λ��
SITE_EXPAND_2           =SITE_BAG_END + 2;--/// ����2����λ��
SITE_EXPAND_3           =SITE_BAG_END + 3;--/// ����3����λ��
SITE_EXPAND_4           =SITE_BAG_END + 4;--/// ����4����λ��
SITE_EXPAND_END         =SITE_BAG_END + 5;--/// �����������

i = SITE_EXPAND_END
SITE_GLASSES                      =i;i=i+1     --/// �۾�
SITE_BRACELET_0                   =i;i=i+1     --/// ����0
SITE_BRACELET_1                   =i;i=i+1     --/// ����1
SITE_MASK                         =i;i=i+1     --/// ���
SITE_KNEELET                      =i;i=i+1     --/// ��ϥ
SITE_CHESTPLATE                   =i;i=i+1     --/// ����
SITE_CLOAK                        =i;i=i+1     --/// ����
SITE_EARRINGS                     =i;i=i+1     --/// ����
SITE_HEADWEAR                     =i;i=i+1     --/// ͷ��
SITE_LEGGUARD                     =i;i=i+1     --/// ����
SITE_JADE                         =i;i=i+1     --/// ����
SITE_INSTRUMENT                   =i;i=i+1     --/// ����
SITE_HANGINGS                     =i;i=i+1     --/// ����
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

--// �Զ���װ��λ
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
SITE_END            = SITE_EQUIP_CUSTOM_END  --/// ������

--��������λ����ض���
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

--λ������
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



