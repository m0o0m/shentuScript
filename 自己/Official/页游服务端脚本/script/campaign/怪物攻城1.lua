local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
--������Ϣ
local data_table =
{
	{
		["msg"] = "���﹥�Ǽ�����ʼ����ʿ�ǣ�׼��ӭ�ӹ���ķ�ŭ��Ѫ��ϴ��ɣ�",
		["delay"] = 10 --����֮��ļ����
	},
	{
		["msg"] = "������Գ�����紵��ս���ޣ����ǹ�������˭����",
		["delay"] = 5
	},
	{
		["msg"] = "������Գ�������ǣ��������ǹ��ǵĺ�ʱ��ȥ����Щ�ɶ�����඼ɱ���˰ɣ�",
		["delay"] = 10
	},
	{
		["msg"] = "������գ��������죬�޺�����һȺȺ�Ĺ��޴�Զ�������ƽ���ɽ�ǡ���",
		["delay"] = 10
	},
	{
		["msg"] = "���ǣ���ء����ɶ��GM��ÿ�ι��Ƕ������������ǰ���������ǣ��ֲ��ǹ���",
		["delay"] = 5
	},
	{
		["msg"] = "���ǣ�С���ǣ����ҳ尡���ѿɶ������ȫ��˺�飡�������Ǳ�Ϯ��",
		["delay"] = 5
	},
	{
		["msg"] = "��ء�����ء�����ء�������һȺ�ǳ�������ɽ�ǡ�255 286�����ꡣ",
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {255, 286},
			["Ұ��"] = 20,
			["����"] = 20,
			["ħ��"] = 20,
		}
	},
	{
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {258, 297},
			["Ұ��"] = 20,
			["����"] = 20,
			["ħ��"] = 20,
		}
	},
	{
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {242, 281},
			["Ұ��"] = 20,
			["����"] = 20,
			["ħ��"] = 20,
		}
	},
		{
		["delay"] = 75, 
		["monster"] =
		{
			["location"] = {250, 290},
			["����"] = 10,
		}
	}, --180s
	{
		["msg"] = "���ߣ������ֵܣ���Ҳ�����������ˣ����ҵ����ߴ���",
		["delay"] = 5
	},
	{
		["msg"] = "һ��Ⱥ�߳�������ɽ�ǡ�222 285�����ꡣ",
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {222, 285},
			["��ˮ��"] = 20,
			["����"] = 20,
			["����"] = 20,
			["����"] = 20,
		}
	},
	{
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {227, 282},
			["��ˮ��"] = 20,
			["����"] = 20,
			["����"] = 20,
			["����"] = 20,
		}
	},
	{
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {215, 278},
			["��ˮ��"] = 20,
			["����"] = 20,
			["����"] = 20,
			["����"] = 20,
		}
	},
	{
		["delay"] = 75,
		["monster"] =
		{
			["location"] = {222, 285},
			["����"] = 10,
		}
	},--140s
	{
		["msg"] = "������Գ�����������ǣ����ߣ�����Щ����������һЩ����Ҫ�������Ե���ζ����",
		["delay"] = 5
	},
	{
		["msg"] = "һ��ȺԳ���������ɽ�ǡ�253 323�����ꡣ",
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {253, 323},
			["Գ��"] = 20,
			["�ױ�Գ��"] = 20,
			["ħԳ"] = 20,
		}
	},
	{
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {258, 317},
			["Գ��"] = 20,
			["�ױ�Գ��"] = 20,
			["ħԳ"] = 20,
		}
	},
	{
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {247, 329},
			["Գ��"] = 20,
			["�ױ�Գ��"] = 20,
			["ħԳ"] = 20,
		}
	},
	{
		["msg"] = "������Գ���ٺ١����ɶ�����࣡�����ɣ�ս���ɣ����ҵ���צ�²����ɣ�",
		["delay"] = 75,
		["monster"] =
		{
			["location"] = {253, 323},
			["������Գ"] = 10,
		}
	},--140s
	{
		["msg"] = "��ɱ������ƽϢ��ֻ��������ʬ�ǣ�Ѫ���ɺӣ�Ѫ������������ɽ�ǡ�",
		["delay"] = 20,
	},
	{
		["msg"] = "������Գ����������ô���ܣ��������ǿ���ҵĺ����ǲ���һ�����Ͽ��򽫾�ڣ�ͷ�������Ԯ��",
		["delay"] = 5,
	},
	{
		["msg"] = "�������������ˣ������Ѿ����ˣ����ʢ�ᣬ��ô���ٵ��������أ�������������",
		["delay"] = 5,
	},
	{
		["msg"] = "��ڤʬ�����������ɿڵ�Ѫʳ����������꣬�Ѿ��ж��û��Ʒ��������������ζ�ˣ�",
		["delay"] = 5,
	},
	{
		["msg"] = "���������ٺ٣���ڤʬ����磬�������Ǻϱ�һ��������ʢ����Σ�",
		["delay"] = 5,
	},
	{
		["msg"] = "��ڤʬ�����úúã��������ϵ��д����ˣ��ϸ����Ե����㣡",
		["delay"] = 5,
	},
	{
		["msg"] = "���������ã������ǣ������ҳ����ɣ�",
		["delay"] = 5,
	},
	{
		["msg"] = "һȺ���ó�������ɽ�ǡ�200 244�����ꡣ",
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {200, 244},
			["�ɵ�����1"] = 10,
			["������1"] = 10,
			["��������1"] = 10,
			["����սʿ1"] = 10,
			["����ս��"] = 10,
		}
	},
	{
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {208, 253},
			["�ɵ�����1"] = 10,
			["������1"] = 10,
			["��������1"] = 10,
			["����սʿ1"] = 10,
			["����ս��"] = 10,
		}
	},
	{
		["delay"] = 25,
		["monster"] =
		{
			["location"] = {200, 244},
			["�ɵ�����1"] = 10,
			["������1"] = 10,
			["��������1"] = 10,
			["����սʿ1"] = 10,
			["����ս��"] = 10,
		}
	},--115s
	{
		["msg"] = "��ڤʬ����С���ǣ���ʼ�Ͳ��ˣ��������ɣ�",
		["delay"] = 5,
	},
	{
		["msg"] = "һȺ��ʬ��������ɽ�ǡ�190 230�����ꡣ",
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {190, 230},
			["��ʬ2"] = 15,
			["��ʬ2"] = 15,
			["ʬ��2"] = 15,
			["Ĺ������1"] = 15,
			["��ʬ1"] = 15,
		}
	},
	{
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {190, 230},
			["��ʬ2"] = 15,
			["��ʬ2"] = 15,
			["ʬ��2"] = 15,
			["Ĺ������1"] = 15,
			["��ʬ1"] = 15,
		}
	},
	{
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {190, 230},
			["��ʬ2"] = 15,
			["��ʬ2"] = 15,
			["ʬ��2"] = 15,
			["Ĺ������1"] = 15,
			["��ʬ1"] = 15,
		}
	},
	{
		["delay"] = 240,
		["monster"] =
		{
			["location"] = {190, 230},
			["�ױ���ʬ1"] = 10,
		}
	},--305
	{
		["msg"] = "�����������ã�����̫ǿ�ˣ��������޷��ֵ�������ֻ�������Գ����ˣ�",
		["delay"] = 5,
	},
	{
		["msg"] = "��������������ɽ�ǡ�190 230�����ꡣ",
		["delay"] = 55,
		["monster"] =
		{
			["location"] = {190, 230},
			["������"] = 5,
		}
	},
	{
		["msg"] = "������������������̫ǿ�ˣ���磬���ұ��𰡣�",
		["delay"] = 5,
	},
	{
		["msg"] = "��ڤʬ���������������ϵ�!",
		["delay"] = 5,
	},
	{
		["msg"] = "��ڤʬ�����ɶ񰡣���Ȼɱ�������������࣬�ұز������Ǹ��ݣ����ҵ��ط���",
		["delay"] = 5,
	},
	{
		["msg"] = "��ڤʬ��������ۻ꣬����ǧ���䣡�䣡�䣡�����ҳ�����",
		["delay"] = 5,
	},
	{
		["msg"] = "һȺ��ڤʬ����������ɽ�ǡ�190 230�����ꡣ",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {190, 230},
			["��ʬ��"] = 30,
			["��ڤʬ��"] = 5,
		}
	},
	{
		["msg"] = "��ڤʬ������ǧ֮�У�˭��Ѱ������������������",
		["delay"] = 215,
	},--310
	{
		["msg"] = "��ڤʬ����ʲô�����ˣ��Ҿ�Ȼ���ˣ���Ҫ���⣬ĪҪ�����һ�������ģ�",
		["delay"] = 60,
	},
	{
		["msg"] = "����ǧ����࣬��������ڤʬ����������ɽ�ǵ����Ǿٳ�����ʱ����ɽ��Ѩ���������˹����̳������д����������ɱ������",
		["delay"] = 10,
	},
	{
		["msg"] = "ǧ����ħ���𡪡��������ˣ��ҵȴ��ģ�������һ�̣�",
		["delay"] = 5,
	},
	{
		["msg"] = "ǧ����ħ�����࣬�������������Դ��ҵģ��ҽ�ʮ�����������ǣ�",
		["delay"] = 5,
	},
	{
		["msg"] = "����๤�������󡭡���ħ���ˣ�������ʱ�������ķԸ���",
		["delay"] = 5,
	},
	{
		["msg"] = "����๤����ħ���ˣ��ҵ�����ʬū�������ͽ�������ǳ�һ�ٹ��£���Ϊ�����¸��������",
		["delay"] = 5,
	},
	{
		["msg"] = "����ս������ħ���ˣ��ҵ�Ը���ȷ棬Ϊ����ս�ķ���",
		["delay"] = 5,
	},
	{
		["msg"] = "ǧ����ħ���𡪡�С���ǣ��ϰɣ����������͵���",
		["delay"] = 4,
	},
	{
		["msg"] = "���Ǹ漱����������ħ�����������ǣ�����ʿ�ǸϿ�ȥ�������ǣ�",
		["delay"] = 1,
	},
	{
		["msg"] = "һȺʬū���������ǡ�190 230�����ꡣ",
		["delay"] = 60,
		["monster"] =
		{
			["location"] = {190, 230},
			["��â"] = 20,
			["��ө"] = 20,
			["ħө"] = 20,
			["ʬū3"] = 20,
			["���ʬū1"] = 20,
			["����ʬū4"] = 20,
			["ʬū��ͷ1"] = 20,
			["��Ӣ����๤1"] = 10,
			["��Ӣ����๤1"] = 10,
		}
	},
	{
		["delay"] = 60,
		["monster"] =
		{
			["location"] = {194, 238},
			["��â"] = 20,
			["��ө"] = 20,
			["ħө"] = 20,
			["ʬū3"] = 20,
			["���ʬū1"] = 20,
			["����ʬū4"] = 20,
			["ʬū��ͷ1"] = 20,
			["��Ӣ����๤1"] = 10,
			["��Ӣ����๤1"] = 10,
		}
	},
	{
		["delay"] = 215,
		["monster"] =
		{
			["location"] = {176, 216},
			["��â"] = 20,
			["��ө"] = 20,
			["ħө"] = 20,
			["ʬū3"] = 20,
			["���ʬū1"] = 20,
			["����ʬū4"] = 20,
			["ʬū��ͷ1"] = 20,
			["��Ӣ����๤1"] = 10,
			["��Ӣ����๤1"] = 10,
		}
	},--435
	{
		["msg"] = "����ս������ħ���ˣ�����̫ǿ�ˣ�С��������۽���������˾�����",
		["delay"] = 5,
	},
	{
		["msg"] = "ǧ����ħ��һȺ���������������Ҫ�����Գ�����У�",
		["delay"] = 5,
	},
	{
		["msg"] = "ǧ����ħ����֦ɢҶ����������Ը���֦������壬���һ��������������ұ䣡",
		["delay"] = 5,
	},
	{
		["msg"] = "���ǵġ�228 200����������ǧ����ħ��",
		["delay"] = 1,
		["monster"] =
		{
			["location"] = {228, 200},
			["ǧ����ħ"] = 1,
		}
	},
	{
		["msg"] = "���ǵġ�240 204����������ǧ����ħ��",
		["delay"] = 1,
		["monster"] =
		{
			["location"] = {240, 204},
			["ǧ����ħ"] = 1,
		}
	},
	{
		["msg"] = "���ǵġ�228 200����������ǧ����ħ��",
		["delay"] = 598,
		["monster"] =
		{
			["location"] = {228, 200},
			["ǧ����ħ"] = 1,
		}
	},--615
	{
		["msg"] = "ǧ����ħ�������������Ҿ�Ȼ���ˣ��Ҳ����ģ��Ҳ����İ���",
		["delay"] = 5,
	},
	{
		["msg"] = "ǧ����ħ�����Ǿ�Ȼ����˶��ң���Ҫ������ͬ���ھ������������ұ�����",
		["delay"] = 5,
	},
	{
		["msg"] = "ǧ����ħ�Ա��ˣ��ٻ��������ķ�ӡ��",
		["delay"] = 5,
	},
	{
		["msg"] = "�����ˣ������ķ�ӡ���ƻ�������Ĺ��ﶼ����������",
		["delay"] = 5,
	},
	{
		["msg"] = "������ʱ��������ͻȻ����һ��Ц����",
		["delay"] = 5,
	},
	{
		["msg"] = "ţħ�������۹�������������������������ʱ��",
		["delay"] = 5,
	},
	{
		["msg"] = "ţħ������ǧ����ħ�϶��������������ѵ��и���¾����룬�������³������ǿɱ���",
		["delay"] = 5,
	},
	{
		["msg"] = "����ţħ��С������͵�����һ���ˣ�",
		["delay"] = 5,
	},
	{
		["msg"] = "����ţħ����ɱ���ӣ��Һ���ţħ��ϲ���ˣ�������������",
		["delay"] = 5,
	},
	{
		["msg"] = "ţħ����������ϲ���Ƿ��۵�Ӥ����ҧһ���Ǹ��㰡���ٺ١���",
		["delay"] = 5,
	},
	{
		["msg"] = "ţħ��ʿ����ЩƯ����С��Ƥ���ҵģ��衭��",
		["delay"] = 5,
	},
	{
		["msg"] = "һȺţħ���������ǡ�210 170�����ꡣ",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {210, 170},
			["����ţħ2"] = 20,
			["ţħ����3"] = 20,
			["ţħ��ʿ1"] = 20,
			["ţħ����"] = 10,
			["����ţħ1"] = 20,
		}
	},
	{
		["msg"] = "ţħ�������������ǡ�208 153�����ꡣ",
		["delay"] = 515,
		["monster"] =
		{
			["location"] = {208, 153},
			["ţħ����"] = 1,
		}
	},--565
	{
		["msg"] = "��������Ӣ�·�ս��ţħ�����ں�ɱ���л������µ�ʱ���������ͻȻ����һ�����졣",
		["delay"] = 5,
	},
	{
		["msg"] = "������ӡ���������ˣ�����Ĺ��Ｔ�������",
		["delay"] = 5,
	},
	{
		["msg"] = "Ѫ��ʦ����ѽ�������ҿ������ҿ������ɶ�ķ�ӡ���ɶ�����࣡���ҳ��������ǽ�����ҵ�����ŭ��",
		["delay"] = 5,
	},
	{
		["msg"] = "Ѫ��ʦ�����е��ҷ�ӡ�ҵ��ˣ��������ҳ��׻���",
		["delay"] = 5,
	},
	{
		["msg"] = "Ѫ��ʦ��ս���ɣ������ɣ��־�ɣ���аɣ�����ԶҲ�޷�֪�����Ƕ�ô��ǿ��",
		["delay"] = 5,
	},
	{
		["msg"] = "Ѫ��ʦ��ม�����Ũ�ص�Ѫ��������Ϥ���������ζ�������������������ƺ�����������ʱ��",
		["delay"] = 5,
	},
	{
		["msg"] = "������Ѫ����Ѫ��ʦ���գ�������ӡ����ĵ��������ٵػָ���",
		["delay"] = 5,
	},
	{
		["msg"] = "Ѫ��ʦ��С���ǣ���ЩѪ�����������һ���Ҫ�����Ѫ�����������������ɱ¾�ɣ�",
		["delay"] = 5,
	},
	{
		["msg"] = "һȺ����������������ǡ�230 200�����ꡣ",
		["delay"] = 60,
		["monster"] =
		{
			["location"] = {230, 200},
			["�޶�"] = 10,
			["����1"] = 10,
			["����1"] = 10,
			["����1"] = 10,
			["ɳʯħ30 "] = 10,
			["ɢ��1"] = 10,
			["��ū2"] = 10,
			["�Źֵ���1"] = 10,
			["���浶��1"] = 10,
			["˫��������1 "] = 10,
			["��ħ30"] = 10,
		}
	},
	{
		["delay"] = 60,
		["monster"] =
		{
			["location"] = {230, 200},
			["�޶�"] = 10,
			["����1"] = 10,
			["����1"] = 10,
			["����1"] = 10,
			["ɳʯħ30 "] = 10,
			["ɢ��1"] = 10,
			["��ū2"] = 10,
			["�Źֵ���1"] = 10,
			["���浶��1"] = 10,
			["˫��������1 "] = 10,
			["��ħ30"] = 10,
		}
	},
	{
		["delay"] = 60,
		["monster"] =
		{
			["location"] = {230, 200},
			["�޶�"] = 10,
			["����1"] = 10,
			["����1"] = 10,
			["����1"] = 10,
			["ɳʯħ30 "] = 10,
			["ɢ��1"] = 10,
			["��ū2"] = 10,
			["�Źֵ���1"] = 10,
			["���浶��1"] = 10,
			["˫��������1 "] = 10,
			["��ħ30"] = 10,
		}
	},
	{
		["delay"] = 250,
		["monster"] =
		{
			["location"] = {230, 200},
			["��ʯ���� "] = 10,
		}
	},--470
	{
		["msg"] = "Ѫ��ʦ������һȺ�������С�����඼�򲻹����������ҵ������ѻָ���룬�Ǿ������ǿ����ҵľ��������ɣ�",
		["delay"] = 5,
	},
	{
		["msg"] = "Ѫ��ʦ����Ѫ���壬�����л꣬�����ɣ���ȥ��ħ�꣡�����˼䣬������¾�񻶰ɣ�",
		["delay"] = 5,
	},
	{
		["msg"] = "һȺBOSS���������ǡ�235 200������ʼ����ɱ¾��",
		["delay"] = 900,
		["monster"] =
		{
			["location"] = {235, 200},
			["����"] = 5,
			["������Գ"] = 5,
			["����"] = 5,
			["������"] = 5,
			["��ڤʬ��"] = 5,
			["��ʬ��"] = 20,
			["ǧ����ħ"] = 1,
			["ţħ����"] = 1,
			["��������"] = 3,
			["ţħ����"] = 5,
			["����ս��1"] = 5,
			["��ʯ����"] = 5,
			["��������"] = 5,
			["��ԭ��ʿ1"] = 10,
			["ҹ��ɮ1"] = 10,
			["��ԭ��ʿ1"] = 10,
			["��������1"] = 10,
			["��ԭ��ʿ3"] = 10,
			["��ɮ1"] = 10,
			["Ӱ��2"] = 10,
			["�ڰ��̿�5"] = 10,
			["а��"] = 20,
		}	
	},--910
	{
		["msg"] = "Ѫ��ʦ���������������ھ�����������֮�����������־�;��������е��˶��������޵еķ�������������ڣ������ˣ�",
		["delay"] = 5,
	},
	{
		["msg"] = "Ѫ��ʦ���������ǡ�209 181�����ꡣ",
		["delay"] = 300,
		["monster"] =
		{
			["location"] = {209, 181},
			["Ѫ��ʦ"] = 1,
		}
	},
	{
		["msg"] = "Ѫ��ʦ���ⲻ���ܣ�����ô���ܱ���С�������ܣ�Ѫ����񷣬ŭԹ���죬��Ѫ���壬��ٲ��𣬿��ҵ����⻯��",
		["delay"] = 5,
	},
	{
		["msg"] = "Ѫ��ʦ���������ǡ�515 130�����ꡣ",
		["delay"] = 1,
		["monster"] =
		{
			["location"] = {515, 130},
			["Ѫ��ʦ"] = 1,
		}
	},
	{
		["msg"] = "Ѫ��ʦ���������ǡ�510 40�����ꡣ",
		["delay"] = 1,
		["monster"] =
		{
			["location"] = {510, 40},
			["Ѫ��ʦ"] = 1,
		}
	},
	{
		["msg"] = "Ѫ��ʦ���������ǡ�510 70�����ꡣ",
		["delay"] = 888,
		["monster"] =
		{
			["location"] = {510, 70},
			["Ѫ��ʦ"] = 1,
		}
	},--1195s
	{
		["msg"] = "Ѫ��ʦ����������������Ȼ������ˣ����ǻ��б��Ҹ�ǿ��Ĵ��ڼ��������������������ǡ���",
		["delay"] = 5,
	},
}

local data_FanTianSeng = 
{
	{
		["msg"] = "����ɮ���������ǽ��⣬λ�����а����ڴ��ġ�500 100�����ꡣ",
		["delay"] = 5,
	},
	{
		["msg"] = "�����ˣ�����ɮ�����Դ����а�������Ƕ�����׼���������ǣ���ҿ�ȥ�������ɣ�",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {500, 100},
			["����ɮ"] = 1,
		}
	},
	{
		["msg"] = "����ɮ��ΰ�����ң���ȻҲ�������į��ʱ�������䣬˭�������࿹��",
		["delay"] = 5,
	},
	{
		["msg"] = "����ɮ����΢����С�����࣬����һ��Ķ�������ȻҲ��Υ���ң�",
		["delay"] = 5,
	},
	{
		["msg"] = "����ɮ��ȥ���ɣ��ҽ������ǵ�Ѫ�����ϴˢ�ҵ�ŭ����",
		["delay"] = 5,
	},
	{
		["msg"] = "����ɮ��������ΰ����ң������㲻��ģ��һ�������ģ�",
		["delay"] = 5,
	},
	{
		["msg"] = "����ɮ���ڵ����ˣ�",
		["delay"] = 5,
	},
	{
		["msg"] = "���﹥�ǽ����������������������еĹ����ס�����ǣ���л��λ�Ĺ��٣�ף��λ��Ϸ��죡",
		["delay"] = 5,
	},
}

--local curindex = 1						--��ǰ���������
lualib:SetInt("0", "gwgc1_curindex", 1);
--local map_name = "��ɽ��"				--��ǰ��ͼ����
lualib:SetStr("0", "gwgc1_map_name", "��ɽ��");
local monsterRange = 7					--����ˢ������Χ
local time_quotiety = 1000				--ʱ��ϵ��
--local pause_process_table = false 		--�Ƿ���ͣ����������
lualib:SetInt("0", "gwgc1_pause_process_table", 0);
local kill_XueChanShiMaxTime = 10		--ɱ��Ѫ��ʦ���ʱ��(��)
local kill_FanTianSengMaxTime = 10		--ɱ������ɮ���ʱ��(��)
--local elapse_time = 0					--��ȥ�˵�ʱ��
lualib:SetInt("0", "gwgc1_elapse_time", 0);

function siege(id, map, times)
	local curindex = lualib:GetInt("0", "gwgc1_curindex")
	lualib:SysMsg_SendTopMsg(1, data_table[curindex]["msg"])
	lualib:SysMsg_SendBroadcastColor(data_table[curindex]["msg"], "", 1, 12)
	local map_name = lualib:GetStr("0", "gwgc1_map_name")
	lualib:AddTimer(lualib:Map_GetMapGuid(map_name), 1, data_table[curindex]["delay"] * time_quotiety, 1, "on_timer")
end

function on_timer()
	local curindex = lualib:GetInt("0", "gwgc1_curindex")
	curindex = curindex + 1;
	lualib:SetInt("0", "gwgc1_curindex", curindex);
	local map_name = lualib:GetStr("0", "gwgc1_map_name")
	--����Ƿ���msg
	--lualib:Print(tostring(curindex));
	--������Ϣ������ͼ���
	broadcast_msg_and_set_map();
	--����Ƿ�Ҫˢ��, ��˳����������
	process_table();
	--���ݴ������, ��ʱ����ֹ
	if(curindex >= table.getn(data_table)) then
		lualib:Print("timer����׼������, ���ٵ���timer��");
		curindex = 1;
		lualib:SetInt("0", "gwgc1_curindex", curindex);
		--pause_process_table = false;
		lualib:SetInt("0", "gwgc1_pause_process_table", 0);
		lualib:AddTimer(lualib:Map_GetMapGuid(map_name), curindex, data_FanTianSeng[curindex]["delay"] * time_quotiety, 1, "on_timer_FanTianSengProcess");
		return;
	end
	--���ö�ʱ, ������һ���������
	local pause_process_table = lualib:GetInt("0", "gwgc1_pause_process_table");
	--if(not pause_process_table) then
	if(pause_process_table == 0) then
		lualib:AddTimer(lualib:Map_GetMapGuid(map_name), curindex, data_table[curindex]["delay"] * time_quotiety, 1, "on_timer")
	end
end

function on_timer_FanTianSengProcess()
	--lualib:Print("��������ɮ");
	local curindex = lualib:GetInt("0", "gwgc1_curindex")
	local map_name = lualib:GetStr("0", "gwgc1_map_name")
	if(data_FanTianSeng[curindex]["msg"] ~= nil) then
		lualib:SysMsg_SendBroadcastColor(data_FanTianSeng[curindex]["msg"], "", 1, 12)
	end
	if(data_FanTianSeng[curindex]["monster"] ~= nil) then
		for key, value in pairs(data_FanTianSeng[curindex]["monster"]) do
			if(key ~= "location" and lualib:MonsterKey2ID(key) > 0) then
				lualib:Map_GenMonster(lualib:Map_GetMapGuid(map_name), data_FanTianSeng[curindex]["monster"]["location"][1], 
					data_FanTianSeng[curindex]["monster"]["location"][2], monsterRange, lualib:GenRandom(0, 7), key, value, false);
				--pause_process_table = true;
				lualib:SetInt("0", "gwgc1_pause_process_table", 1);
				--û��� monsterֵ�Ǵ��, Ҫ��������Map_GetRegionMonsters
				local map_guid = lualib:Map_GetMapGuid(map_name);
				local monsters = lualib:Map_GetRegionMonsters(map_guid, "����ɮ", data_FanTianSeng[curindex]["monster"]["location"][1], 
									data_FanTianSeng[curindex]["monster"]["location"][2], monsterRange + 2, true, true);
				lualib:Print(tostring(monsters));
				lualib:Print(tostring(monsters[1]));
				if  monsters ~= nil then
					lualib:AddTrigger(monsters[1],  lua_trigger_post_die, "on_trigger_post_die");
				end
			end
		end
	end
	local pause_process_table = lualib:GetInt("0", "gwgc1_pause_process_table");
	--if(not pause_process_table) then
	if(pause_process_table == 0) then
		if(curindex <= table.getn(data_FanTianSeng)) then
			lualib:AddTimer(lualib:Map_GetMapGuid(map_name), curindex, data_FanTianSeng[curindex]["delay"] * time_quotiety, 1, "on_timer_FanTianSengProcess")
		end
	end
	curindex = curindex + 1;
	lualib:SetInt("0", "gwgc1_curindex", curindex);
end

function on_trigger_post_die(actor, killer)
	--lualib:Print("�Ѿ�����");
	local curindex = lualib:GetInt("0", "gwgc1_curindex")
	local map_name = lualib:GetStr("0", "gwgc1_map_name")
	lualib:AddTimer(lualib:Map_GetMapGuid(map_name), curindex, data_FanTianSeng[curindex]["delay"] * time_quotiety, 1, "on_timer_FanTianSengProcess");
	--pause_process_table = false;
	lualib:SetInt("0", "gwgc1_pause_process_table", 0);
end

--��˳����������
function process_table()
	local curindex = lualib:GetInt("0", "gwgc1_curindex")
	local map_name = lualib:GetStr("0", "gwgc1_map_name")
	if(data_table[curindex]["monster"] ~= nil) then
		for key, value in pairs(data_table[curindex]["monster"]) do
			if(key ~= "location" and lualib:MonsterKey2ID(key) > 0) then
				lualib:Map_GenMonster(lualib:Map_GetMapGuid(map_name), data_table[curindex]["monster"]["location"][1], 
					data_table[curindex]["monster"]["location"][2], monsterRange, lualib:GenRandom(0, 7), key, value, false);
				if(key == "Ѫ��ʦ") then
					check_XueChanShiHp();
				else
					lualib:Print(key);
				end
			end
		end
	end
end

--���Ѫ��ʦHP
function check_XueChanShiHp()
	local curindex = lualib:GetInt("0", "gwgc1_curindex")
	local map_name = lualib:GetStr("0", "gwgc1_map_name")
	local map_guid = lualib:Map_GetMapGuid(map_name);
	local monsters = lualib:Map_GetRegionMonsters(map_guid, "Ѫ��ʦ", data_table[curindex]["monster"]["location"][1], 
						data_table[curindex]["monster"]["location"][2], monsterRange + 2, true, true);
	if monsters ~= nil then
		for i = 1, table.getn(monsters) do
			if(monsters[i] ~= "") then
				--pause_process_table = true; --��ͣ�������
				lualib:SetInt("0", "gwgc1_pause_process_table", 1);
				--elapse_time = 0; --ʱ����0
				lualib:SetInt("0", "gwgc1_elapse_time", 0);
				lualib:AddTimer(monsters[i], 11, 1000, -1, "on_timer_check_XueChanShihp"); --����
			end
		end
	end
end

--��ʱ���HP
function on_timer_check_XueChanShihp(monster, timer_id)
	local elapse_time = lualib:GetInt("0", "gwgc1_elapse_time");
	elapse_time = elapse_time + 1;
	lualib:SetInt("0", "gwgc1_elapse_time", elapse_time);
	local rate = lualib:Hp(monster, false) / lualib:Hp(monster, true);
	--lualib:Print("Current Hp: "..lualib:Hp(monster, false));
	--����ʱ����, ɱ������
	local curindex = lualib:GetInt("0", "gwgc1_curindex")
	if(elapse_time > kill_XueChanShiMaxTime) then
		curindex = table.getn(data_table) - 1; --ֱ���������һ��boss
		lualib:Print(tostring(curindex));
		lualib:Monster_Remove(monster);
	end
	if(lualib:Hp(monster, false) <= 0) then
		local map_name = lualib:GetStr("0", "gwgc1_map_name")
		lualib:DisableTimer(monster, timer_id);
		lualib:AddTimer(lualib:Map_GetMapGuid(map_name), curindex, data_table[curindex]["delay"] * time_quotiety, 1, "on_timer");
		--pause_process_table = false;
		lualib:SetInt("0", "gwgc1_pause_process_table", 0);
	end
end

--����ϵͳ����, �����������, �Ƿ�Ҫ���õ�ͼΪ����
function broadcast_msg_and_set_map()
	local curindex = lualib:GetInt("0", "gwgc1_curindex")
	if(data_table[curindex]["msg"] ~= nil) then
		lualib:SysMsg_SendBroadcastColor(data_table[curindex]["msg"], "", 1, 12)
		if string.find(data_table[curindex]["msg"], "����") ~= nil then
			map_name = "����"
			lualib:SetStr("0", "gwgc1_map_name", map_name)
			lualib:Print("�ҵ������ַ�����");
		end
	end
end
