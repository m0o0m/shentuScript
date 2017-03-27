package script
{
	public class CommonFun
	{
		public function CommonFun()
		{
			addApi("msg",msg);
			addApi("dbg",dbg);
			addApi("log",log);
			addApi("FindDBE",FindDBE);
			addApi("MakeARGB",MakeARGB);
			addApi("ClientCommandHandler",ClientCommandHandler);
			addApi("GetStrWidth",GetStrWidth);
			addApi("GetItemPosTypeByHandle",GetItemPosTypeByHandle);
			addApi("GetItemGUIDataItemPos",GetItemGUIDataItemPos);
			addApi("IsTextureExists",IsTextureExists);
			addApi("GetTextureWidthHeight",GetTextureWidthHeight);
			addApi("GetDetailTime",GetDetailTime);
			addApi("GetLeaveTimeString",GetLeaveTimeString);
			addApi("GetLeaveTimeString_VipCfg",GetLeaveTimeString_VipCfg);
			addApi("GetLeaveTimeString2",GetLeaveTimeString2);
			addApi("GetGoldString",GetGoldString);
			addApi("strsplit",strsplit);
			addApi("strsplittwo",strsplittwo);
			addApi("serialize",serialize);
			addApi("dup",dup);
			addApi("mkcolor",mkcolor);
			addApi("HeroSummon",HeroSummon);
			addApi("HeroQuite",HeroQuite);
		}
		//��ӡ�����������ַ���
		function msg(str)
		{
			UI.Lua_ShowTypeMsg(1, str);
		}
		//��ӡ�����Debug View
		function dbg(str)
		{
			UI.Lua_Log(str);
		}
		//������д���ļ����������Debug
		function log(str)
		{
			UI.Lua_LogFile(str);
		}
		//��ѯDBE/XML�ļ��������
		//˵����������֪�ֶ�����KeyName���ֶε�ֵKeyValue��ѯDBEName��FindName�ֶε�ֵ
		//����һ���ַ�����,ʧ�ܷ��ؿձ�
		//ʾ����FindDBE("item","KeyName","SubType","9")
		function FindDBE(DBEName,FindName,KeyName,KeyValue)
		{
			var _Ret = {};
			if(UI.Lua_FindDBE(DBEName,FindName,KeyName,KeyValue))
			{
				_Ret = LuaRet;
			}
			return _Ret;
		}
		//��ȡ��ɫ (A,R,G,B) -> (int)
		function MakeARGB(A, R, G, B)
		{
			UI.Lua_MakeARGB(A, R, G, B);
			return LuaRet;
		}
		//����ͻ�������,������
		function ClientCommandHandler(_ClientCommand)
		{
			if(ClientCommand != null && ClientCommand(_ClientCommand))
			{
				return true;
			}
			return false;
		}
		//��ȡ��ǰ�����µ��ַ�����ռ���
		function GetStrWidth(str)
		{
			if(UI.Lua_GetFontStrWidth("system",str))
			{
				return LuaRet;
			}
			return 0;
		}
		//��ȡװ����λ��
		function GetItemPosTypeByHandle(_ItemHandle)
		{
			if(!UI.Lua_GetItemEntityPropByHandle(_ItemHandle,ITEM_PROP_ENTITY_SITE))
			{
				return INVALID_POS;
			}else{
				return GetItemPosType(LuaRet);
			}
		}
		//��ȡ����Tipָ��ĵ��߸��ӵ�λ��
		function GetItemGUIDataItemPos()
		{
			if(!GetTipItemGUIDataPropByType(ITEMGUIDATA_ITEMPOS))
			{
				return INVALID_POS;
			}else{
				return GetItemPosType(LuaRet);
			}
		}
		function IsTextureExists(_TextureImgID)
		{
			if(!UI.Lua_IsTextureExists(_TextureImgID) || LuaRet == false)
			{
				return false;
			}else{
				return true;
			}
		}
		function GetTextureWidthHeight(_TextureImgID)
		{
			if(!UI.Lua_GetTextureWidthHeight(_TextureImgID))
			{
				return [0,0];
			}else{
				return [LuaRet[1],LuaRet[2]];
			}
		}
		//������ʱ��(����)��ȡ ��,ʱ,��,��
		function GetDetailTime(_TotleTime)
		{
			var s = _TotleTime;
			var m = math.floor(s / 60);
			var h = math.floor(m / 60);
			var d = math.floor(h / 24);
			s = s % 60;
			m = m % 60;
			h = h % 24;
			return [d,h,m,s];
		}
		//����������ȡʱ��ʣ����ַ���
		function GetLeaveTimeString(_TotleTime)
		{
			var temp = GetDetailTime(_TotleTime);
			var d = temp[0];
			var h = temp[1];
			var m = temp[2];
			var s = temp[3];
			var _Ret = "";
			if(d != 0)
			{
				_Ret = d+"��"+h+"ʱ"+m+"��"+s+"��";
			}else if(h != 0)
			{
				_Ret = h+"ʱ"+m+"��"+s+"��";
			}else{
				_Ret = m+"��"+s+"��";
			}
			return _Ret;
		}
		function GetLeaveTimeString_VipCfg(_TotleTime)
		{
			var temp = GetDetailTime(_TotleTime);
			var d = temp[0];
			var h = temp[1];
			var m = temp[2];
			var s = temp[3];
			var t = [d > 0, h > 0, m > 0, s > 0];
			var i = -1;
			var j = -1;
			for(var x = 0;x<t.length;x++)
			{
				if(t[x])
				{
					i = x; 
					break;
				}
			}
			if(i == -1 || i >= 3)
			{
				return s+"��";
			}
			for(var x = i;x<t.length;x++)
			{
				if(!t[x])
				{
					j = x;
					break;
				}
			}
			if(j != -1 && j < 3)
			{
				for(var x = j;x<t.length;x++)
				{
					t[x] = false;
				}
			}
			var r = "";
			if(t[1])
			{
				r = r+d+"��";
			}
			if(t[2])
			{
				r = r+h+"ʱ";
			}
			if(t[3])
			{
				r = r+m+"��";
			}
			if(t[4])
			{
				r = r+s+"��";
			}
			return r;
		}
		function GetLeaveTimeString2(_TotleTime)
		{
			var temp = GetDetailTime(_TotleTime);
			var d = temp[0];
			var h = temp[1];
			var m = temp[2];
			var s = temp[3];
			var _Ret = "";
			if(h < 10)
			{
				_Ret = _Ret+"0"+h+":";
			}else{
				_Ret = _Ret+h+":";
			}
			if(m < 10)
			{
				_Ret = _Ret+"0"+m+":";
			}else{
				_Ret = _Ret+m+":";
			}
			if(s < 10)
			{
				_Ret = _Ret+"0"+s;
			}else{
				_Ret = _Ret+s;
			}
			return _Ret;
		}
		//������ʹ�ö���ǧ�ַ� �����ַ���
		function GetGoldString(number)
		{
			var gold = String(number);
			var len = gold.length;
			var ret = "";
			var r = 0;
			for(var i = len-1;i>=0;i--)
			{
				ret = gold.substr(i, 1)+ret;
				if(i<len-1 && r % 3 == 0)
				{
					ret = ","+ret;
				}
				r++;
			}
			return ret;
		}
		//�ַ����ָ���ر�
		function strsplit(str,char)
		{
			var splitRet = str.split(char);
			return splitRet;
		}
		//�ַ����ָ���������ַ���
		function strsplittwo(str,char)
		{
			var index = str.indexOf(char);
			var str1 = str.substring(0,index);			
			var str2 = str.substring(index+1);
			return [str1,str2];
		}
		//����table ���л��õ��ַ���
		function serialize(obj)
		{
			var text = "";
			if(obj is int || obj is Number || obj is uint)
			{
				text = text + obj;
			}else if(obj is Boolean)
			{
				text = text + obj.toString();
			}else if(obj is String)
			{
				text = text + obj;
			}else if(obj is Array || obj is Object)
			{
				text = text + "{\n";
				var b = false;
				for(var key in obj)
				{
					text = text + "[" + serialize(key) + "]=" + serialize(obj[key]) + ",\n";
					if(!b)
					{
						b=true;
					}
				}
				if(b)
				{
					var lastIndex = text.lastIndexOf(",");
					text = text.substr(0,lastIndex) + text.substr(lastIndex+1);
				}
				text = text + "}";
			}else
			{
				dbg("can not serialize a "+ obj.toString());
			}
			return text;
		}
		//lua�����ĸ���
		function dup(ori_tab)
		{
			if (!(ori_tab is Array) && !(ori_tab is Dictionary))
			{
				return ori_tab;
			}
			var new_tab = new Dictionary();
			for(var key in ori_tab)
			{
				if(ori_tab[key] is Array || ori_tab[key] is Dictionary)
				{
					new_tab[key] = dup(ori_tab[key]);
				}else
				{
					new_tab[key] = ori_tab[key];
				}
			}
			return new_tab;
		}
		//���ַ���strת��Ϊ��Ӧ����ɫ����������
		function mkcolor(str)
		{
			if(str is String)
			{
				UI.Lua_GetColor(str);
				return LuaRet;
			}else if(str is int || str is Number)
			{
				return str;
			}
			return 0;
		}
		//Ӣ�۳�ս
		function HeroSummon(guid)
		{
			UI.Lua_GUID2Str(guid);
			guid = LuaRet;
			var file = "herolist";
			var func = "summon";
			UI.Lua_SubmitForm(file, func, guid);
		}
		//Ӣ����Ϣ
		function HeroQuite(guid)
		{
			UI.Lua_GUID2Str(guid);
			guid = LuaRet;
			var file = "herolist";
			var func = "quit";
			UI.Lua_SubmitForm(file, func, guid);ww
		}
	}
}