local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/�ۺϹ���")

zhengfuguai = {}
zhengfuguai["ʬū"]={"yaoshanzhengfu1",30,"��ɽ��Ѩ��Ӣ"}
zhengfuguai["����๤"]={"yaoshanzhengfu2",30,"��ɽ��Ѩ��Ӣ"}
zhengfuguai["����๤"]={"yaoshanzhengfu3",30,"��ɽ��Ѩ��Ӣ"}
zhengfuguai["��â"]={"yaoshanzhengfu4",30,"��ɽ��Ѩ��Ӣ"}
zhengfuguai["��ө"]={"yaoshanzhengfu5",30,"��ɽ��Ѩ��Ӣ"}
zhengfuguai["ħө"]={"yaoshanzhengfu6",30,"��ɽ��Ѩ��Ӣ"}
zhengfuguai["���ʬū"]={"yaoshanzhengfu7",30,"��ɽ��Ѩ��Ӣ"}
zhengfuguai["����ʬū"]={"yaoshanzhengfu8",30,"��ɽ��Ѩ��Ӣ"}
zhengfuguai["ʬū��ͷ"]={"yaoshanzhengfu9",30,"��ɽ��Ѩ��Ӣ"}
zhengfuguai["��ɽ��Ѩ��Ӣ"]={"yaoshanzhengfu10",3,10}
zhengfuguai["ǧ����ħ"]={"yaoshanzhengfu11",1,20}

zhengfuguai["ɳʯħ"]={"tianhuangzhengfu1",50,"�����Ӣ"}
zhengfuguai["����"]={"tianhuangzhengfu2",50,"�����Ӣ"}
zhengfuguai["�޶�"]={"tianhuangzhengfu3",50,"�����Ӣ"}
zhengfuguai["ɢ��"]={"tianhuangzhengfu4",50,"�����Ӣ"}
zhengfuguai["ħ��"]={"tianhuangzhengfu5",50,"�����Ӣ"}
zhengfuguai["��ū"]={"tianhuangzhengfu6",50,"�����Ӣ"}
zhengfuguai["��ħ"]={"tianhuangzhengfu7",50,"�����Ӣ"}
zhengfuguai["�Źֵ���"]={"tianhuangzhengfu8",50,"�����Ӣ"}
zhengfuguai["���浶��"]={"tianhuangzhengfu9",50,"�����Ӣ"}
zhengfuguai["˫��������"]={"tianhuangzhengfu10",50,"�����Ӣ"}
zhengfuguai["�����Ӣ"]={"tianhuangzhengfu11",6}
zhengfuguai["Ѫ��ʦ"]={"tianhuangzhengfu12",1}

zhengfuguai["ҹ��ɮ"]={"xiemiaozhengfu1",100,"���а��Ӣ"}
zhengfuguai["а��"]={"xiemiaozhengfu2",100,"���а��Ӣ"}
zhengfuguai["��ԭ��ʿ"]={"xiemiaozhengfu3",100,"���а��Ӣ"}
zhengfuguai["��ԭ��ʿ"]={"xiemiaozhengfu4",100,"���а��Ӣ"}
zhengfuguai["��ԭ��ʿ"]={"xiemiaozhengfu5",100,"���а��Ӣ"}
zhengfuguai["��������"]={"xiemiaozhengfu6",100,"���а��Ӣ"}
zhengfuguai["�ڰ��̿�"]={"xiemiaozhengfu7",100,"���а��Ӣ"}
zhengfuguai["Ӱ��"]={"xiemiaozhengfu8",100,"���а��Ӣ"}
zhengfuguai["��������"]={"xiemiaozhengfu10",1,"���а��Ӣ"}
zhengfuguai["���а��Ӣ"]={"xiemiaozhengfu9",12}
zhengfuguai["����ɮ"]={"xiemiaozhengfu11",1}

zhengfuguai["ħ��Ы��"]={"tianmozhengfu1",100,"��ħʯ�߾�Ӣ"}
zhengfuguai["ħ������"]={"tianmozhengfu2",100,"��ħʯ�߾�Ӣ"}
zhengfuguai["ħ��ɳ��"]={"tianmozhengfu3",100,"��ħʯ�߾�Ӣ"}
zhengfuguai["��ħū��"]={"tianmozhengfu4",100,"��ħʯ�߾�Ӣ"}
zhengfuguai["��ħ����"]={"tianmozhengfu5",100,"��ħʯ�߾�Ӣ"}
zhengfuguai["��������"]={"tianmozhengfu6",100,"��ħʯ�߾�Ӣ"}
zhengfuguai["��ħ����"]={"tianmozhengfu7",100,"��ħʯ�߾�Ӣ"}
zhengfuguai["��ħ�ȷ�"]={"tianmozhengfu8",100,"��ħʯ�߾�Ӣ"}
zhengfuguai["��ħ����"]={"tianmozhengfu9",100,"��ħʯ�߾�Ӣ"}
zhengfuguai["��ħͳ��"]={"tianmozhengfu11",1,"��ħʯ�߾�Ӣ"}
zhengfuguai["��ħʯ�߾�Ӣ"]={"tianmozhengfu10",12}
zhengfuguai["��ħ��"]={"tianmozhengfu12",1}

zhengfuguai["������"]={"haidizhengfu1",100,"���׾�Ӣ"}
zhengfuguai["������"]={"haidizhengfu2",100,"���׾�Ӣ"}
zhengfuguai["ʯ����"]={"haidizhengfu3",100,"���׾�Ӣ"}
zhengfuguai["��ǯз"]={"haidizhengfu4",100,"���׾�Ӣ"}
zhengfuguai["�ؾ�����"]={"haidizhengfu5",100,"���׾�Ӣ"}
zhengfuguai["�ؾ�����"]={"haidizhengfu6",100,"���׾�Ӣ"}
zhengfuguai["��ħ�̴�"]={"haidizhengfu7",100,"���׾�Ӣ"}
zhengfuguai["��ħ����"]={"haidizhengfu8",100,"���׾�Ӣ"}
zhengfuguai["��ħ����"]={"haidizhengfu9",100,"���׾�Ӣ"}
zhengfuguai["�������"]={"haidizhengfu11",1,"���׾�Ӣ"}
zhengfuguai["���׾�Ӣ"]={"haidizhengfu10",12}
zhengfuguai["��ħ"]={"haidizhengfu12",1}

-------------------------------------------------����ˢ�´�������--------------------------------------------------------
function on_create(monster) --����1������ָ��
    lualib:AddTrigger(monster, lua_trigger_post_die, "zhengfusiwang")
end

-------------------------------------------------���������ص�����--------------------------------------------------------
function zhengfusiwang(actor, killer) --����1������ָ�� ����2��ɱ������ָ��
	if lualib:Monster_IsMonster(actor) == false then --�жϹ���ָ���Ƿ��ǹ����
		return
	end

	if zhengfuguai[lualib:Name(actor)] ~= nil and string.find(lualib:KeyName(actor),"��Ӣ") ~= nil then
		local s1 = zhengfuguai[lualib:Name(actor)][3]
		if lualib:GetInt(killer,zhengfuguai[s1][1]) < zhengfuguai[s1][2] then
			lualib:SetInt(killer,zhengfuguai[s1][1],lualib:GetInt(killer,zhengfuguai[s1][1])+1) --���Ӿ�Ӣɱ����
		end
		
		--��ɱ��Ӣ������������
		local shijian = shijianjiexi(lualib:Time2Str("%Y-%m-%d %H:%M:%S",lualib:GetAllTime()))
		if shijian["hour"] >= 12 then
			if lualib:GetAllTime() - lualib:GetInt(killer,"rongyujingyingguaishijian") >= 43200 then
				lualib:SetInt(killer,"rongyujingyingguaishijian",lualib:GetAllTime()) --��¼������ʱ�ĵ�ǰ����
				lualib:SetInt(killer,"rongyujingyingguai",0) --��ɱ��Ӣ������������
			end
		end
		lualib:SetInt(killer,"rongyujingyingguai",lualib:GetInt(killer,"rongyujingyingguai")+1)
	end
	
	if zhengfuguai[lualib:Name(actor)] ~= nil and lualib:GetInt(killer,zhengfuguai[lualib:Name(actor)][1]) < zhengfuguai[lualib:Name(actor)][2] then --�ж��Ƿ�������ϵͳ�����ɱ��Ҫ���Ƿ�����
		lualib:SetInt(killer,zhengfuguai[lualib:Name(actor)][1],lualib:GetInt(killer,zhengfuguai[lualib:Name(actor)][1])+1) --����ɱ����
	end
end