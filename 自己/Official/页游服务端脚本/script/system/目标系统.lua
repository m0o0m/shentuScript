local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/horse")

--Ŀ�꽱��
local mubiao_jiangli = {
	["ѱ�޴���1"] = {2,{"������(δ����)",1},{"Ǯ��(10��)",1}},  --2Ϊ��ȡ��Ҫ�İ����ո���
	["ѱ�޴���2"] = {2,{"����ħʨ(δ����)",1},{"Ǯ��(20��)",1}},
	["ѱ�޴���3"] = {3,{"����(δ����)",1},{"����",1},{"5000Ԫ��",1}},
	["ѱ�޴���4"] = {1,{"������(δ����)",1},{"����",1},{"5000Ԫ��",1}},
	["ѱ�޴���5"] = {1,{"��ӥ(δ����)",1},{"����",1},{"5000Ԫ��",1}},
	["װ������1"] = {2,{"��Ǯ��(10��)",1},{"��Ԫ��",10}},
	["װ������2"] = {2,{"Ǯ��(50��)",1},{"��Ԫ��",50}},
	["װ������3"] = {2,{"����",1},{"500Ԫ��",1}},
	["�����Ե�1"] = {1,{"��Ǯ��(10��)",1}},
	["�����Ե�2"] = {1,{"����",500000},{"��Ǯ��(50��)",1}},
	["������ħ1"] = {0,{"����",10000}},
	["������ħ2"] = {0,{"����",50000}},
	["������ħ3"] = {1,{"����",100000},{"Ǯ��(10��)",1}},
	["������ħ4"] = {1,{"����",500000},{"Ǯ��(50��)",1}},
	["������ħ5"] = {1,{"����",1000000},{"����",1}},
	["������ħ6"] = {2,{"����",2000000},{"����",2}},
	["������ħ7"] = {5,{"����",5000000},{"����",5}},
	["������ħ8"] = {10,{"����",10000000},{"����",10}},
	["��ɱboss1"] = {0,{"����",50000}},
	["��ɱboss2"] = {1,{"����",100000},{"Ǯ��(10��)",1}},
	["��ɱboss3"] = {1,{"����",500000},{"Ǯ��(50��)",1}},
	["��ɱboss4"] = {1,{"����",1000000},{"����",1}},
	["��ɱboss5"] = {2,{"����",2000000},{"����",2}},
	["��ɱboss6"] = {5,{"����",5000000},{"����",5}},
	["��ɱboss7"] = {10,{"����",10000000},{"����",10}},
}


-----------------------ͼ����ʾ-----------------------------
function mubiao_xianshi(player)	
	ShowTimeCount2(player, 0, 1903800054, "Ŀ��ϵͳ",0,"") --��ʾĿ��ͼ��
end

-------------------ͼ�걻���-----------------------
function mubiao(player)
	ShowTimeCount2(player, 0, 1903800054, "Ŀ��ϵͳ",0,"") --��ʾĿ��ͼ��
	local msg = ""

	if lualib:GetInt(player,"mubiao_zhuangbei_3") == 1 then
		msg = msg .. "#COLORCOLOR_RED#������װ��3��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#������װ��������12\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND##IMAGE<ID:1990165504>#������#IMAGE<ID:1990165505>#500Ԫ��"
		msg = msg .. "  <@mubiao_lingjiang#װ������3#mubiao_zhuangbei_3#mubiao *01*��ȡ����>\n\n\n\n"
	end

	if lualib:GetInt(player,"mubiao_zhuangbei_2") == 1 then
		msg = msg .. "#COLORCOLOR_RED#������װ��2��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#������װ��������9\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND##IMAGE<ID:1990145002>#Ǯ��(50��)��#IMAGE<ID:1990130007>#��Ԫ��*50"
		msg = msg .. "  <@mubiao_lingjiang#װ������2#mubiao_zhuangbei_2#mubiao *01*��ȡ����>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_zhuangbei_1") == 1 then
		msg = msg .. "#COLORCOLOR_RED#������װ��1��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#������װ��������6\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND##IMAGE<ID:1990145002>#Ǯ��(10��)��#IMAGE<ID:1990130007>#��Ԫ��*10"
		msg = msg .. "  <@mubiao_lingjiang#װ������1#mubiao_zhuangbei_1#mubiao *01*��ȡ����>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_boss_7") == 1 then
		msg = msg .. "#COLORCOLOR_RED#����ɱboss7��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ1000ֻboss��(1000/1000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����1000w��#IMAGE<ID:1990165504>#����*10"
		msg = msg .. "  <@mubiao_lingjiang#��ɱboss7#mubiao_boss_7#mubiao *01*��ȡ����>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_boss_6") == 1 then
		msg = msg .. "#COLORCOLOR_RED#����ɱboss6��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ500ֻboss��(500/500)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����500w��#IMAGE<ID:1990165504>#����*5"
		msg = msg .. "  <@mubiao_lingjiang#��ɱboss6#mubiao_boss_6#mubiao *01*��ȡ����>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_boss_5") == 1 then
		msg = msg .. "#COLORCOLOR_RED#����ɱboss5��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ200ֻboss��(200/200)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����200w��#IMAGE<ID:1990165504>#����*2"
		msg = msg .. "  <@mubiao_lingjiang#��ɱboss5#mubiao_boss_5#mubiao *01*��ȡ����>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_boss_4") == 1 then
		msg = msg .. "#COLORCOLOR_RED#����ɱboss4��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ100ֻboss��(100/100)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����100w��#IMAGE<ID:1990165504>#����"
		msg = msg .. "  <@mubiao_lingjiang#��ɱboss4#mubiao_boss_4#mubiao *01*��ȡ����>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_boss_3") == 1 then
		msg = msg .. "#COLORCOLOR_RED#����ɱboss3��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ50ֻboss��(50/50)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����50w��#IMAGE<ID:1990145002>#Ǯ��(50��)"
		msg = msg .. "  <@mubiao_lingjiang#��ɱboss3#mubiao_boss_3#mubiao *01*��ȡ����>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_boss_2") == 1 then
		msg = msg .. "#COLORCOLOR_RED#����ɱboss2��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ10ֻboss��(10/10)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����10w��#IMAGE<ID:1990145002>#Ǯ��(10��)"
		msg = msg .. "  <@mubiao_lingjiang#��ɱboss2#mubiao_boss_2#mubiao *01*��ȡ����>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_boss_1") == 1 then
		msg = msg .. "#COLORCOLOR_RED#����ɱboss1��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ1ֻboss��(1/1)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����5w"
		msg = msg .. "  <@mubiao_lingjiang#��ɱboss1#mubiao_boss_1#mubiao *01*��ȡ����>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_chumo_8") == 1 then
		msg = msg .. "#COLORCOLOR_RED#��������ħ8��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ10000ֻ��Ӣ��(10000/10000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����1000w��#IMAGE<ID:1990165504>#����*10"
		msg = msg .. "  <@mubiao_lingjiang#������ħ8#mubiao_chumo_8#mubiao *01*��ȡ����>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_chumo_7") == 1 then
		msg = msg .. "#COLORCOLOR_RED#��������ħ7��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ5000ֻ��Ӣ��(5000/5000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����500w��#IMAGE<ID:1990165504>#����*5"
		msg = msg .. "  <@mubiao_lingjiang#������ħ7#mubiao_chumo_7#mubiao *01*��ȡ����>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_chumo_6") == 1 then
		msg = msg .. "#COLORCOLOR_RED#��������ħ6��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ2000ֻ��Ӣ��(2000/2000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����200w��#IMAGE<ID:1990165504>#����*2"
		msg = msg .. "  <@mubiao_lingjiang#������ħ6#mubiao_chumo_6#mubiao *01*��ȡ����>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_chumo_5") == 1 then
		msg = msg .. "#COLORCOLOR_RED#��������ħ5��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ1000ֻ��Ӣ��(1000/1000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����100w��#IMAGE<ID:1990165504>#����"
		msg = msg .. "  <@mubiao_lingjiang#������ħ5#mubiao_chumo_5#mubiao *01*��ȡ����>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_chumo_4") == 1 then
		msg = msg .. "#COLORCOLOR_RED#��������ħ4��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ500ֻ��Ӣ��(500/500)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����50w��#IMAGE<ID:1990145002>#Ǯ��(50��)"
		msg = msg .. "  <@mubiao_lingjiang#������ħ4#mubiao_chumo_4#mubiao *01*��ȡ����>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_chumo_3") == 1 then
		msg = msg .. "#COLORCOLOR_RED#��������ħ3��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ100ֻ��Ӣ��(100/100)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����10w��#IMAGE<ID:1990145002>#Ǯ��(10��)"
		msg = msg .. "  <@mubiao_lingjiang#������ħ3#mubiao_chumo_3#mubiao *01*��ȡ����>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_chumo_2") == 1 then
		msg = msg .. "#COLORCOLOR_RED#��������ħ2��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ10ֻ��Ӣ��(10/10)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����5w"
		msg = msg .. "  <@mubiao_lingjiang#������ħ2#mubiao_chumo_2#mubiao *01*��ȡ����>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_chumo_1") == 1 then
		msg = msg .. "#COLORCOLOR_RED#��������ħ1��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ1ֻ��Ӣ��(1/1)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����1w"
		msg = msg .. "  <@mubiao_lingjiang#������ħ1#mubiao_chumo_1#mubiao *01*��ȡ����>\n\n\n\n"
	end
	
	if #msg > 1 then
		msg = "����������³ɾͣ��Ƿ�<@mubiao_yijianlingqu *01*һ����ȡ>������\n\n"..msg
		
		lualib:NPCTalkDetail(player, msg, 700, 600)
		return ""
	end
	
	mubiao_xunshou(player)
	return ""
end


-------------------һ����ȡ-----------------------
function mubiao_yijianlingqu(player)
	local msg = ""
	if lualib:GetInt(player,"mubiao_zhuangbei_3") == 1 then
		msg = msg .. "#COLORCOLOR_RED#������װ��3��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#������װ��������12\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND##IMAGE<ID:1990165504>#������#IMAGE<ID:1990165505>#500Ԫ��"
		mubiao_lingjiang(player,"װ������3","mubiao_zhuangbei_3")
	end

	if lualib:GetInt(player,"mubiao_zhuangbei_2") == 1 then
		msg = msg .. "#COLORCOLOR_RED#������װ��2��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#������װ��������9\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND##IMAGE<ID:1990145002>#Ǯ��(50��)��#IMAGE<ID:1990130007>#��Ԫ��*50"
		mubiao_lingjiang(player,"װ������2","mubiao_zhuangbei_2")
	end
	
	if lualib:GetInt(player,"mubiao_zhuangbei_1") == 1 then
		msg = msg .. "#COLORCOLOR_RED#������װ��1��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#������װ��������6\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND##IMAGE<ID:1990145002>#Ǯ��(10��)��#IMAGE<ID:1990130007>#��Ԫ��*10"
		mubiao_lingjiang(player,"װ������1","mubiao_zhuangbei_1")
	end
	
	if lualib:GetInt(player,"mubiao_boss_7") == 1 then
		msg = msg .. "#COLORCOLOR_RED#����ɱboss7��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ1000ֻboss��("..shuliang.."/1000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����1000w��#IMAGE<ID:1990165504>#����*10"
		mubiao_lingjiang(player,"��ɱboss7","mubiao_boss_7")
	end
	
	if lualib:GetInt(player,"mubiao_boss_6") == 1 then
		msg = msg .. "#COLORCOLOR_RED#����ɱboss6��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ500ֻboss��("..shuliang.."/500)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����500w��#IMAGE<ID:1990165504>#����*5"
		mubiao_lingjiang(player,"��ɱboss6","mubiao_boss_6")
	end
	
	if lualib:GetInt(player,"mubiao_boss_5") == 1 then
		msg = msg .. "#COLORCOLOR_RED#����ɱboss5��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ200ֻboss��("..shuliang.."/200)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����200w��#IMAGE<ID:1990165504>#����*2"
		mubiao_lingjiang(player,"��ɱboss5","mubiao_boss_5")
	end
	
	if lualib:GetInt(player,"mubiao_boss_4") == 1 then
		msg = msg .. "#COLORCOLOR_RED#����ɱboss4��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ100ֻboss��("..shuliang.."/100)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����100w��#IMAGE<ID:1990165504>#����"
		mubiao_lingjiang(player,"��ɱboss4","mubiao_boss_4")
	end
	
	if lualib:GetInt(player,"mubiao_boss_3") == 1 then
		msg = msg .. "#COLORCOLOR_RED#����ɱboss3��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ50ֻboss��(50/50)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����50w��#IMAGE<ID:1990145002>#Ǯ��(50��)"
		mubiao_lingjiang(player,"��ɱboss3","mubiao_boss_3")
	end
	
	if lualib:GetInt(player,"mubiao_boss_2") == 1 then
		msg = msg .. "#COLORCOLOR_RED#����ɱboss2��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ10ֻboss��(10/10)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����10w��#IMAGE<ID:1990145002>#Ǯ��(10��)"
		mubiao_lingjiang(player,"��ɱboss2","mubiao_boss_2")
	end
	
	if lualib:GetInt(player,"mubiao_boss_1") == 1 then
		msg = msg .. "#COLORCOLOR_RED#����ɱboss1��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ1ֻboss��(1/1)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����5w"
		mubiao_lingjiang(player,"��ɱboss1","mubiao_boss_1")
	end
	
	if lualib:GetInt(player,"mubiao_chumo_8") == 1 then
		msg = msg .. "#COLORCOLOR_RED#��������ħ8��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ10000ֻ��Ӣ��(10000/10000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����1000w��#IMAGE<ID:1990165504>#����*10"
		mubiao_lingjiang(player,"������ħ8","mubiao_chumo_8")
	end
	
	if lualib:GetInt(player,"mubiao_chumo_7") == 1 then
		msg = msg .. "#COLORCOLOR_RED#��������ħ7��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ5000ֻ��Ӣ��(5000/5000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����500w��#IMAGE<ID:1990165504>#����*5"
		mubiao_lingjiang(player,"������ħ7","mubiao_chumo_7")
	end
	
	if lualib:GetInt(player,"mubiao_chumo_6") == 1 then
		msg = msg .. "#COLORCOLOR_RED#��������ħ6��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ2000ֻ��Ӣ��("..shuliang.."/2000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����200w��#IMAGE<ID:1990165504>#����*2"
		mubiao_lingjiang(player,"������ħ6","mubiao_chumo_6")
	end
	
	if lualib:GetInt(player,"mubiao_chumo_5") == 1 then
		msg = msg .. "#COLORCOLOR_RED#��������ħ5��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ1000ֻ��Ӣ��(1000/1000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����100w��#IMAGE<ID:1990165504>#����"
		mubiao_lingjiang(player,"������ħ5","mubiao_chumo_5")
	end
	
	if lualib:GetInt(player,"mubiao_chumo_4") == 1 then
		msg = msg .. "#COLORCOLOR_RED#��������ħ4��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ500ֻ��Ӣ��(500/500)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����50w��#IMAGE<ID:1990145002>#Ǯ��(50��)"
		mubiao_lingjiang(player,"������ħ4","mubiao_chumo_4")
	end
	
	if lualib:GetInt(player,"mubiao_chumo_3") == 1 then
		msg = msg .. "#COLORCOLOR_RED#��������ħ3��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ100ֻ��Ӣ��(100/100)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����10w��#IMAGE<ID:1990145002>#Ǯ��(10��)"
		mubiao_lingjiang(player,"������ħ3","mubiao_chumo_3")
	end
	
	if lualib:GetInt(player,"mubiao_chumo_2") == 1 then
		msg = msg .. "#COLORCOLOR_RED#��������ħ2��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ10ֻ��Ӣ��(10/10)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����5w"
		mubiao_lingjiang(player,"������ħ2","mubiao_chumo_2")
	end
	
	if lualib:GetInt(player,"mubiao_chumo_1") == 1 then
		msg = msg .. "#COLORCOLOR_RED#��������ħ1��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ1ֻ��Ӣ��(1/1)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����1w"
		mubiao_lingjiang(player,"������ħ1","mubiao_chumo_1")
	end
	lualib:NPCTalkDetail(player, msg, 700, 600)
	return ""
end


-------------------ѱ�޴���-----------------------
function mubiao_xunshou(player)
	local msg = "                                    #COLORCOLOR_GREENG#��Ŀ��ϵͳ��#COLOREND#\n\n"
	msg = msg .. "#IMAGE<ID:1900100001>##COLORCOLOR_RED#[ѱ�޴���]#COLOREND#    #IMAGE<ID:1900100003>#<@mubiao_zhuangbei *01*[װ������]>    #IMAGE<ID:1900100003>#<@mubiao_gongcheng *01*[�����Ե�]>    #IMAGE<ID:1900100003>#<@mubiao_chumo *01*[������ħ]>    #IMAGE<ID:1900100003>#<@mubiao_boss *01*[��ɱboss]>\n \n \n"

	local x1,x2,x3,x4,x5 = 0,0,0,0,0
	local y1,y2,y3,y4,y5 = 0,0,0,0,0
	
		x1 = 206
		y1 = 100
		
		x2 = 206
		y2 = 300
		
		x3 = 206
		y3 = 500
		
		x4 = 206
		y4 = 700
		
		x5 = 206
		y5 = 900
	
		local x1_1 = 0
		local y1_1 = 0
		x1_1 = -135
		y1_1 = y1 - 150
		msg = msg .. "#POS<X:"..x1 ..">##POS<Y:"..y1 ..">##COLORCOLOR_RED#��ѱ�޴���1��#COLOREND#\n"
		msg = msg .. "                                  #COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#����һֻ40��������#COLORCOLOR_RED#(��Ҫ40��������ȡ)#COLOREND#\n"
		msg = msg .. "                                  #COLORCOLOR_ORANGE#������#COLOREND##IMAGE<ID:1990120194>#ϡ������:������#IMAGE<ID:1990145002>#Ǯ��(10��)"
		if lualib:GetInt(player,"mubiao_xunshou_1") == 0 then
			msg = msg .. "  <@mubiao_xunshou_lingjiang1 *01*��ȡ����>"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#"
		end
		
		local x2_1 = 0
		local y2_1 = 0
		x2_1 = -150
		y2_1 = y2 - 190
		msg = msg .. "#POS<X:"..x2 ..">##POS<Y:"..y2 ..">##COLORCOLOR_RED#��ѱ�޴���2��#COLOREND#\n"
		msg = msg .. "                                  #COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#����һֻ50��������#COLORCOLOR_RED#(��Ҫ50��������ȡ)#COLOREND#\n"
		msg = msg .. "                                  #COLORCOLOR_ORANGE#������#COLOREND##IMAGE<ID:1990120200>#ϡ������:����ħʨ#IMAGE<ID:1990165504>#Ǯ��(20��)"
		if lualib:GetInt(player,"mubiao_xunshou_2") == 0 then
			msg = msg .. "  <@mubiao_xunshou_lingjiang2 *01*��ȡ����>"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#"
		end
		
		local x3_1 = 0
		local y3_1 = 0
		x3_1 = -135
		y3_1 = y3 - 190
		msg = msg .. "#POS<X:"..x3 ..">##POS<Y:"..y3 ..">##COLORCOLOR_RED#��ѱ�޴���3��#COLOREND#\n"
		msg = msg .. "                                  #COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#����һֻ��50������#COLORCOLOR_RED#(��Ҫ55��������ȡ)#COLOREND#\n"
		msg = msg .. "                                  #COLORCOLOR_ORANGE#������#COLOREND##IMAGE<ID:1990120214>#ϡ������:����#IMAGE<ID:1990165504>#����*1#IMAGE<ID:1990165505>#5000Ԫ��"
		if lualib:GetInt(player,"mubiao_xunshou_3") == 0 then
			msg = msg .. "  <@mubiao_xunshou_lingjiang3 *01*��ȡ����>"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#"
		end
		
		local x4_1 = 0
		local y4_1 = 0
		x4_1 = -120
		y4_1 = y4 - 190
		msg = msg .. "#POS<X:"..x4 ..">##POS<Y:"..y4 ..">##COLORCOLOR_RED#��ѱ�޴���4��#COLOREND#\n"
		msg = msg .. "                                  #COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#����һֻ��50������#COLORCOLOR_RED#(��Ҫ55��������ȡ)#COLOREND#\n"
		msg = msg .. "                                  #COLORCOLOR_ORANGE#������#COLOREND##IMAGE<ID:1990020213>#ϡ������:������#IMAGE<ID:1990165504>#����*1#IMAGE<ID:1990165505>#5000Ԫ��"
		if lualib:GetInt(player,"mubiao_xunshou_4") == 0 then
			msg = msg .. "  <@mubiao_xunshou_lingjiang4 *01*��ȡ����>"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#"
		end
		
		local x5_1 = 0
		local y5_1 = 0
		x5_1 = -120
		y5_1 = y5 - 190
		msg = msg .. "#POS<X:"..x5 ..">##POS<Y:"..y5 ..">##COLORCOLOR_RED#��ѱ�޴���5��#COLOREND#\n"
		msg = msg .. "                                  #COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#����һֻ��50������#COLORCOLOR_RED#(��Ҫ55��������ȡ)#COLOREND#\n"
		msg = msg .. "                                  #COLORCOLOR_ORANGE#������#COLOREND##IMAGE<ID:1990020204>#ϡ������:��ӥ#IMAGE<ID:1990165504>#����*1#IMAGE<ID:1990165505>#5000Ԫ��"
		if lualib:GetInt(player,"mubiao_xunshou_5") == 0 then
			msg = msg .. "  <@mubiao_xunshou_lingjiang5 *01*��ȡ����>"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#"
		end
		

	local str = [[<form default_parent="NpcTalk,Container">
					<image id="ͼƬ1" x=-150 y=-50 type=animate image=1210522200/>
					<image id="ͼƬ2" x=-130 y=150 type=animate image=1210722200/>
					<image id="ͼƬ3" x=-150 y=350 type=animate image=1211022200/>
					<image id="ͼƬ4" x=-80 y=550 type=animate image=1211122200/>
					<image id="ͼƬ5" x=-70 y=750 type=animate image=1211222200/>
	]]
	
	msg = str .. "<text><![CDATA["..msg.."]]></text></form>"
	
	lualib:NPCTalkDetail(player, msg, 700, 600)
	return ""
end

-------------------װ������-----------------------
function mubiao_zhuangbei(player)
	local msg = "                                    #COLORCOLOR_GREENG#��Ŀ��ϵͳ��#COLOREND#\n\n"
	msg = msg .. "#IMAGE<ID:1900100003>#<@mubiao_xunshou *01*[ѱ�޴���]>    #IMAGE<ID:1900100001>##COLORCOLOR_RED#[װ������]#COLOREND#    #IMAGE<ID:1900100003>#<@mubiao_gongcheng *01*[�����Ե�]>    #IMAGE<ID:1900100003>#<@mubiao_chumo *01*[������ħ]>    #IMAGE<ID:1900100003>#<@mubiao_boss *01*[��ɱboss]>\n\n\n"
		
		msg = msg .. "#COLORCOLOR_RED#������װ��1��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#������װ��������6\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND##IMAGE<ID:1990145002>#Ǯ��(10��)��#IMAGE<ID:1990130007>#��Ԫ��*10"
		if lualib:GetInt(player,"mubiao_zhuangbei_1") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#δ���#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_zhuangbei_1") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#װ������1#mubiao_zhuangbei_1 *01*��ȡ����>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#\n\n\n\n"
		end
		
		msg = msg .. "#COLORCOLOR_RED#������װ��2��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#������װ��������9\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND##IMAGE<ID:1990145002>#Ǯ��(50��)��#IMAGE<ID:1990130007>#��Ԫ��*50"
		if lualib:GetInt(player,"mubiao_zhuangbei_2") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#δ���#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_zhuangbei_2") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#װ������2#mubiao_zhuangbei_2 *01*��ȡ����>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#\n\n\n\n"
		end
		
		msg = msg .. "#COLORCOLOR_RED#������װ��3��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#������װ��������12\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND##IMAGE<ID:1990165504>#������#IMAGE<ID:1990165505>#500Ԫ��"
		if lualib:GetInt(player,"mubiao_zhuangbei_3") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#δ���#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_zhuangbei_3") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#װ������3#mubiao_zhuangbei_3 *01*��ȡ����>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#\n\n\n\n"
		end
	lualib:NPCTalkDetail(player, msg, 700, 600)
	return ""
end

-------------------�����Ե�-----------------------
function mubiao_gongcheng(player)
	local msg = "                                    #COLORCOLOR_GREENG#��Ŀ��ϵͳ��#COLOREND#\n\n"
	msg = msg .. "#IMAGE<ID:1900100003>#<@mubiao_xunshou *01*[ѱ�޴���]>    #IMAGE<ID:1900100003>#<@mubiao_zhuangbei *01*[װ������]>    #IMAGE<ID:1900100001>##COLORCOLOR_RED#[�����Ե�]#COLOREND#    #IMAGE<ID:1900100003>#<@mubiao_chumo *01*[������ħ]>    #IMAGE<ID:1900100003>#<@mubiao_boss *01*[��ɱboss]>\n\n\n"

		msg = msg .. "#COLORCOLOR_RED#�������Ե�1��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#�����л�\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND##IMAGE<ID:1990145002>#��Ǯ��(10��)"
		if lualib:GetInt(player,"mubiao_gongcheng_1") == 0 then
			msg = msg .. "  <@mubiao_gongcheng_lingjiang1 *01*��ȡ����>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#\n\n\n\n"
		end
		
		msg = msg .. "#COLORCOLOR_RED#�������Ե�2��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��Ϊ����ռ�����л�ĳ�Ա(�������20��)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����50w��#IMAGE<ID:1990145002>#��Ǯ��(50��)"
		if lualib:GetInt(player,"mubiao_gongcheng_2") == 0 then
			msg = msg .. "  <@mubiao_gongcheng_lingjiang2 *01*��ȡ����>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#\n\n\n\n"
		end
	
	
	lualib:NPCTalkDetail(player, msg, 700, 600)
	return ""
end
	
-------------------��ɱboss-----------------------
function mubiao_boss(player)
	local msg = "                                    #COLORCOLOR_GREENG#��Ŀ��ϵͳ��#COLOREND#\n\n"
	msg = msg .. "#IMAGE<ID:1900100003>#<@mubiao_xunshou *01*[ѱ�޴���]>    #IMAGE<ID:1900100003>#<@mubiao_zhuangbei *01*[װ������]>    #IMAGE<ID:1900100003>#<@mubiao_gongcheng *01*[�����Ե�]>    #IMAGE<ID:1900100003>#<@mubiao_chumo *01*[������ħ]>    #IMAGE<ID:1900100001>##COLORCOLOR_RED#[��ɱboss]#COLOREND#\n\n\n"
	
	
		local shuliang = lualib:GetInt(player,"mubiao_boss_shuliang")
		if shuliang >= 1 then
			shuliang = 1
		end
		msg = msg .. "#COLORCOLOR_RED#����ɱboss1��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ1ֻboss��("..shuliang.."/1)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����5w"
		if lualib:GetInt(player,"mubiao_boss_1") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#δ���#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_boss_1") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#��ɱboss1#mubiao_boss_1#mubiao_boss *01*��ȡ����>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_boss_shuliang")
		if shuliang >= 10 then
			shuliang = 10
		end
		msg = msg .. "#COLORCOLOR_RED#����ɱboss2��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ10ֻboss��("..shuliang.."/10)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����10w��#IMAGE<ID:1990145002>#Ǯ��(10��)"
		if lualib:GetInt(player,"mubiao_boss_2") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#δ���#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_boss_2") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#��ɱboss2#mubiao_boss_2#mubiao_boss *01*��ȡ����>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#\n\n\n\n"
		end
			
		local shuliang = lualib:GetInt(player,"mubiao_boss_shuliang")
		if shuliang >= 50 then
			shuliang = 50
		end
		msg = msg .. "#COLORCOLOR_RED#����ɱboss3��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ50ֻboss��("..shuliang.."/50)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����50w��#IMAGE<ID:1990145002>#Ǯ��(50��)"
		if lualib:GetInt(player,"mubiao_boss_3") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#δ���#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_boss_3") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#��ɱboss3#mubiao_boss_3#mubiao_boss *01*��ȡ����>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_boss_shuliang")
		if shuliang >= 100 then
			shuliang = 100
		end
		msg = msg .. "#COLORCOLOR_RED#����ɱboss4��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ100ֻboss��("..shuliang.."/100)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����100w��#IMAGE<ID:1990165504>#����"
		if lualib:GetInt(player,"mubiao_boss_4") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#δ���#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_boss_4") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#��ɱboss4#mubiao_boss_4#mubiao_boss *01*��ȡ����>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_boss_shuliang")
		if shuliang >= 200 then
			shuliang = 200
		end
		msg = msg .. "#COLORCOLOR_RED#����ɱboss5��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ200ֻboss��("..shuliang.."/200)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����200w��#IMAGE<ID:1990165504>#����*2"
		if lualib:GetInt(player,"mubiao_boss_5") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#δ���#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_boss_5") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#��ɱboss5#mubiao_boss_5#mubiao_boss *01*��ȡ����>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_boss_shuliang")
		if shuliang >= 500 then
			shuliang = 500
		end
		msg = msg .. "#COLORCOLOR_RED#����ɱboss6��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ500ֻboss��("..shuliang.."/500)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����500w��#IMAGE<ID:1990165504>#����*5"
		if lualib:GetInt(player,"mubiao_boss_6") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#δ���#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_boss_6") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#��ɱboss6#mubiao_boss_6#mubiao_boss *01*��ȡ����>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_boss_shuliang")
		if shuliang >= 1000 then
			shuliang = 1000
		end
		msg = msg .. "#COLORCOLOR_RED#����ɱboss7��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ1000ֻboss��("..shuliang.."/1000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����1000w��#IMAGE<ID:1990165504>#����*10"
		if lualib:GetInt(player,"mubiao_boss_7") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#δ���#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_boss_7") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#��ɱboss7#mubiao_boss_7#mubiao_boss *01*��ȡ����>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#\n\n\n\n"
		end
		
	lualib:NPCTalkDetail(player, msg, 700, 600)
	return ""
end

-------------------������ħ-----------------------
function mubiao_chumo(player)
	local msg = "                                    #COLORCOLOR_GREENG#��Ŀ��ϵͳ��#COLOREND#\n\n"
	msg = msg .. "#IMAGE<ID:1900100003>#<@mubiao_xunshou *01*[ѱ�޴���]>    #IMAGE<ID:1900100003>#<@mubiao_zhuangbei *01*[װ������]>    #IMAGE<ID:1900100003>#<@mubiao_gongcheng *01*[�����Ե�]>    #IMAGE<ID:1900100001>##COLORCOLOR_RED#[������ħ]#COLOREND#    #IMAGE<ID:1900100003>#<@mubiao_boss *01*[��ɱboss]>\n\n\n"
	
		local shuliang = lualib:GetInt(player,"mubiao_chumo_shuliang")
		if shuliang >= 1 then
			shuliang = 1
		end
		msg = msg .. "#COLORCOLOR_RED#��������ħ1��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ1ֻ��Ӣ��("..shuliang.."/1)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����1w"
		if lualib:GetInt(player,"mubiao_chumo_1") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#δ���#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_chumo_1") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#������ħ1#mubiao_chumo_1#mubiao_boss *01*��ȡ����>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_chumo_shuliang")
		if shuliang >= 10 then
			shuliang = 10
		end
		msg = msg .. "#COLORCOLOR_RED#��������ħ2��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ10ֻ��Ӣ��("..shuliang.."/10)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����5w"
		if lualib:GetInt(player,"mubiao_chumo_2") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#δ���#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_chumo_2") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#������ħ2#mubiao_chumo_2#mubiao_boss *01*��ȡ����>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_chumo_shuliang")
		if shuliang >= 100 then
			shuliang = 100
		end
		msg = msg .. "#COLORCOLOR_RED#��������ħ3��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ100ֻ��Ӣ��("..shuliang.."/100)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����10w��#IMAGE<ID:1990145002>#Ǯ��(10��)"
		if lualib:GetInt(player,"mubiao_chumo_3") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#δ���#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_chumo_3") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#������ħ3#mubiao_chumo_3#mubiao_boss *01*��ȡ����>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_chumo_shuliang")
		if shuliang >= 500 then
			shuliang = 500
		end
		msg = msg .. "#COLORCOLOR_RED#��������ħ4��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ500ֻ��Ӣ��("..shuliang.."/500)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����50w��#IMAGE<ID:1990145002>#Ǯ��(50��)"
		if lualib:GetInt(player,"mubiao_chumo_4") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#δ���#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_chumo_4") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#������ħ4#mubiao_chumo_4#mubiao_boss *01*��ȡ����>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_chumo_shuliang")
		if shuliang >= 1000 then
			shuliang = 1000
		end
		msg = msg .. "#COLORCOLOR_RED#��������ħ5��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ1000ֻ��Ӣ��("..shuliang.."/1000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����100w��#IMAGE<ID:1990165504>#����"
		if lualib:GetInt(player,"mubiao_chumo_5") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#δ���#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_chumo_5") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#������ħ5#mubiao_chumo_5#mubiao_boss *01*��ȡ����>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#\n\n\n\n"
		end
		
		
		local shuliang = lualib:GetInt(player,"mubiao_chumo_shuliang")
		if shuliang >= 2000 then
			shuliang = 2000
		end
		msg = msg .. "#COLORCOLOR_RED#��������ħ6��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ2000ֻ��Ӣ��("..shuliang.."/2000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����200w��#IMAGE<ID:1990165504>#����*2"
		if lualib:GetInt(player,"mubiao_chumo_6") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#δ���#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_chumo_6") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#������ħ6#mubiao_chumo_6#mubiao_boss *01*��ȡ����>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_chumo_shuliang")
		if shuliang >= 5000 then
			shuliang = 5000
		end
		msg = msg .. "#COLORCOLOR_RED#��������ħ7��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ5000ֻ��Ӣ��("..shuliang.."/5000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����500w��#IMAGE<ID:1990165504>#����*5"
		if lualib:GetInt(player,"mubiao_chumo_7") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#δ���#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_chumo_7") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#������ħ7#mubiao_chumo_7#mubiao_boss *01*��ȡ����>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_chumo_shuliang")
		if shuliang >= 10000 then
			shuliang = 10000
		end
		msg = msg .. "#COLORCOLOR_RED#��������ħ8��#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#Ŀ�꣺#COLOREND#��ɱ10000ֻ��Ӣ��("..shuliang.."/10000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#������#COLOREND#����1000w��#IMAGE<ID:1990165504>#����*10"
		if lualib:GetInt(player,"mubiao_chumo_8") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#δ���#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_chumo_8") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#������ħ8#mubiao_chumo_8#mubiao_boss *01*��ȡ����>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#����ȡ#COLOREND#\n\n\n\n"
		end
	lualib:NPCTalkDetail(player, msg, 700, 600)
	return ""
end

-------------------���뽱��----------------------------
function mubiao_lingjiang(player,mubiao,bianliang,hanshu,jindu)
	if lualib:Player_GetBagFree(player) < mubiao_jiangli[mubiao][1] then
		return "������λ����"..mubiao_jiangli[mubiao][1].."���������Ժ�������\n\n<@guanbi *01*�ر�>\n"
	end
	
	lualib:SetInt(player,bianliang,lualib:GetInt(player,bianliang)+1) --Ŀ��������ȡ״��+1
	if jindu ~= nil then
		lualib:SetInt(player,jindu,lualib:GetInt(player,jindu)+1) --Ŀ���������+1
	end
	
	for k,v in pairs(mubiao_jiangli[mubiao]) do
		if k ~= 1 then
			if v[1] ~= "����" then
				if string.find(v[1],"��Ǯ��") ~= nil then
					lualib:AddItem(player,v[1],v[2],true,"Ŀ��������", player) --����Ʒ
				else
					lualib:AddItem(player,v[1],v[2],false,"Ŀ��������", player) --����Ʒ
				end
				
				lualib:SysMsg_SendWarnMsg(player,"���Ŀ��["..mubiao.."]����õ��ߣ�"..v[1].."*"..v[2])
			else
				lualib:Player_AddExp(player, v[2], "Ŀ��������", player)
				lualib:SysMsg_SendWarnMsg(player,"���Ŀ��["..mubiao.."]�����"..v[1].."��"..v[2])
			end
		end
	end
	
	local s1 = _G[hanshu]
	if type(s1) == "function" then
		s1(player)
	end

	return ""
end

-------------------ѱ�޴���1�ж�----------------------------
function mubiao_xunshou_lingjiang1(player)
	return "��ȡǰ�뽫һֻ40�����ϵ�������ڰ�����һ��λ�á�\n#COLORCOLOR_RED#ע�⣺��ȡ�����ɹ�����ֻ����ᱻϵͳ���յ���#COLOREND#\n\n<@mubiao_xunshou_lingjiang1_1 *01*ͬ����ղ��콱>\n<@mubiao *01*����>"
end

function mubiao_xunshou_lingjiang1_1(player)
	
	local lv_requre = 40
    local lv = lualib:Level(player)
	local ItemTble = {}
	item = lualib:Item_GetBySite(player, 22)
    if lv < lv_requre then
        return "�ȼ����㣬��Ŀ����Ҫ"..lv_requre.."������ȡ\n\n<@guanbi *01*�ر�>"
    end

	if item ~= nil and lualib:Item_GetType(player,item) == 1 and lualib:Item_GetSubType(player,item) == 14 then
		if get_horse_level(player, item) >= 40 then
			if lualib:Player_GetBagFree(player) < mubiao_jiangli["ѱ�޴���1"][1] then
				return "������λ����"..mubiao_jiangli["ѱ�޴���1"][1].."���������Ժ�������\n\n<@guanbi *01*�ر�>\n"
			end
	
			if not lualib:Item_Destroy(player, item,"Ŀ����", player) then --ɾ������
				return "�۳�����ʧ��"
			end

			mubiao_lingjiang(player,"ѱ�޴���1","mubiao_xunshou_1","mubiao_xunshou","mubiao_xunshou")
		else
			return "��һ��λ�õ�����ȼ�û�дﵽ40�������޷���ȡ�ý�����\n\n<@guanbi *01*�ر�>"
		end
	else
		return "��һ��λ�õ���Ʒ����������޷���ȡ�ý�����\n\n<@guanbi *01*�ر�>"
	end

	return ""
end

-------------------ѱ�޴���2�ж�----------------------------
function mubiao_xunshou_lingjiang2(player)
	return "��ȡǰ�뽫һֻ50�����ϵ�������ڰ�����һ��λ�á�\n#COLORCOLOR_RED#ע�⣺��ȡ�����ɹ�����ֻ����ᱻϵͳ���յ���#COLOREND#\n\n<@mubiao_xunshou_lingjiang2_1 *01*ͬ����ղ��콱>\n<@mubiao *01*����>"
end

function mubiao_xunshou_lingjiang2_1(player)
	local lv_requre = 50
    local lv = lualib:Level(player)
	local ItemTble = {}
	item = lualib:Item_GetBySite(player, 22)
    if lv < lv_requre then
        return "�ȼ����㣬��Ŀ����Ҫ"..lv_requre.."������ȡ\n\n<@guanbi *01*�ر�>"
    end
	
	if item ~= nil and lualib:Item_GetType(player,item) == 1 and lualib:Item_GetSubType(player,item) == 14 then
		if get_horse_level(player, item) >= 50 then
			if lualib:Player_GetBagFree(player) < mubiao_jiangli["ѱ�޴���2"][1] then
				return "������λ����"..mubiao_jiangli["ѱ�޴���2"][1].."���������Ժ�������\n\n<@guanbi *01*�ر�>\n"
			end
			
			if not lualib:Item_Destroy(player, item,"Ŀ����", player) then --ɾ������
				return "�۳�����ʧ��"
			end
			mubiao_lingjiang(player,"ѱ�޴���2","mubiao_xunshou_2","mubiao_xunshou","mubiao_xunshou")
		else
			return "��һ��λ�õ�����ȼ�û�дﵽ50�������޷���ȡ�ý�����\n\n<@guanbi *01*�ر�>"
		end
	else
		return "��һ��λ�õ���Ʒ����������޷���ȡ�ý�����\n\n<@guanbi *01*�ر�>"
	end

	return ""
end

-------------------ѱ�޴���3�ж�----------------------------
function mubiao_xunshou_lingjiang3(player)
	return "��ȡǰ�뽫һֻ50�����ϵ���������ڰ�����һ��λ�á�\n#COLORCOLOR_RED#ע�⣺��ȡ�����ɹ�����ֻ����ᱻϵͳ���յ���#COLOREND#\n\n<@mubiao_xunshou_lingjiang3_1 *01*ͬ����ղ��콱>\n<@mubiao *01*����>"
end

function mubiao_xunshou_lingjiang3_1(player)
    local lv_requre = 55
    local lv = lualib:Level(player)
	local ItemTble = {}
	item = lualib:Item_GetBySite(player, 22)
    if lv < lv_requre then
        return "�ȼ����㣬��Ŀ����Ҫ"..lv_requre.."������ȡ\n\n<@guanbi *01*�ر�>"
    end

	if item ~= nil and lualib:Item_GetType(player,item) == 1 and lualib:Item_GetSubType(player,item) == 14 then
		if get_horse_level(player, item) >= 50 and get_horse_type(player, item) == 5 then
			if lualib:Player_GetBagFree(player) < mubiao_jiangli["ѱ�޴���3"][1] then
				return "������λ����"..mubiao_jiangli["ѱ�޴���3"][1].."���������Ժ�������\n\n<@guanbi *01*�ر�>\n"
			end
			
			if not lualib:Item_Destroy(player, item,"Ŀ����", player) then --ɾ������
				return "�۳�����ʧ��"
			end
			mubiao_lingjiang(player,"ѱ�޴���3","mubiao_xunshou_3","mubiao_xunshou","mubiao_xunshou")
		else
			return "��һ��λ�õ�����ȼ�û�дﵽ50��������Ʒ�ʣ����޷���ȡ�ý�����\n\n<@guanbi *01*�ر�>"
		end
	else
		return "��һ��λ�õ���Ʒ����������޷���ȡ�ý�����\n\n<@guanbi *01*�ر�>"
	end

	return ""
end

-------------------ѱ�޴���4�ж�----------------------------
function mubiao_xunshou_lingjiang4(player)
	return "��ȡǰ�뽫һֻ50�����ϵ���������ڰ�����һ��λ�á�\n#COLORCOLOR_RED#ע�⣺��ȡ�����ɹ�����ֻ����ᱻϵͳ���յ���#COLOREND#\n\n<@mubiao_xunshou_lingjiang4_1 *01*ͬ����ղ��콱>\n<@mubiao *01*����>"
end

function mubiao_xunshou_lingjiang4_1(player)
	local lv_requre = 55
    local lv = lualib:Level(player)
	local ItemTble = {}
	item = lualib:Item_GetBySite(player, 22)
    if lv < lv_requre then
        return "�ȼ����㣬��Ŀ����Ҫ"..lv_requre.."������ȡ\n\n<@guanbi *01*�ر�>"
    end
	if item ~= nil and lualib:Item_GetType(player,item) == 1 and lualib:Item_GetSubType(player,item) == 14 then
		if get_horse_level(player, item) >= 50 and get_horse_type(player, item) == 5 then
			if lualib:Player_GetBagFree(player) < mubiao_jiangli["ѱ�޴���4"][1] then
				return "������λ����"..mubiao_jiangli["ѱ�޴���4"][1].."���������Ժ�������\n\n<@guanbi *01*�ر�>\n"
			end
			
			if not lualib:Item_Destroy(player, item,"Ŀ����", player) then --ɾ������
				return "�۳�����ʧ��"
			end
			mubiao_lingjiang(player,"ѱ�޴���4","mubiao_xunshou_4","mubiao_xunshou","mubiao_xunshou")
		else
			return "��һ��λ�õ�����ȼ�û�дﵽ50��������Ʒ�ʣ����޷���ȡ�ý�����\n\n<@guanbi *01*�ر�>"
		end
	else
		return "��һ��λ�õ���Ʒ����������޷���ȡ�ý�����\n\n<@guanbi *01*�ر�>"
	end

	return ""
end

-------------------ѱ�޴���5�ж�----------------------------
function mubiao_xunshou_lingjiang5(player)
	return "��ȡǰ�뽫һֻ50�����ϵ���������ڰ�����һ��λ�á�\n#COLORCOLOR_RED#ע�⣺��ȡ�����ɹ�����ֻ����ᱻϵͳ���յ���#COLOREND#\n\n<@mubiao_xunshou_lingjiang5_1 *01*ͬ����ղ��콱>\n<@mubiao *01*����>"
end

function mubiao_xunshou_lingjiang5_1(player)
	local lv_requre = 55
    local lv = lualib:Level(player)
	local ItemTble = {}
	item = lualib:Item_GetBySite(player, 22)
    if lv < lv_requre then
        return "�ȼ����㣬��Ŀ����Ҫ"..lv_requre.."������ȡ\n\n<@guanbi *01*�ر�>"
    end
	if item ~= nil and lualib:Item_GetType(player,item) == 1 and lualib:Item_GetSubType(player,item) == 14 then
		if get_horse_level(player, item) >= 50 and get_horse_type(player, item) == 5 then
			if not lualib:Item_Destroy(player, item,"Ŀ����", player) then --ɾ������
				return "�۳�����ʧ��"
			end
			mubiao_lingjiang(player,"ѱ�޴���5","mubiao_xunshou_5","mubiao_xunshou","mubiao_xunshou")
		else
			return "��һ��λ�õ�����ȼ�û�дﵽ50��������Ʒ�ʣ����޷���ȡ�ý�����\n\n<@guanbi *01*�ر�>"
		end
	else
		return "��һ��λ�õ���Ʒ����������޷���ȡ�ý�����\n\n<@guanbi *01*�ر�>"
	end

	return ""
end

-------------------�����л��콱�ж�----------------------------
function mubiao_gongcheng_lingjiang1(player)
	if lualib:GetFamilyName(player) == "" then
		return "�㻹û�м����κ��лᣡ\n\n<@guanbi *01*�ر�>"
	end
	
	mubiao_lingjiang(player,"�����Ե�1","mubiao_gongcheng_1","mubiao_gongcheng","mubiao_gongcheng")

	return ""
end

-------------------����Ա�콱�ж�----------------------------
function mubiao_gongcheng_lingjiang2(player)
	if lualib:GetFamilyName(player) == "" then
		return "�㻹û�м����κ��лᣡ\n\n<@guanbi *01*�ر�>"
	end
	
	if lualib:GetFamilyName(player) ~= lualib:GetCastleOwnFamily("����") then
		return "�㲻�����ǳ�Ա��\n\n<@guanbi *01*�ر�>"
	end
	
	if lualib:Level(player) >= 20 then
	else
		return "��ȼ�С��20����������ȡ�ý�����\n\n<@guanbi *01*�ر�>"
	end
	mubiao_lingjiang(player,"�����Ե�2","mubiao_gongcheng_2","mubiao_gongcheng","mubiao_gongcheng")

	return ""
end