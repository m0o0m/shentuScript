package script
{
	public class DB_AttDefine
	{
		var ATT_PROP_ID        = 0;
		var ATT_PROP_NAME      = 0;
		var ATT_PROP_CHINANAME = 0;
		var ATT_PROP_KEYNAME   = 0;

		var ATT_PROP_TYPE_MIN  = 0;
		var ATT_PROP_TYPE_MAX  = 0;
		public function DB_AttDefine()
		{
			//Att�ĺ궨��
			var i = 0;
			ATT_PROP_ID       	=i;i=i+1;///// ���Ա�ID
			ATT_PROP_NAME     	=i;i=i+1;///// ���Ե�Ӣ���ֶ���
			ATT_PROP_CHINANAME	=i;i=i+1;///// ���Ե������ֶ���
			ATT_PROP_KEYNAME  	=i;i=i+1;///// ��������
			ATT_PROP_TYPE_MIN 	= ATT_PROP_ID;     	///// Att��Сֵ
			ATT_PROP_TYPE_MAX 	= ATT_PROP_KEYNAME;	///// Att���ֵ
			addApi("ATT_PROP_ID",ATT_PROP_ID);
			addApi("ATT_PROP_NAME",ATT_PROP_NAME);
			addApi("ATT_PROP_CHINANAME",ATT_PROP_CHINANAME);
			addApi("ATT_PROP_KEYNAME",ATT_PROP_KEYNAME);
			addApi("ATT_PROP_TYPE_MIN",ATT_PROP_TYPE_MIN);
			addApi("ATT_PROP_TYPE_MAX",ATT_PROP_TYPE_MAX);
		}
	}
}