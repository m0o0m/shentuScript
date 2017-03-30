package script
{
	public class DB_SuitDefine
	{
		var SUIT_PROP_ID                            = 0;
		var SUIT_PROP_NAME                          = 0;
		var SUIT_PROP_KEYNAME                       = 0;
		var SUIT_PROP_ATTSIZE1                      = 0;
		var SUIT_PROP_ATT1                          = 0;
		var SUIT_PROP_ATTVALUE1                     = 0;
		var SUIT_PROP_ATTSIZE2                      = 0;
		var SUIT_PROP_ATT2                          = 0;
		var SUIT_PROP_ATTVALUE2                     = 0;
		var SUIT_PROP_ATTSIZE3                      = 0;
		var SUIT_PROP_ATT3                          = 0;
		var SUIT_PROP_ATTVALUE3                     = 0;
		var SUIT_PROP_ATTSIZE4                      = 0;
		var SUIT_PROP_ATT4                          = 0;
		var SUIT_PROP_ATTVALUE4                     = 0;
		var SUIT_PROP_ATTSIZE5                      = 0;
		var SUIT_PROP_ATT5                          = 0;
		var SUIT_PROP_ATTVALUE5                     = 0;
		var SUIT_PROP_ATTSIZE6                      = 0;
		var SUIT_PROP_ATT6                          = 0;
		var SUIT_PROP_ATTVALUE6                     = 0;
		var SUIT_PROP_ATTSIZE7                      = 0;
		var SUIT_PROP_ATT7                          = 0;
		var SUIT_PROP_ATTVALUE7                     = 0;
		var SUIT_PROP_ATTSIZE8                      = 0;
		var SUIT_PROP_ATT8                          = 0;
		var SUIT_PROP_ATTVALUE8                     = 0;
		var SUIT_PROP_ATTSIZE9                      = 0;
		var SUIT_PROP_ATT9                          = 0;
		var SUIT_PROP_ATTVALUE9                     = 0;
		var SUIT_PROP_ATTSIZE10                     = 0;
		var SUIT_PROP_ATT10                         = 0;
		var SUIT_PROP_ATTVALUE10                    = 0;

		var SUIT_PROP_TYPE_MIN                      = 0;
		var SUIT_PROP_TYPE_MAX                      = 0;

		public function DB_SuitDefine()
		{
			//Suit的宏定义
			var i = 0;
			SUIT_PROP_ID                            =i;i=i+1;///// 物品编号
			SUIT_PROP_NAME                          =i;i=i+1;///// 名称
			SUIT_PROP_KEYNAME                       =i;i=i+1;///// 索引名称
			SUIT_PROP_ATTSIZE1                      =i;i=i+1;///// 激活需求套装件数
			SUIT_PROP_ATT1                          =i;i=i+1;///// Att1
			SUIT_PROP_ATTVALUE1                     =i;i=i+1;///// Att值1
			SUIT_PROP_ATTSIZE2                      =i;i=i+1;///// 激活需求套装件数
			SUIT_PROP_ATT2                          =i;i=i+1;///// Att2
			SUIT_PROP_ATTVALUE2                     =i;i=i+1;///// Att值2
			SUIT_PROP_ATTSIZE3                      =i;i=i+1;///// 激活需求套装件数
			SUIT_PROP_ATT3                          =i;i=i+1;///// Att3
			SUIT_PROP_ATTVALUE3                     =i;i=i+1;///// Att值3
			SUIT_PROP_ATTSIZE4                      =i;i=i+1;///// 激活需求套装件数
			SUIT_PROP_ATT4                          =i;i=i+1;///// Att4
			SUIT_PROP_ATTVALUE4                     =i;i=i+1;///// Att值4
			SUIT_PROP_ATTSIZE5                      =i;i=i+1;///// 激活需求套装件数
			SUIT_PROP_ATT5                          =i;i=i+1;///// Att5
			SUIT_PROP_ATTVALUE5                     =i;i=i+1;///// Att值5
			SUIT_PROP_ATTSIZE6                      =i;i=i+1;///// 激活需求套装件数
			SUIT_PROP_ATT6                          =i;i=i+1;///// Att6
			SUIT_PROP_ATTVALUE6                     =i;i=i+1;///// Att值6
			SUIT_PROP_ATTSIZE7                      =i;i=i+1;///// 激活需求套装件数
			SUIT_PROP_ATT7                          =i;i=i+1;///// Att7
			SUIT_PROP_ATTVALUE7                     =i;i=i+1;///// Att值7
			SUIT_PROP_ATTSIZE8                      =i;i=i+1;///// 激活需求套装件数
			SUIT_PROP_ATT8                          =i;i=i+1;///// Att8
			SUIT_PROP_ATTVALUE8                     =i;i=i+1;///// Att值8
			SUIT_PROP_ATTSIZE9                      =i;i=i+1;///// 激活需求套装件数
			SUIT_PROP_ATT9                          =i;i=i+1;///// Att9
			SUIT_PROP_ATTVALUE9                     =i;i=i+1;///// Att值9
			SUIT_PROP_ATTSIZE10                     =i;i=i+1;///// 激活需求套装件数
			SUIT_PROP_ATT10                         =i;i=i+1;///// Att10
			SUIT_PROP_ATTVALUE10                    =i;i=i+1;///// Att值10

			SUIT_PROP_TYPE_MIN                      = SUIT_PROP_ID;                             ///// Suit最小值
			SUIT_PROP_TYPE_MAX                      = SUIT_PROP_ATTVALUE5;                      ///// Suit最大值
			
			addApi("SUIT_PROP_ID",SUIT_PROP_ID);
			addApi("SUIT_PROP_NAME",SUIT_PROP_NAME);
			addApi("SUIT_PROP_KEYNAME",SUIT_PROP_KEYNAME);
			addApi("SUIT_PROP_ATTSIZE1",SUIT_PROP_ATTSIZE1);
			addApi("SUIT_PROP_ATT1",SUIT_PROP_ATT1);
			addApi("SUIT_PROP_ATTVALUE1",SUIT_PROP_ATTVALUE1);
			addApi("SUIT_PROP_ATTSIZE2",SUIT_PROP_ATTSIZE2);
			addApi("SUIT_PROP_ATT2",SUIT_PROP_ATT2);
			addApi("SUIT_PROP_ATTVALUE2",SUIT_PROP_ATTVALUE2);
			addApi("SUIT_PROP_ATTSIZE3",SUIT_PROP_ATTSIZE3);
			addApi("SUIT_PROP_ATT3",SUIT_PROP_ATT3);
			addApi("SUIT_PROP_ATTVALUE3",SUIT_PROP_ATTVALUE3);
			addApi("SUIT_PROP_ATTSIZE4",SUIT_PROP_ATTSIZE4);
			addApi("SUIT_PROP_ATT4",SUIT_PROP_ATT4);
			addApi("SUIT_PROP_ATTVALUE4",SUIT_PROP_ATTVALUE4);
			addApi("SUIT_PROP_ATTSIZE5",SUIT_PROP_ATTSIZE5);
			addApi("SUIT_PROP_ATT5",SUIT_PROP_ATT5);
			addApi("SUIT_PROP_ATTVALUE5",SUIT_PROP_ATTVALUE5);
			addApi("SUIT_PROP_ATTSIZE6",SUIT_PROP_ATTSIZE6);
			addApi("SUIT_PROP_ATT6",SUIT_PROP_ATT6);
			addApi("SUIT_PROP_ATTVALUE6",SUIT_PROP_ATTVALUE6);
			addApi("SUIT_PROP_ATTSIZE7",SUIT_PROP_ATTSIZE7);
			addApi("SUIT_PROP_ATT7",SUIT_PROP_ATT7);
			addApi("SUIT_PROP_ATTVALUE7",SUIT_PROP_ATTVALUE7);
			addApi("SUIT_PROP_ATTSIZE8",SUIT_PROP_ATTSIZE8);
			addApi("SUIT_PROP_ATT8",SUIT_PROP_ATT8);
			addApi("SUIT_PROP_ATTVALUE8",SUIT_PROP_ATTVALUE8);
			addApi("SUIT_PROP_ATTSIZE9",SUIT_PROP_ATTSIZE9);
			addApi("SUIT_PROP_ATT9",SUIT_PROP_ATT9);
			addApi("SUIT_PROP_ATTVALUE9",SUIT_PROP_ATTVALUE9);
			addApi("SUIT_PROP_ATTSIZE10",SUIT_PROP_ATTSIZE10);
			addApi("SUIT_PROP_ATT10",SUIT_PROP_ATT10);
			addApi("SUIT_PROP_ATTVALUE10",SUIT_PROP_ATTVALUE10);
			addApi("SUIT_PROP_TYPE_MIN",SUIT_PROP_TYPE_MIN);
			addApi("SUIT_PROP_TYPE_MAX",SUIT_PROP_TYPE_MAX);
		}
	}
}