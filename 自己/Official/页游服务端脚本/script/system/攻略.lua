local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/Ŀ��ϵͳ")


-----------------------ͼ����ʾ-----------------------------
function gonglue_xianshi(player)	
	ShowTimeCount2(player, 0, 1903800058, "����",0,"") --��ʾĿ��ͼ��
end

-------------------ͼ�걻���-----------------------
function gonglue(player)
	ShowTimeCount2(player, 0, 1903800058, "����",0,"") --��ʾĿ��ͼ��
	local msg = ""

	lualib:NPCTalkDetail(player, xianshi(player), 710, 500)
	return ""
end

function xianshi(player)
	local msg = "                                                 #COLORCOLOR_GREENG#�����ԡ�#COLOREND#\n                            #COLORCOLOR_RED#��ݴ��ͷ��ã�#COLOREND#40������#COLORCOLOR_YELLOW#300#COLOREND#��ң�40������#COLORCOLOR_YELLOW#3000#COLOREND#���\n"
	msg = msg .. "#IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#[����]#COLOREND#  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*[׬Ǯ]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*[׬Ԫ��]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*[��]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@mapchanchu *01*[��ͼ����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuangbei *01*[װ��]>\n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#245#221#1 *01*��������(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#�������#COLOREND#��ȡ#COLORCOLOR_GREENG#��������#COLOREND#��������ʱ�ڶ��ܻ���ȶ��Ҳ��͵ľ���ͽ�ң�\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#212#212#1 *01*��ħ��(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#��ħ�����#COLOREND#����#COLORCOLOR_GREENG#��ħ��#COLOREND#����Ҫ��ӽ��룬ÿ��3�λ��ú������飡\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#��ɽ��#242#292#1 *01*��ҩ(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#��ҩʦ#COLOREND#����#COLORCOLOR_GREENG#��ҩ#COLOREND#������ҩ�ɹ���ɻ��һ�������ҩ�飬ҩ������ڻ���ҩ��ת��ʯ���ٻ�ʯ��\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#195#687#1 *01*Ѻ��(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#���Ǿ����#COLOREND#����#COLORCOLOR_GREENG#Ѻ��#COLOREND#���ɻ�ô����ľ��飡�ڳ���Ʒ��Խ�ߣ�����Խ�ߣ�\n \n"	

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#202#225#1 *01*�ر���֮ľ����(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#�ر����ػ���#COLOREND#����#COLORCOLOR_GREENG#ľ����#COLOREND#��������ﾭ�鳬�ߣ��ɻ�ȡ�������飬���ľ�˵��侭�鵤�ͳ������鵤��\n \n"	
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#������#COLOREND#��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#������#COLOREND#��ȡ#COLORCOLOR_GREENG#������#COLOREND#���ڴ���ľ��飬�ɿ��ٻ�þ��飡\n \n"
	
    msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#228#230#1 *01*��ս��(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#��ս��#COLOREND#����#COLORCOLOR_GREENG#��ս��#COLOREND#����Ҵﵽ40���ɽ��룬����С�ֿɻ�ô������飬����boss�ɻ�����װ����\n \n"
	msg = msg .. "                                                                                        #IMAGE<ID:1900100105>##OFFSET<X:0,Y:-2>#<@xianshi *01*[���ض���]>\n"
	lualib:SetPanelSize(player, 710, 500)
	return msg
end

-- ׬Ǯ
function zhuanqian(player)
	local msg = "                                                 #COLORCOLOR_GREENG#�����ԡ�#COLOREND#\n                            #COLORCOLOR_RED#��ݴ��ͷ��ã�#COLOREND#40������#COLORCOLOR_YELLOW#300#COLOREND#��ң�40������#COLORCOLOR_YELLOW#3000#COLOREND#���\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*[����]>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#[׬Ǯ]#COLOREND#  #OFFSET<X:2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*[׬Ԫ��]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*[��]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@mapchanchu *01*[��ͼ����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuangbei *01*[װ��]>\n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#245#221#1 *01*��������(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#�������#COLOREND#��ȡ#COLORCOLOR_GREENG#��������#COLOREND#��������ʱ�ڶ��ܻ���ȶ��Ҳ��͵ľ���ͽ�ң�\n \n"	
	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#195#687#1 *01*Ѻ��(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#���Ǿ����#COLOREND#����#COLORCOLOR_GREENG#Ѻ��#COLOREND#���ɻ�ô����Ľ�ң��ڳ���Ʒ��Խ�ߣ����Խ�ߣ�\n \n"	

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#��ɽ��#238#318#1 *01*ץ����(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#ѱ��ʦ#COLOREND#��ȡ#COLORCOLOR_GREENG#������������#COLOREND#��ȥ����׽���Լ�ȥ�ر���֮��������׽ϡ���������ѱ��ʦ���ɻ�ȡ������ң�\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#Ŀ��#COLOREND#��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#Ŀ��#COLOREND#��ɿɻ�ȡ����#COLORCOLOR_GREENG#��Һͽ���#COLOREND#��ÿ��Ŀ���ﶼ���к����Ľ�Һͽ�����Խ�����ڵ�Ŀ�꣬ǮԽ�࣡\n \n"	
	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#334#205#1 *01*��ռ����(�������)>��\n"  
	msg = msg .. "      ��ռ��#COLORCOLOR_GREENG#����#COLOREND#��ÿ����ȡ#COLORCOLOR_GREENG#ǧ���ң�#COLOREND#��ռ�����Ǻ�ÿ�ܿ���ȡǧ���ң��������ܹ�����Ʒ���ۣ�\n \n"	

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#��ɽ��#23#95#1 *01*�ڿ�(�������)>��\n"  
	msg = msg .. "      ���Ͽ��#COLORCOLOR_GREENG#ȥ������#COLOREND#�ڿ󣬿ɻ�ø��ֿ�ʯ�������#COLORCOLOR_GREENG#��ý��#COLOREND#��35���Ժ���Դ������깺���䣬ȥ����������ص�����ڿ󣬿ɻ�ü�ֵ���ƵĿ�ʯ�����̵��ɻ�ô�����ң�\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#236#239#1 *01*���Ĵ���(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#����ʹ��#COLOREND#����#COLORCOLOR_GREENG#����#COLOREND#��ֻҪ���һ�̻��������ϣ�����ܻ�����в����ߵĽ�ң�\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#���#COLOREND#��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#���#COLOREND#�ɻ��#COLORCOLOR_GREENG#���#COLOREND#����Ϸ�����й��ﶼ������ң����������͸��ʷֱ��ǣ���ͨ��С�ھ�Ӣ��С��ͷĿ��С��BOSSС������֣�\n \n"
	lualib:SetPanelSize(player, 710, 500)
	return msg
end


-- ׬Ԫ��
function zhuanyuanbao(player)
	local msg = "                                                 #COLORCOLOR_GREENG#�����ԡ�#COLOREND#\n                            #COLORCOLOR_RED#��ݴ��ͷ��ã�#COLOREND#40������#COLORCOLOR_YELLOW#300#COLOREND#��ң�40������#COLORCOLOR_YELLOW#3000#COLOREND#���\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*[����]>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*[׬Ǯ]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#[׬Ԫ��]#COLOREND#  #OFFSET<X:2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*[��]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@mapchanchu *01*[��ͼ����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuangbei *01*[װ��]>\n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#�ɾ�������#COLOREND#��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#��ɳɾͺ�����#COLOREND#�ɻ�ô�����#COLORCOLOR_GREENG#��Ԫ���ͷǰ�Ԫ��#COLOREND#����ɲ��ֳɾͣ����ô����ǰ�Ԫ����\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#232#229#1 *01*��Ĺ�ᱦ(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#��Ĺ����#COLOREND#����#COLORCOLOR_GREENG#��Ĺ#COLOREND#����ȡ���ر��У���ÿ�����ô����ķǰ�Ԫ����\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#228#229#1 *01*�ᱦӢ��(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#�ᱦӢ��#COLOREND#����#COLORCOLOR_GREENG#�ᱦ����#COLOREND#���Ⱥ����ˢ�´�����Ԫ������Ʒ������취��ȡ��\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#Ŀ��#COLOREND#��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#Ŀ��#COLOREND#��ɿɻ�ȡ����#COLORCOLOR_GREENG#�ǰ�Ԫ��#COLOREND#��Խ�������Ŀ�꣬�����ķǰ�Ԫ��Խ�࣡\n \n"
	lualib:SetPanelSize(player, 710, 500)
	return msg
end

-- ��
function dabao(player)
	local msg = "                                                 #COLORCOLOR_GREENG#�����ԡ�#COLOREND#\n                            #COLORCOLOR_RED#��ݴ��ͷ��ã�#COLOREND#40������#COLORCOLOR_YELLOW#300#COLOREND#��ң�40������#COLORCOLOR_YELLOW#3000#COLOREND#���\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*[����]>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*[׬Ǯ]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*[׬Ԫ��]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#[��]#COLOREND#  #OFFSET<X:2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@mapchanchu *01*[��ͼ����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuangbei *01*[װ��]>\n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#202#225#1 *01*�ر���(�������)>��\n"  
	
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#�ر����ػ���#COLOREND#����#COLORCOLOR_GREENG#���������䱦������ħ��#COLOREND#���ɻ�þ�����ᣬ��ӡ�������������ǣ��������ȸ��������ߣ���Щ���߾�������RMB�����̳���Ҳ�򲻵���\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#228#230#1 *01*��ս��(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#��ս��#COLOREND#����#COLORCOLOR_GREENG#��ս��#COLOREND#������ս�������BOSS����ȡ���������ͨ���ÿ�տ������սһ��\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#195#687#1 *01*Ѻ��(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#���Ǿ����#COLOREND#����#COLORCOLOR_GREENG#Ѻ�ڻ��߽���#COLOREND#���ɻ�ô�����װ��ǿ�����ߣ�\n \n"	

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#�������#COLOREND#��\n"  
	msg = msg .. "      ͨ���ռ���������#COLORCOLOR_GREENG#�������#COLOREND#�л�����#COLORCOLOR_GREENG#һЩ����#COLOREND#���ܲ��ܴ�������̺Ϳ�������ÿ����ʵ���������ˣ�\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#��BOSS#COLOREND#��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#BOSS#COLOREND#�ɻ��#COLORCOLOR_GREENG#���ֱ���#COLOREND#���ÿ����ʵ���������ˣ�\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#202#225#1 *01*�߼�ҩ(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#�ر����ػ���#COLOREND#����#COLORCOLOR_GREENG#�ٲ���#COLOREND#�����������������ɻ�ø��ָ߼�ҩƷ��\n \n"
	lualib:SetPanelSize(player, 710, 500)
	return msg
end

-- ��ͼ����
function mapchanchu(player)
	local msg = "                                                 #COLORCOLOR_GREENG#�����ԡ�#COLOREND#\n                            #COLORCOLOR_RED#��ݴ��ͷ��ã�#COLOREND#40������#COLORCOLOR_YELLOW#300#COLOREND#��ң�40������#COLORCOLOR_YELLOW#3000#COLOREND#���\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*[����]>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*[׬Ǯ]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*[׬Ԫ��]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*[��]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#[��ͼ����]#COLOREND#  #OFFSET<X:2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuangbei *01*[װ��]>\n\n"
    msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:0>#<@MapMoveXYA#��ɽ��#479#110#1 *01*����ڣ(�������)>��#OFFSET<X:220,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#��ɽ��#23#95#1 *01*������(�������)>��\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#  ��ս��װ   ��ħ��װ   ������װ#OFFSET<X:150,Y:0>#  ��ս��װ   ��ħ��װ   ������װ\n  ��ʥ֮��   ���ս�ָ   ��������#OFFSET<X:150,Y:0>#  ��ʥ֮��   ���ս�ָ   ��������\n  ���ƽ�ָ   ӫ������   �ƽ�����#OFFSET<X:150,Y:0>#  ���ƽ�ָ   ӫ������   �ƽ�����\n  ��ʿͷ��   ��������   ���껤��#OFFSET<X:150,Y:0>#  ��ʿͷ��   ��������   ���껤��#COLOREND#\n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>#  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  #OFFSET<X:264,Y:0>#  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#\n  #COLORCOLOR_GREENG#�ܳײп� ������  ���������#COLOREND##OFFSET<X:180,Y:0>##COLORCOLOR_GREENG#������   ����#COLOREND#\n \n"
--[[	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#��ɽ��#23#95#1 *01*������(�������)>��\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#  ��ս��װ   ��ħ��װ   ������װ\n  ��ʥ֮��   ���ս�ָ   ��������\n  ���ƽ�ָ   ӫ������   �ƽ�����\n  ��ʿͷ��   ��������   ���껤��#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  \n  #COLORCOLOR_GREENG#������#COLOREND#\n \n"
]]  
    msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>#<@MapMoveXYA#��·��#29#48#1 *01*��·��(�������)>��#OFFSET<X:220,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#34#36#1 *01*��ɽ��Ѩ(�������)>��\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#   ����        ����      ����#OFFSET<X:175,Y:0>#   ����       ����       ����\n   ʮɱ        ��Ԩ      ����#OFFSET<X:175,Y:0>#   ʮɱ       ��Ԩ       ����\n  ��ʿ����   ��귨��   �������#OFFSET<X:150,Y:0>#  ��ʿ����   ��귨��   �������\n  ��ս��װ   �ۻ���װ   ������װ#OFFSET<X:150,Y:0>#  ��ս��װ   �ۻ���װ   ������װ\n  ʥ����װ   ��ڤ��װ   �ɳ���װ#OFFSET<X:150,Y:0>#  ʥ����װ   ��ڤ��װ   �ɳ���װ\n  ��������   ��������   �ƻ���ָ#OFFSET<X:150,Y:0>#  �ƽ�ͷ��   ��ħͷ��   ħ�����\n  ����ָ   ��������   ��ħ����#OFFSET<X:150,Y:0>#  ���۵�׹\n  ��Ԫ��ָ   ��а����   ���ʯ����#COLOREND##OFFSET<X:150,Y:0>#\n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>#  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  #OFFSET<X:265,Y:-17>#  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  \n#OFFSET<X:0,Y:17>#  #COLORCOLOR_GREENG#�������     �Ž�      ���ﾭ�鵤#COLOREND##OFFSET<X:147,Y:-17>##COLORCOLOR_GREENG#ѭ��ħ��           ���������\n#OFFSET<X:355,Y:0>#  ��ɫҩ��(��)       ��ɫҩ��(��)#COLOREND#\n \n"
--[[	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#34#36#1 *01*��ɽ��Ѩ(�������)>��\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#   ����       ����       ����\n   ʮɱ       ��Ԩ       ����\n  ��ʿ����   ��귨��   �������\n  ��ս��װ   �ۻ���װ   ������װ\n  ʥ����װ   ��ڤ��װ   �ɳ���װ\n  �ƽ�ͷ��   ��ħͷ��   ħ�����\n  ���۵�׹#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  \n  #COLORCOLOR_GREENG#ѭ��ħ��           ���������\n  ��ɫҩ��(��)       ��ɫҩ��(��)#COLOREND#\n \n"
]]
    msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>#<@MapMoveXYA#����#209#198#1 *01*�����(�������)>��#OFFSET<X:220,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#515#31#1 *01*а��(�������)>��\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#   ʮɱ       ��Ԩ       ����#OFFSET<X:180,Y:0>#   �ɿ�        ���       �Ͽ�\n  ��ʿ����   ��귨��   �������#OFFSET<X:155,Y:0>#  ���ս��   ���޳���   ��������\n  ʥ����װ   ��ڤ��װ   �ɳ���װ#OFFSET<X:155,Y:0>#  ĩ����װ   Ѫҹ��װ   �����װ\n  ��������   ��������   �ƻ���ָ#OFFSET<X:155,Y:0>#  ����֮��   ħ�Ż���   ����ս��\n  ����ָ   ��������   ��ħ����#OFFSET<X:155,Y:0>#  ����֮׹   ���׻���   ��ڤħ��\n  ��Ԫ��ָ   ��а����   ħ�����#OFFSET<X:155,Y:0>#  �켫����   ��������   ������ָ\n  �ƽ�ͷ��   ��ħͷ��   ���ʯ����#COLOREND#\n \n"
	msg = msg .. "#OFFSET<X:0,Y:-10>#  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  #OFFSET<X:270,Y:0>#  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  \n  #COLORCOLOR_GREENG#�������#COLOREND##OFFSET<X:295,Y:0>#  #COLORCOLOR_GREENG#�޸���     ��ս����   �޸���ˮ#COLOREND#\n \n"
	--msg = msg .. "#OFFSET<X:0,Y:-10>#  #COLORCOLOR_YELLOW#�Թ��߷���#COLOREND#  #OFFSET<X:268,Y:0>#  #COLORCOLOR_YELLOW#�Թ��߷���#COLOREND#  \n  #COLORCOLOR_WHITE#����������������#COLOREND##OFFSET<X:240,Y:0>#  #COLORCOLOR_WHITE#������������#COLOREND#\n \n"
--[[	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#515#31#1 *01*а��(�������)>��\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#   �ɿ�        ���       �Ͽ�\n  ���ս��   ���޳���   ��������\n  ĩ����װ   Ѫҹ��װ   �����װ\n  ����֮��   ħ�Ż���   ����ս��\n  ����֮׹   ���׻���   ��ڤħ��\n  �켫����   ��������   ������ָ#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  \n  #COLORCOLOR_GREENG#�޸���     ��ս����   �޸���ˮ#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_YELLOW#�Թ��߷���#COLOREND#  \n  #COLORCOLOR_WHITE#������������#COLOREND#\n \n"
]]
    msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>#<@MapMoveXYA#����#34#48#1 *01*��ħʯ��(�������)>��#OFFSET<X:210,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#�������#49#45#1 *01*���׳���(�������)>��\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#   ����        �к�       �޳�#OFFSET<X:175,Y:0>#  ʮ������   �߽ٸ���   �����׵�\n  ����ս��   ʥ�鷨��   ̫������#OFFSET<X:158,Y:0>#  ����ս��   ���η���   �춦����\n  ������װ   ������װ   ������װ#OFFSET<X:158,Y:0>#  ��ŭ��װ   ��Ԩ��װ   ������װ\n  ħ�Ż���   ���׻���   ��������#OFFSET<X:158,Y:0>#  ����֮��   ��ͻ���   ����ս��\n  ����ս��   �������   �޻�ͷ��#OFFSET<X:158,Y:0>#  ��ȱ����   ���Ż���   ��������\n#OFFSET<X:362,Y:0>#  ʥ������   ��������   ��Ԫ��ָ#COLOREND#\n \n"
	msg = msg .. "#OFFSET<X:0,Y:-10>#  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  #OFFSET<X:272,Y:0>#  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  \n  #COLORCOLOR_GREENG#������    �߼�������   ��ң��#OFFSET<X:175,Y:0>#�������   ������   �����鶾\n#OFFSET<X:360,Y:0>#  �غ���Ԫ   ��λʯ#COLOREND#\n \n"
--[[	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#�������#49#45#1 *01*���׳���(�������)>��\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#  ʮ������   �߽ٸ���   �����׵�\n  ����ս��   ���η���   �춦����\n  ��ŭ��װ   ��Ԩ��װ   ������װ\n  ����֮��   ��ͻ���   ����ս��\n  ��ȱ����   ���Ż���   ��������\n  ʥ������   ��������   ��Ԫ��ָ#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  \n  #COLORCOLOR_GREENG#�������   ������   �����鶾  �غ���Ԫ      ��λʯ#COLOREND#\n \n"
]]
    msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>#<@MapMove_zhenmo#��ħ��#35#31#1 *01*��ħ����(�������)>��#OFFSET<X:210,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>##COLORCOLOR_YELLOW#���ײ���(ͨ��ͨ��֤����)��#COLOREND#\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#      ��Ӱս��      ��аͷ��  #OFFSET<X:172,Y:0>#  硤ŭ��(δ��ʶ),  ���ա�����(δ��ʶ)\n      ��Ԫ����      ��Ӱ����  #OFFSET<X:172,Y:0>#  ���졤����(δ��ʶ),  ��ө��ĺӰ(δ��ʶ)\n    ��ʶ����(��)  ��ʶ����(��)#OFFSET<X:170,Y:0>#  ��ө��ĺ¶(δ��ʶ),  ����������(δ��ʶ)\n    ��ʶ����(��)  ��ʶ����(��)#OFFSET<X:170,Y:0>#  ��������ɴ(δ��ʶ),  �޺ۡ�����(δ��ʶ)\n    ��ʶ����(Ь)  ��ʶ����(ñ)#OFFSET<X:170,Y:0>#  �޺ۡ�����(δ��ʶ),  ս����װ(δ��ʶ)\n    ��ʶ����(��)#OFFSET<X:260,Y:0>#  �����װ(δ��ʶ),    ��ң��װ(δ��ʶ)#COLOREND#\n \n"
	msg = msg .. "#OFFSET<X:0,Y:-10>#  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  #OFFSET<X:272,Y:0>#  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  \n  #COLORCOLOR_GREENG#��ʶ֮ʯ, ף����ˮ,  �ٻ�#OFFSET<X:185,Y:0># �������, ���Ѵ�����, �����ټ���\n  ��ӡ������, ���ײ���ͨ��֤#COLOREND#\n \n"
    
    msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#236#239#1 *01*��ҫ������(�������)>��\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#  ����        ŭ��        ��ʸ\n  Ѫ����      ������     ������\n  ս�񱦼�    ������   ������#COLOREND#\n \n"
	msg = msg .. "                                                                                        #IMAGE<ID:1900100105>##OFFSET<X:0,Y:-2>#<@mapchanchu *01*[���ض���]>\n"
	lualib:SetPanelSize(player, 710, 500)
	return msg
end

--����
function itemdesc(player)
	local msg = "         "
	local msg = "                                                 #COLORCOLOR_GREENG#�����ԡ�#COLOREND#\n                            #COLORCOLOR_RED#��ݴ��ͷ��ã�#COLOREND#40������#COLORCOLOR_YELLOW#300#COLOREND#��ң�40������#COLORCOLOR_YELLOW#3000#COLOREND#���\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*[����]>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*[׬Ǯ]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*[׬Ԫ��]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*[��]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@mapchanchu *01*[��ͼ����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#[����]#COLOREND#  #OFFSET<X:2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuangbei *01*[װ��]>\n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#�����飺#COLOREND#\n"  
	msg = msg .. "  ���Դ洢��������汦�飬���ڰ����д��ʱ�Ὣ�����þ�������������뱦�飬�洢�����ޣ���ȡ������Ҫ���ļ��������顣\n \n"
		
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#��������飺#COLOREND#\n"  
	msg = msg .. "  �洢���ﾭ����������ӣ��ɴ洢��ֻ�þ���������������ޣ��һ�ʹ����Ҫһ���Ľ�ң�ʹ�ú�������װ�������ϵ����ﾭ��(�洢�������������ͬ��������������������ڴ��뾭��ʱֻ��ͬʱ����һ����)\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#ѭ��ħ�䣺#COLOREND#\n"  
	msg = msg .. "  ��<@MapMoveXYA#����#245#221#1 *01*�������(�������)>��ˢ�����������Լ���<@MapMoveXYA#����#195#687#1 *01*���Ǿ����(�������)>��ˢ���ڳ��ȼ�ʱ�ı���ĵ���!\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#���������#COLOREND#\n"  
	msg = msg .. "  �һ�ʹ�ã��ɲ������Ｂ����2���������������޷�ʹ�ã�\n \n"
		
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#���ﾭ�鵤��#COLOREND#\n"  
	msg = msg .. "  �һ�ʹ��Ϊ��ǰװ�����������Ӿ���ֵ��\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#�޸��ͣ�#COLOREND#\n"  
	msg = msg .. "  ʹ�ú�����޸������������;ã������и��ʽ�������������;�1�㡣\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#ս���ͣ�#COLOREND#\n"  
	msg = msg .. "  ʹ�ú�����޸������������;ã����Ҳ�����ʧ�����;á�\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#�޸���ˮ��#COLOREND#\n"  
	msg = msg .. "  �޸�ȫ��װ����\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#���ĵ���#COLOREND#\n"  
	msg = msg .. "  ���ľ������ɼ����Լ���������ʹ�ú����90��PKֵ��\n \n"
		
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#ϴ�赤��#COLOREND#\n"  
	msg = msg .. "  ʹ�ÿ���ʹ������·���50�����ϻ�õ�Ǳ�ܵ㡣\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#��������#COLOREND#\n"  
	msg = msg .. "  ���ڸ߼�ҩƷ������\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#��ң�Σ�#COLOREND#\n"  
	msg = msg .. "  �һ�ʹ�ã��ɴ��͵�����ָ����ͼ��ӵ�иõ���ʱ�������׷������еĳ����ӣ����Կ��ٵ�������ص㣨�����ͼ���⣩��ʹ��ָ����������ʧ��\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#��λʯ��#COLOREND#\n"  
	msg = msg .. "  ʹ�ú���Լ�¼�µ�ǰ���꣬�´�ʹ�ûص���¼������㣨�ض���ͼ���ɶ�λ��\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#ʱ֮ɳ����#COLOREND#\n"  
	msg = msg .. "  ��<@MapMoveXYA#����#202#225#1 *01*����-�ر����ػ�(�������)>���һ�30���ӵ�̽��ʱ�䣬�ر����ڲ��������������ޣ�\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#���ѣ�#COLOREND#\n"  
	msg = msg .. "  ����<@MapMoveXYA#����#236#217#1 *01*��ħ��(�������)>��Ҫ�ĵ��ߣ������ħ���ڵĹ�����Ի�ø߶��ͽ�ҡ�\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#Ӣ������#COLOREND#\n"  
	msg = msg .. "  ����<@MapMoveXYA#����#228#241#1 *01*���ǶᱦӢ��(�������)>���Ҫ����Ʊ���ӳ�һ��ʹ�ÿɽ������Ķ��Ѵ����볡��Ҳ�ɵ����볡��\n \n"
		
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#�����������#COLOREND#\n"  
	msg = msg .. "  ��ʿ�������ʹ�ô������ʿ���ܵı���Ʒ��\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#��ɫҩ�ۣ�#COLOREND#\n"  
	msg = msg .. "  ��ʿʹ�ø��඾ҩ����ʹĿ����һ��ʱ���ڳ�����Ѫ��\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#��ɫҩ�ۣ�#COLOREND#\n"  
	msg = msg .. "  ��ʿʹ�ø��඾ҩ����ʹĿ����һ��ʱ���ڽ���˫����\n \n"
			
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#���������#COLOREND#\n"  
	msg = msg .. "  ��ʿ�������ʹ�ô������ʿ���ܵı���Ʒ��\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#�����񶾣�#COLOREND#\n"  
	msg = msg .. "  ��ʿʹ�ø��඾ҩ����ʹĿ����һ��ʱ���ڳ�����Ѫ��\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#�����鶾��#COLOREND#\n"  
	msg = msg .. "  ��ʿʹ�ø��඾ҩ����ʹĿ����һ��ʱ���ڽ���˫����\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#�Žǣ�#COLOREND#\n"  
	msg = msg .. "  ��<@MapMoveXYA#��ɽ��#256#208#1 *01*��ɽ��-�л����Ա(�������)><256.208>�����������Ҫ�ĵ��ߡ�\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#��ս���ƣ�#COLOREND#\n"  
	msg = msg .. "  ӵ��<@MapMoveXYA#��ɽ��#259#208#1 *01*��ɽ��-����ս������(�������)><259.208>�����빥��ս��Ҫ�ĵ��ߡ�\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#�غ���Ԫ��#COLOREND#\n"  
	msg = msg .. "  ӵ�к�֮��Ϣ���ҿ�[������]���ܵĹؼ����ߣ���<@MapMoveXYA#�������#38#67#1 *01*ǧ����(�������)>�н����Ӽ�������ã���˵ǧ�����ں����������\n \n"
		
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#ת��ʯ��#COLOREND#\n"  
	msg = msg .. "  ת��������ߣ��ﵽָ���ȼ������ת����ת����������Ի�õ������Ե�������\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#���������#COLOREND#\n"  
	msg = msg .. "  ������̣���Կ��֮�����Դ�#COLORCOLOR_GREENG#�������#COLOREND#��ȡ���еı��� ӵ�����������̣�\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#������̣�#COLOREND#\n"  
	msg = msg .. "  ӵ�����������̣���Ҫ#COLORCOLOR_GREENG#�������#COLOREND#���ܿ�����\n \n"
		
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#�ܳײп飺#COLOREND#\n"  
	msg = msg .. "  ���������ʹ��10��#COLORCOLOR_GREENG#�ܳײп�#COLOREND#�ɺϳ�1��#COLORCOLOR_GREENG#���³��ܳ�#COLOREND#,�һ�ʹ�úϳɣ����³��ܳ׿��Դ򿪳�����������ͼ�Ĵ���\n \n"
	msg = msg .. "                                                                                        #IMAGE<ID:1900100105>##OFFSET<X:0,Y:-2>#<@itemdesc *01*[���ض���]>\n"
	lualib:SetPanelSize(player, 710, 500)
	return msg
end

-- ����
function jinjie(player)
	local msg = "                                                 #COLORCOLOR_GREENG#�����ԡ�#COLOREND#\n                            #COLORCOLOR_RED#��ݴ��ͷ��ã�#COLOREND#40������#COLORCOLOR_YELLOW#300#COLOREND#��ң�40������#COLORCOLOR_YELLOW#3000#COLOREND#���\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*[����]>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*[׬Ǯ]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*[׬Ԫ��]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*[��]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@mapchanchu *01*[��ͼ����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#[����]#COLOREND#  #OFFSET<X:2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuangbei *01*[װ��]>\n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#244#217#1 *01*װ����ʦ(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#װ����ʦ#COLOREND#����#COLORCOLOR_GREENG#��������ӡ#COLOREND#���ɴ������װ�������ԣ�\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#��ɽ��#223#300#1 *01*װ���ϳɴ�ʦ(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#װ���ϳɴ�ʦ#COLOREND#����#COLORCOLOR_GREENG#װ���ϳ�#COLOREND#���ɽ��������·��ϳɸ���Ʒ�������Ի�õ����������\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#��ɽ��#221#303#1 *01*���ߺϳ�(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#���ߺϳ�#COLOREND#����#COLORCOLOR_GREENG#���ߺϳ�#COLOREND#���ɺϳɰ��������䡢��������ߣ�\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#240#218#1 *01*��ħ��ʦ(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#��ħ��ʦ#COLOREND#����#COLORCOLOR_GREENG#��ħ#COLOREND#���ɴ����ǿװ���Ķ������ԣ�\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#236#239#1 *01*��ҫװ���һ���(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#��ҫװ���һ���#COLOREND#����#COLORCOLOR_GREENG#װ������#COLOREND#���ɻ�ý�ҡ����顢��ҫ�Ƚ���\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#202#225#1 *01*�ر���֮�ؾ�¥(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#�ر����ػ���#COLOREND#����#COLORCOLOR_GREENG#�ؾ�¥#COLOREND#���ɻ�ȡ���ռ����ܲ�ҳ������ҳ�ϳ�[�ռ�����]ѧϰ�󣬶��㽫��һ���ʵķ�Ծ��\n \n"
	lualib:SetPanelSize(player, 710, 500)
	return msg
end

-- ����
function baobao(player)
	local msg = "                                                 #COLORCOLOR_GREENG#�����ԡ�#COLOREND#\n                            #COLORCOLOR_RED#��ݴ��ͷ��ã�#COLOREND#40������#COLORCOLOR_YELLOW#300#COLOREND#��ң�40������#COLORCOLOR_YELLOW#3000#COLOREND#���\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*[����]>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*[׬Ǯ]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*[׬Ԫ��]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*[��]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@mapchanchu *01*[��ͼ����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#[����]#COLOREND#  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuangbei *01*[װ��]>\n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	
	msg = msg .. "����Ϊ��Ӧ��ͼ�ڷ�ʦ�����ջ�Ϊ����Ĺ���\n"  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#��ɽ��#238#304#1 *01*��ɽ��(�������)>��\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310058>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990310001>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                �������ƣ���                                �������ƣ�¹\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                �ջ�ȼ���6                                 #OFFSET<X:1,Y:0>#�ջ�ȼ���13\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310004>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990310035>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                �������ƣ���֩��                            #OFFSET<X:-2,Y:0>#�������ƣ���֩��\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                �ջ�ȼ���17                                #OFFSET<X:2,Y:0>#�ջ�ȼ���17\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310005>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990310037>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                �������ƣ����                              #OFFSET<X:-1,Y:0>#�������ƣ��ú�\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                �ջ�ȼ���17                                 #OFFSET<X:-4,Y:0>#�ջ�ȼ���17\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#��·��#101#257#1 *01*��·��(�������)>��\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310037>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990310006>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                �������ƣ�Գ��                              #OFFSET<X:-1,Y:0>#�������ƣ������\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                �ջ�ȼ���16                                #OFFSET<X:2,Y:0>#�ջ�ȼ���23\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310038>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990340014>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                �������ƣ��ױ�Գ��                          #OFFSET<X:-3,Y:0>#�������ƣ�ħԳ\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                �ջ�ȼ���23                                 #OFFSET<X:-5,Y:0>#�ջ�ȼ���30\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#��·��#145#265#1 *01*��·��(�������)>��\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310042>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990310043>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                �������ƣ�����                              #OFFSET<X:-1,Y:0>#�������ƣ�����\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                �ջ�ȼ���18                                 #OFFSET<X:-4,Y:0>#�ջ�ȼ���18\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310009>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990310044>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                �������ƣ���ˮ��                           #OFFSET<X:4,Y:0>#�������ƣ�����\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                �ջ�ȼ���19                                #OFFSET<X:2,Y:0>#�ջ�ȼ���19\n" 
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990340012>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                �������ƣ�ħ�� \n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                �ջ�ȼ���30 \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#��·��1#292#494#1 *01*��·��(�������)>��\n"	  
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310007>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                �������ƣ��ɶ� \n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                �ջ�ȼ���21 \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#234#228#1 *01*����(�������)>��\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310041>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990310008>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                �������ƣ�Ұ��                              �������ƣ�����\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                �ջ�ȼ���17                                #OFFSET<X:2,Y:0>#�ջ�ȼ���17\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310036>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990340013>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                �������ƣ�����֩��                          #OFFSET<X:-2,Y:0>#�������ƣ�ħ��\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                �ջ�ȼ���17                                #OFFSET<X:2,Y:0>#�ջ�ȼ���30\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#��ɽ��Ѩ1#154#218#1 *01*��ɽ��Ѩ(�������)>��\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310055>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990310019>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                �������ƣ���â                              �������ƣ���ө\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                �ջ�ȼ���27                                #OFFSET<X:1,Y:0>#�ջ�ȼ���27\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310054>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990310021>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                �������ƣ�ħө                              �������ƣ�����๤\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                �ջ�ȼ���27                                #OFFSET<X:1,Y:0>#�ջ�ȼ���27\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310022>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                �������ƣ�����๤ \n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                �ջ�ȼ���29 \n"	  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#�����1#91#97#1 *01*�����(�������)>��\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310016>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990310061>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                �������ƣ��޶�                              �������ƣ�����\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                �ջ�ȼ���33                                #OFFSET<X:2,Y:0>#�ջ�ȼ���33\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310062>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                �������ƣ����� \n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                �ջ�ȼ���33 \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#а��1#88#195#1 *01*���а��(�������)>��\n"	  
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310046>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                �������ƣ�а�� \n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                �ջ�ȼ���33 \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#109#48#1 *01*����(�������)>��\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990340018>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990340019>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                �������ƣ���ս��ħ                          #OFFSET<X:-2,Y:0>#�������ƣ���������\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                �ջ�ȼ���10                                �ջ�ȼ���40\n \n"
	msg = msg .. "                                                                                        #IMAGE<ID:1900100105>##OFFSET<X:0,Y:-2>#<@baobao *01*[���ض���]>\n"
	lualib:SetPanelSize(player, 710, 500)
	return msg
end

zhuangbei_table = {
	---սʿ
	{
		[30] = {
			{"����","�ƽ�ͷ��","��������","��������","��ս��ָ"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"Ԫ������(��)#Ԫ������(Ů)",	--�·�
				"�ƽ�ͷ��",	--ͷ��
				"��������",	--����
				"��������",	--������
				"��������",	--������
				"�ƻ���ָ",	--���ָ
				"�ƻ���ָ",	--�ҽ�ָ
				"��ϼѥ",	--ѥ��
			}
		},
		[31] = {
			{"��սͷ��"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"Ԫ������(��)#Ԫ������(Ů)",	--�·�
				"�ƽ�ͷ��",	--ͷ��
				"��������",	--����
				"��������",	--������
				"��������",	--������
				"�ƻ���ָ",	--���ָ
				"�ƻ���ָ",	--�ҽ�ָ
				"��ϼѥ",	--ѥ��
			}
		},	
		[32] = {
			{}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"Ԫ������(��)#Ԫ������(Ů)",	--�·�
				"�ƽ�ͷ��",	--ͷ��
				"��������",	--����
				"��������",	--������
				"��������",	--������
				"�ƻ���ָ",	--���ָ
				"�ƻ���ָ",	--�ҽ�ָ
				"��ϼѥ",	--ѥ��
			}
		},	
		[33] = {
			{}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"Ԫ������(��)#Ԫ������(Ů)",	--�·�
				"�ƽ�ͷ��",	--ͷ��
				"��������",	--����
				"��������",	--������
				"��������",	--������
				"�ƻ���ָ",	--���ָ
				"�ƻ���ָ",	--�ҽ�ָ
				"��ϼѥ",	--ѥ��
			}
		},	
		[34] = {
			{"��սѥ��"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"Ԫ������(��)#Ԫ������(Ů)",	--�·�
				"�ƽ�ͷ��",	--ͷ��
				"��������",	--����
				"��������",	--������
				"��������",	--������
				"�ƻ���ָ",	--���ָ
				"�ƻ���ָ",	--�ҽ�ָ
				"��սѥ��",	--ѥ��
			}
		},		
		[35] = {
			{"��ʿ����(��)","��ʿ����(Ů)","��ս��ָ"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"��ʿ����(��)#��ʿ����(Ů)",	--�·�
				"�ƽ�ͷ��",	--ͷ��
				"��������",	--����
				"��������",	--������
				"��������",	--������
				"�ƻ���ָ",	--���ָ
				"��ս��ָ",	--�ҽ�ָ
				"��սѥ��",	--ѥ��
			}
		},		
		[36] = {
			{"��ս����"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"��ʿ����(��)#��ʿ����(Ů)",	--�·�
				"�ƽ�ͷ��",	--ͷ��
				"��������",	--����
				"��ս����",	--������
				"��ս����",	--������
				"�ƻ���ָ",	--���ָ
				"��ս��ָ",	--�ҽ�ָ
				"��սѥ��",	--ѥ��
			}
		},	
		[37] = {
			{}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"��ʿ����(��)#��ʿ����(Ů)",	--�·�
				"�ƽ�ͷ��",	--ͷ��
				"��������",	--����
				"��ս����",	--������
				"��ս����",	--������
				"�ƻ���ָ",	--���ָ
				"��ս��ָ",	--�ҽ�ָ
				"��սѥ��",	--ѥ��
			}
		},	
		[38] = {
			{"ʮɱ","����ս��","ħ�Ż���"}, --��ǰ������Դ�����װ��
			{
				"ʮɱ",	--����
				"��ʿ����(��)#��ʿ����(Ů)",	--�·�
				"����ս��",	--ͷ��
				"��������",	--����
				"ħ�Ż���",	--������
				"ħ�Ż���",	--������
				"�ƻ���ָ",	--���ָ
				"��ս��ָ",	--�ҽ�ָ
				"��սѥ��",	--ѥ��
			}
		},	
		[39] = {
			{"ʥ��սѥ","����ս��"}, --��ǰ������Դ�����װ��
			{
				"ʮɱ",	--����
				"��ʿ����(��)#��ʿ����(Ů)",	--�·�
				"����ս��",	--ͷ��
				"��������",	--����
				"ħ�Ż���",	--������
				"��ս����",	--������
				"����ս��",	--���ָ
				"��ս��ָ",	--�ҽ�ָ
				"ʥ��սѥ",	--ѥ��
			}
		},	
		[40] = {
			{"ʥ�令��","���ս��(��)","���ս��(Ů)","����֮��","ʥ���ָ"}, --��ǰ������Դ�����װ��
			{
				"ʮɱ",	--����
				"���ս��(��)#���ս��(Ů)",	--�·�
				"����ս��",	--ͷ��
				"����֮��",	--����
				"ħ�Ż���",	--������
				"ʥ�令��",	--������
				"����ս��",	--���ָ
				"ʥ���ָ",	--�ҽ�ָ
				"ʥ��սѥ",	--ѥ��
			}
		},	
		[41] = {
			{"ʥ��ͷ��"}, --��ǰ������Դ�����װ��
			{
				"ʮɱ",	--����
				"���ս��(��)#���ս��(Ů)",	--�·�
				"����ս��",	--ͷ��
				"����֮��",	--����
				"ħ�Ż���",	--������
				"ʥ�令��",	--������
				"����ս��",	--���ָ
				"ʥ���ָ",	--�ҽ�ָ
				"ʥ��սѥ",	--ѥ��
			}
		},	
		[42] = {
			{}, --��ǰ������Դ�����װ��
			{
				"ʮɱ",	--����
				"���ս��(��)#���ս��(Ů)",	--�·�
				"����ս��",	--ͷ��
				"����֮��",	--����
				"ħ�Ż���",	--������
				"ʥ�令��",	--������
				"����ս��",	--���ָ
				"ʥ���ָ",	--�ҽ�ָ
				"ʥ��սѥ",	--ѥ��
			}
		},	
		[43] = {
			{"ĩ��սѥ"}, --��ǰ������Դ�����װ��
			{
				"ʮɱ",	--����
				"���ս��(��)#���ս��(Ů)",	--�·�
				"����ս��",	--ͷ��
				"����֮��",	--����
				"ħ�Ż���",	--������
				"ʥ�令��",	--������
				"����ս��",	--���ָ
				"ʥ���ָ",	--�ҽ�ָ
				"ʥ��սѥ",	--ѥ��
			}
		},	
		[44] = {
			{"ĩ��ͷ��","����ս��"}, --��ǰ������Դ�����װ��
			{
				"ʮɱ",	--����
				"���ս��(��)#���ս��(Ů)",	--�·�
				"ĩ��ͷ��",	--ͷ��
				"����֮��",	--����
				"ħ�Ż���",	--������
				"ʥ�令��",	--������
				"����ս��",	--���ָ
				"ʥ���ָ",	--�ҽ�ָ
				"ĩ��սѥ",	--ѥ��
			}
		},	
		[45] = {
			{"����ս��(��)","����ս��(Ů)","ĩ������"}, --��ǰ������Դ�����װ��
			{
				"ʮɱ",	--����
				"����ս��(��)#����ս��(Ů)",	--�·�
				"ĩ��ͷ��",	--ͷ��
				"ĩ������",	--����
				"ħ�Ż���",	--������
				"ʥ�令��",	--������
				"����ս��",	--���ָ
				"ʥ���ָ",	--�ҽ�ָ
				"ĩ��սѥ",	--ѥ��
			}
		},	
		[46] = {
			{"��ͻ���","����֮��","ĩ�ս�ָ"}, --��ǰ������Դ�����װ��
			{
				"ʮɱ",	--����
				"����ս��(��)#����ս��(Ů)",	--�·�
				"ĩ��ͷ��",	--ͷ��
				"ĩ������",	--����
				"��ͻ���",	--������
				"ʥ�令��",	--������
				"����ս��",	--���ָ
				"ʥ���ָ",	--�ҽ�ָ
				"ĩ��սѥ",	--ѥ��
			}
		},	
		[47] = {
			{"ĩ�ջ���"}, --��ǰ������Դ�����װ��
			{
				"ʮɱ",	--����
				"����ս��(��)#����ս��(Ů)",	--�·�
				"ĩ��ͷ��",	--ͷ��
				"ĩ������",	--����
				"ĩ�ջ���",	--������
				"ʥ�令��",	--������
				"����ս��",	--���ָ
				"ʥ���ָ",	--�ҽ�ָ
				"ĩ��սѥ",	--ѥ��
			}
		},			
		[48] = {
			{"����սѥ"}, --��ǰ������Դ�����װ��
			{
				"ʮɱ",	--����
				"����ս��(��)#����ս��(Ů)",	--�·�
				"ĩ��ͷ��",	--ͷ��
				"ĩ������",	--����
				"ĩ�ջ���",	--������
				"ʥ�令��",	--������
				"����ս��",	--���ָ
				"ʥ���ָ",	--�ҽ�ָ
				"����սѥ",	--ѥ��
			}
		},		
		[49] = {
			{"����ͷ��"}, --��ǰ������Դ�����װ��
			{
				"ʮɱ",	--����
				"����ս��(��)#����ս��(Ů)",	--�·�
				"����ͷ��",	--ͷ��
				"ĩ������",	--����
				"ĩ�ջ���",	--������
				"ʥ�令��",	--������
				"����ս��",	--���ָ
				"ʥ���ָ",	--�ҽ�ָ
				"����սѥ",	--ѥ��
			}
		},	
		[50] = {
			{"����","����ս��(��)","����ս��(Ů)","��������"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"����ս��(��)#����ս��(Ů)",	--�·�
				"����ͷ��",	--ͷ��
				"ĩ������",	--����
				"ĩ�ջ���",	--������
				"ʥ�令��",	--������
				"ĩ�ս�ָ",	--���ָ
				"ʥ���ָ",	--�ҽ�ָ
				"����սѥ",	--ѥ��
			}
		},	
		[51] = {
			{"���׻���(��)","���׻���(ʥ)"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"����ս��(��)#����ս��(Ů)",	--�·�
				"����ͷ��",	--ͷ��
				"ĩ������",	--����
				"���׻���(��)",	--������
				"���׻���(ʥ)",	--������
				"ĩ�ս�ָ",	--���ָ
				"����ս��",	--�ҽ�ָ
				"����սѥ",	--ѥ��
			}
		},	
		[52] = {
			{"���׽�ָ(��)","���׽�ָ(ʥ)"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"����ս��(��)#����ս��(Ů)",	--�·�
				"����ͷ��",	--ͷ��
				"��������",	--����
				"���׻���(��)",	--������
				"���׻���(ʥ)",	--������
				"���׽�ָ(��)",	--���ָ
				"���׽�ָ(ʥ)",	--�ҽ�ָ
				"����սѥ",	--ѥ��
			}
		},
		[53] = {
			{"��ŭսѥ"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"����ս��(��)#����ս��(Ů)",	--�·�
				"����ͷ��",	--ͷ��
				"��������",	--����
				"���׻���(��)",	--������
				"���׻���(ʥ)",	--������
				"���׽�ָ(��)",	--���ָ
				"���׽�ָ(ʥ)",	--�ҽ�ָ
				"����սѥ",	--ѥ��
			}
		},	
		[54] = {
			{"��ŭͷ��"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"����ս��(��)#����ս��(Ů)",	--�·�
				"����ͷ��",	--ͷ��
				"��������",	--����
				"���׻���(��)",	--������
				"���׻���(ʥ)",	--������
				"���׽�ָ(��)",	--���ָ
				"���׽�ָ(ʥ)",	--�ҽ�ָ
				"����սѥ",	--ѥ��
			}
		},	
		[55] = {
			{"ʮ������","�޺�����","�޺�����","��ŭ����"}, --��ǰ������Դ�����װ��
			{
				"ʮ������",	--����
				"�޺�����#�޺�����",	--�·�
				"��ŭͷ��",	--ͷ��
				"��ŭ����",	--����
				"���׻���(��)",	--������
				"���׻���(ʥ)",	--������
				"���׽�ָ(��)",	--���ָ
				"���׽�ָ(ʥ)",	--�ҽ�ָ
				"��ŭսѥ",	--ѥ��
			}
		},	
		[56] = {
			{"��ŭ����(��)","��ŭ����(ʥ)"}, --��ǰ������Դ�����װ��
			{
				"ʮ������",	--����
				"�޺�����#�޺�����",	--�·�
				"��ŭͷ��",	--ͷ��
				"��ŭ����",	--����
				"��ŭ����(��)",	--������
				"��ŭ����(ʥ)",	--������
				"���׽�ָ(��)",	--���ָ
				"���׽�ָ(ʥ)",	--�ҽ�ָ
				"��ŭսѥ",	--ѥ��
			}
		},		
		[57] = {
			{"��ŭ��ָ(��)","��ŭ��ָ(ʥ)"}, --��ǰ������Դ�����װ��
			{
				"ʮ������",	--����
				"�޺�����#�޺�����",	--�·�
				"��ŭͷ��",	--ͷ��
				"��ŭ����",	--����
				"��ŭ����(��)",	--������
				"��ŭ����(ʥ)",	--������
				"��ŭ��ָ(��)",	--���ָ
				"��ŭ��ָ(ʥ)",	--�ҽ�ָ
				"��ŭսѥ",	--ѥ��
			}
		},	
		[58] = {
			{"����սѥ"}, --��ǰ������Դ�����װ��
			{
				"ʮ������",	--����
				"�޺�����#�޺�����",	--�·�
				"��ŭͷ��",	--ͷ��
				"��ŭ����",	--����
				"��ŭ����(��)",	--������
				"��ŭ����(ʥ)",	--������
				"��ŭ��ָ(��)",	--���ָ
				"��ŭ��ָ(ʥ)",	--�ҽ�ָ
				"��ŭսѥ",	--ѥ��
			}
		},	
		[59] = {
			{"ս��ͷ��"}, --��ǰ������Դ�����װ��
			{
				"ʮ������",	--����
				"�޺�����#�޺�����",	--�·�
				"��ŭͷ��",	--ͷ��
				"��ŭ����",	--����
				"��ŭ����(��)",	--������
				"��ŭ����(ʥ)",	--������
				"��ŭ��ָ(��)",	--���ָ
				"��ŭ��ָ(ʥ)",	--�ҽ�ָ
				"��ŭսѥ",	--ѥ��
			}
		},	
		[60] = {
			{"�ŭ��","ս������"}, --��ǰ������Դ�����װ��
			{
				"�ŭ��",	--����
				"�޺�����#�޺�����",	--�·�
				"��ŭͷ��",	--ͷ��
				"��ŭ����",	--����
				"��ŭ����(��)",	--������
				"��ŭ����(ʥ)",	--������
				"��ŭ��ָ(��)",	--���ָ
				"��ŭ��ָ(ʥ)",	--�ҽ�ָ
				"��ŭսѥ",	--ѥ��
			}
		},		
		[61] = {
			{"ս������"}, --��ǰ������Դ�����װ��
			{
				"�ŭ��",	--����
				"�޺�����#�޺�����",	--�·�
				"��ŭͷ��",	--ͷ��
				"��ŭ����",	--����
				"��ŭ����(��)",	--������
				"��ŭ����(ʥ)",	--������
				"��ŭ��ָ(��)",	--���ָ
				"��ŭ��ָ(ʥ)",	--�ҽ�ָ
				"��ŭսѥ",	--ѥ��
			}
		},	
		[62] = {
			{"ս����ָ"}, --��ǰ������Դ�����װ��
			{
				"�ŭ��",	--����
				"�޺�����#�޺�����",	--�·�
				"ս��ͷ��",	--ͷ��
				"ս������",	--����
				"��ŭ����(��)",	--������
				"ս������",	--������
				"��ŭ��ָ(��)",	--���ָ
				"ս����ָ",	--�ҽ�ָ
				"����սѥ",	--ѥ��
			}
		},			
	},
	
	
	---��ʦ
	{
		[30] = {
			{"����","��ħͷ��","��������","��ħ����","��ħ��ָ"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"ħ������(��)#ħ������(Ů)",	--�·�
				"��ħͷ��",	--ͷ��
				"��ħ����",	--����
				"��������",	--������
				"��������",	--������
				"��ħ��ָ",	--���ָ
				"��ħ��ָ",	--�ҽ�ָ
				"��ϼѥ",	--ѥ��
			}
		},
		[31] = {
			{"��ħͷ��"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"ħ������(��)#ħ������(Ů)",	--�·�
				"��ħͷ��",	--ͷ��
				"��ħ����",	--����
				"��������",	--������
				"��������",	--������
				"��ħ��ָ",	--���ָ
				"��ħ��ָ",	--�ҽ�ָ
				"��ϼѥ",	--ѥ��
			}
		},
		[32] = {
			{}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"ħ������(��)#ħ������(Ů)",	--�·�
				"��ħͷ��",	--ͷ��
				"��ħ����",	--����
				"��������",	--������
				"��������",	--������
				"��ħ��ָ",	--���ָ
				"��ħ��ָ",	--�ҽ�ָ
				"��ϼѥ",	--ѥ��
			}
		},		
		[33] = {
			{"����"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"ħ������(��)#ħ������(Ů)",	--�·�
				"��ħͷ��",	--ͷ��
				"��ħ����",	--����
				"��������",	--������
				"��������",	--������
				"��ħ��ָ",	--���ָ
				"��ħ��ָ",	--�ҽ�ָ
				"����",	--ѥ��
			}
		},
		[34] = {
			{"�ۻ�ѥ��"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"ħ������(��)#ħ������(Ů)",	--�·�
				"��ħͷ��",	--ͷ��
				"��ħ����",	--����
				"��������",	--������
				"��������",	--������
				"��ħ��ָ",	--���ָ
				"��ħ��ָ",	--�ҽ�ָ
				"�ۻ�ѥ��",	--ѥ��
			}
		},
		[35] = {
			{"��귨��(��)","��귨��(Ů)","�ۻ��ָ"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"��귨��(��)#��귨��(Ů)",	--�·�
				"��ħͷ��",	--ͷ��
				"��ħ����",	--����
				"��������",	--������
				"��������",	--������
				"�ۻ��ָ",	--���ָ
				"�ۻ��ָ",	--�ҽ�ָ
				"�ۻ�ѥ��",	--ѥ��
			}
		},
		[36] = {
			{"�ۻ껤��"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"��귨��(��)#��귨��(Ů)",	--�·�
				"��ħͷ��",	--ͷ��
				"��ħ����",	--����
				"�ۻ껤��",	--������
				"�ۻ껤��",	--������
				"�ۻ��ָ",	--���ָ
				"�ۻ��ָ",	--�ҽ�ָ
				"�ۻ�ѥ��",	--ѥ��
			}
		},
		[37] = {
			{}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"��귨��(��)#��귨��(Ů)",	--�·�
				"��ħͷ��",	--ͷ��
				"��ħ����",	--����
				"�ۻ껤��",	--������
				"�ۻ껤��",	--������
				"�ۻ��ָ",	--���ָ
				"�ۻ��ָ",	--�ҽ�ָ
				"�ۻ�ѥ��",	--ѥ��
			}
		},
		[38] = {
			{"����","�������","���׻���"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"��귨��(��)#��귨��(Ů)",	--�·�
				"�������",	--ͷ��
				"��ħ����",	--����
				"���׻���",	--������
				"���׻���",	--������
				"�ۻ��ָ",	--���ָ
				"�ۻ��ָ",	--�ҽ�ָ
				"�ۻ�ѥ��",	--ѥ��
			}
		},
		[39] = {
			{"��ڤħѥ","��ڤħ��"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"��귨��(��)#��귨��(Ů)",	--�·�
				"�������",	--ͷ��
				"��ħ����",	--����
				"���׻���",	--������
				"�ۻ껤��",	--������
				"��ڤħ��",	--���ָ
				"��ڤħ��",	--�ҽ�ָ
				"�ۻ�ѥ��",	--ѥ��
			}
		},
		[40] = {
			{"��ڤ����","���޳���(��)","���޳���(Ů)","����֮׹","��ڤ��ָ"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"���޳���(��)#���޳���(Ů)",	--�·�
				"�������",	--ͷ��
				"����֮׹",	--����
				"��ڤ����",	--������
				"�ۻ껤��",	--������
				"��ڤħ��",	--���ָ
				"��ڤ��ָ",	--�ҽ�ָ
				"�ۻ�ѥ��",	--ѥ��
			}
		},
		[41] = {
			{"��ڤͷ��"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"���޳���(��)#���޳���(Ů)",	--�·�
				"�������",	--ͷ��
				"����֮׹",	--����
				"��ڤ����",	--������
				"�ۻ껤��",	--������
				"��ڤħ��",	--���ָ
				"��ڤ��ָ",	--�ҽ�ָ
				"�ۻ�ѥ��",	--ѥ��
			}
		},
		[42] = {
			{}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"���޳���(��)#���޳���(Ů)",	--�·�
				"�������",	--ͷ��
				"����֮׹",	--����
				"��ڤ����",	--������
				"�ۻ껤��",	--������
				"��ڤħ��",	--���ָ
				"��ڤ��ָ",	--�ҽ�ָ
				"�ۻ�ѥ��",	--ѥ��
			}
		},
		[43] = {
			{"Ѫҹħѥ"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"���޳���(��)#���޳���(Ů)",	--�·�
				"�������",	--ͷ��
				"����֮׹",	--����
				"��ڤ����",	--������
				"�ۻ껤��",	--������
				"��ڤħ��",	--���ָ
				"��ڤ��ָ",	--�ҽ�ָ
				"�ۻ�ѥ��",	--ѥ��
			}
		},
		[44] = {
			{"Ѫҹħ��","��������"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"���޳���(��)#���޳���(Ů)",	--�·�
				"Ѫҹħ��",	--ͷ��
				"����֮׹",	--����
				"��ڤ����",	--������
				"�ۻ껤��",	--������
				"��������",	--���ָ
				"��ڤ��ָ",	--�ҽ�ָ
				"�ۻ�ѥ��",	--ѥ��
			}
		},
		[45] = {
			{"���","��аͷ��","ʥ�鷨��(��)","ʥ�鷨��(Ů)","Ѫҹ����"}, --��ǰ������Դ�����װ��
			{
				"���",	--����
				"ʥ�鷨��(��)#ʥ�鷨��(Ů)",	--�·�
				"Ѫҹħ��",	--ͷ��
				"Ѫҹ����",	--����
				"��ڤ����",	--������
				"�ۻ껤��",	--������
				"��������",	--���ָ
				"��ڤ��ָ",	--�ҽ�ָ
				"�ۻ�ѥ��",	--ѥ��
			}
		},
		[46] = {
			{"���Ż���","��ȱ����","Ѫҹħָ"}, --��ǰ������Դ�����װ��
			{
				"���",	--����
				"ʥ�鷨��(��)#ʥ�鷨��(Ů)",	--�·�
				"Ѫҹħ��",	--ͷ��
				"��ȱ����",	--����
				"��ڤ����",	--������
				"���Ż���",	--������
				"��������",	--���ָ
				"��ڤ��ָ",	--�ҽ�ָ
				"Ѫҹħѥ",	--ѥ��
			}
		},
		[46] = {
			{"���Ż���","��ȱ����","Ѫҹħָ"}, --��ǰ������Դ�����װ��
			{
				"���",	--����
				"ʥ�鷨��(��)#ʥ�鷨��(Ů)",	--�·�
				"Ѫҹħ��",	--ͷ��
				"��ȱ����",	--����
				"��ڤ����",	--������
				"���Ż���",	--������
				"Ѫҹħָ",	--���ָ
				"��ڤ��ָ",	--�ҽ�ָ
				"Ѫҹħѥ",	--ѥ��
			}
		},
		[47] = {
			{"Ѫҹ����"}, --��ǰ������Դ�����װ��
			{
				"���",	--����
				"ʥ�鷨��(��)#ʥ�鷨��(Ů)",	--�·�
				"Ѫҹħ��",	--ͷ��
				"��ȱ����",	--����
				"��ڤ����",	--������
				"���Ż���",	--������
				"Ѫҹħָ",	--���ָ
				"��ڤ��ָ",	--�ҽ�ָ
				"Ѫҹħѥ",	--ѥ��
			}
		},	
		[48] = {
			{"����ħѥ"}, --��ǰ������Դ�����װ��
			{
				"���",	--����
				"ʥ�鷨��(��)#ʥ�鷨��(Ů)",	--�·�
				"Ѫҹħ��",	--ͷ��
				"��ȱ����",	--����
				"��ڤ����",	--������
				"���Ż���",	--������
				"Ѫҹħָ",	--���ָ
				"��ڤ��ָ",	--�ҽ�ָ
				"Ѫҹħѥ",	--ѥ��
			}
		},	
		[49] = {
			{"����ͷ��"}, --��ǰ������Դ�����װ��
			{
				"���",	--����
				"ʥ�鷨��(��)#ʥ�鷨��(Ů)",	--�·�
				"����ͷ��",	--ͷ��
				"Ѫҹ����",	--����
				"��ڤ����",	--������
				"���Ż���",	--������
				"Ѫҹħָ",	--���ָ
				"��ڤ��ָ",	--�ҽ�ָ
				"����ħѥ",	--ѥ��
			}
		},	
		[50] = {
			{"�к�","���η���(��)","���η���(Ů)","��������"}, --��ǰ������Դ�����װ��
			{
				"�к�",	--����
				"���η���(��)#���η���(Ů)",	--�·�
				"����ͷ��",	--ͷ��
				"Ѫҹ����",	--����
				"��ڤ����",	--������
				"���Ż���",	--������
				"Ѫҹħָ",	--���ָ
				"��ڤ��ָ",	--�ҽ�ָ
				"����ħѥ",	--ѥ��
			}
		},	
		[51] = {
			{"���黤��(��)","���黤��(ʥ)"}, --��ǰ������Դ�����װ��
			{
				"�к�",	--����
				"���η���(��)#���η���(Ů)",	--�·�
				"����ͷ��",	--ͷ��
				"Ѫҹ����",	--����
				"��ڤ����",	--������
				"���黤��(��)",	--������
				"Ѫҹħָ",	--���ָ
				"��ڤ��ָ",	--�ҽ�ָ
				"����ħѥ",	--ѥ��
			}
		},	
		[52] = {
			{"�����ָ(��)","�����ָ(ʥ)"}, --��ǰ������Դ�����װ��
			{
				"�к�",	--����
				"���η���(��)#���η���(Ů)",	--�·�
				"����ͷ��",	--ͷ��
				"Ѫҹ����",	--����
				"��ڤ����",	--������
				"���黤��(��)",	--������
				"Ѫҹħָ",	--���ָ
				"��ڤ��ָ",	--�ҽ�ָ
				"����ħѥ",	--ѥ��
			}
		},		
		[53] = {
			{"��Ԩħѥ"}, --��ǰ������Դ�����װ��
			{
				"�к�",	--����
				"���η���(��)#���η���(Ů)",	--�·�
				"����ͷ��",	--ͷ��
				"Ѫҹ����",	--����
				"��ڤ����",	--������
				"���黤��(��)",	--������
				"Ѫҹħָ",	--���ָ
				"��ڤ��ָ",	--�ҽ�ָ
				"��Ԩħѥ",	--ѥ��
			}
		},		
		[54] = {
			{"��Ԩͷ��"}, --��ǰ������Դ�����װ��
			{
				"�к�",	--����
				"���η���(��)#���η���(Ů)",	--�·�
				"��Ԩͷ��",	--ͷ��
				"Ѫҹ����",	--����
				"���Ż���",	--������
				"���黤��(��)",	--������
				"Ѫҹħָ",	--���ָ
				"�����ָ(��)",	--�ҽ�ָ
				"��Ԩħѥ",	--ѥ��
			}
		},	
		[55] = {
			{"�߽ٸ���","��өĺӰ","��өĺ¶","��Ԩ����"}, --��ǰ������Դ�����װ��
			{
				"�߽ٸ���",	--����
				"��өĺӰ#��өĺ¶",	--�·�
				"��Ԩͷ��",	--ͷ��
				"��Ԩ����",	--����
				"Ѫҹ����",	--������
				"���黤��(��)",	--������
				"Ѫҹħָ",	--���ָ
				"�����ָ(��)",	--�ҽ�ָ
				"��Ԩħѥ",	--ѥ��
			}
		},	
		[56] = {
			{"��Ԩ����(��)","��Ԩ����(ʥ)"}, --��ǰ������Դ�����װ��
			{
				"�߽ٸ���",	--����
				"��өĺӰ#��өĺ¶",	--�·�
				"��Ԩͷ��",	--ͷ��
				"��Ԩ����",	--����
				"Ѫҹ����",	--������
				"���黤��(��)",	--������
				"Ѫҹħָ",	--���ָ
				"�����ָ(��)",	--�ҽ�ָ
				"��Ԩħѥ",	--ѥ��
			}
		},			
		[56] = {
			{"��Ԩ����(��)","��Ԩ����(ʥ)"}, --��ǰ������Դ�����װ��
			{
				"�߽ٸ���",	--����
				"��өĺӰ#��өĺ¶",	--�·�
				"��Ԩͷ��",	--ͷ��
				"��Ԩ����",	--����
				"Ѫҹ����",	--������
				"���黤��(��)",	--������
				"Ѫҹħָ",	--���ָ
				"�����ָ(��)",	--�ҽ�ָ
				"��Ԩħѥ",	--ѥ��
			}
		},	
		[57] = {
			{"��Ԩ��ָ(��)","��Ԩ��ָ(ʥ)"}, --��ǰ������Դ�����װ��
			{
				"�߽ٸ���",	--����
				"��өĺӰ#��өĺ¶",	--�·�
				"��Ԩͷ��",	--ͷ��
				"��Ԩ����",	--����
				"��Ԩ����(��)",	--������
				"���黤��(��)",	--������
				"��Ԩ��ָ(��)",	--���ָ
				"�����ָ(��)",	--�ҽ�ָ
				"��Ԩħѥ",	--ѥ��
			}
		},	
		[58] = {
			{"���ϼ��"}, --��ǰ������Դ�����װ��
			{
				"�߽ٸ���",	--����
				"��өĺӰ#��өĺ¶",	--�·�
				"��Ԩͷ��",	--ͷ��
				"��Ԩ����",	--����
				"��Ԩ����(��)",	--������
				"���黤��(��)",	--������
				"��Ԩ��ָ(��)",	--���ָ
				"�����ָ(��)",	--�ҽ�ָ
				"��Ԩħѥ",	--ѥ��
			}
		},	
		[59] = {
			{"���ͷ��"}, --��ǰ������Դ�����װ��
			{
				"�߽ٸ���",	--����
				"��өĺӰ#��өĺ¶",	--�·�
				"���ͷ��",	--ͷ��
				"��Ԩ����",	--����
				"��Ԩ����(��)",	--������
				"���黤��(��)",	--������
				"��Ԩ��ָ(��)",	--���ָ
				"�����ָ(��)",	--�ҽ�ָ
				"���ϼ��",	--ѥ��
			}
		},	
		[60] = {
			{"���հ���","�������"}, --��ǰ������Դ�����װ��
			{
				"���հ���",	--����
				"��өĺӰ#��өĺ¶",	--�·�
				"���ͷ��",	--ͷ��
				"�������",	--����
				"��Ԩ����(��)",	--������
				"���黤��(��)",	--������
				"��Ԩ��ָ(��)",	--���ָ
				"�����ָ(��)",	--�ҽ�ָ
				"���ϼ��",	--ѥ��
			}
		},	
		[61] = {
			{"��⻤��"}, --��ǰ������Դ�����װ��
			{
				"���հ���",	--����
				"��өĺӰ#��өĺ¶",	--�·�
				"���ͷ��",	--ͷ��
				"�������",	--����
				"��Ԩ����(��)",	--������
				"���黤��(��)",	--������
				"��Ԩ��ָ(��)",	--���ָ
				"�����ָ(��)",	--�ҽ�ָ
				"���ϼ��",	--ѥ��
			}
		},	
		[62] = {
			{"����ָ"}, --��ǰ������Դ�����װ��
			{
				"���հ���",	--����
				"��өĺӰ#��өĺ¶",	--�·�
				"���ͷ��",	--ͷ��
				"�������",	--����
				"��Ԩ����(��)",	--������
				"��⻤��",	--������
				"��Ԩ��ָ(��)",	--���ָ
				"����ָ",	--�ҽ�ָ
				"���ϼ��",	--ѥ��
			}
		},	
	},
	
	
	---��ʿ
	{
		[30] = {
			{"����","ħ�����","��а����","���ʯ����","������ָ"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"��ħ����(��)#��ħ����(Ů)",	--�·�
				"ħ�����",	--ͷ��
				"���ʯ����",	--����
				"��а����",	--������
				"��а����",	--������
				"��Ԫ��ָ",	--���ָ
				"��Ԫ��ָ",	--�ҽ�ָ
				"��ϼѥ",	--ѥ��
			}
		},
		[31] = {
			{"����ͷ��"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"��ħ����(��)#��ħ����(Ů)",	--�·�
				"ħ�����",	--ͷ��
				"���ʯ����",	--����
				"��а����",	--������
				"��а����",	--������
				"��Ԫ��ָ",	--���ָ
				"��Ԫ��ָ",	--�ҽ�ָ
				"��ϼѥ",	--ѥ��
			}
		},
		[32] = {
			{}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"��ħ����(��)#��ħ����(Ů)",	--�·�
				"ħ�����",	--ͷ��
				"���ʯ����",	--����
				"��а����",	--������
				"��а����",	--������
				"��Ԫ��ָ",	--���ָ
				"��Ԫ��ָ",	--�ҽ�ָ
				"��ϼѥ",	--ѥ��
			}
		},	
		[33] = {
			{}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"��ħ����(��)#��ħ����(Ů)",	--�·�
				"ħ�����",	--ͷ��
				"���ʯ����",	--����
				"��а����",	--������
				"��а����",	--������
				"��Ԫ��ָ",	--���ָ
				"��Ԫ��ָ",	--�ҽ�ָ
				"��ϼѥ",	--ѥ��
			}
		},		
		[34] = {
			{"����ѥ��"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"��ħ����(��)#��ħ����(Ů)",	--�·�
				"ħ�����",	--ͷ��
				"���ʯ����",	--����
				"��а����",	--������
				"��а����",	--������
				"��Ԫ��ָ",	--���ָ
				"��Ԫ��ָ",	--�ҽ�ָ
				"����ѥ��",	--ѥ��
			}
		},	
		[35] = {
			{"�������(��)","�������(Ů)","�����ָ"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"�������(��)#�������(Ů)",	--�·�
				"ħ�����",	--ͷ��
				"���ʯ����",	--����
				"��а����",	--������
				"��а����",	--������
				"�����ָ",	--���ָ
				"�����ָ",	--�ҽ�ָ
				"����ѥ��",	--ѥ��
			}
		},			
		[36] = {
			{"���⻤��"}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"�������(��)#�������(Ů)",	--�·�
				"ħ�����",	--ͷ��
				"���ʯ����",	--����
				"���⻤��",	--������
				"���⻤��",	--������
				"�����ָ",	--���ָ
				"�����ָ",	--�ҽ�ָ
				"����ѥ��",	--ѥ��
			}
		},	
		[37] = {
			{}, --��ǰ������Դ�����װ��
			{
				"����",	--����
				"�������(��)#�������(Ů)",	--�·�
				"ħ�����",	--ͷ��
				"���ʯ����",	--����
				"���⻤��",	--������
				"���⻤��",	--������
				"�����ָ",	--���ָ
				"�����ָ",	--�ҽ�ָ
				"����ѥ��",	--ѥ��
			}
		},			
		[38] = {
			{"��Ԩ","�޻�ͷ��","��������"}, --��ǰ������Դ�����װ��
			{
				"��Ԩ",	--����
				"�������(��)#�������(Ů)",	--�·�
				"�޻�ͷ��",	--ͷ��
				"���ʯ����",	--����
				"��������",	--������
				"��������",	--������
				"�����ָ",	--���ָ
				"�����ָ",	--�ҽ�ָ
				"����ѥ��",	--ѥ��
			}
		},	
		[39] = {
			{"�ɳ���ѥ","������ָ"}, --��ǰ������Դ�����װ��
			{
				"��Ԩ",	--����
				"�������(��)#�������(Ů)",	--�·�
				"�޻�ͷ��",	--ͷ��
				"���ʯ����",	--����
				"��������",	--������
				"��������",	--������
				"������ָ",	--���ָ
				"������ָ",	--�ҽ�ָ
				"�ɳ���ѥ",	--ѥ��
			}
		},	
		[40] = {
			{"�ɳ�����","��������(��)","��������(Ů)"}, --��ǰ������Դ�����װ��
			{
				"��Ԩ",	--����
				"��������(��)#��������(Ů)",	--�·�
				"�޻�ͷ��",	--ͷ��
				"���ʯ����",	--����
				"��������",	--������
				"��������",	--������
				"������ָ",	--���ָ
				"������ָ",	--�ҽ�ָ
				"�ɳ���ѥ",	--ѥ��
			}
		},	
		[41] = {
			{"�ɳ�����","��������(��)","��������(Ů)","�켫����","�ɳ���ָ"}, --��ǰ������Դ�����װ��
			{
				"��Ԩ",	--����
				"��������(��)#��������(Ů)",	--�·�
				"�޻�ͷ��",	--ͷ��
				"�켫����",	--����
				"��������",	--������
				"��������",	--������
				"�ɳ���ָ",	--���ָ
				"������ָ",	--�ҽ�ָ
				"�ɳ���ѥ",	--ѥ��
			}
		},	
		[42] = {
			{}, --��ǰ������Դ�����װ��
			{
				"��Ԩ",	--����
				"��������(��)#��������(Ů)",	--�·�
				"�޻�ͷ��",	--ͷ��
				"�켫����",	--����
				"��������",	--������
				"��������",	--������
				"�ɳ���ָ",	--���ָ
				"������ָ",	--�ҽ�ָ
				"�ɳ���ѥ",	--ѥ��
			}
		},	
		[43] = {
			{"��ٵ�ѥ"}, --��ǰ������Դ�����װ��
			{
				"��Ԩ",	--����
				"��������(��)#��������(Ů)",	--�·�
				"�޻�ͷ��",	--ͷ��
				"�켫����",	--����
				"��������",	--������
				"��������",	--������
				"�ɳ���ָ",	--���ָ
				"������ָ",	--�ҽ�ָ
				"��ٵ�ѥ",	--ѥ��
			}
		},	
		[44] = {
			{"��ٵ���","��Ԫ��ָ"}, --��ǰ������Դ�����װ��
			{
				"��Ԩ",	--����
				"��������(��)#��������(Ů)",	--�·�
				"��ٵ���",	--ͷ��
				"�켫����",	--����
				"��������",	--������
				"��������",	--������
				"�ɳ���ָ",	--���ָ
				"��Ԫ��ָ",	--�ҽ�ָ
				"��ٵ�ѥ",	--ѥ��
			}
		},	
		[45] = {
			{"�ɿ�","��Ԫ����","̫������(��)","̫������(Ů)","�������"}, --��ǰ������Դ�����װ��
			{
				"�ɿ�",	--����
				"̫������(��)#̫������(Ů)",	--�·�
				"��ٵ���",	--ͷ��
				"�켫����",	--����
				"�ɳ�����",	--������
				"��������",	--������
				"�ɳ���ָ",	--���ָ
				"��Ԫ��ָ",	--�ҽ�ָ
				"��ٵ�ѥ",	--ѥ��
			}
		},	
		[46] = {
			{"��������","ʥ������","��ٵ�ָ"}, --��ǰ������Դ�����װ��
			{
				"�ɿ�",	--����
				"̫������(��)#̫������(Ů)",	--�·�
				"��ٵ���",	--ͷ��
				"�켫����",	--����
				"�ɳ�����",	--������
				"��������",	--������
				"�ɳ���ָ",	--���ָ
				"��ٵ�ָ",	--�ҽ�ָ
				"��ٵ�ѥ",	--ѥ��
			}
		},	
		[47] = {
			{"��ٻ���"}, --��ǰ������Դ�����װ��
			{
				"�ɿ�",	--����
				"̫������(��)#̫������(Ů)",	--�·�
				"��ٵ���",	--ͷ��
				"�켫����",	--����
				"�ɳ�����",	--������
				"��������",	--������
				"�ɳ���ָ",	--���ָ
				"��ٵ�ָ",	--�ҽ�ָ
				"��ٵ�ѥ",	--ѥ��
			}
		},	
		[48] = {
			{"�����ѥ"}, --��ǰ������Դ�����װ��
			{
				"�ɿ�",	--����
				"̫������(��)#̫������(Ů)",	--�·�
				"��ٵ���",	--ͷ��
				"�켫����",	--����
				"�ɳ�����",	--������
				"��������",	--������
				"�ɳ���ָ",	--���ָ
				"��ٵ�ָ",	--�ҽ�ָ
				"��ٵ�ѥ",	--ѥ��
			}
		},	
		[49] = {
			{"����ͷ��"}, --��ǰ������Դ�����װ��
			{
				"�ɿ�",	--����
				"̫������(��)#̫������(Ů)",	--�·�
				"����ͷ��",	--ͷ��
				"�������",	--����
				"�ɳ�����",	--������
				"��������",	--������
				"�ɳ���ָ",	--���ָ
				"��ٵ�ָ",	--�ҽ�ָ
				"�����ѥ",	--ѥ��
			}
		},	
		[50] = {
			{"�޳�","�춦����(��)","�춦����(Ů)","��������"}, --��ǰ������Դ�����װ��
			{
				"�޳�",	--����
				"�춦����(��)#�춦����(Ů)",	--�·�
				"����ͷ��",	--ͷ��
				"�������",	--����
				"�ɳ�����",	--������
				"��������",	--������
				"�ɳ���ָ",	--���ָ
				"��ٵ�ָ",	--�ҽ�ָ
				"�����ѥ",	--ѥ��
			}
		},	
		[51] = {
			{"���ﻤ��(��)","���ﻤ��(ʥ)"}, --��ǰ������Դ�����װ��
			{
				"�޳�",	--����
				"�춦����(��)#�춦����(Ů)",	--�·�
				"����ͷ��",	--ͷ��
				"�������",	--����
				"���ﻤ��(��)",	--������
				"���ﻤ��(ʥ)",	--������
				"��ٵ�ָ",	--���ָ
				"��ٵ�ָ",	--�ҽ�ָ
				"�����ѥ",	--ѥ��
			}
		},	
		[52] = {
			{"�����ָ(��)","�����ָ(ʥ)"}, --��ǰ������Դ�����װ��
			{
				"�޳�",	--����
				"�춦����(��)#�춦����(Ů)",	--�·�
				"����ͷ��",	--ͷ��
				"��������",	--����
				"���ﻤ��(��)",	--������
				"���ﻤ��(ʥ)",	--������
				"�����ָ(��)",	--���ָ
				"�����ָ(ʥ)",	--�ҽ�ָ
				"�����ѥ",	--ѥ��
			}
		},	
		[53] = {
			{"�����ѥ"}, --��ǰ������Դ�����װ��
			{
				"�޳�",	--����
				"�춦����(��)#�춦����(Ů)",	--�·�
				"����ͷ��",	--ͷ��
				"��������",	--����
				"���ﻤ��(��)",	--������
				"���ﻤ��(ʥ)",	--������
				"�����ָ(��)",	--���ָ
				"�����ָ(ʥ)",	--�ҽ�ָ
				"�����ѥ",	--ѥ��
			}
		},	
		[54] = {
			{"����ͷ��"}, --��ǰ������Դ�����װ��
			{
				"�޳�",	--����
				"�춦����(��)#�춦����(Ů)",	--�·�
				"����ͷ��",	--ͷ��
				"��������",	--����
				"���ﻤ��(��)",	--������
				"���ﻤ��(ʥ)",	--������
				"�����ָ(��)",	--���ָ
				"�����ָ(ʥ)",	--�ҽ�ָ
				"�����ѥ",	--ѥ��
			}
		},	
		[55] = {
			{"�����׵�","��������","������ɴ","��������"}, --��ǰ������Դ�����װ��
			{
				"�����׵�",	--����
				"��������#������ɴ",	--�·�
				"����ͷ��",	--ͷ��
				"��������",	--����
				"���ﻤ��(��)",	--������
				"���ﻤ��(ʥ)",	--������
				"�����ָ(��)",	--���ָ
				"�����ָ(ʥ)",	--�ҽ�ָ
				"�����ѥ",	--ѥ��
			}
		},	
		[56] = {
			{"������(��)","������(ʥ)"}, --��ǰ������Դ�����װ��
			{
				"�����׵�",	--����
				"��������#������ɴ",	--�·�
				"����ͷ��",	--ͷ��
				"��������",	--����
				"���ﻤ��(��)",	--������
				"������(ʥ)",	--������
				"�����ָ(��)",	--���ָ
				"�����ָ(ʥ)",	--�ҽ�ָ
				"�����ѥ",	--ѥ��
			}
		},	
		[57] = {
			{"�����ָ(��)","�����ָ(ʥ)"}, --��ǰ������Դ�����װ��
			{
				"�����׵�",	--����
				"��������#������ɴ",	--�·�
				"����ͷ��",	--ͷ��
				"��������",	--����
				"������(��)",	--������
				"������(ʥ)",	--������
				"�����ָ(��)",	--���ָ
				"�����ָ(ʥ)",	--�ҽ�ָ
				"�����ѥ",	--ѥ��
			}
		},	
		[58] = {
			{"��ң����"}, --��ǰ������Դ�����װ��
			{
				"�����׵�",	--����
				"��������#������ɴ",	--�·�
				"����ͷ��",	--ͷ��
				"��������",	--����
				"������(��)",	--������
				"������(ʥ)",	--������
				"�����ָ(��)",	--���ָ
				"�����ָ(ʥ)",	--�ҽ�ָ
				"�����ѥ",	--ѥ��
			}
		},	
		[59] = {
			{"��ң����"}, --��ǰ������Դ�����װ��
			{
				"�����׵�",	--����
				"��������#������ɴ",	--�·�
				"����ͷ��",	--ͷ��
				"��������",	--����
				"������(��)",	--������
				"������(ʥ)",	--������
				"�����ָ(��)",	--���ָ
				"�����ָ(ʥ)",	--�ҽ�ָ
				"�����ѥ",	--ѥ��
			}
		},	
		[60] = {
			{"��������","��ң����"}, --��ǰ������Դ�����װ��
			{
				"��������",	--����
				"��������#������ɴ",	--�·�
				"��ң����",	--ͷ��
				"��ң����",	--����
				"������(��)",	--������
				"������(ʥ)",	--������
				"�����ָ(��)",	--���ָ
				"�����ָ(ʥ)",	--�ҽ�ָ
				"��ң����",	--ѥ��
			}
		},	
		[61] = {
			{"��ң����"}, --��ǰ������Դ�����װ��
			{
				"��������",	--����
				"��������#������ɴ",	--�·�
				"��ң����",	--ͷ��
				"��ң����",	--����
				"��ң����",	--������
				"��ң����",	--������
				"�����ָ(��)",	--���ָ
				"�����ָ(ʥ)",	--�ҽ�ָ
				"��ң����",	--ѥ��
			}
		},	
		[62] = {
			{"��ң��ָ"}, --��ǰ������Դ�����װ��
			{
				"��������",	--����
				"��������#������ɴ",	--�·�
				"��ң����",	--ͷ��
				"��ң����",	--����
				"��ң����",	--������
				"��ң����",	--������
				"��ң��ָ",	--���ָ
				"��ң��ָ",	--�ҽ�ָ
				"��ң����",	--ѥ��
			}
		},	
	},
}

local job_name = {
	"սʿ",
	"��ʦ",
	"��ʿ",
}

local job_shuxing = {
	"MaxPhyAtk",
	"MaxMagAtk",
	"MaxTaoAtk",
}

--װ��
function zhuangbei(player,lv)
	local job = lualib:Job(player)
	
	if lv == nil then
		lv = lualib:Level(player)
	else
		lv = tonumber(lv)
	end

	if lv > table.maxn(zhuangbei_table[job]) or lv < 30 then
		lv = table.maxn(zhuangbei_table[job])
	end
		
	local yifu = ""
	local yifu_table = lualib:StrSplit(zhuangbei_table[job][lv][2][2],"#")
	if lualib:Gender(player) == 1 then
		yifu = yifu_table[1]
	else
		yifu = yifu_table[2]
	end
	
	--��ȡ��ǰ����װ��������Ʒ
	local tuijie_name = {
		zhuangbei_table[job][lv][2][1], --����
		yifu, --�·�
		zhuangbei_table[job][lv][2][3], --ͷ��
		zhuangbei_table[job][lv][2][4], --����
		zhuangbei_table[job][lv][2][5],  --����
		zhuangbei_table[job][lv][2][6], --�һ���
		zhuangbei_table[job][lv][2][7], --���ָ
		zhuangbei_table[job][lv][2][8], --�ҽ�ָ
		zhuangbei_table[job][lv][2][9], --ѥ��
	}
	
	--��ȡ�������װ��guid
	local weapon = lualib:Item_GetBySite(player,lua_site_weapon)		--�����������guid
	local armor = lualib:Item_GetBySite(player,lua_site_armor)			--��������·�guid
	local helmet = lualib:Item_GetBySite(player,lua_site_helmet)		--�������ͷ��guid
	local necklace = lualib:Item_GetBySite(player,lua_site_necklace)	--�����������guid
	local wrist_0 = lualib:Item_GetBySite(player,lua_site_wrist_0)		--�������������guid
	local wrist_1 = lualib:Item_GetBySite(player,lua_site_wrist_1)		--�������������guid
	local ring_0 = lualib:Item_GetBySite(player,lua_site_ring_0)		--����������ָguid
	local ring_1 = lualib:Item_GetBySite(player,lua_site_ring_1)		--��������ҽ�ָguid
	local shoes = lualib:Item_GetBySite(player,lua_site_shoes)			--�������ѥ��guid
	
	--��ȡ�������װ������
	local shenshang_name = {
		lualib:KeyName(weapon),		--���������������
		lualib:KeyName(armor),		--��������·�����
		lualib:KeyName(helmet),		--�������ͷ������
		lualib:KeyName(necklace),	--���������������
		lualib:KeyName(wrist_0),	--�����������������
		lualib:KeyName(wrist_1),	--�����������������
		lualib:KeyName(ring_0),		--����������ָ����
		lualib:KeyName(ring_1),		--��������ҽ�ָ����
		lualib:KeyName(shoes),		--�������ѥ������
	}

	--���������·�ͷ����ʾ��ͼƬ	
	local tupian_table = {}
	
	for i=1,3 do
		local tbale = lualib:Item_DataRow(tuijie_name[i])
		tupian_table[i] = tbale.BigIcon
	end
	
	--���ô���װ��ͼƬ
	local kechuan_table = {}
	for i=1,5 do
		if zhuangbei_table[job][lv][1][i] ~= nil then
			kechuan_table[i] = {zhuangbei_table[job][lv][1][i],1}
		else
			kechuan_table[i] = {"",0}
		end
	end
	
	--����ְҵ����Ҫ�ж�װ���û�������
	local shuxing = job_shuxing[job]

	--�����Ա仯table
	local tisheng_table = {
		MaxPhyAtk = 0,--������
		MaxMagAtk = 0,--ħ������
		MaxTaoAtk = 0,--��������
		MaxPhyDef = 0,--�������
		MaxMagDef = 0,--ħ������
		LC = 0,--����/����
		Hit = 0,--����
		Miss = 0,--����
		Burst = 0,--����
	}

	--�����Ƿ���ʾ����ͼƬ
	local shangsheng_table = {}
	for i=1,9 do
		local item_1 = lualib:Item_DataRow(tuijie_name[i])
		
		--��ȡ�Ƽ�װ���Ļ�������
		tisheng_table.MaxPhyAtk = tisheng_table.MaxPhyAtk + item_1.MaxPhyAtk	--������
		tisheng_table.MaxMagAtk = tisheng_table.MaxMagAtk + item_1.MaxMagAtk	--ħ������
		tisheng_table.MaxTaoAtk = tisheng_table.MaxTaoAtk + item_1.MaxTaoAtk	--��������
		tisheng_table.MaxPhyDef = tisheng_table.MaxPhyDef + item_1.MaxPhyDef	--�������
		tisheng_table.MaxMagDef = tisheng_table.MaxMagDef + item_1.MaxMagDef	--ħ������
		tisheng_table.LC = tisheng_table.LC + item_1.LC	--����/����
		tisheng_table.Hit = tisheng_table.Hit + item_1.Hit	--����
		tisheng_table.Miss = tisheng_table.Miss + item_1.Miss	--����
		tisheng_table.Burst = tisheng_table.Burst + item_1.Burst	--����
		
		if tuijie_name[i] ~= "" and shenshang_name[i] ~= "" then
			local item_2 = lualib:Item_DataRow(shenshang_name[i])
			--��ȡ����װ�������ԣ����������װ��������
			tisheng_table.MaxPhyAtk = tisheng_table.MaxPhyAtk - item_2.MaxPhyAtk	--������
			tisheng_table.MaxMagAtk = tisheng_table.MaxMagAtk - item_2.MaxMagAtk	--ħ������
			tisheng_table.MaxTaoAtk = tisheng_table.MaxTaoAtk - item_2.MaxTaoAtk	--��������
			tisheng_table.MaxPhyDef = tisheng_table.MaxPhyDef - item_2.MaxPhyDef	--�������
			tisheng_table.MaxMagDef = tisheng_table.MaxMagDef - item_2.MaxMagDef	--ħ������
			tisheng_table.LC = tisheng_table.LC - item_2.LC	--����/����
			tisheng_table.Hit = tisheng_table.Hit - item_2.Hit	--����
			tisheng_table.Miss = tisheng_table.Miss - item_2.Miss	--����
			tisheng_table.Burst = tisheng_table.Burst - item_2.Burst	--����
		
			if item_1[shuxing] > item_2[shuxing] then
				shangsheng_table[i] = 1
			else
				shangsheng_table[i] = 0
			end
		elseif shenshang_name[i] == "" then
			shangsheng_table[i] = 1
		else
			shangsheng_table[i] = 0	
		end
	end

	local msg = "                                                 #COLORCOLOR_GREENG#�����ԡ�#COLOREND#\n                            #COLORCOLOR_RED#��ݴ��ͷ��ã�#COLOREND#40������#COLORCOLOR_YELLOW#300#COLOREND#��ң�40������#COLORCOLOR_YELLOW#3000#COLOREND#���\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*[����]>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*[׬Ǯ]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*[׬Ԫ��]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*[��]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@mapchanchu *01*[��ͼ����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*[����]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#<@baobao *01*[����]>#COLOREND#  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100001>##OFFSET<X:0,Y:-4>##COLORCOLOR_RED#[װ��]#COLOREND#\n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#POS<X:270>##POS<Y:70>##COLORCOLOR_ORANGE#װ����������������ԱȽ����#COLOREND#\n\n"
	msg = msg .. "#POS<X:270>#��������"..shuzizengjian(tisheng_table.MaxPhyAtk).."\n"
	msg = msg .. "#POS<X:270>#ħ��������"..shuzizengjian(tisheng_table.MaxMagAtk).."\n"
	msg = msg .. "#POS<X:270>#����������"..shuzizengjian(tisheng_table.MaxTaoAtk).."\n"
	msg = msg .. "#POS<X:270>#���������"..shuzizengjian(tisheng_table.MaxPhyDef).."\n"
	msg = msg .. "#POS<X:270>#ħ��������"..shuzizengjian(tisheng_table.MaxMagDef).."\n"
	msg = msg .. "#POS<X:270>#����/���ˣ�"..shuzizengjian(tisheng_table.LC).."\n"
	msg = msg .. "#POS<X:270>#���У�"..shuzizengjian(tisheng_table.Hit).."\n"
	msg = msg .. "#POS<X:270>#���ܣ�"..shuzizengjian(tisheng_table.Miss).."\n"
	msg = msg .. "#POS<X:270>#������"..shuzizengjian(tisheng_table.Burst).."\n"
	msg = msg .. "#POS<X:270>##POS<Y:280>##COLORCOLOR_ORANGE#"..lv.."���ɴ���װ����#COLOREND#\n\n"
	msg = msg .. "#POS<X:270>##POS<Y:350>##COLORCOLOR_ORANGE#������µȼ��鿴�Ƽ�װ�����䣺#COLOREND#\n\n"
	msg = msg .. "#POS<X:270>#<@zhuangbei#30 *01*30��>  <@zhuangbei#31 *01*31��>  <@zhuangbei#32 *01*32��>  <@zhuangbei#33 *01*33��>  <@zhuangbei#34 *01*34��>  <@zhuangbei#35 *01*35��>  <@zhuangbei#36 *01*36��>  <@zhuangbei#37 *01*37��>  <@zhuangbei#38 *01*38��>  <@zhuangbei#39 *01*39��>\n"
	msg = msg .. "#POS<X:270>#<@zhuangbei#40 *01*40��>  <@zhuangbei#41 *01*41��>  <@zhuangbei#42 *01*42��>  <@zhuangbei#43 *01*43��>  <@zhuangbei#44 *01*44��>  <@zhuangbei#45 *01*45��>  <@zhuangbei#46 *01*46��>  <@zhuangbei#47 *01*47��>  <@zhuangbei#48 *01*48��>  <@zhuangbei#49 *01*49��>\n"
	msg = msg .. "#POS<X:270>#<@zhuangbei#50 *01*50��>  <@zhuangbei#51 *01*51��>  <@zhuangbei#52 *01*52��>  <@zhuangbei#53 *01*53��>  <@zhuangbei#54 *01*54��>  <@zhuangbei#55 *01*55��>  <@zhuangbei#56 *01*56��>  <@zhuangbei#57 *01*57��>  <@zhuangbei#58 *01*58��>  <@zhuangbei#59 *01*59��>\n"
	msg = msg .. "#POS<X:270>#<@zhuangbei#60 *01*60��>  <@zhuangbei#61 *01*61��>  <@zhuangbei#62 *01*62��>\n"
	
	local str = "<form default_parent=NpcTalk,Container>"
	str = str .. "<itemctrl id=ͷ�� x=110 y=200 init_item="..tuijie_name[3].." count=1 is_bound=false />"
	str = str .. "<image id=ͼƬ2 x=0 y=65 type=normal image=1900800000 />"
	str = str .. "<image id=����ͼƬ x=-10 y=115 type=normal image="..tupian_table[1].." />"
	str = str .. "<image id=�·�ͼƬ x=-10 y=115 type=normal image="..tupian_table[2].." />"
	str = str .. "<image id=ͷ��ͼƬ x=-10 y=115 type=normal image="..tupian_table[3].." />"
	str = str .. "<richedit id=����1 x=60 y=80 w=200 h=30 text=#COLORCOLOR_BLUE#"..lv.."��"..job_name[job].."�Ƽ�����#COLOREND# font=SIMLI18 />"
	str = str .. "<richedit id=����2 x=27 y=92 w=200 h=30 text="..lv.." />"
	str = str .. "<itemctrl id=���� x=64 y=264 init_item="..tuijie_name[1].." count=1 is_bound=false />"
	str = str .. "<itemctrl id=�·� x=110 y=274 init_item="..tuijie_name[2].." count=1 is_bound=false />"
	str = str .. "<itemctrl id=���� x=214 y=204 init_item="..tuijie_name[4].." count=1 is_bound=false />"
	str = str .. "<itemctrl id=���� x=18 y=308 init_item="..tuijie_name[5].." count=1 is_bound=false />"
	str = str .. "<itemctrl id=�һ��� x=214 y=308 init_item="..tuijie_name[6].." count=1 is_bound=false />"
	str = str .. "<itemctrl id=���ָ x=18 y=359 init_item="..tuijie_name[7].." count=1 is_bound=false />"
	str = str .. "<itemctrl id=�ҽ�ָ x=214 y=359 init_item="..tuijie_name[8].." count=1 is_bound=false />"
	str = str .. "<itemctrl id=ѥ�� x=164 y=411 init_item="..tuijie_name[9].." count=1 is_bound=false />"

	str = str .. "<image id=ͷ��+ x=136 y=223 type=normal image=1905600010 visible="..shangsheng_table[3].." />"
	str = str .. "<image id=����+ x=90	y=287 type=normal image=1905600010 visible="..shangsheng_table[1].." />"
	str = str .. "<image id=�·�+ x=136	y=297 type=normal image=1905600010 visible="..shangsheng_table[2].." />"
	str = str .. "<image id=����+ x=240	y=227 type=normal image=1905600010 visible="..shangsheng_table[4].." />"
	str = str .. "<image id=����+ x=44 y=331 type=normal image=1905600010 visible="..shangsheng_table[5].." />"
	str = str .. "<image id=�һ���+ x=240 y=331 type=normal image=1905600010 visible="..shangsheng_table[6].." />"
	str = str .. "<image id=���ָ+ x=44 y=382 type=normal image=1905600010 visible="..shangsheng_table[7].." />"
	str = str .. "<image id=�ҽ�ָ+ x=240 y=382 type=normal image=1905600010 visible="..shangsheng_table[8].." />"
	str = str .. "<image id=ѥ��+ x=190 y=434 type=normal image=1905600010 visible="..shangsheng_table[9].." />"
	
	str = str .. "<itemctrl id=װ��1 x=274 y=298 init_item="..kechuan_table[1][1].." count=1 is_bound=false visible="..kechuan_table[1][2].." />"
	str = str .. "<itemctrl id=װ��2 x=314 y=298 init_item="..kechuan_table[2][1].." count=1 is_bound=false visible="..kechuan_table[2][2].." />"
	str = str .. "<itemctrl id=װ��3 x=354 y=298 init_item="..kechuan_table[3][1].." count=1 is_bound=false visible="..kechuan_table[3][2].." />"
	str = str .. "<itemctrl id=װ��4 x=394 y=298 init_item="..kechuan_table[4][1].." count=1 is_bound=false visible="..kechuan_table[4][2].." />"
	str = str .. "<itemctrl id=װ��5 x=434 y=298 init_item="..kechuan_table[5][1].." count=1 is_bound=false visible="..kechuan_table[5][2].." />"
	
	msg = str .. "<text><![CDATA["..msg.."]]></text></form>"
	lualib:SetPanelSize(player, 710, 500)
	return msg
end

--------------------��ɫ��������Ч��-----------------------
function shuzizengjian(i)
	i = tonumber(i)
	local msg = ""
	local s = ""
	if i == 0 then
		msg = "#IMAGE<ID:1900408300>#"
	elseif i > 0 then
		msg = "#IMAGE<ID:1900403300>#"
		s = tostring(i)
		for i1=1,#s do
			if string.sub(s,i1,i1)+3 >= 10 then
				msg = msg .. "#IMAGE<ID:190040"..string.sub(s,i1,i1)+63 .."00>#"
			else
				msg = msg .. "#IMAGE<ID:1900406"..string.sub(s,i1,i1)+3 .."00>#"
			end
		end
	else
		msg = "#IMAGE<ID:1900414200>#"
		i = 65535 - (i + 65535)
		s = tostring(i)
		for i1=1,#s do
			if string.sub(s,i1,i1)+3 >= 10 then
				msg = msg .. "#IMAGE<ID:190040"..string.sub(s,i1,i1)+83 .."00>#"
			else
				msg = msg .. "#IMAGE<ID:1900408"..string.sub(s,i1,i1)+3 .."00>#"
			end
		end
	end
	return msg
end

function MapMoveXYA(player, map_key_name, x, y, r)
	local msg=""
	
	if map_key_name == "�������" then
		local haidi_Open = lualib:IO_GetCustomVarInt("haidi_Open")
		if haidi_Open < 20 then
			return "�����ؾ���δ����ʿ����������½����".. 20 .."λ47������ʿʱ�������ؾ���̽��֮·���Ὺ����"
		end
	end
	
	
	local level = lualib:Level(player)
	if level >= 40 then
		gold = 3000
	else
		gold = 300
	end
	
	if not lualib:Player_SubGold(player, gold, false, "�۳���ң����ͷ�", "����") then return "��Ľ�Ҳ���"..gold.."�����ܴ��ͣ�\n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@xianshi *01*�����ء�>" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "����ͼʧ��"
    end
	
	local mapname = {"��ɽ��", "���ٳ�", "���ִ�", "����������", "�������ε�", "�������", "����", "����"}
	
	for i = 1, #mapname do
		if map_key_name == mapname[1] then
			lualib:AddTimerEx(player, 124, 300, 1, "mvtx", "��ɽ��".."#"..x.."#"..y)
		elseif map_key_name == mapname[2] then
			lualib:AddTimerEx(player, 125, 300, 1, "mvtx", "���ٳ�".."#"..x.."#"..y)
		elseif map_key_name == mapname[3] then
			lualib:AddTimerEx(player, 126, 300, 1, "mvtx", "���ִ�".."#"..x.."#"..y)
		elseif map_key_name == mapname[4] then
			lualib:AddTimerEx(player, 127, 300, 1, "mvtx", "����������".."#"..x.."#"..y)
		elseif map_key_name == mapname[5] then
			lualib:AddTimerEx(player, 128, 300, 1, "mvtx", "�������ε�".."#"..x.."#"..y)
		elseif map_key_name == mapname[6] then
			lualib:AddTimerEx(player, 129, 300, 1, "mvtx", "�������".."#"..x.."#"..y)
		elseif map_key_name == mapname[7] then
			lualib:AddTimerEx(player, 129, 300, 1, "mvtx", "����".."#"..x.."#"..y)	
		elseif map_key_name == mapname[8] then
			lualib:AddTimerEx(player, 129, 300, 1, "mvtx", "����".."#"..x.."#"..y)		
		end
	end

	if lualib:HasBuff(player,"��̯") then
		lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
		return false
	end
	
	return msg
end

function MapMove_zhenmo(npc, player, map_key_name, x, y, r)
	local zmc_key = 5
	local zhenmocheng_Open = lualib:IO_GetCustomVarInt("zhenmocheng_Open")
	if zhenmocheng_Open < zmc_key then
		return "��ħ�ǻ�δ����ʿ����������½����"..zmc_key.."λ50������ʿʱ����ħ�ǵ�̽��֮·���Ὺ����"
	end
	
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "����ͼʧ��"
    end
	
	return ""
end

function mvtx(player, tierid, param1, param2, param3)

	mapming = param1
	map_x = param2
	map_y = param3

	local canshu = {"��ɽ��", "���ٳ�", "���ִ�", "����������", "�������ε�", "�������", "����", "����"}
	for i = 1, #canshu do
		if mapming == canshu[i] then
			local csmapguid = lualib:Map_GetMapGuid(canshu[i])
			lualib:RunClientScript(csmapguid, "mapeffect", "texiao", "100001671#"..map_x.."#"..map_y.."#0#0")
		end
	end

end