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
		var EQUIP_WEAPON				= 0;	/// ����
		var EQUIP_HELMET				= 0;	/// ͷ��
		var EQUIP_WRIST 				= 0;	/// ����
		var EQUIP_ARMOR					= 0;	/// �·�
		var EQUIP_JUJU					= 0;	/// ����
		var EQUIP_SHOES					= 0;	/// Ь��
		var EQUIP_SHOULDER				= 0;	/// ����
		var EQUIP_NECKLACE				= 0;	/// ����
		var EQUIP_RING					= 0;	/// ��ָ
		var EQUIP_MEDAL					= 0;	/// ѫ��
		var EQUIP_GEM					= 0;	/// ��ʯ
		var EQUIP_WINGS					= 0;	/// ���
		var EQUIP_AMULET				= 0;	/// �ػ�
		var EQUIP_MOUNT					= 0;	/// ����
		var EQUIP_SHIELD				= 0;	/// ����
		var EQUIP_FASHION				= 0;	/// ʱװ
		var EQUIP_MAX					= 0;

		//��������
		var MATERIAL_NULL				= 0;
		var MATERIAL_WEAPON_UPGRADE		= 0;	/// ������������
		var MATERIAL_RESERVED			= 0;	/// (����δʹ��)
		var MATERIAL_IDENTIFY 			= 0;	/// ����װ������
		var MATERIAL_DRILL				= 0;	/// װ����ײ���
		var MATERIAL_LUCKY				= 0;	/// ��������ף������
		var MATERIAL_GEM				= 0;	/// ��ʯ
		var MATERIAL_SYNTHESIS			= 0;	/// ��ʯ�ϳɷ�
		var MATERIAL_DIG				= 0;	/// ��ʯժ����
		var MATERIAL_EMBED				= 0;	/// ��ʯ��Ƕ��
		var MATERIAL_REFINE				= 0;	/// װ����������
		var MATERIAL_REFINE_LUCKY		= 0;	/// װ���������˷�����
		var MATERIAL_SPEAKER			= 0;	/// ����
		var MATERIAL_MAX				= 0;

		//��������
		var WEAPON_NULL					= 0;	/// ͨ����
		var WEAPON_KNIFE				= 0;	/// ���ࣨսʿ�ࣩ
		var WEAPON_SWORD				= 0;	/// ���ࣨ��ʿ�ࣩ
		var WEAPON_STICK				= 0;	/// ���ࣨ��ʦ�ࣩ
		var WEAPON_MAX					= 0;

		///��������
		var JUJU_NULL					= 0;
		var JUJU_JUJU					= 0;	/// ������
		var JUJU_POISON					= 0;	/// ��ҩ��
		var JUJU_MAX					= 0;

		public function ItemTypeDefine()
		{
			Item���͵ĺ궨��
			/// ��Ʒ����
			var i = 0;
			ITEM_TYPE_NULL		   		=i;i=i+1;
			ITEM_TYPE_EQUIP	       		=i;i=i+1;	/// װ��
			ITEM_TYPE_CONSUMABLE   		=i;i=i+1;	/// ����Ʒ
			ITEM_TYPE_FINITE       		=i;i=i+1;	/// ����Ʒ
			ITEM_TYPE_MATERIAL     		=i;i=i+1;	/// ����
			ITEM_TYPE_SUNDRIES     		=i;i=i+1;	/// �ӻ�
			ITEM_TYPE_BAG          		=i;i=i+1;	/// ����
			ITEM_TYPE_WAREHOUSE_ADV		=i;i=i+1;	/// �߼��ֿ�
			ITEM_TYPE_GOLD         		=i;i=i+1;	/// ���
			ITEM_TYPE_BUNDLE       		=i;i=i+1;	/// ������Ʒ
			ITEM_TYPE_SKILL        		=i;i=i+1;	/// ������Ч����Ʒ
			ITEM_TYPE_SCRIPT       		=i;i=i+1;	/// �ű���Ʒ
			ITEM_TYPE_MAX          		=i;i=i+1;

			/// װ������
			i = 0;
			EQUIP_NULL					=i;i=i+1;
			EQUIP_WEAPON				=i;i=i+1;	/// ����
			EQUIP_HELMET				=i;i=i+1;	/// ͷ��
			EQUIP_WRIST 				=i;i=i+1;	/// ����
			EQUIP_ARMOR					=i;i=i+1;	/// �·�
			EQUIP_JUJU					=i;i=i+1;	/// ����
			EQUIP_SHOES					=i;i=i+1;	/// Ь��
			EQUIP_SHOULDER				=i;i=i+1;	/// ����
			EQUIP_NECKLACE  			=i;i=i+1;	/// ����
			EQUIP_RING  				=i;i=i+1;	/// ��ָ
			EQUIP_MEDAL					=i;i=i+1;	/// ѫ��
			EQUIP_GEM  					=i;i=i+1;	/// ��ʯ
			EQUIP_WINGS  				=i;i=i+1;	/// ���
			EQUIP_AMULET				=i;i=i+1;	/// �ػ�
			EQUIP_MOUNT					=i;i=i+1;	/// ����
			EQUIP_SHIELD				=i;i=i+1;	/// ����
			EQUIP_FASHION				=i;i=i+1;	/// ʱװ
			EQUIP_MAX					=i;i=i+1;

			/// ��������
			i = 0;
			MATERIAL_NULL		   		=i;i=i+1;
			MATERIAL_WEAPON_UPGRADE		=i;i=i+1;	/// ������������
			MATERIAL_RESERVED			=i;i=i+1;	/// (����δʹ��)
			MATERIAL_IDENTIFY 			=i;i=i+1;	/// ����װ������
			MATERIAL_DRILL				=i;i=i+1;	/// װ����ײ���
			MATERIAL_LUCKY				=i;i=i+1;	/// ��������ף������
			MATERIAL_GEM				=i;i=i+1;	/// ��ʯ
			MATERIAL_SYNTHESIS			=i;i=i+1;	/// ��ʯ�ϳɷ�
			MATERIAL_DIG				=i;i=i+1;	/// ��ʯժ����
			MATERIAL_EMBED				=i;i=i+1;	/// ��ʯ��Ƕ��
			MATERIAL_REFINE				=i;i=i+1;	/// װ����������
			MATERIAL_REFINE_LUCKY		=i;i=i+1;	/// װ���������˷�����
			MATERIAL_SPEAKER			=i;i=i+1;	/// ����
			MATERIAL_MAX		   		=i;i=i+1;

			/// ��������
			i = 0;
			WEAPON_NULL		    	   =i;i=i+1;	/// ͨ����
			WEAPON_KNIFE               =i;i=i+1;	/// ���ࣨսʿ�ࣩ
			WEAPON_SWORD               =i;i=i+1;	/// ���ࣨ��ʿ�ࣩ
			WEAPON_STICK               =i;i=i+1;	/// ���ࣨ��ʦ�ࣩ
			WEAPON_MAX		    	   =i;i=i+1;

			/// ��������
			i = 0;
			JUJU_NULL					=i;i=i+1;
			JUJU_JUJU   				=i;i=i+1;	/// ������
			JUJU_POISON 				=i;i=i+1;	/// ��ҩ��
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