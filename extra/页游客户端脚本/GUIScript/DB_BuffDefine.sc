package script
{
	public class DB_BuffDefine
	{
		var BUFF_PROP_ID               = 0;
		var BUFF_PROP_NAME             = 0;
		var BUFF_PROP_KEYNAME          = 0;
		var BUFF_PROP_GROUP            = 0;
		var BUFF_PROP_INTERVAL         = 0;
		var BUFF_PROP_TIMELIMIT        = 0;
		var BUFF_PROP_USEABSTIME       = 0;
		var BUFF_PROP_TIMECOFF         = 0;
		var BUFF_PROP_STACK            = 0;
		var BUFF_PROP_ATT1COFF         = 0;
		var BUFF_PROP_ATT1             = 0;
		var BUFF_PROP_ATTVALUE1        = 0;
		var BUFF_PROP_ATT2             = 0;
		var BUFF_PROP_ATTVALUE2        = 0;
		var BUFF_PROP_ATT3             = 0;
		var BUFF_PROP_ATTVALUE3        = 0;
		var BUFF_PROP_ATT4             = 0;
		var BUFF_PROP_ATTVALUE4        = 0;
		var BUFF_PROP_ATT5             = 0;
		var BUFF_PROP_ATTVALUE5        = 0;
		var BUFF_PROP_ATT6             = 0;
		var BUFF_PROP_ATTVALUE6        = 0;
		var BUFF_PROP_ATT7             = 0;
		var BUFF_PROP_ATTVALUE7        = 0;
		var BUFF_PROP_ATT8             = 0;
		var BUFF_PROP_ATTVALUE8        = 0;
		var BUFF_PROP_ATT9             = 0;
		var BUFF_PROP_ATTVALUE9        = 0;
		var BUFF_PROP_ATT10            = 0;
		var BUFF_PROP_ATTVALUE10       = 0;
		var BUFF_PROP_CLIENTSHOW       = 0;
		var BUFF_PROP_ICON             = 0;
		var BUFF_PROP_OFFLINESAVE      = 0;
		var BUFF_PROP_DIEAUTODEL       = 0;
		var BUFF_PROP_CANCANCEL        = 0;
		var BUFF_PROP_TIPS             = 0;
		var BUFF_PROP_MAGICEFFECT      = 0;
		var BUFF_PROP_DISAPPEAREFFECT  = 0;
		var BUFF_PROP_HASIMMSHIELD     = 0;
		var BUFF_PROP_HASMANASHIELD    = 0;
		var BUFF_PROP_IMMSHIELD        = 0;
		var BUFF_PROP_ISSTEALTH        = 0;
		var BUFF_PROP_CHANGECOLOR      = 0;
		var BUFF_PROP_CANLOCKMONSTER   = 0;
		var BUFF_PROP_CANTIMESTACK     = 0;
		var BUFF_PROP_CANEFFECTSTACK   = 0;
		var BUFF_PROP_HPFULLAUTOCANCEL = 0;
		var BUFF_PROP_MPFULLAUTOCANCEL = 0;
		var BUFF_PROP_JUMPMAPSAVE      = 0;
		var BUFF_PROP_AVATAR           = 0;
		var BUFF_PROP_PROMPT           = 0;
		var BUFF_PROP_TYPE_MIN         = 0;
		var BUFF_PROP_TYPE_MAX         = 0;
		
		public function DB_BuffDefine()
		{
			//Buff的宏定义
			var i = 0;
			BUFF_PROP_ID                            =i;i=i+1;///// 编号
			BUFF_PROP_NAME                          =i;i=i+1;///// 名称
			BUFF_PROP_KEYNAME                       =i;i=i+1;///// 索引名
			BUFF_PROP_GROUP                         =i;i=i+1;///// 组别
			BUFF_PROP_INTERVAL                      =i;i=i+1;///// 触发间隔
			BUFF_PROP_TIMELIMIT                     =i;i=i+1;///// 存在时限
			BUFF_PROP_USEABSTIME                    =i;i=i+1;///// 绝对时间或相对时间
			BUFF_PROP_TIMECOFF                      =i;i=i+1;///// 时间系数
			BUFF_PROP_STACK                         =i;i=i+1;///// 叠加层数
			BUFF_PROP_ATT1COFF                      =i;i=i+1;///// Att1系数
			BUFF_PROP_ATT1                          =i;i=i+1;///// Att1
			BUFF_PROP_ATTVALUE1                     =i;i=i+1;///// Att值1
			BUFF_PROP_ATT2                          =i;i=i+1;///// Att2
			BUFF_PROP_ATTVALUE2                     =i;i=i+1;///// Att值2
			BUFF_PROP_ATT3                          =i;i=i+1;///// Att3
			BUFF_PROP_ATTVALUE3                     =i;i=i+1;///// Att值3
			BUFF_PROP_ATT4                          =i;i=i+1;///// Att4
			BUFF_PROP_ATTVALUE4                     =i;i=i+1;///// Att值4
			BUFF_PROP_ATT5                          =i;i=i+1;///// Att5
			BUFF_PROP_ATTVALUE5                     =i;i=i+1;///// Att值5
			BUFF_PROP_ATT6                          =i;i=i+1;///// Att6
			BUFF_PROP_ATTVALUE6                     =i;i=i+1;///// Att值6
			BUFF_PROP_ATT7                          =i;i=i+1;///// Att7
			BUFF_PROP_ATTVALUE7                     =i;i=i+1;///// Att值7
			BUFF_PROP_ATT8                          =i;i=i+1;///// Att8
			BUFF_PROP_ATTVALUE8                     =i;i=i+1;///// Att值8
			BUFF_PROP_ATT9                          =i;i=i+1;///// Att9
			BUFF_PROP_ATTVALUE9                     =i;i=i+1;///// Att值9
			BUFF_PROP_ATT10                         =i;i=i+1;///// Att10
			BUFF_PROP_ATTVALUE10                    =i;i=i+1;///// Att值10
			BUFF_PROP_CLIENTSHOW                    =i;i=i+1;///// 是否客户端显示
			BUFF_PROP_ICON                          =i;i=i+1;///// BUFF图标
			BUFF_PROP_OFFLINESAVE                   =i;i=i+1;///// 是否下线保存
			BUFF_PROP_DIEAUTODEL                    =i;i=i+1;///// 死亡自动删除
			BUFF_PROP_CANCANCEL                     =i;i=i+1;///// 客户端是否可手动点掉
			BUFF_PROP_TIPS                          =i;i=i+1;///// BUFFTIPS
			BUFF_PROP_MAGICEFFECT                   =i;i=i+1;///// BUFF特效
			BUFF_PROP_DISAPPEAREFFECT               =i;i=i+1;///// BUFF消失特效
			BUFF_PROP_HASIMMSHIELD                  =i;i=i+1;///// 是否有减免盾
			BUFF_PROP_HASMANASHIELD                 =i;i=i+1;///// 是否有魔盾
			BUFF_PROP_IMMSHIELD                     =i;i=i+1;///// 减免盾百分比值
			BUFF_PROP_ISSTEALTH                     =i;i=i+1;///// 是否有隐身
			BUFF_PROP_CHANGECOLOR                   =i;i=i+1;///// 变色
			BUFF_PROP_CANLOCKMONSTER                =i;i=i+1;///// 是否锁妖咒
			BUFF_PROP_CANTIMESTACK                  =i;i=i+1;///// 是否时间叠加
			BUFF_PROP_CANEFFECTSTACK                =i;i=i+1;///// 是否效果叠加
			BUFF_PROP_HPFULLAUTOCANCEL              =i;i=i+1;///// HP满后是否自动删除
			BUFF_PROP_MPFULLAUTOCANCEL              =i;i=i+1;///// MP满后是否自动删除
			BUFF_PROP_JUMPMAPSAVE                   =i;i=i+1;///// 跳图是否保存
			BUFF_PROP_AVATAR                        =i;i=i+1;///// 改变外形
			BUFF_PROP_PROMPT                        =i;i=i+1;///// 提示信息

			BUFF_PROP_TYPE_MIN                      = BUFF_PROP_ID;                             ///// Buff最小值
			BUFF_PROP_TYPE_MAX                      = BUFF_PROP_PROMPT;                         ///// Buff最大值
			
			addApi("BUFF_PROP_ID",BUFF_PROP_ID);
			addApi("BUFF_PROP_NAME",BUFF_PROP_NAME);
			addApi("BUFF_PROP_KEYNAME",BUFF_PROP_KEYNAME);
			addApi("BUFF_PROP_GROUP",BUFF_PROP_GROUP);
			addApi("BUFF_PROP_INTERVAL",BUFF_PROP_INTERVAL);
			addApi("BUFF_PROP_TIMELIMIT",BUFF_PROP_TIMELIMIT);
			addApi("BUFF_PROP_USEABSTIME",BUFF_PROP_USEABSTIME);
			addApi("BUFF_PROP_TIMECOFF",BUFF_PROP_TIMECOFF);
			addApi("BUFF_PROP_STACK",BUFF_PROP_STACK);
			addApi("BUFF_PROP_ATT1COFF",BUFF_PROP_ATT1COFF);
			addApi("BUFF_PROP_ATT1",BUFF_PROP_ATT1);
			addApi("BUFF_PROP_ATTVALUE1",BUFF_PROP_ATTVALUE1);
			addApi("BUFF_PROP_ATT2",BUFF_PROP_ATT2);
			addApi("BUFF_PROP_ATTVALUE2",BUFF_PROP_ATTVALUE2);
			addApi("BUFF_PROP_ATT3",BUFF_PROP_ATT3);
			addApi("BUFF_PROP_ATTVALUE3",BUFF_PROP_ATTVALUE3);
			addApi("BUFF_PROP_ATT4",BUFF_PROP_ATT4);
			addApi("BUFF_PROP_ATTVALUE4",BUFF_PROP_ATTVALUE4);
			addApi("BUFF_PROP_ATT5",BUFF_PROP_ATT5);
			addApi("BUFF_PROP_ATTVALUE5",BUFF_PROP_ATTVALUE5);
			addApi("BUFF_PROP_ATT6",BUFF_PROP_ATT6);
			addApi("BUFF_PROP_ATTVALUE6",BUFF_PROP_ATTVALUE6);
			addApi("BUFF_PROP_ATT7",BUFF_PROP_ATT7);
			addApi("BUFF_PROP_ATTVALUE7",BUFF_PROP_ATTVALUE7);
			addApi("BUFF_PROP_ATT8",BUFF_PROP_ATT8);
			addApi("BUFF_PROP_ATTVALUE8",BUFF_PROP_ATTVALUE8);
			addApi("BUFF_PROP_ATT9",BUFF_PROP_ATT9);
			addApi("BUFF_PROP_ATTVALUE9",BUFF_PROP_ATTVALUE9);
			addApi("BUFF_PROP_ATT10",BUFF_PROP_ATT10);
			addApi("BUFF_PROP_ATTVALUE10",BUFF_PROP_ATTVALUE10);
			addApi("BUFF_PROP_CLIENTSHOW",BUFF_PROP_CLIENTSHOW);
			addApi("BUFF_PROP_ICON",BUFF_PROP_ICON);
			addApi("BUFF_PROP_OFFLINESAVE",BUFF_PROP_OFFLINESAVE);
			addApi("BUFF_PROP_DIEAUTODEL",BUFF_PROP_DIEAUTODEL);
			addApi("BUFF_PROP_CANCANCEL",BUFF_PROP_CANCANCEL);
			addApi("BUFF_PROP_TIPS",BUFF_PROP_TIPS);
			addApi("BUFF_PROP_MAGICEFFECT",BUFF_PROP_MAGICEFFECT);
			addApi("BUFF_PROP_DISAPPEAREFFECT",BUFF_PROP_DISAPPEAREFFECT);
			addApi("BUFF_PROP_HASIMMSHIELD",BUFF_PROP_HASIMMSHIELD);
			addApi("BUFF_PROP_HASMANASHIELD",BUFF_PROP_HASMANASHIELD);
			addApi("BUFF_PROP_IMMSHIELD",BUFF_PROP_IMMSHIELD);
			addApi("BUFF_PROP_ISSTEALTH",BUFF_PROP_ISSTEALTH);
			addApi("BUFF_PROP_CHANGECOLOR",BUFF_PROP_CHANGECOLOR);
			addApi("BUFF_PROP_CANLOCKMONSTER",BUFF_PROP_CANLOCKMONSTER);
			addApi("BUFF_PROP_CANTIMESTACK",BUFF_PROP_CANTIMESTACK);
			addApi("BUFF_PROP_CANEFFECTSTACK",BUFF_PROP_CANEFFECTSTACK);
			addApi("BUFF_PROP_HPFULLAUTOCANCEL",BUFF_PROP_HPFULLAUTOCANCEL);
			addApi("BUFF_PROP_MPFULLAUTOCANCEL",BUFF_PROP_MPFULLAUTOCANCEL);
			addApi("BUFF_PROP_JUMPMAPSAVE",BUFF_PROP_JUMPMAPSAVE);
			addApi("BUFF_PROP_AVATAR",BUFF_PROP_AVATAR);
			addApi("BUFF_PROP_PROMPT",BUFF_PROP_PROMPT);
			addApi("BUFF_PROP_TYPE_MIN",BUFF_PROP_TYPE_MIN);
			addApi("BUFF_PROP_TYPE_MAX",BUFF_PROP_TYPE_MAX);
		}
	}
}