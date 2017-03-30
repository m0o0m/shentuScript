local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/����ϵͳ")

local lua_kezhaoguaiwu = "<@kezhao *01*���еĹ���>\n"

local lua_tianshu = {{{"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�������¹","��Я��װ��: \n \n����֮����ľ�������ٹ��������·����鲼�¡��������������ֽ�ָ�����ֻ���\n","��ǰû�м��ܿ�ѧ"},
    {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ�� \n \n��ս�������¹","��Я��װ��: \n \n����֮����ľ�������ٹ��������·����鲼�¡��������������ֽ�ָ�����ֻ���\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�������¹","��Я��װ��: \n \nС������ͨ����\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�����é�ˡ�ľ����","��Я��װ��: \n \nС������ͨ����\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�����é�ˡ�ľ����","��Я��װ��: \n \n�̽���Ƥ���ס����˷�����ͭ��ָ��Ϭ�ǽ�ָ\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�����é�ˡ�ľ����","��Я��װ��: \n \n�̽���Ƥ���ס����˷�����ͭ��ָ��Ϭ�ǽ�ָ\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�����é���ˡ���éа��","��Я��װ��: \n \n��Ь\n","��ǰ��ѧ����: �����ķ��������ķ�1��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�����é���ˡ���éа��","��Я��װ��: \n \n�������ƽ�����\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�����֩�롢��֩��","��Я��װ��: \n \n������\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ȡ���·��\n \n��ս������","��Я��װ��: \n \n���������ֳ�������ս������սѥ�ӡ���ս��ָ����ͷ��\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ȡ���·��\n \n��ս���Գ��","��Я��װ��: \n \n���Ϳ��ס���\n","�����ķ�2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ����ߡ����ߡ����ߡ���ˮ��","��Я��װ��: \n \n�Ǽ׻�������ˮ����ָ\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ����ߡ����ߡ����ߡ���ˮ��","��Я��װ��: \n \n����\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ����ߡ����ߡ����ߡ���ˮ�ߡ��������á��ɵ�����","��Я��װ��: \n \nħ��ͷ��������ˮ������\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ����ߡ����ߡ����ߡ���ˮ�ߡ��������á��ɵ�����","��Я��װ��: \n \n���ĳ���\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ����ߡ����ߡ����ߡ���ˮ�ߡ��������á��ɵ�����","��Я��װ��: \n \n������ס�ս������ɺ��ʯ��ָ����Ь\n","�����ķ�3��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ����ߡ����ߡ����ߡ���ˮ�ߡ��������á��ɵ�����","��Я��װ��: \n \n������ס�ս������ɺ��ʯ��ָ����Ь\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ������ױ�Գ����ߡ����ߡ����ߡ���ˮ�ߡ��������á��ɵ����á�����սʿ��Ĺ������","��Я��װ��: \n \n������������ڻ���\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ������ױ�Գ����ߡ����ߡ����ߡ���ˮ�ߡ��������á��ɵ����á�����սʿ��Ĺ������","��Я��װ��: \n \n���ѽ�ָ\n","��ǰ��ѧ����: ����ն������ն1��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ��������\n \n��ս����������á��ɵ����á�����սʿ�������á�Ĺ�����桢��ʬ����ʬ��ʬ�����ױ���ʬ","��Я��װ��: \n \nն�ǵ��������������ݽ�ָ\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ��������\n \n��ս����������á��ɵ����á�����սʿ�������á�Ĺ�����桢��ʬ����ʬ��ʬ�����ױ���ʬ","��Я��װ��: \n \nţƤЬ\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ��������\n \n��ս����������á��ɵ����á�����սʿ�������á�Ĺ�����桢��ʬ����ʬ��ʬ�����ױ���ʬ","��Я��װ��: \n \nԪ�����ס�����\n","����ն2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: �����󶴡���ɽ��Ѩ\n \n��ս�����ʬ����ʬ��ʬ�����ױ���ʬ����â��ʬū����ө������๤��ħө������๤�����ʬū������ʬū","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: �����󶴡���ɽ��Ѩ\n \n��ս�����ʬ����ʬ��ʬ�����ױ���ʬ����â��ʬū����ө������๤��ħө������๤�����ʬū������ʬū","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","����ն3��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: �����󶴡���ɽ��Ѩ\n \n��ս�����ʬ����ʬ��ʬ�����ױ���ʬ����â��ʬū����ө������๤��ħө������๤�����ʬū������ʬū","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","��̽�������̽���1��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: �����󶴡���ɽ��Ѩ\n \n��ս�����ʬ����ʬ��ʬ�����ױ���ʬ����â��ʬū����ө������๤��ħө������๤�����ʬū������ʬū","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: �����󶴡���ɽ��Ѩ\n \n��ս�����ʬ����ʬ��ʬ�����ױ���ʬ����â��ʬū����ө������๤��ħө������๤�����ʬū������ʬū","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","��̽���2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: �����󶴡���ɽ��Ѩ\n \n��ս�����ʬ����ʬ��ʬ�����ױ���ʬ����â��ʬū����ө������๤��ħө������๤�����ʬū������ʬū","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","�»��䵶���»��䵶1��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: �����󶴡���ɽ��Ѩ\n \n��ս�����ʬ����ʬ��ʬ�����ױ���ʬ����â��ʬū����ө������๤��ħө������๤�����ʬū������ʬū","��Я��װ��: \n \nԪ�кܶ�����װ����Ҫ��̽����\n","��̽���3��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ǡ������\n \n��ս����޶ꡢ����ţħ������ţħ��ţħ������ʬū��ͷ�����ߡ����ԡ����ޡ�ɳʯħ��ɢ����ħ������ū���Źֵ��͡���ħ��а��","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","Ұ����桢Ұ�����1��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ǡ������\n \n��ս����޶ꡢ����ţħ������ţħ��ţħ������ʬū��ͷ�����ߡ����ԡ����ޡ�ɳʯħ��ɢ����ħ������ū���Źֵ��͡���ħ��а��","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","�»��䵶2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ǡ������\n \n��ս����޶ꡢ����ţħ������ţħ��ţħ������ʬū��ͷ�����ߡ����ԡ����ޡ�ɳʯħ��ɢ����ħ������ū���Źֵ��͡���ħ��а��","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ǡ������\n \n��ս����޶ꡢ����ţħ������ţħ��ţħ������ʬū��ͷ�����ߡ����ԡ����ޡ�ɳʯħ��ɢ����ħ������ū���Źֵ��͡���ħ��а��","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ǡ������\n \n��ս����޶ꡢ����ţħ������ţħ��ţħ������ʬū��ͷ�����ߡ����ԡ����ޡ�ɳʯħ��ɢ����ħ������ū���Źֵ��͡���ħ��а��","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","�»��䵶3����Ұ�����2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ǡ������\n \n��ս����޶ꡢ����ţħ������ţħ��ţħ������ʬū��ͷ�����ߡ����ԡ����ޡ�ɳʯħ��ɢ����ħ������ū���Źֵ��͡���ħ��а��","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","����ն������ն1��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ���а��\n \n��ս�����ԭ��ʿ��ҹ��ɮ����ԭ��ʿ���������ߡ���ԭ��ʿ����ɮ����ԭ��ʿ��Ӱ�̡��ڰ��̿�","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ���а��\n \n��ս�����ԭ��ʿ��ҹ��ɮ����ԭ��ʿ���������ߡ���ԭ��ʿ����ɮ����ԭ��ʿ��Ӱ�̡��ڰ��̿�","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","����ն2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ���а��\n \n��ս�����ԭ��ʿ��ҹ��ɮ����ԭ��ʿ���������ߡ���ԭ��ʿ����ɮ����ԭ��ʿ��Ӱ�̡��ڰ��̿�","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ���а��\n \n��ս�����ԭ��ʿ��ҹ��ɮ����ԭ��ʿ���������ߡ���ԭ��ʿ����ɮ����ԭ��ʿ��Ӱ�̡��ڰ��̿�","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","Ұ�����3��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ���а��\n \n��ս�����ԭ��ʿ��ҹ��ɮ����ԭ��ʿ���������ߡ���ԭ��ʿ����ɮ����ԭ��ʿ��Ӱ�̡��ڰ��̿�","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","����ն3��"},
					  {"���鵽�˱���˿հף��Ժ�Ϳ����Լ��ˣ�\n","���鵽�˱���˿հף��Ժ�Ϳ����Լ��ˣ�","���鵽�˱���˿հף��Ժ�Ϳ����Լ��ˣ�"}},
					 {{"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�������¹\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n����֮����ľ�������ٹ��������·����鲼�¡��������������ֽ�ָ�����ֻ���\n","��ǰû�м��ܿ�ѧ"},
                      {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ�� \n \n��ս�������¹\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n����֮����ľ�������ٹ��������·����鲼�¡��������������ֽ�ָ�����ֻ���\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�������¹\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \nС������ͨ������Ԫ�ؽ�ָ\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�����é�ˡ�ľ����\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \nС������ͨ����\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�����é�ˡ�ľ����\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n�̽���Ƥ���ס����˷�\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�����é�ˡ�ľ����\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n�̽���Ƥ���ס����˷�\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�����é���ˡ���éа��\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n��Ь\n","��ǰ��ѧ����: ��������������1��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�����é���ˡ���éа��\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n�������ƽ�����\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�����֩�롢��֩��\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n������\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ȡ���·��\n \n��ս������\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n���������ֳ�������ħ������ħѥ�ӡ���ħ��ָ����ͷ��\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ȡ���·��\n \n��ս���Գ��\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n���Ϳ��ס���\n","������2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ����ߡ����ߡ����ߡ���ˮ��\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n���Ļ��󡢺�����ָ\n","��ǰ��ѧ����: �ƾܻ𻷡��˾�֮��1��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ����ߡ����ߡ����ߡ���ˮ��\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n���Ļ��󡢺�����ָ\n","��ǰ��ѧ����: �����ջ󡢶����ջ�1��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ����ߡ����ߡ����ߡ���ˮ�ߡ��������á��ɵ�����\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \nħ��ͷ����ʯ��������\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ����ߡ����ߡ����ߡ���ˮ�ߡ��������á��ɵ�����\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \nҹ��ì\n","�˾�֮��2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ����ߡ����ߡ����ߡ���ˮ�ߡ��������á��ɵ�����\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n��ϰ��ʦ�ۡ�������������ʯ��ָ����Ь\n","�˾�֮��2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ����ߡ����ߡ����ߡ���ˮ�ߡ��������á��ɵ�����\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n��ϰ��ʦ�ۡ�������������ʯ��ָ����Ь\n","��ǰ��ѧ����: ��������������1��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ������ױ�Գ����ߡ����ߡ����ߡ���ˮ�ߡ��������á��ɵ����á�����սʿ��Ĺ������\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n�׽���������ڻ���\n","�����ջ�2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ������ױ�Գ����ߡ����ߡ����ߡ���ˮ�ߡ��������á��ɵ����á�����սʿ��Ĺ������\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n���ѽ�ָ\n","��ǰ��ѧ����: ˲Ϣ�鶯��˲Ϣ�鶯1������������������1�����˾�֮��3��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ��������\n \n��ս����������á��ɵ����á�����սʿ�������á�Ĺ�����桢��ʬ����ʬ��ʬ��\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n���·��ȡ���Ы��������ָ\n","������2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ��������\n \n��ս����������á��ɵ����á�����սʿ�������á�Ĺ�����桢��ʬ����ʬ��ʬ��\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \nţƤЬ\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ��������\n \n��ս����������á��ɵ����á�����սʿ�������á�Ĺ�����桢��ʬ����ʬ��ʬ��\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n�ϳ���\n","��ǰ��ѧ����: �ױ������ױ���1����˲Ϣ�鶯2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: �����󶴡���ɽ��Ѩ\n \n��ս�����ʬ����ʬ��ʬ�����ױ���ʬ����â��ʬū����ө������๤��ħө������๤�����ʬū������ʬū\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","������3����������2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: �����󶴡���ɽ��Ѩ\n \n��ս�����ʬ����ʬ��ʬ�����ױ���ʬ����â��ʬū����ө������๤��ħө������๤�����ʬū������ʬū\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","����𺣡������1���������ջ�3��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: �����󶴡���ɽ��Ѩ\n \n��ս�����ʬ����ʬ��ʬ�����ױ���ʬ����â��ʬū����ө������๤��ħө������๤�����ʬū������ʬū\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","������3����˲Ϣ�鶯3��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: �����󶴡���ɽ��Ѩ\n \n��ս�����ʬ����ʬ��ʬ�����ױ���ʬ����â��ʬū����ө������๤��ħө������๤�����ʬū������ʬū\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","�������ߡ���������1��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: �����󶴡���ɽ��Ѩ\n \n��ս�����ʬ����ʬ��ʬ�����ױ���ʬ����â��ʬū����ө������๤��ħө������๤�����ʬū������ʬū\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","�ױ���2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: �����󶴡���ɽ��Ѩ\n \n��ս�����ʬ����ʬ��ʬ�����ױ���ʬ����â��ʬū����ө������๤��ħө������๤�����ʬū������ʬū\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","��ǰû�п�ѧ����"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: �����󶴡���ɽ��Ѩ\n \n��ս�����ʬ����ʬ��ʬ�����ױ���ʬ����â��ʬū����ө������๤��ħө������๤�����ʬū������ʬū\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \nԪ�кܶ�����װ����Ҫ��̽����\n","�����2������������2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ǡ������\n \n��ս����޶ꡢ����ţħ������ţħ��ţħ������ʬū��ͷ�����ߡ����ԡ����ޡ�ɳʯħ��ɢ����ħ������ū���Źֵ��͡���ħ��а��\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","�������⡢��������1��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ǡ������\n \n��ս����޶ꡢ����ţħ������ţħ��ţħ������ʬū��ͷ�����ߡ����ԡ����ޡ�ɳʯħ��ɢ����ħ������ū���Źֵ��͡���ħ��а��\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","���⻤�ܡ����⻤��1�����ױ���3��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ǡ������\n \n��ս����޶ꡢ����ţħ������ţħ��ţħ������ʬū��ͷ�����ߡ����ԡ����ޡ�ɳʯħ��ɢ����ħ������ū���Źֵ��͡���ħ��а��\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","ɱ������ɱ����1������������2������������3��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ǡ������\n \n��ս����޶ꡢ����ţħ������ţħ��ţħ������ʬū��ͷ�����ߡ����ԡ����ޡ�ɳʯħ��ɢ����ħ������ū���Źֵ��͡���ħ��а��\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","�����3��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ǡ������\n \n��ս����޶ꡢ����ţħ������ţħ��ţħ������ʬū��ͷ�����ߡ����ԡ����ޡ�ɳʯħ��ɢ����ħ������ū���Źֵ��͡���ħ��а��\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","��������3�������⻤��2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ǡ������\n \n��ս����޶ꡢ����ţħ������ţħ��ţħ������ʬū��ͷ�����ߡ����ԡ����ޡ�ɳʯħ��ɢ����ħ������ū���Źֵ��͡���ħ��а��\n"..lua_kezhaoguaiwu,"��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","�������С���������1����ɱ����2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ���а��\n \n��ս�����ԭ��ʿ��ҹ��ɮ����ԭ��ʿ���������ߡ���ԭ��ʿ����ɮ����ԭ��ʿ��Ӱ�̡��ڰ��̿�","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n\n"..lua_kezhaoguaiwu,"��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ���а��\n \n��ս�����ԭ��ʿ��ҹ��ɮ����ԭ��ʿ���������ߡ���ԭ��ʿ����ɮ����ԭ��ʿ��Ӱ�̡��ڰ��̿�","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n\n"..lua_kezhaoguaiwu,"��������2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ���а��\n \n��ս�����ԭ��ʿ��ҹ��ɮ����ԭ��ʿ���������ߡ���ԭ��ʿ����ɮ����ԭ��ʿ��Ӱ�̡��ڰ��̿�","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n\n"..lua_kezhaoguaiwu,"���⻤��3��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ���а��\n \n��ս�����ԭ��ʿ��ҹ��ɮ����ԭ��ʿ���������ߡ���ԭ��ʿ����ɮ����ԭ��ʿ��Ӱ�̡��ڰ��̿�","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n\n"..lua_kezhaoguaiwu,"ɱ����3��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ���а��\n \n��ս�����ԭ��ʿ��ҹ��ɮ����ԭ��ʿ���������ߡ���ԭ��ʿ����ɮ����ԭ��ʿ��Ӱ�̡��ڰ��̿�","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n\n"..lua_kezhaoguaiwu,"��������3��"},
					  {"���鵽�˱���˿հף��Ժ�Ϳ����Լ��ˣ�","���鵽�˱���˿հף��Ժ�Ϳ����Լ��ˣ�","���鵽�˱���˿հף��Ժ�Ϳ����Լ��ˣ�"}},
					 {{"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�������¹","��Я��װ��: \n \n����֮����ľ�������ٹ��������·����鲼�¡��������������ֽ�ָ�����ֻ���\n","��ǰû�м��ܿ�ѧ"},
                      {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ�� \n \n��ս�������¹","��Я��װ��: \n \n����֮����ľ�������ٹ��������·����鲼�¡��������������ֽ�ָ�����ֻ���\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�������¹","��Я��װ��: \n \nС������ͨ����\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�����é�ˡ�ľ����","��Я��װ��: \n \nС������ͨ����\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�����é�ˡ�ľ����","��Я��װ��: \n \n�̽���Ƥ���ס����˷�����ͭ��ָ��Ϭ�ǽ�ָ\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�����é�ˡ�ľ����","��Я��װ��: \n \n�̽���Ƥ���ס����˷�����ͭ��ָ��Ϭ�ǽ�ָ\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�����é���ˡ���éа��","��Я��װ��: \n \n��Ь\n","��ǰ��ѧ����: �����䡢������1��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�����é���ˡ���éа��","��Я��װ��: \n \n�������ƽ�������ˮ����ָ\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��ɽ��\n \n��ս�����֩�롢��֩��","��Я��װ��: \n \n������\n","��ǰ��ѧ����: ����ֹˮ������ֹˮ1��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ȡ���·��\n \n��ս������","��Я��װ��: \n \n���������ֳ�����������������ѥ�ӡ�������ָ����ͷ��\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ȡ���·��\n \n��ս���Գ��","��Я��װ��: \n \n���Ϳ��ס���\n","������2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ����ߡ����ߡ����ߡ���ˮ��","��Я��װ��: \n \nˮ��������â�ǽ�ָ\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ����ߡ����ߡ����ߡ���ˮ��","��Я��װ��: \n \n����\n","����ֹˮ2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ����ߡ����ߡ����ߡ���ˮ�ߡ��������á��ɵ�����","��Я��װ��: \n \nħ��ͷ����ˮ������\n","��ǰ��ѧ����: �ƶ��䡢�ƶ���1��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ����ߡ����ߡ����ߡ���ˮ�ߡ��������á��ɵ�����","��Я��װ��: \n \n����\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ����ߡ����ߡ����ߡ���ˮ�ߡ��������á��ɵ�����","��Я��װ��: \n \nǬ�����¡�����������������ָ����Ь\n","������3��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ����ߡ����ߡ����ߡ���ˮ�ߡ��������á��ɵ�����","��Я��װ��: \n \n��������\n","�ƶ���2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ������ױ�Գ����ߡ����ߡ����ߡ���ˮ�ߡ��������á��ɵ����á�����սʿ��Ĺ������","��Я��װ��: \n \n��ڻ���\n","��ǰ��ѧ����: ������������1��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ����·�ȡ���·��\n \n��ս���Գ������ױ�Գ����ߡ����ߡ����ߡ���ˮ�ߡ��������á��ɵ����á�����սʿ��Ĺ������","��Я��װ��: \n \n���ѽ�ָ\n","��ǰ��ѧ����: �ظ�֮�����ظ�֮��1��������ֹˮ3��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ��������\n \n��ս����������á��ɵ����á�����սʿ�������á�Ĺ�����桢��ʬ����ʬ��ʬ��","��Я��װ��: \n \n��ħ������������Ʒ�½�ָ\n","��ǰ��ѧ����: �����䡢������1�����ƶ���3��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ��������\n \n��ս����������á��ɵ����á�����սʿ�������á�Ĺ�����桢��ʬ����ʬ��ʬ��","��Я��װ��: \n \nţƤЬ\n","��ǰ��ѧ����: ���������䡢����������1���������2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ����ڣ��������\n \n��ս����������á��ɵ����á�����սʿ�������á�Ĺ�����桢��ʬ����ʬ��ʬ��","��Я��װ��: \n \n�������\n","��ǰ��ѧ����: ��ɷ��ħ�䡢��ɷ��ħ��1��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: �����󶴡���ɽ��Ѩ\n \n��ս�����ʬ����ʬ��ʬ�����ױ���ʬ����â��ʬū����ө������๤��ħө������๤�����ʬū������ʬū","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","������2�����ظ�֮��2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: �����󶴡���ɽ��Ѩ\n \n��ս�����ʬ����ʬ��ʬ�����ױ���ʬ����â��ʬū����ө������๤��ħө������๤�����ʬū������ʬū","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","�����3������ɷ��ħ��2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: �����󶴡���ɽ��Ѩ\n \n��ս�����ʬ����ʬ��ʬ�����ױ���ʬ����â��ʬū����ө������๤��ħө������๤�����ʬū������ʬū","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","������䡢�������1��������������2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: �����󶴡���ɽ��Ѩ\n \n��ս�����ʬ����ʬ��ʬ�����ױ���ʬ����â��ʬū����ө������๤��ħө������๤�����ʬū������ʬū","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","�ظ�֮��3����������3������ɷ��ħ��3��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: �����󶴡���ɽ��Ѩ\n \n��ս�����ʬ����ʬ��ʬ�����ױ���ʬ����â��ʬū����ө������๤��ħө������๤�����ʬū������ʬū","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","�������2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: �����󶴡���ɽ��Ѩ\n \n��ս�����ʬ����ʬ��ʬ�����ױ���ʬ����â��ʬū����ө������๤��ħө������๤�����ʬū������ʬū","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","�����䡢������1��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: �����󶴡���ɽ��Ѩ\n \n��ս�����ʬ����ʬ��ʬ�����ױ���ʬ����â��ʬū����ө������๤��ħө������๤�����ʬū������ʬū","��Я��װ��: \n \nԪ�кܶ�����װ����Ҫ��̽����\n","�������3��������������3��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ǡ������\n \n��ս����޶ꡢ����ţħ������ţħ��ţħ������ʬū��ͷ�����ߡ����ԡ����ޡ�ɳʯħ��ɢ����ħ������ū���Źֵ��͡���ħ��а��","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","������2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ǡ������\n \n��ս����޶ꡢ����ţħ������ţħ��ţħ������ʬū��ͷ�����ߡ����ԡ����ޡ�ɳʯħ��ɢ����ħ������ū���Źֵ��͡���ħ��а��","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ǡ������\n \n��ս����޶ꡢ����ţħ������ţħ��ţħ������ʬū��ͷ�����ߡ����ԡ����ޡ�ɳʯħ��ɢ����ħ������ū���Źֵ��͡���ħ��а��","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","������3��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ǡ������\n \n��ս����޶ꡢ����ţħ������ţħ��ţħ������ʬū��ͷ�����ߡ����ԡ����ޡ�ɳʯħ��ɢ����ħ������ū���Źֵ��͡���ħ��а��","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","�ش��䡢�ش���1��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ǡ������\n \n��ս����޶ꡢ����ţħ������ţħ��ţħ������ʬū��ͷ�����ߡ����ԡ����ޡ�ɳʯħ��ɢ����ħ������ū���Źֵ��͡���ħ��а��","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ��·�ǡ������\n \n��ս����޶ꡢ����ţħ������ţħ��ţħ������ʬū��ͷ�����ߡ����ԡ����ޡ�ɳʯħ��ɢ����ħ������ū���Źֵ��͡���ħ��а��","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","��֮ͥ������֮ͥ��1�����ش���2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ���а��\n \n��ս�����ԭ��ʿ��ҹ��ɮ����ԭ��ʿ���������ߡ���ԭ��ʿ����ɮ����ԭ��ʿ��Ӱ�̡��ڰ��̿�","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ���а��\n \n��ս�����ԭ��ʿ��ҹ��ɮ����ԭ��ʿ���������ߡ���ԭ��ʿ����ɮ����ԭ��ʿ��Ӱ�̡��ڰ��̿�","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","��֮ͥ��2��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ���а��\n \n��ս�����ԭ��ʿ��ҹ��ɮ����ԭ��ʿ���������ߡ���ԭ��ʿ����ɮ����ԭ��ʿ��Ӱ�̡��ڰ��̿�","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","�ش���3��"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ���а��\n \n��ս�����ԭ��ʿ��ҹ��ɮ����ԭ��ʿ���������ߡ���ԭ��ʿ����ɮ����ԭ��ʿ��Ӱ�̡��ڰ��̿�","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","��ǰû�м��ܿ�ѧ"},
					  {"��ǰ�ȼ�����̽�յ�ͼ: ���а��\n \n��ս�����ԭ��ʿ��ҹ��ɮ����ԭ��ʿ���������ߡ���ԭ��ʿ����ɮ����ԭ��ʿ��Ӱ�̡��ڰ��̿�","��Я��װ��: \n \n�кܶ�����װ����Ҫ��̽����\n","��֮ͥ��3��"},
					  {"���鵽�˱���˿հף��Ժ�Ϳ����Լ��ˣ�","���鵽�˱���˿հף��Ժ�Ϳ����Լ��ˣ�","���鵽�˱���˿հף��Ժ�Ϳ����Լ��ˣ�"}}}

function main(player, item)


	yaoshanzhengfudian = 4/30*lualib:GetInt(player,"yaoshanzhengfu1")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu2")
				+6/30*lualib:GetInt(player,"yaoshanzhengfu3")
				+7/30*lualib:GetInt(player,"yaoshanzhengfu4")
				+7/30*lualib:GetInt(player,"yaoshanzhengfu5")
				+7/30*lualib:GetInt(player,"yaoshanzhengfu6")
				+8/30*lualib:GetInt(player,"yaoshanzhengfu7")
				+8/30*lualib:GetInt(player,"yaoshanzhengfu8")
				+8/30*lualib:GetInt(player,"yaoshanzhengfu9")
				+10/3*lualib:GetInt(player,"yaoshanzhengfu10")
				+10/1*lualib:GetInt(player,"yaoshanzhengfu11")
				--+6/2*lualib:GetInt(player,"yaoshanzhengfu12")
				+10/10*lualib:GetInt(player,"yaoshanzhengfu13")
				+10/1*lualib:GetInt(player,"yaoshanzhengfu14")
				
	if yaoshanzhengfudian >= 10 and string.len(tostring(yaoshanzhengfudian)) > 5 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		yaoshanzhengfudxs = string.sub(yaoshanzhengfudian,1,5)
	elseif yaoshanzhengfudian < 10 and string.len(tostring(yaoshanzhengfudian)) > 4 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		yaoshanzhengfudxs = string.sub(yaoshanzhengfudian,1,4)
	else
		yaoshanzhengfudxs = yaoshanzhengfudian
	end
	
	tianhuangzhengfudian = 6/50*lualib:GetInt(player,"tianhuangzhengfu1")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu2")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu3")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu4")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu5")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu6")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu7")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu8")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu9")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu10")
				+10/6*lualib:GetInt(player,"tianhuangzhengfu11")
				+10/1*lualib:GetInt(player,"tianhuangzhengfu12")
				--+5/4*lualib:GetInt(player,"tianhuangzhengfu13")
				+10/20*lualib:GetInt(player,"tianhuangzhengfu14")
				+10/1*lualib:GetInt(player,"tianhuangzhengfu15")
				
	if tianhuangzhengfudian >= 10 and string.len(tostring(tianhuangzhengfudian)) > 5 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		tianhuangzhengfudxs = string.sub(tianhuangzhengfudian,1,5)
	elseif tianhuangzhengfudian < 10 and string.len(tostring(tianhuangzhengfudian)) > 4 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		tianhuangzhengfudxs = string.sub(tianhuangzhengfudian,1,4)
	else
		tianhuangzhengfudxs = tianhuangzhengfudian
	end
	
	
	xiemiaozhengfudian = 4/100*lualib:GetInt(player,"xiemiaozhengfu1")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu2")
				+6/100*lualib:GetInt(player,"xiemiaozhengfu3")
				+7/100*lualib:GetInt(player,"xiemiaozhengfu4")
				+7/100*lualib:GetInt(player,"xiemiaozhengfu5")
				+7/100*lualib:GetInt(player,"xiemiaozhengfu6")
				+8/100*lualib:GetInt(player,"xiemiaozhengfu7")
				+8/100*lualib:GetInt(player,"xiemiaozhengfu8")
				+8/12*lualib:GetInt(player,"xiemiaozhengfu9")
				+10/1*lualib:GetInt(player,"xiemiaozhengfu10")
				+10/1*lualib:GetInt(player,"xiemiaozhengfu11")
				--+5/8*lualib:GetInt(player,"xiemiaozhengfu12")
				+10/40*lualib:GetInt(player,"xiemiaozhengfu13")
				+10/1*lualib:GetInt(player,"xiemiaozhengfu14")
				
	if xiemiaozhengfudian >= 10 and string.len(tostring(xiemiaozhengfudian)) > 5 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		xiemiaozhengfudxs = string.sub(xiemiaozhengfudian,1,5)
	elseif xiemiaozhengfudian < 10 and string.len(tostring(xiemiaozhengfudian)) > 4 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		xiemiaozhengfudxs = string.sub(xiemiaozhengfudian,1,4)
	else
		xiemiaozhengfudxs = xiemiaozhengfudian
	end

	haidizhengfudian = 6/100*lualib:GetInt(player,"haidizhengfu1")
				+6/100*lualib:GetInt(player,"haidizhengfu2")
				+6/100*lualib:GetInt(player,"haidizhengfu3")
				+6/100*lualib:GetInt(player,"haidizhengfu4")
				+6/100*lualib:GetInt(player,"haidizhengfu5")
				+6/100*lualib:GetInt(player,"haidizhengfu6")
				+6/100*lualib:GetInt(player,"haidizhengfu7")
				+6/100*lualib:GetInt(player,"haidizhengfu8")
				+6/100*lualib:GetInt(player,"haidizhengfu9")
				+6/12*lualib:GetInt(player,"haidizhengfu10")
				+10/1*lualib:GetInt(player,"haidizhengfu11")
				+10/1*lualib:GetInt(player,"haidizhengfu12")
				+10/40*lualib:GetInt(player,"haidizhengfu13")
				+10/1*lualib:GetInt(player,"haidizhengfu14")
				
	if haidizhengfudian >= 10 and string.len(tostring(haidizhengfudian)) > 5 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		haidizhengfudxs = string.sub(haidizhengfudian,1,5)
	elseif haidizhengfudian < 10 and string.len(tostring(haidizhengfudian)) > 4 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		haidizhengfudxs = string.sub(haidizhengfudian,1,4)
	else
		haidizhengfudxs = haidizhengfudian
	end

	tianmozhengfudian = 6/100*lualib:GetInt(player,"tianmozhengfu1")
				+6/100*lualib:GetInt(player,"tianmozhengfu2")
				+6/100*lualib:GetInt(player,"tianmozhengfu3")
				+6/100*lualib:GetInt(player,"tianmozhengfu4")
				+6/100*lualib:GetInt(player,"tianmozhengfu5")
				+6/100*lualib:GetInt(player,"tianmozhengfu6")
				+6/100*lualib:GetInt(player,"tianmozhengfu7")
				+6/100*lualib:GetInt(player,"tianmozhengfu8")
				+6/100*lualib:GetInt(player,"tianmozhengfu9")
				+6/12*lualib:GetInt(player,"tianmozhengfu10")
				+10/1*lualib:GetInt(player,"tianmozhengfu11")
				+10/1*lualib:GetInt(player,"tianmozhengfu12")
				+10/40*lualib:GetInt(player,"tianmozhengfu13")
				+10/1*lualib:GetInt(player,"tianmozhengfu14")
				
	if tianmozhengfudian >= 10 and string.len(tostring(tianmozhengfudian)) > 5 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		tianmozhengfudxs = string.sub(tianmozhengfudian,1,5)
	elseif tianmozhengfudian < 10 and string.len(tostring(tianmozhengfudian)) > 4 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		tianmozhengfudxs = string.sub(tianmozhengfudian,1,4)
	else
		tianmozhengfudxs = tianmozhengfudian
	end


	local lua_tishi = {"��ܰ��ʾ����CTRL+R��������壬�ɲ鿴��ǰ�׶�����Щ����ɽӣ�\n",
					   "��ܰ��ʾ: ������������Բɼ�ʬ�壡",
					   "��ܰ��ʾ����TAB�򿪵�ͼ�������ͼλ�û�˫��Ѱ·�б����ƿ��Զ�Ѱ·Ŷ��",
					   "��ܰ��ʾ: ���ͣ��Ŀ�����ϰ�ALT+W����Ŀ����ӡ�\n",
					   "��ܰ��ʾ: ������Ϸ�С��ͼ���ϻ�б���Բ鿴��Ϸ���ڽ��еĻ��\n",
					   "��ܰ��ʾ: ���������Ϸ����ʲô�ɻ���Ե��С��ͼ����?��ť�鿴��\n",
					   "��ܰ��ʾ: ��CTRL+F�򿪺���ϵͳ���������Ϸ�����Ѱɣ�\n",
					   "��ܰ��ʾ: ���ͣ��Ŀ�����ϣ���CTRL+T����Ŀ�귢��������\n",
					   "��ܰ��ʾ: ��F12����Ϸ����ѡ����������ݵĽ�����Ϸ��\n",
					   "��ܰ��ʾ: ����ʼ���ť�����Բ鿴�����յ����ʼ���\n",
					   "��ܰ��ʾ: ��ɱ��Ӣ��þ�Ԫ��������ɽ��װ�������ʦ��[187,310]���һ�����װװ����\n",
					   "��ܰ��ʾ: ȥ��ɽ��Ѱ���л����ʹ��[255,203]�����л�ɣ�\n",
					   "��ܰ��ʾ: ��CTRL+B���̳ǣ����Թ���һЩ�����챦��\n",
					   "��ܰ��ʾ: ����ɽ�Ǽ�������[246,203]�������ί�������ۻ��չ����������Ʒ��\n",
					   "��ܰ��ʾ: ����Ե�������ڰ�̯���ܰ���������Ʒ���г��ۣ�����ֻ���ڰ�̯������С�\n",
					   "��ܰ��ʾ: ��ÿ�������ɽ������ʦ[259,316]����һ�ξ�Ԫ���ơ�\n",
					   "��ܰ��ʾ: ���Ϻ������ȥ��̽�հɣ���˫�ִ���Ƹ���\n",
					   "��ܰ��ʾ: װ�������������ű������ӣ�\n",
					   "��ܰ��ʾ: ӵ�о������ԶԶ����������ɽ�ǵľ�����ʦ[198,318]���������װ������һ����\n",
					   "��ܰ��ʾ: ���ڽ���Ư����������Ҫ�������ͨ������Ƶ������ȫ��Ψһ���ԣ�\n",
					   "��ܰ��ʾ: �ֿⲻ�����������ʹ�ô�������չ�߼��ֿ⣡\n",
					   "��ܰ��ʾ: ��˵��Ҳ����ˣ��Ժ���Ҫ���ע��б������б���ʱ�˽���Ϸ��������\n",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   "",}
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
    if level == -1 then
		return ""
	end
	msg = "#COLORCOLOR_GREENG#��ǰ�ȼ�"..level.."��#COLOREND#"
	msg = msg.."#IMAGE<ID:1902700017>#<@ts1a *01*��ȥ�ĵ�ͼ     >"
	msg = msg.."#IMAGE<ID:1902700017>#<@ts2a *01*�ɴ���װ��     >"
	msg = msg.."#IMAGE<ID:1902700017>#<@ts3a *01*��ѧ�ļ���     >\n"
	msg = msg.."#COLORCOLOR_RED#��һ�ȼ�"..(level + 1).."��#COLOREND#"
	msg = msg.."#IMAGE<ID:1902700017>#<@ts1b *01*��ȥ�ĵ�ͼ     >"
	msg = msg.."#IMAGE<ID:1902700017>#<@ts2b *01*�ɴ���װ��     >"
	msg = msg.."#IMAGE<ID:1902700017>#<@ts3b *01*��ѧ�ļ���     >\n \n"
	if lua_tishi[level] ~= nil then
		msg = msg..lua_tishi[level]
		msg = msg.."����ָ�ϣ�"
		msg = msg.."#IMAGE<ID:1902700017>#<@wupin *01*��Ʒʹ��  >"
		msg = msg.."#IMAGE<ID:1902700017>#<@caozuo *01*��ɫ����  >"
		msg = msg.."#IMAGE<ID:1902700017>#<@zhandou *01*ս��ָ��  >"
		msg = msg.."#IMAGE<ID:1902700017>#<@mingling *01*���췢��  >"
		msg = msg.."#IMAGE<ID:1902700017>#<@jineng *01*ְҵ����  >"
		msg = msg.."#IMAGE<ID:1902700017>#<@kuaijiejian *01*��ݼ�>\n \n"
		msg = msg.."�����µ�ͼ��̽��ð��ʱ�᲻֪�������ӶԸõ�ͼ�������ȣ���������ȡ���ֽ�����\n"
		msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian1 *01*�鿴��������>   #COLORCOLOR_GREENG#��ɽ��Ѩ#COLOREND##COLORCOLOR_BLUE#���ʺ�25-30��̽�գ�#COLOREND#   Ŀǰ����#COLORCOLOR_ORANGE#"..yaoshanzhengfudxs.."%#COLOREND#\n"
		msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian2 *01*�鿴��������>   #COLORCOLOR_GREENG#����� #COLOREND##COLORCOLOR_BLUE#���ʺ�30-40��̽�գ�#COLOREND#    Ŀǰ����#COLORCOLOR_ORANGE#"..tianhuangzhengfudxs.."%#COLOREND#\n"
		msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian3 *01*�鿴��������>   #COLORCOLOR_GREENG#���а��#COLOREND##COLORCOLOR_BLUE#���ʺ�35-45��̽�գ�#COLOREND#   Ŀǰ����#COLORCOLOR_ORANGE#"..xiemiaozhengfudxs.."%#COLOREND#"
	else
		msg = "���Ѿ��������֣��޷��ٲ鿴����ָ�ϡ����������㹻������ȥ�������磡\n \n"
		msg = msg.."�����µ�ͼ��̽��ð��ʱ�᲻֪�������ӶԸõ�ͼ�������ȣ���������ȡ���ֽ�����\n"
		msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian1 *01*�鿴��������>   #COLORCOLOR_GREENG#��ɽ��Ѩ#COLOREND##COLORCOLOR_BLUE#���ʺ�25-30��̽�գ�#COLOREND#   Ŀǰ����#COLORCOLOR_ORANGE#"..yaoshanzhengfudxs.."%#COLOREND#\n"
		msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian2 *01*�鿴��������>   #COLORCOLOR_GREENG#����� #COLOREND##COLORCOLOR_BLUE#���ʺ�30-40��̽�գ�#COLOREND#    Ŀǰ����#COLORCOLOR_ORANGE#"..tianhuangzhengfudxs.."%#COLOREND#\n"
		msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian3 *01*�鿴��������>   #COLORCOLOR_GREENG#���а��#COLOREND##COLORCOLOR_BLUE#���ʺ�35-45��̽�գ�#COLOREND#   Ŀǰ����#COLORCOLOR_ORANGE#"..xiemiaozhengfudxs.."%#COLOREND#\n"
		msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian4 *01*�鿴��������>   #COLORCOLOR_GREENG#��ħʯ�� #COLOREND##COLORCOLOR_BLUE#���ʺ�40-50��̽�գ�#COLOREND#  Ŀǰ����#COLORCOLOR_ORANGE#"..tianmozhengfudxs.."%#COLOREND#\n"
		msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian5 *01*�鿴��������>   #COLORCOLOR_GREENG#�����ؾ�#COLOREND##COLORCOLOR_BLUE#���ʺ�50-60��̽�գ�#COLOREND#   Ŀǰ����#COLORCOLOR_ORANGE#"..haidizhengfudxs.."%#COLOREND#"
	end
	lualib:NPCTalk(player, msg)
	return true
end

function ret(player, item)
	main(player, item)
	return ""
end


--̽�մ��
function ts1a(player,item)
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
    if level == -1 then
		return ""
	end

	local job = lualib:Player_GetIntProp(player,  lua_role_job)
    if job == -1 then
		return ""
	end

	if lua_tianshu[job][level] == nil then return "" end
	local msg = "����ǰ�ȼ�Ϊ"..level..": "
	msg = msg..lua_tianshu[job][level][1]
	msg = msg.."\n<@ret *01*�����ء�>\n"
	return msg
end

function ts1b(player,item)
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
    if level == -1 then
		return ""
	end

	local job = lualib:Player_GetIntProp(player,  lua_role_job)
    if job == -1 then
		return ""
	end

	if lua_tianshu[job][level] == nil then return "" end
	local msg = "���¸��ȼ�Ϊ"..(level + 1)..":  "
	msg = msg..lua_tianshu[job][level + 1][1]
	msg = msg.."\n<@ret *01*�����ء�>\n"
	return msg
end

--װ��
function ts2a(player,item)
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
    if level == -1 then
		return ""
	end

	local job = lualib:Player_GetIntProp(player,  lua_role_job)
    if job == -1 then
		return ""
	end

	if lua_tianshu[job][level] == nil then return "" end
	local msg = "����ǰ�ȼ�Ϊ"..level..": "
	msg = msg..lua_tianshu[job][level][2]
	msg = msg.."\n<@ret *01*�����ء�>\n"
	return msg
end

function ts2b(player,item)
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
    if level == -1 then
		return ""
	end

	local job = lualib:Player_GetIntProp(player,  lua_role_job)
    if job == -1 then
		return ""
	end

	if lua_tianshu[job][level] == nil then return "" end
	local msg = "���¸��ȼ�Ϊ"..(level + 1)..":  "
	msg = msg..lua_tianshu[job][level + 1][2]
	msg = msg.."\n<@ret *01*�����ء�>\n"
	return msg
end


--222
function ts3a(player,item)
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
    if level == -1 then
		return ""
	end

	local job = lualib:Player_GetIntProp(player,  lua_role_job)
    if job == -1 then
		return ""
	end

	if lua_tianshu[job][level] == nil then return "" end
	local msg = "����ǰ�ȼ�Ϊ"..level..": "
	msg = msg..lua_tianshu[job][level][3]
	msg = msg.."\n<@ret *01*�����ء�>\n"
	return msg
end

function ts3b(player,item)
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
    if level == -1 then
		return ""
	end

	local job = lualib:Player_GetIntProp(player,  lua_role_job)
    if job == -1 then
		return ""
	end

	if lua_tianshu[job][level] == nil then return "" end
	local msg = "���¸��ȼ�Ϊ"..(level + 1)..":  "
	msg = msg..lua_tianshu[job][level + 1][3]
	msg = msg.."\n<@ret *01*�����ء�>\n"
	return msg
end

--	��ʦ���й�

function kezhao(player,item)
	msg = "���й����б�\n \n"
	msg = msg.."��(6)�� ¹(13)�� ʳ�˻�(15)�� Գ��(16)�� ����(17)�� ��֩��(17)�� ��֩��(17)�� �ú�(17)�� ����֩��(17)�� ���(17)�� Ұ��(17)�� ����(18)�� ����(18)�� ����(19)�� ��ˮ��(19)�� �ɶ�(21)�� �����(23)�� �ױ�Գ��(23)�� ��â(27)�� ��ө(27)�� ħө(27)�� ����๤(27)�� ����๤(29)�� �޶�(33)�� ����(33)�� ����(33)�� а��(33)\n"
	msg = msg.."<@ret *01* �����ء�>"
	return msg
end



function wupin(npc, player)
   msg = "���ȣ�����F9���������ڣ���F10������������壩�򿪶�Ӧ��塣\nֱ��˫����Ʒ����Ϳ��Խ�װ��������ȥ������������Ĺ��ܵ��ߣ�˫����ʹ�øõ��ߣ�\n�����ƶ�������������������ٵ������\n \n"
   msg = msg.."<@caozuozhinan *01*�����ء�>\n"
   return msg
end

function caozuo(npc, player)
   msg = "������ : ��Ϊ�ű����ж����ƶ����������ƶ���Ʒ�ȡ�\n����Ҽ� : ����Ϸ�����ڵ���Ҽ������ܲ�\nShift+���:ǿ�й���\nCTRL+�Ҽ� : CTRL+�Ҽ������ҿ��Բ鿴�Է���Ϣ\nAlt+��� : ��ȡ����ʬ����Ի����Ʒ\n���˫�����Ҽ����� : ʹ����Ʒ��Я��װ��\n \n"
   msg = msg.."<@caozuozhinan *01*�����ء�>\n"
   return msg
end

function zhandou(npc, player)
   msg = "��������˵���㶼����������������й���������㲻�ܽ��й���������԰�סShift+�����ǿ�й���\n ������Щ��ȥ��¹�����ȣ�����������ǵ�ʬ���ϲɼ������Ӧ��Ʒ��\n \n"
   msg = msg.."<@caozuozhinan *01*�����ء�>\n"
   return msg
end

function mingling(npc, player)
   msg = "�������� : ��������������ַ��ͺ�Ϊ��������\n˽�� : ������Ҽ����Ŀ��ͷ��ѡ��˽��ѡ�������/ + �������Ʒ���˽��\n���� : ��!��ͷ�������ַ��ͺ�Ϊ��������Ϣ��ɫ�ǻ�ɫ�ģ�����ʱ�����ƣ�\n��ӷ��� : ��!!��ͷ�������ַ��ͺ�Ϊֻ���͸���ӳ�Ա\n�лᷢ�� : ��!~��ͷ�������ַ��ͺ�Ϊֻ���͸��л��Ա\n���ȷ��� : ѡ����������Ⱥ��������ͺ�������Ƶ����ʾ����ÿ����Ҫ����һ��С����\n \n"
   msg = msg.."<@caozuozhinan *01*�����ء�>\n"
   return msg
end

function jineng(npc, player)
   msg = "ÿ��ְҵ�ܹ�ѧϰ���ܵĵȼ�Ҫ����7����սʿ����ѧϰ�������ķ�������ʦ����ѧϰ��������������ʿ����ѧϰ�������䡷��\n��Щ�鶼�����ڸ��ص�������򵽵ģ��ȼ�����֮�󣬻�����ѧϰ�������߼��ļ��ܡ�\n \n����Щ���޷�������򵽣���ֻ��ͨ��ɱ�������ã�\n \n"
   msg = msg.."<@caozuozhinan *01*�����ء�>\n"
   return msg
end

function kuaijiejian(npc, player)
   msg = "F1~F8:���ܿ�ݼ�        F9������       F10:��������\nF11:����                F12:����ѡ��\nCtrl+H:�ı乥��ģʽ    Ctrl+A:�ı���﹥��ģʽ\nAlt+W:�������            Alt+T:������\n \n"
   msg = msg.."<@caozuozhinan *01*�����ء�>\n"
   return msg
end


-------------------------------------------------����ϵͳ---------------------------------------------------------------
function zhengfuxitong(player)
	yaoshanzhengfudian = 5/30*lualib:GetInt(player,"yaoshanzhengfu1")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu1")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu2")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu3")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu4")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu5")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu6")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu7")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu8")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu9")
				+10/3*lualib:GetInt(player,"yaoshanzhengfu10")
				+20/1*lualib:GetInt(player,"yaoshanzhengfu11")
				+5/2*lualib:GetInt(player,"yaoshanzhengfu12")
				+10/10*lualib:GetInt(player,"yaoshanzhengfu13")
				+10/1*lualib:GetInt(player,"yaoshanzhengfu14")
				
	if yaoshanzhengfudian >= 10 and string.len(tostring(yaoshanzhengfudian)) > 5 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		yaoshanzhengfudxs = string.sub(yaoshanzhengfudian,1,5)
	elseif yaoshanzhengfudian < 10 and string.len(tostring(yaoshanzhengfudian)) > 4 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		yaoshanzhengfudxs = string.sub(yaoshanzhengfudian,1,4)
	else
		yaoshanzhengfudxs = yaoshanzhengfudian
	end
	
		tianhuangzhengfudian = 5/50*lualib:GetInt(player,"tianhuangzhengfu1")
				+4.5/50*lualib:GetInt(player,"tianhuangzhengfu1")
				+4.5/50*lualib:GetInt(player,"tianhuangzhengfu2")
				+4.5/50*lualib:GetInt(player,"tianhuangzhengfu3")
				+4.5/50*lualib:GetInt(player,"tianhuangzhengfu4")
				+4.5/50*lualib:GetInt(player,"tianhuangzhengfu5")
				+4.5/50*lualib:GetInt(player,"tianhuangzhengfu6")
				+4.5/50*lualib:GetInt(player,"tianhuangzhengfu7")
				+4.5/50*lualib:GetInt(player,"tianhuangzhengfu8")
				+4.5/50*lualib:GetInt(player,"tianhuangzhengfu9")
				+4.5/50*lualib:GetInt(player,"tianhuangzhengfu10")
				+10/6*lualib:GetInt(player,"tianhuangzhengfu11")
				+20/1*lualib:GetInt(player,"tianhuangzhengfu12")
				+5/4*lualib:GetInt(player,"tianhuangzhengfu13")
				+10/20*lualib:GetInt(player,"tianhuangzhengfu14")
				+10/1*lualib:GetInt(player,"tianhuangzhengfu15")
				
	if tianhuangzhengfudian >= 10 and string.len(tostring(tianhuangzhengfudian)) > 5 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		tianhuangzhengfudxs = string.sub(tianhuangzhengfudian,1,5)
	elseif tianhuangzhengfudian < 10 and string.len(tostring(tianhuangzhengfudian)) > 4 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		tianhuangzhengfudxs = string.sub(tianhuangzhengfudian,1,4)
	else
		tianhuangzhengfudxs = tianhuangzhengfudian
	end
	
	
		xiemiaozhengfudian = 5/100*lualib:GetInt(player,"xiemiaozhengfu1")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu1")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu2")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu3")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu4")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu5")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu6")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu7")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu8")
				+10/12*lualib:GetInt(player,"xiemiaozhengfu9")
				+5/1*lualib:GetInt(player,"xiemiaozhengfu10")
				+20/1*lualib:GetInt(player,"xiemiaozhengfu11")
				+5/8*lualib:GetInt(player,"xiemiaozhengfu12")
				+10/40*lualib:GetInt(player,"xiemiaozhengfu13")
				+10/1*lualib:GetInt(player,"xiemiaozhengfu14")
				
	if xiemiaozhengfudian >= 10 and string.len(tostring(xiemiaozhengfudian)) > 5 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		xiemiaozhengfudxs = string.sub(xiemiaozhengfudian,1,5)
	elseif xiemiaozhengfudian < 10 and string.len(tostring(xiemiaozhengfudian)) > 4 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		xiemiaozhengfudxs = string.sub(xiemiaozhengfudian,1,4)
	else
		xiemiaozhengfudxs = xiemiaozhengfudian
	end
	
	local msg = "����������µ�ͼ��̽��ð��ʱ�ͻ᲻֪�������Ӹõ�ͼ�������ȣ������ȴﵽһ���̶ȿ�����ȡ���ֽ�����\n \n"
	msg = msg .. "<@chumojiemian1 *01*��������>   #COLORCOLOR_GREENG#��ɽ��Ѩ#COLOREND#        #COLORCOLOR_ORANGE#"..yaoshanzhengfudxs.."%#COLOREND#\n"
	msg = msg .. "<@chumojiemian2 *01*��������>   #COLORCOLOR_GREENG#�����#COLOREND#          #COLORCOLOR_ORANGE#"..tianhuangzhengfudxs.."%#COLOREND#\n"
	msg = msg .. "<@chumojiemian3 *01*��������>   #COLORCOLOR_GREENG#���а��#COLOREND#        #COLORCOLOR_ORANGE#"..xiemiaozhengfudxs.."%#COLOREND#\n"
	return msg
end