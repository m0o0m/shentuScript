package script
{
	public class GlobalDefine
	{		
			var RDCOLOR={};
		
			var COLOR_WHITE				= 0;
			var COLOR_ORANGE			= 0;
			var COLOR_YELLOW				= 0;
			var COLOR_BLUE					= 0;
			var COLOR_SKYBLUE			= 0;
			var COLOR_DBLUE				= 0;
			var COLOR_GREENG				= 0;
			var COLOR_DGREENG			= 0;
			var COLOR_BGREENG			= 0;
			var COLOR_RED					= 0;
			var COLOR_MAGENTA			= 0;
			var COLOR_BROWN				= 0;
			var COLOR_GOLD					= 0;
			var COLOR_DARKGOLD		= 0;
			var COLOR_PURPLE				= 0;
			var COLOR_GRAY					= 0;
			var COLOR_PINK					= 0;
			var COLOR_BLACK				= 0;
			var COLOR_LIGHTBROWN	= 0;		

			var RDSex = {};			
			var RDSexName = {};
			var RDJob = {};			
			var RDJOBName = {};

			var BUTTON_STATE_NORMAL		=0;
			var BUTTON_STATE_OVER 			=0;
			var BUTTON_STATE_DOWN 			=0;
			var BUTTON_STATE_DISABLE		=0;

			var RANK_TOTAL			= 0;
			var RANK_ZHANSHI		= 0;
			var RANK_FASHI			= 0;
			var RANK_DAOSHI		= 0;

			var MALL_TYPE_REXIAO							=0;
			var MALL_TYPE_CUXIAO							=0;
			var MALL_TYPE_FUZHU 							=0;
			var MALL_TYPE_QIANGHUA 						=0;
			var MALL_TYPE_XIAOHAO  						=0;
			var MALL_TYPE_JIFEN								=0;
			var MALL_TYPE_BANGDINGYUANBAO		=0;
		
			var CurrentMapKeyName = "";
		
			var PrepareKind = {};
	
			
		public function GlobalDefine()
		{
			//��ɫ
			RDCOLOR["��"]=		4294967295;		//0xFFFFFFFF
			RDCOLOR["��"]=		4294352189;		//0xFFF69D3D
			RDCOLOR["��"]=		4294761476;		//0xFFFCDC04
			RDCOLOR["��"]=		4279689899;		//0xFF16E2AB
			RDCOLOR["����"]=	4279689899;		//0xFF16E2AB
			RDCOLOR["����"]=	4280602623;		//0xFF24CFFF
			RDCOLOR["��"]=		4286185269;		//0xFF79FF35
			RDCOLOR["����"]=	4286111031;		//0xFF78DD37
			RDCOLOR["����"]=	4279755435;		//0xFF17E2AB
			RDCOLOR["�ۺ�"]=	4293935424;		//0xFFF04140
			RDCOLOR["���"]=	4294705574;		//0xFFFC01A6
			RDCOLOR["��ɫ"]=	4292790139;		//0xFFDEC77B
			RDCOLOR["��"]=		4294894158;		//0xFFFEE24E
			RDCOLOR["���"]=	4294417725;		//0xFFF79D3D
			RDCOLOR["��"]=		4293018073;		//0xFFE241D9
			RDCOLOR["��"]=		4284637794;		//0xFF626262
			RDCOLOR["��"]=		4293882016;		//0xFFEF70A0
			RDCOLOR["��ɫ"]=	4278190080;		//0xFF000000
			RDCOLOR["ǳ��ɫ"]=	4284293124;	//0xFF5D2004

			COLOR_WHITE=			4294967295;		//0xFFFFFFFF
			COLOR_ORANGE=		4294352189;		//0xFFF69D3D
			COLOR_YELLOW=		4294761476;		//0xFFFCDC04
			COLOR_BLUE=				4279689899;		//0xFF16E2AB
			COLOR_SKYBLUE=		4279689899;		//0xFF16E2AB
			COLOR_DBLUE=			4280602623;		//0xFF24CFFF
			COLOR_GREENG=		4286185269;		//0xFF79FF35
			COLOR_DGREENG=		4286111031;		//0xFF78DD37
			COLOR_BGREENG=		4279755435;		//0xFF17E2AB
			COLOR_RED=				4293935424;		//0xFFF04140
			COLOR_MAGENTA=		4294705574;		//0xFFFC01A6
			COLOR_BROWN=			4292790139;		//0xFFDEC77B
			COLOR_GOLD=			4294894158;		//0xFFFEE24E
			COLOR_DARKGOLD=	4294417725;		//0xFFF79D3D
			COLOR_PURPLE=			4293018073;		//0xFFE241D9
			COLOR_GRAY=				4284637794;		//0xFF626262
			COLOR_PINK=				4293882016;		//0xFFEF70A0
			COLOR_BLACK=			4278190080;		//0xFF000000
			COLOR_LIGHTBROWN=4284293124;		//0xFF5D2004

			//�Ա�
			var i = 1;
			RDSex["��"] = i;i=i+1;
			RDSex["Ů"] = i;i=i+1;
			
			RDSexName[RDSex["��"]] = "��";
			RDSexName[RDSex["Ů"]] = "Ů";


			//ְҵ����
			i = 1;
			RDJob["��"] = i;i=i+1;
			RDJob["սʿ"] = i;i=i+1;
			RDJob["��ʦ"] = i;i=i+1;
			RDJob["��ʿ"] = i;i=i+1;

			RDJOBName[RDJob["��"]] = "��";
			RDJOBName[RDJob["սʿ"]] = "սʿ";
			RDJOBName[RDJob["��ʦ"]] = "��ʦ";
			RDJOBName[RDJob["��ʿ"]] = "��ʿ";

			i = 0;
			BUTTON_STATE_NORMAL	=i;i=i+1;
			BUTTON_STATE_OVER 			=i;i=i+1;
			BUTTON_STATE_DOWN		=i;i=i+1;
			BUTTON_STATE_DISABLE		=i;i=i+1;

			i = 0;
			RANK_TOTAL			=i;i=i+1;
			RANK_ZHANSHI		=i;i=i+1;
			RANK_FASHI				=i;i=i+1;
			RANK_DAOSHI  		=i;i=i+1;

			i = 0;
			MALL_TYPE_REXIAO							=i;i=i+1;	//����
			MALL_TYPE_CUXIAO							=i;i=i+1;	//����
			MALL_TYPE_FUZHU							=i;i=i+1;	//����
			MALL_TYPE_QIANGHUA					=i;i=i+1;	//ǿ��
			MALL_TYPE_XIAOHAO						=i;i=i+1;	//����
			MALL_TYPE_JIFEN								=i;i=i+1;	//����
			MALL_TYPE_BANGDINGYUANBAO	=i;i=i+1;	//��Ԫ��

			PrepareKind.NewMail = 1;
			
			addApi("RDCOLOR",RDCOLOR);
			addApi("COLOR_WHITE",COLOR_WHITE);
			addApi("COLOR_ORANGE",COLOR_ORANGE);
			addApi("COLOR_YELLOW",COLOR_YELLOW);
			addApi("COLOR_BLUE",COLOR_BLUE);
			addApi("COLOR_SKYBLUE",COLOR_SKYBLUE);
			addApi("COLOR_DBLUE",COLOR_DBLUE);
			addApi("COLOR_GREENG",COLOR_GREENG);
			addApi("COLOR_DGREENG",COLOR_DGREENG);
			addApi("COLOR_BGREENG",COLOR_BGREENG);
			addApi("COLOR_RED",COLOR_RED);
			addApi("COLOR_MAGENTA",COLOR_MAGENTA);
			addApi("COLOR_BROWN",COLOR_BROWN);
			addApi("COLOR_GOLD",COLOR_GOLD);
			addApi("COLOR_DARKGOLD",COLOR_DARKGOLD);
			addApi("COLOR_PURPLE",COLOR_PURPLE);
			addApi("COLOR_GRAY",COLOR_GRAY);
			addApi("COLOR_PINK",COLOR_PINK);
			addApi("COLOR_BLACK",COLOR_BLACK);
			addApi("COLOR_LIGHTBROWN",COLOR_LIGHTBROWN);
			addApi("RDSex",RDSex);
			addApi("RDSexName",RDSexName);
			addApi("RDJob",RDJob);
			addApi("RDJOBName",RDJOBName);
			addApi("BUTTON_STATE_NORMAL",BUTTON_STATE_NORMAL);
			addApi("BUTTON_STATE_OVER",BUTTON_STATE_OVER);
			addApi("BUTTON_STATE_DOWN",BUTTON_STATE_DOWN);
			addApi("BUTTON_STATE_DISABLE",BUTTON_STATE_DISABLE);
			addApi("RANK_TOTAL",RANK_TOTAL);
			addApi("RANK_ZHANSHI",RANK_ZHANSHI);
			addApi("RANK_FASHI",RANK_FASHI);
			addApi("RANK_DAOSHI",RANK_DAOSHI);
			addApi("MALL_TYPE_REXIAO",MALL_TYPE_REXIAO);
			addApi("MALL_TYPE_CUXIAO",MALL_TYPE_CUXIAO);
			addApi("MALL_TYPE_FUZHU",MALL_TYPE_FUZHU);
			addApi("MALL_TYPE_QIANGHUA",MALL_TYPE_QIANGHUA);
			addApi("MALL_TYPE_XIAOHAO",MALL_TYPE_XIAOHAO);
			addApi("MALL_TYPE_JIFEN",MALL_TYPE_JIFEN);
			addApi("MALL_TYPE_BANGDINGYUANBAO",MALL_TYPE_BANGDINGYUANBAO);
			addApi("CurrentMapKeyName",CurrentMapKeyName);
			addApi("PrepareKind",PrepareKind);
		}
	}
}