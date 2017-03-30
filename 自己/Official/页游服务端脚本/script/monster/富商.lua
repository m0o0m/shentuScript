local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--��ɽ��
local npc_keyname =
{
	["wsc_keyname"] = {"��ؤ1", "��ؤ2", "��ˮ��1", "��ˮ��2", "ѧ��1", "ѧ��2", "С��1", "С��2", "����1", "����2", "����1", "ǧ��С��1"},
	["lc_keyname"] = {"��ˮ��3", "��ˮ��4", "��ؤ3", "С��3", "С��4", "ľ��1"},
	["dlc_keyname"] = {"�˻�Ա1", "�˻�Ա2", "����1", "����2", "С��5", "�˻�Ա3", "�˻�Ա4", "��ľ����1"},
}


local lj =
{
	["wsc_keyname"] =
	{
		["��ؤ1"] = {192, 258, 153, 297, 199, 343, 239, 303, 205, 271},
		["��ؤ2"] = {209, 366, 226, 382, 247, 361, 260, 374, 277, 347, 252, 323},
		["��ˮ��1"] = {178, 243, 239, 301, 274, 266, 305, 297, 267, 335, 237, 301, 206, 270, 240, 234, 214, 207},
		["��ˮ��2"] = {290, 259, 267, 336, 251, 324, 211, 367, 226, 382, 247, 361, 261, 375, 283, 353, 267, 337, 305, 299, 328, 321},
		["ѧ��1"] = {253, 322, 237, 306, 273, 265, 305, 297, 268, 337},
		["ѧ��2"] = {241, 233, 215, 208, 180, 242, 207, 269, 237, 300, 274, 265},
		["С��1"] = {220, 320, 254, 286, 278, 261, 327, 213, 278, 261, 220, 320, 180, 360},
		["С��2"] = {205, 269, 237, 306, 268, 337, 291, 357, 268, 337, 237, 306, 205, 269, 176, 240},
		["����1"] = {305, 235, 278, 262, 247, 293, 223, 317, 195, 345, 223, 317, 247, 293, 278, 262, 305, 235, 327, 213},
		["����2"] = {267, 337, 248, 318, 224, 289, 202, 269, 186, 253, 202, 269, 224, 289, 248, 318, 267, 337, 291, 361},
		["����1"] = {177, 323, 197, 343, 218, 322, 249, 291, 273, 267, 240 , 234, 210, 264, 205, 269, 194, 258, 153, 299},
		["ǧ��С��1"] = {225, 383, 209, 367, 228, 348, 253, 323, 267, 337, 294, 310, 306, 298, 329, 321, 311, 339, 291, 359, 269, 337, 253, 321, 208, 366, 240, 398},
	},

	["lc_keyname"] =
	{
		["��ˮ��3"] = {209, 183, 178, 214, 202, 238, 235, 209, 212, 183, 209, 158},
		["��ˮ��4"] = {272, 234, 247, 214, 238, 199, 217, 223, 229, 243, 253, 251},
		["��ؤ3"] = {221, 191, 201, 185 ,182, 204 ,182, 223 ,199, 238 ,210, 254 ,233, 275 ,254, 257 ,271, 234 , 247, 214},
		["С��3"] = {188, 231, 197, 240, 221, 216, 228 ,200, 209 ,181, 184 ,207, 166 ,209},
		["С��4"] = {258, 249, 238, 274, 226, 272, 219 ,260, 230 ,242, 250 ,240, 271 ,236},
		["ľ��1"] = {216, 259, 195, 238, 173, 216, 195, 238, 216, 259, 234, 277},
	},

	["dlc_keyname"] =
	{
		["�˻�Ա1"] = {306 ,296, 311 ,311, 325 ,314, 334 ,324, 354 ,341, 369 ,321 ,350 ,299 ,328 ,281 ,302 ,278},
		["�˻�Ա2"] = {343 ,336, 328 ,321, 308 ,300 ,305 ,279, 324 ,279, 347 ,290 ,350 ,303 ,371 ,323 ,361 ,333},
		["����1"] = {313 ,270, 297 ,281, 308 ,293, 304 ,310, 325 ,279},
		["����2"] = {350 ,310, 338 ,311, 337 ,330, 357 ,340, 365 ,316, 351 ,301, 351 ,284},
		["С��5"] = {330 ,320, 342 ,297, 328 ,281, 307 ,280, 307 ,306, 327 ,317, 317 ,330, 317 ,329},
		["�˻�Ա3"] = {410, 375, 389, 354, 410, 375, 428, 393},
		["�˻�Ա4"] = {406, 373, 427, 394, 406, 373, 387, 354},
		["��ľ����1"] = {306, 298, 323, 281, 340, 286, 332, 318, 318, 332, 311, 319},
	}
}

local str =
{
	["wsc_keyname"] =
	{
		["��ؤ1"] = {"�Դ���ħ��Ϯ���������Ѿ�û�����ˣ�", "��λ�׸������򷢵�ɡ���", "��Ҫ�������䵽��ز������һ�����һ�Ÿ߸�˧���ģ�"},
		["��ؤ2"] = {"��С���˹��ˣ�������ҵ�����������ڳ�������ؤ���Ǻ�", "������ؤ�п��ǳ������ģ���֪����Ϊʲô����ؤ��ҵ����ô����", "��Ϊ��ֻ��������ؤ���֣�������"},
		["��ˮ��1"] = {"�����˾��Ǻ�ˮ������ˮ��Ӳ��Ӻ���", "��Ӵ������Ӵ~", "�����и�����ס����ɽ�ǣ��Ÿ�������һ���������������"},
		["��ˮ��2"] = {"������ÿһ��ˮ�������Դ���Ȼ", "�Ҳ��������ߣ���ֻ�Ǵ���Ȼ�İ��˹���", "����ÿһ��ˮ������ɽˮ��"},
		["ѧ��1"] = {"����Ů�����Ӻ��ϰ���������", "���������ִ�������ϴ�裬��˼ҹ���ȥ����������", "��²¿��������о�ʲô��ѧ�ߣ�"},
		["ѧ��2"] = {"�����Ӻ����������δ���", "���ڵ��㣬��������������", "�����ս�����ͷ�����ǻ��������ţ�"},
		["С��1"] = {"����Խ��Խ�������ˣ��ǹ����춼����", "��˰���ڻ�Ҳ~", "������������Ӫ��ҵ������������Ǯ�͵��̳ǳ��ɣ�����һ��ƽ����"},
		["С��2"] = {"���ǽ��ն���ɽ�ǼӴ��˹�˰�����ں���ѽ��", "�����ң������ﲻ��ת����", "�ع��ͣ�û�������ǿ����������������°���"},
		["����1"] = {"���ϵ�ע��㣡��ƴ�ү��ץ�㣬�����㣬����ǰ���ǳǹܣ�", "�Բ������ǲ��죡", "�����������Ҫ���ģ�"},
		["����2"] = {"һֱ�������Ҷ���Ϊֻ��������ı��ˣ��˸ı䲻�����飬������;������Ǹı���һЩ���飡", "δ���������Լ��������·��ô�ߣ������Լ�ѡ��", "���һ��������һ�������ʱ��ܲ�ר�ĵĿ�������һ���ˣ������ǲ��죡"},
		["����1"] = {"���ز�����ѽ������������ع�Ա�ߵ���š���", "�������ɽ�ǵķ���ȫ����������������Щɵ��", "���أ���Ц��������ɽ�Ǿ��ö����ҵķ��ز�������ˣ�����Ϊ���ڵ������ã�"},
		["ǧ��С��1"] = {"���������ְ����˸����������������ˡ���", "������Ĵ�����Ϊ�������ڻ�û����һ�������Ķ������ˣ�", "�������Ǹ�����������������ӭȢ�ҵ����ˣ�"},
	},

	["lc_keyname"] =
	{
		["��ˮ��3"] = {"���ǵ���λ�ò�̫�ã�����ˮҪ��һ���ǣ����簡��", "��������ǣ���ˮ���ǲ��ܺȵģ���������ȫ�����涪����˵˵��Щ�˰�����", "�����������Ļ�����ˮ�ģ�����������ľ���ˣ�ˮ����ʧ���㶮�ɣ�"},
		["��ˮ��4"] = {"�±�����Ҳ������ˮ���ˣ���֪��Ϊʲô��", "����Զ�ܹ�ȥ��ˮ����Ȼ��һȺ�˹���Ҫ��ң��������������ˣ�", "������ѽ�������Ӵ~�ٲ���ˮ��Ҫ���ˡ���"},
		["��ؤ3"] = {"���˲����ҵĹ���ֻ�����᷸�Ĵ�", "����ʱ��Ҳ����������", "�����һ������Ȼ��ȥ����������ڻþ��������кö���ѽ����"},
		["С��3"] = {"Ŷ~������~������~�ͺ����⡭��", "�����������Ҫ׬Ǯ�ģ��������ǰ���ѣ�Ƿծ��ٸ���ɽ�ǽ���ˣ�Ȼ���ٱ�����ֵ���ҾͲ��û�Ǯ�ˣ�", "��ǰ�������ؾ��Ρ���"},
		["С��4"] = {"ÿ������̰�ڣ�����Ϊ�˺��ڷ����", "����������Ҫ�������ˣ����һ�����ף�", "��ʵֻҪ��һ�����󣬾��ܻ�ú������ˡ���"},
		["ľ��1"] = {"����һ����ľ��~ľ������ǿ~��Ҫ�����·���~���ú�Ư��~", "�������н������������ģ����ţ���ȥ����������", "���Ǹ�������ûʲô��ľ�ˣ����Ժ���ľ������鷳�ˣ�"},
	},

	["dlc_keyname"] =
	{
		["�˻�Ա1"] = {"��һ������һ��ѽ���߹�·����������", "ȫ����ͣ�Ʒ����ã�", "�������ͷ�������ҵ����������˻�Ա�����ˣ�˭���ڳ���ս���ĳ������˻�����"},
		["�˻�Ա2"] = {"ÿ��Ͱ�ֿ��˶�����������ȥ��������ȥ����", "һ���ֿ⣬����һ��������", "����һ����Ҫ��һ���Լ��Ĳֿ⣡"},
		["����1"] = {"���ӿ��룬�ſ�����죡", "��ҩ���Ǵ�ʮ���ǧ��ĸ�ɽ�ϲ������ģ����Լ�˵��������һ����ô�ˣ�", "�ƽ��м�ҩ�޼ۣ�����"},
		["����2"] = {"��ҩ�����ã�", "����ͷ��ҩ����������ҩ���ã���ҩ��������ȥ���ҡ�����", "���ˣ���˵�ˣ������򣬷����в��Ĳ����ң�"},
		["С��5"] = {"�Ұ����١����Ҿ��̣��㶮�ġ���", "���ٳ���������ħϮ�����պÿ��Գû�����ս���ƣ��ٺ١�", "��ħ����Խ����Խ�ã��ҵĻ���������úܺ��ˣ���������"},
		["�˻�Ա3"] = {"��˵��ħҪϮ�����ٳ��ˣ��ҵøϽ������ر߹ص���ʿ���ͻ���", "���һ����Ѻ�ڰ���Ϊ�����õ����Ѻѽ����", "Ѻ�ں��ܻ��������ߣ���ֵ��ǧ�أ�"},
		["�˻�Ա4"] = {"�죬�죬�𵲵���Ҫ�������ˣ���ħ��Ҫ���ˡ���", "����˵���£�����߱���Ŷ����ʵ����ǰ��ɱ��ģ�", "ɱ��ľͲ���ת��Ѻ���ͻ��������Ц�ɣ�"},
		["��ľ����1"] = {"�ø����´���ħ��Ϯǰ����Ͷʯ������������Ҫ��ľ�ϸϽ������ã�", "��Ҫ������𣿸���һ������ľ�ɣ�����Ǳ�������ѵĽ����˶���", "���ƣ��ҵ��ؼ��ᶯ�ģ�����������еģ�����ϸ������գ�ۡ���"},
	}
}

local timerID     = 1
local elapse      = 10000
local monsterName = ""



	 --�¶���ؤ���ֽ���
local jl ={"���������", "ף�������", "���������", "��ֵ�����", "���������", "��������"}






function main(monster, player)
	local talkX, talkY = 690, 400
	lualib:SysMsg_SendRoleTalk(monster, "��Ͷ������������Ҷ����ˣ�")
	local msg = "#COLORCOLOR_BROWN#������������������������������#COLOREND##COLORCOLOR_SKYBLUE#����#COLOREND##COLORCOLOR_BROWN#������������������������������#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_GREENG#Ͷ���ֲ�1��ֻҪ��������Ͷ������װ�������ܻ�ò���ĺ����ر���\n \n#COLORCOLOR_YELLOW#Ͷ���ֲ�2��ÿ��Ͷ�ʶ������һ���ֻ���������\n \n#COLORCOLOR_RED#Ͷ���ֲ�3��ÿ��Ͷ�ʶ��л���������#COLORCOLOR_YELLOW#4000000#COLORCOLOR_RED#��ҵĳ���������\n \n#COLORCOLOR_SKYBLUE#Ͷ���ֲ�4��Ͷ���װ��Խ�ã���ó��������Ļ���Խ��\n \n#COLORCOLOR_WHITE#Ͷ���ֲ�5��Խ���Ͷ�룬�Ż���Խ��Ļر���������#COLOREND#\n \n"
	msg = msg .. "#COLORCOLOR_BROWN#������������������������������#COLOREND##COLORCOLOR_SKYBLUE#Ͷ��#COLOREND##COLORCOLOR_BROWN#������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700037#<@touzi#"..player.. "*01* [��ҪͶ��]>\n"
	
	--��ҳ����
	local chang = 32
	while chang < 350 do
		msg = msg.. "#POS<X:400,Y:".. chang ..">##IMAGE1902700048#"
		chang = chang + 32
	end
	
	--��ȡdataĿ¼�ļ���Ϣ������
	local txt = {}
	if lualib:IO_FileExists("touzi.txt") == true then
		for i = 1, 10 do
			local txtStr = tostring(lualib:IO_TextFileGetLine("touzi.txt", i))
			if txtStr == "���" then
				break
			end
			txt[i] = txtStr
		end
	end
	
	--��ʾ�н����б�
	local txt_y = 0
	for i = 1, #txt do
		local str_n1 = string.sub(txt[i], 1, 37)
		local str_n2 = string.sub(txt[i], 38, 70)
		msg = msg.. "#POS<X:410,Y:".. 40 + txt_y ..">#"..str_n1..""
		msg = msg.. "#POS<X:410,Y:".. 55 + txt_y ..">#"..str_n2..""
		txt_y = txt_y + 40
	end
	
	
	lualib:NPCTalkDetail(player, msg, talkX, talkY)
return ""
end

function on_create(monster)

	lualib:AddBuff(monster, "�޵�", 0)
	lualib:AddTimer(monster, timerID, elapse, -1, "say")
	local keyname = lualib:KeyName(monster)

	for k, v in pairs(npc_keyname)  do
		for k1, v1 in pairs(v) do
			if keyname == v[k1] then
				lualib:Monster_SetSeeker(monster, lj[k][v1], 1, true)
			end
		end
	end



end

function on_trigger_post_die(actor, killer)

end

function say(monster, timer_id)
	local keyname = lualib:KeyName(monster)
	for k, v in pairs(npc_keyname)  do
		for k1, v1 in pairs(v) do
			if keyname == v[k1] then
				local rnd = lualib:GenRandom(1, #str[k][v1])
				lualib:SysMsg_SendRoleTalk(monster, str[k][v1][rnd])
			end
		end
	end

end


function touzi(monster, player, equip1, equip2, equip3, equip4, equip5)
	local talkX, talkY = 690, 400
	local msg = "#POS<X:".. talkX / 2 - 68 ..",Y:-10>##IMAGE1904600048#"
	
	msg = msg..image(monster, player, equip1, equip2, equip3, equip4, equip5)
	lualib:NPCTalkDetail(player, msg, talkX, talkY)
	return ""
end

function image(monster, player, equip1, equip2, equip3, equip4, equip5)

	local chang = 32
	local msg = ""
	msg = msg.."#POS<X:25,Y:60>#�����ҪͶ�ʵ�װ��"
	
	local index = 80
	for i = 1, 5 do
		msg = msg.."#POS<X:"..index..",Y:120>##IMAGE1902900006#"
		index = index + 50
	end
	
	while chang < 350 do
		msg = msg.. "#POS<X:400,Y:".. chang ..">##IMAGE1902700048#"
		chang = chang + 32
	end
	
	--װ����ʾ
	msg = msg.."#POS<X:".. 525 ..",Y:10>#װ��"
	
	local num = 0
	local numx = 42
	local numy = 60
	
	
	
	local s = ""
	local guid_t = {}
	guid_t[1] = equip1
	guid_t[2] = equip2
	guid_t[3] = equip3
	guid_t[4] = equip4
	guid_t[5] = equip5
	
	for i = 1, #guid_t do
		if guid_t[i] ~= "" and guid_t[i] ~= nil then
			s = s.."#"..guid_t[i]
		end
	end
	
	
	local itemNum = 0
	for i = 22, 221 do
		local bagItemGuid = lualib:Player_GetItemGuid(player, i)

		if bagItemGuid ~= "" and bagItemGuid ~= nil then
			local itemName = lualib:Name(bagItemGuid)
			local itemKeyName = lualib:KeyName(bagItemGuid)
			local itemType = lualib:Item_GetType(player, bagItemGuid)
			local itemSubType = lualib:Item_GetSubType(player, bagItemGuid)
			if itemType == 1 and lualib:Item_IsBind(player, bagItemGuid) == false then
				itemNum = itemNum + 1
				local itemData = lualib:Item_DataRow(itemKeyName)
				local Icon = itemData["Icon"]
				msg = msg.."#POS<X:".. 431 + numx * num ..",Y:".. numy + 4 ..">##IMAGE1902900006#"
				msg = msg.."#POS<X:".. 435 + numx * num ..",Y:".. numy ..">##IMAGE".. Icon .."#"
				
				if bagItemGuid == equip1 then
					msg = msg.."#POS<X:".. 440 + numx * num ..",Y:".. 19 + numy ..">#ѡ��"
					msg = msg.."#POS<X:85,Y:115>##IMAGE".. Icon .."#"
				elseif bagItemGuid == equip2 then
					msg = msg.."#POS<X:".. 440 + numx * num ..",Y:".. 19 + numy ..">#ѡ��"
					msg = msg.."#POS<X:135,Y:115>##IMAGE".. Icon .."#"
				elseif bagItemGuid == equip3 then
					msg = msg.."#POS<X:".. 440 + numx * num ..",Y:".. 19 + numy ..">#ѡ��"
					msg = msg.."#POS<X:185,Y:115>##IMAGE".. Icon .."#"
				elseif bagItemGuid == equip4 then
					msg = msg.."#POS<X:".. 440 + numx * num ..",Y:".. 19 + numy ..">#ѡ��"
					msg = msg.."#POS<X:235,Y:115>##IMAGE".. Icon .."#"
				elseif bagItemGuid == equip5 then
					msg = msg.."#POS<X:".. 440 + numx * num ..",Y:".. 19 + numy ..">#ѡ��"
					msg = msg.."#POS<X:285,Y:115>##IMAGE".. Icon .."#"
				else
					if equip1 ~= nil and equip2 ~= nil and equip3 ~= nil and equip4 ~= nil and equip5 ~= nil then
					
					else
						msg = msg.."#POS<X:".. 440 + numx * num ..",Y:".. 18 + numy ..">#<@touzi#"..player..s.."#"..bagItemGuid.." *01*����>"
					end
				end	
				num = num + 1
				if num >= 5 then
					num = 0
					numy = 60 + numy
				end
				
				if itemNum == 25 then
					break
				end
				
			end
		end
	end
	
	
	--������ʾ
	local imageIconId = {
							{"1902700044", 60, 423},
							{"1902700045", 327, 423},
							{"1902700047", 60, 525},
							{"1902700046", 327, 525},
						}
	local imageIconIdTow = {
							{"1902700051", 71, 416, 1},
							{"1902700050", 70, 525, 1},
							{"1902700048", 60, 455, 2},
							{"1902700049", 334, 455, 2},
						}

	for j = 1, #imageIconId do
		msg = msg.."#POS<X:".. imageIconId[j][2] ..",Y:".. imageIconId[j][3] - 280 ..">##IMAGE"..imageIconId[j][1].."#"
	end

	local numEx2 = 0
	for i =1, #imageIconIdTow do
			local numx2 = 0
			local numy2 = 0
			
			local a = 0
			local b = 0
			if imageIconIdTow[i][4] == 1 then
				a = 230
				b = 0
			elseif imageIconIdTow[i][4] == 2 then
				a = 0
				b = 65
			end
			while a > numx2 or b > numy2 do
				msg = msg.."#POS<X:".. numEx2 + imageIconIdTow[i][2] + numx2 ..",Y:".. imageIconIdTow[i][3] + numy2 - 280 ..">##IMAGE"..imageIconIdTow[i][1].."#"
				if imageIconIdTow[i][4] == 1 then
					numx2 = numx2 + 32 
				else
					numy2 = numy2 + 32
				end
			end
		end
		
		local info = {
						"#COLORCOLOR_YELLOW#1��ÿ��Ͷ�ʶ������һ���ֻ�������#COLOREND#",
						"#COLORCOLOR_SKYBLUE#2��Ͷ��װ��Խ�ã���ó��������Ļ���Խ��#COLOREND#",
						"#COLORCOLOR_RED#3�������������٣�#COLOREND##COLORCOLOR_YELLOW#4000000#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_YELLOW#��ǧ��#COLOREND#",
						"#COLORCOLOR_WHITE#4.������Ͷ�ʣ�ֻ��װ����ף������^_^#COLOREND#"
					}
		local infoNum = 0
		for i = 1, #info do
			msg = msg.."#POS<X:73,Y:".. 154 + infoNum ..">##OFFSET<X:0,Y:20>#"..info[i]..""
			infoNum = infoNum + 15
		end
	local MaxSellPrice = 0
	for i = 1, #guid_t do
		if guid_t[i] ~= nil and guid_t[i] ~= "" then
			local itemName = lualib:KeyName(guid_t[i])
			local itemData = lualib:Item_DataRow(itemName)
			local SellPrice = tonumber(itemData["SellPrice"]) * 0.4
			MaxSellPrice = MaxSellPrice + SellPrice
		end
	end
	
	
	msg = msg.."#POS<X:80,Y:270>#��ûر���".."#POS<X:150,Y:277>##IMAGE1904400012#".."#POS<X:190,Y:269>#"..MaxSellPrice..""
	msg = msg.."#POS<X:175,Y:322>##IMAGE1904300004#".."#POS<X:188,Y:310>#<@touziEx#"..player..s.." *01*��ҪͶ��>"
	msg = msg.."#POS<X:305,Y:322>##IMAGE1904300004#".."#POS<X:320,Y:310>#<@touzi#"..player.." *01*�������>"
	return msg
end

function touziEx(monster, player, equip1, equip2, equip3, equip4, equip5)
	local guid_t = {}
	guid_t[1] = equip1
	guid_t[2] = equip2
	guid_t[3] = equip3
	guid_t[4] = equip4
	guid_t[5] = equip5
	
	local reqItem = false
	local MaxSellPrice = 0
	for i = 1, #guid_t do
		if guid_t[i] ~= nil and guid_t[i] ~= "" then
			if lualib:Item_GetSite(player, guid_t[i]) < 22 or lualib:Item_GetSite(player, guid_t[i]) > 221 then
				lualib:SysMsg_SendBottomColor(player, "�������װ�������䶯�������·��룡", 7, 2)
				return touzi(monster, player)
			end
			
			if lualib:Item_IsBind(player, guid_t[i]) == true then
				lualib:SysMsg_SendBottomColor(player, "�������װ���а�װ���������·��룡", 7, 2)
			end
			
			local itemName = lualib:KeyName(guid_t[i])
			local itemData = lualib:Item_DataRow(itemName)
			local SellPrice = tonumber(itemData["SellPrice"]) * 0.4
			MaxSellPrice = MaxSellPrice + SellPrice
			reqItem = true
		end
	end
	
	if reqItem == false then
		lualib:SysMsg_SendBottomColor(player, "�����װ����", 7, 2)
		return touzi(monster, player)
	end
	
	
	for i = 1, #guid_t do
		if guid_t[i] ~= nil and guid_t[i] ~= "" then
			if not lualib:Item_Destroy(player, guid_t[i], "����Ͷ��", player) then
				lualib:SysMsg_SendBottomColor(player, "�۳�����ʧ��", 7, 2)
				return
			end
		end
	end
	
	local s1 = ""
	local playerName = lualib:Name(player)
	local goldNum = lualib:IO_GetCustomVarInt("fushang_touzi")
	--print(goldNum)
	if tonumber(goldNum) + MaxSellPrice > 10000000 then
		local fanhuan = math.random(4,9) * 1000000
		lualib:Player_AddGold(player, fanhuan, false, "����Ͷ��", player)
		lualib:IO_SetCustomVarInt("fushang_touzi", tonumber(goldNum) - fanhuan)
		s1 = "���̣����["..playerName.."]".."��������Ͷ�ʣ������"..fanhuan.."��ҵķ��ر�����ϲ����ϲ����"
		lualib:SysMsg_SendCenterMsg(1, s1, "")
		lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		
		
		--�ļ�
		if lualib:IO_FileExists("touzi.txt") == false then
			lualib:IO_CreateTextFile("touzi.txt", false)
			for i = 1, 10 do
				lualib:IO_TextFileInsertLine("touzi.txt", i, "���")
			end
		end
		local times = lualib:Time2Str("%Y-%m-%d %H:%M:%S", lualib:GetAllTime())

		local name_start, name_end = string.find(playerName, playerName)
		if name_end % 2 > 0 then
			playerName = playerName.." "
		end
		local s2 = "���["..playerName.."]��"..times.."�����"..fanhuan.."��ҵ�Ͷ�ʻر���"
		lualib:IO_TextFileInsertLine("touzi.txt", 1, s2)
	else
		s1 = "��������Ͷ�ʻر�����Ц�ɣ�"
		lualib:SysMsg_SendTriggerMsg(player, s1)
		lualib:Player_AddGold(player, MaxSellPrice, false, "����Ͷ��", player)
		lualib:IO_SetCustomVarInt("fushang_touzi", tonumber(goldNum) + MaxSellPrice)
	end
	
	
	return touzi(monster, player)
end
