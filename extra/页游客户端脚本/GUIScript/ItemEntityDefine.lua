--Item�ĺ궨��
local i = 0

--���ڸ����(��������)�Ǵ�1��ʼ
--��Ϊϰ���ϣ�Lua���±��1��ʼ����Ȼ�޷�ʹ�ñ�׼���������Ȳ���

MAX_QUALITY_PROPERTY_NUM = 6
MAX_ENHANCE_LEVEL = 10
MAX_ENHANCE_PROPERTY_NUM = 3
MAX_EQUIP_SLOT = 3
MAX_IDENTIFY_PROPERTY_NUM = 3
MAX_EXT_PROPERTY_NUM = 5

i = 1
--��չ�����������
PROPERTY_ATTR_NAME				=i;i=i+1--/// ������(��ֵ)
PROPERTY_ATTR_VALUE				=i;i=i+1--/// ����ֵ(��ֵ)

i = ITEM_PROP_TYPE_MAX + 1 -- ���ŵ���ģ�������֮��ʼ����
--���µ���ʵ�����
ITEM_PROP_ENTITY_GUID				=i;i=i+1--/// guid
ITEM_PROP_ENTITY_ID				=i;i=i+1--/// ģ��Id
ITEM_PROP_ENTITY_NAME				=i;i=i+1--/// ����
ITEM_PROP_ENTITY_ROLE				=i;i=i+1--/// ӵ����GUID
ITEM_PROP_ENTITY_SITE				=i;i=i+1--/// ��ǰ���ڵ�λ��
ITEM_PROP_ENTITY_AMOUNT				=i;i=i+1--/// ��ǰ�Ķѵ�����
ITEM_PROP_ENTITY_DURABILITY			=i;i=i+1--/// װ���;�
ITEM_PROP_ENTITY_MAX_DURABILITY			=i;i=i+1--/// װ������;�
ITEM_PROP_ENTITY_USE_COUNT			=i;i=i+1--/// ��ǰ��ʹ�ô���
ITEM_PROP_ENTITY_IS_BOUND			=i;i=i+1--/// �Ƿ��Ѱ�
ITEM_PROP_ENTITY_LIFE				=i;i=i+1--/// ����ʱ����ʼ����ʱ��
ITEM_PROP_ENTITY_EXT_LEN			=i;i=i+1--/// ��չ���ݳ���
ITEM_PROP_ENTITY_EXT_DATA			=i;i=i+1--/// ��չ����

ITEM_PROP_ENTITY_END = i;i=i+1
i = ITEM_PROP_TYPE_MAX + 20;i=i+1

--��չ����:Equip
ITEM_PROP_EQUIP_VERSION				=i;i=i+1--/// �汾
ITEM_PROP_EQUIP_QUALITY				=i;i=i+1--/// Ʒ������
ITEM_PROP_EQUIP_SLOTNUM				=i;i=i+1--/// ��ǰ������
ITEM_PROP_EQUIP_GEMSLOT				=i;i=i+1--/// ��ʯ��λ
ITEM_PROP_EQUIP_GEMS				=i;i=i+1--/// ��ʯ���Լӳ�
ITEM_PROP_EQUIP_IDENTIFIES			=i;i=i+1--/// ��������
ITEM_PROP_EQUIP_REFINELEVEL			=i;i=i+1--/// �����ȼ�
ITEM_PROP_EQUIP_REFINEDATA			=i;i=i+1--/// ��������
ITEM_PROP_EQUIP_LUCKCURSE			=i;i=i+1--/// ����/����
ITEM_PROP_EQUIP_EXT				=i;i=i+1--/// ������չ

ITEM_PROP_EQUIP_END = i;i=i+1
