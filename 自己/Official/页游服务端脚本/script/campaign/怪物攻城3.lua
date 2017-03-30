--¹«¸æÏûÏ¢
local curindex = 1;
local msg = {"¹¥½ø³ÇÈ¥£¬¹¥½øÉñ¸è³ÇÈ¥£¬ÏûÃğËùÓĞµÄ¹ÖÎï£¡ÏûÃğËùÓĞµÄBOSS£¡¸÷ÖÖ±¦Îï¶¼½«ÊôÓÚÄãÃÇ£¡ÊôÓÚ×îÓÂ¸ÒµÄÓÂÕß£¡",
	"ÉñÔÚ¸ßÔ¶²Ôñ·µÄÌìÉÏ¿´×ÅÄãÃÇ£¡", "ÉñÓÓÓÂÕß£¡", "ÉñÓÓÓÂÕß£¡", "ÉñÓÓÓÂÕß£¡", "ÓÂÊ¿ÃÇ£¬×¼±¸ºÃÁËÂğ£¿", "¹¥³Ç¿ªÊ¼£¡"}
function siege(id, map, times)	
	lualib:SysMsg_SendTopMsg(1, "¹ÖÎï¹¥³Ç¿ªÊ¼ÁË");
	lualib:SysMsg_SendBroadcastColor("¹ÖÎï¹¥³Ç¿ªÊ¼ÁË", "", 1, 12);
	local mapid = lualib:Map_GetMapGuid("Éñ¸è³Ç");
	--ÄÏÃÅ±øÁ¦²¿Êğ
	local y = 217;
	for x = 266, 286, 1
	do
		lualib:Map_GenMonster(mapid, x, y, 1, 4, "ºÚÃæÅ£Ä§1", 1, false);
		y = y + 1;
	end
	lualib:Map_GenMonster(mapid, 287, 238, 1, 4, "Å£Ä§½«¾ü", 1, false);
	lualib:Map_GenMonster(mapid, 298, 249, 1, 4, "Å£Ä§½«¾ü", 1, false);
	y = 250;
	for x = 299, 315, 1
	do
		lualib:Map_GenMonster(mapid, x, y, 1, 4, "ºÚÃæÅ£Ä§1", 1, false);
		y = y + 1;
	end
	
	lualib:Map_GenMonster(mapid, 325, 264, 7, 4, "Å£Ä§ÊØÎÀ1", 100, false);
	lualib:Map_GenMonster(mapid, 327, 212, 7, 4, "ºìÃæÅ£Ä§1", 100, false);
	lualib:Map_GenMonster(mapid, 271, 211, 7, 4, "Å£Ä§ÓÂÊ¿1", 100, false);
	lualib:Map_GenMonster(mapid, 297, 240, 1, 4, "Ç§ÄêÊ÷Ä§", 1, false);
	lualib:Map_GenMonster(mapid, 300, 238, 3, 4, "¼ÙËøÄ§°×ÀÇ", 10, false);
	lualib:Map_GenMonster(mapid, 300, 238, 3, 4, "ËøÄ§°×ÀÇ", 3, false);
	lualib:Map_GenMonster(mapid, 300, 232, 3, 4, "¼ÙËøÄ§¾ŞÉß", 10, false);
	lualib:Map_GenMonster(mapid, 300, 232, 3, 4, "ËøÄ§¾ŞÉß", 3, false);
	lualib:Map_GenMonster(mapid, 307, 239, 3, 4, "¼ÙËøÄ§¾øµÀ°×Ô³", 10, false);
	lualib:Map_GenMonster(mapid, 307, 239, 3, 4, "ËøÄ§¾øµÀ°×Ô³", 3, false);
	lualib:Map_GenMonster(mapid, 303, 325, 3, 4, "¼ÙËøÄ§÷¼÷ÃÍõ", 10, false);
	lualib:Map_GenMonster(mapid, 303, 325, 3, 4, "ËøÄ§÷¼÷ÃÍõ", 3, false);
	lualib:Map_GenMonster(mapid, 307, 231, 3, 4, "¼ÙËøÄ§ÓÄÚ¤Ê¬Íõ", 10, false);
	lualib:Map_GenMonster(mapid, 307, 231, 3, 4, "ËøÄ§ÓÄÚ¤Ê¬Íõ", 3, false);
	lualib:Map_GenMonster(mapid, 310, 229, 6, 4, "Ä§±ø1", 40, false);
	lualib:Map_GenMonster(mapid, 315, 224, 6, 4, "É¢±ø1", 40, false);
	lualib:Map_GenMonster(mapid, 320, 219, 6, 4, "µ¶Å«1", 40, false);
	lualib:Map_GenMonster(mapid, 323, 216, 6, 4, "¹Å¹Öµ¶¿Í1", 1, false);
	lualib:Map_GenMonster(mapid, 327, 212, 6, 4, "¹íÃæµ¶ÊÖ1", 40, false);
	lualib:Map_GenMonster(mapid, 326, 201, 6, 4, "Ë«µ¶¿ë×ÓÊÖ1", 50, false);
	lualib:Map_GenMonster(mapid, 319, 212, 6, 4, "É³Ê¯Ä§1", 50, false);
	lualib:Map_GenMonster(mapid, 334, 204, 6, 4, "Å£Ä§½«¾ü", 1, false);
	lualib:Map_GenMonster(mapid, 305, 222, 6, 4, "·çÄ§1", 50, false);
	lualib:Map_GenMonster(mapid, 313, 215, 6, 4, "·çÄ§1", 50, false);
	lualib:Map_GenMonster(mapid, 319, 239, 6, 4, "·çÄ§1", 50, false);
	lualib:Map_GenMonster(mapid, 324, 227, 6, 4, "·çÄ§1", 50, false);
	lualib:Map_GenMonster(mapid, 331, 221, 6, 4, "·çÄ§1", 50, false);
	--Î÷ÃÅ±øÁ¦²¿Êğ
	y = 174
	for x = 266, 287, 1
	do
		lualib:Map_GenMonster(mapid, x, y, 1, 4, "ºÚÃæÅ£Ä§1", 1, false);
		y = y - 1;
	end
	lualib:Map_GenMonster(mapid, 288, 152, 1, 4, "Å£Ä§½«¾ü", 1, false);
	lualib:Map_GenMonster(mapid, 299, 141, 1, 4, "Å£Ä§½«¾ü", 1, false);
	y = 140
	for x = 300, 323, 1
	do
		lualib:Map_GenMonster(mapid, x, y, 1, 4, "ºÚÃæÅ£Ä§1", 1, false);
		y = y - 1;
	end
	lualib:Map_GenMonster(mapid, 308, 168, 7, 4, "Å£Ä§ÊØÎÀ1", 100, false);
	lualib:Map_GenMonster(mapid, 264, 193, 7, 4, "ºìÃæÅ£Ä§1", 100, false);
	lualib:Map_GenMonster(mapid, 321, 133, 7, 4, "Å£Ä§ÓÂÊ¿1", 100, false);
	lualib:Map_GenMonster(mapid, 297, 156, 1, 4, "Ç§ÄêÊ÷Ä§", 1, false);
	lualib:Map_GenMonster(mapid, 304, 163, 3, 4, "¼ÙËøÄ§°×ÀÇ", 10, false);
	lualib:Map_GenMonster(mapid, 304, 163, 3, 4, "ËøÄ§°×ÀÇ", 3, false);
	lualib:Map_GenMonster(mapid, 300, 169, 3, 4, "¼ÙËøÄ§¾ŞÉß", 10, false);
	lualib:Map_GenMonster(mapid, 300, 169, 3, 4, "ËøÄ§¾ŞÉß", 3, false);
	lualib:Map_GenMonster(mapid, 311, 160, 3, 4, "¼ÙËøÄ§¾øµÀ°×Ô³", 10, false);
	lualib:Map_GenMonster(mapid, 311, 160, 3, 4, "ËøÄ§¾øµÀ°×Ô³", 3, false);
	lualib:Map_GenMonster(mapid, 309, 168, 3, 4, "¼ÙËøÄ§÷¼÷ÃÍõ", 10, false);
	lualib:Map_GenMonster(mapid, 309, 168, 3, 4, "ËøÄ§÷¼÷ÃÍõ", 3, false);
	lualib:Map_GenMonster(mapid, 314, 173, 3, 4, "¼ÙËøÄ§ÓÄÚ¤Ê¬Íõ", 10, false);
	lualib:Map_GenMonster(mapid, 314, 173, 3, 4, "ËøÄ§ÓÄÚ¤Ê¬Íõ", 3, false);
	lualib:Map_GenMonster(mapid, 314, 173, 6, 4, "Ä§±ø1", 40, false);
	lualib:Map_GenMonster(mapid, 320, 179, 6, 4, "É¢±ø1", 40, false);
	lualib:Map_GenMonster(mapid, 325, 184, 6, 4, "µ¶Å«1", 40, false);
	lualib:Map_GenMonster(mapid, 329, 188, 6, 4, "¹Å¹Öµ¶¿Í1", 1, false);
	lualib:Map_GenMonster(mapid, 337, 185, 6, 4, "É³Ê¯Ä§1", 50, false);
	lualib:Map_GenMonster(mapid, 334, 193, 6, 4, "Ç§ÄêÊ÷Ä§", 1, false);
	lualib:Map_GenMonster(mapid, 307, 177, 6, 4, "·çÄ§1", 50, false);
	lualib:Map_GenMonster(mapid, 317, 166, 6, 4, "·çÄ§1", 50, false);
	lualib:Map_GenMonster(mapid, 324, 172, 6, 4, "·çÄ§1", 50, false);
	lualib:Map_GenMonster(mapid, 314, 185, 6, 4, "·çÄ§1", 50, false);
	lualib:Map_GenMonster(mapid, 321, 192, 6, 4, "·çÄ§1", 50, false);
	lualib:Map_GenMonster(mapid, 331, 178, 6, 4, "·çÄ§1", 50, false);
	--¶«ÃÅ±øÁ¦²¿Êğ
	y = 273
	for x = 361, 384, 1
	do
		lualib:Map_GenMonster(mapid, x, y, 1, 4, "ºÚÃæÅ£Ä§1", 1, false);
		y = y - 1;
	end
	lualib:Map_GenMonster(mapid, 385, 248, 1, 4, "Å£Ä§½«¾ü", 1, false);
	lualib:Map_GenMonster(mapid, 395, 238, 1, 4, "Å£Ä§½«¾ü", 1, false);
	y = 237
	for x = 396, 426, 1
	do
		lualib:Map_GenMonster(mapid, x, y, 1, 4, "ºÚÃæÅ£Ä§1", 1, false);
		y = y - 1;
	end
	lualib:Map_GenMonster(mapid, 354, 270, 7, 4, "Å£Ä§ÊØÎÀ1", 100, false);
	lualib:Map_GenMonster(mapid, 420, 204, 7, 4, "ºìÃæÅ£Ä§1", 100, false);
	lualib:Map_GenMonster(mapid, 253, 270, 7, 4, "Å£Ä§ÓÂÊ¿1", 100, false);
	lualib:Map_GenMonster(mapid, 385, 243, 1, 4, "Ç§ÄêÊ÷Ä§", 1, false);
	lualib:Map_GenMonster(mapid, 379, 238, 3, 4, "¼ÙËøÄ§°×ÀÇ", 10, false);
	lualib:Map_GenMonster(mapid, 379, 238, 3, 4, "ËøÄ§°×ÀÇ", 3, false);
	lualib:Map_GenMonster(mapid, 381, 230, 3, 4, "¼ÙËøÄ§¾ŞÉß", 10, false);
	lualib:Map_GenMonster(mapid, 381, 230, 3, 4, "ËøÄ§¾ŞÉß", 3, false);
	lualib:Map_GenMonster(mapid, 370, 241, 3, 4, "¼ÙËøÄ§¾øµÀ°×Ô³", 10, false);
	lualib:Map_GenMonster(mapid, 370, 241, 3, 4, "ËøÄ§¾øµÀ°×Ô³", 3, false);
	lualib:Map_GenMonster(mapid, 374, 234, 3, 4, "¼ÙËøÄ§÷¼÷ÃÍõ", 10, false);
	lualib:Map_GenMonster(mapid, 374, 234, 3, 4, "ËøÄ§÷¼÷ÃÍõ", 3, false);
	lualib:Map_GenMonster(mapid, 370, 230, 3, 4, "¼ÙËøÄ§ÓÄÚ¤Ê¬Íõ", 10, false);
	lualib:Map_GenMonster(mapid, 370, 230, 3, 4, "ËøÄ§ÓÄÚ¤Ê¬Íõ", 3, false);
	lualib:Map_GenMonster(mapid, 370, 230, 6, 4, "Ä§±ø1", 40, false);
	lualib:Map_GenMonster(mapid, 364, 224, 6, 4, "É¢±ø1", 40, false);
	lualib:Map_GenMonster(mapid, 367, 217, 6, 4, "µ¶Å«1", 40, false);
	lualib:Map_GenMonster(mapid, 360, 209, 6, 4, "¹Å¹Öµ¶¿Í1", 1, false);
	lualib:Map_GenMonster(mapid, 366, 203, 6, 4, "É³Ê¯Ä§1", 50, false);
	lualib:Map_GenMonster(mapid, 344, 204, 6, 4, "Ç§ÄêÊ÷Ä§", 1, false);
	lualib:Map_GenMonster(mapid, 376, 204, 6, 4, "·çÄ§1", 50, false);
	lualib:Map_GenMonster(mapid, 369, 216, 6, 4, "·çÄ§1", 50, false);
	lualib:Map_GenMonster(mapid, 362, 209, 6, 4, "·çÄ§1", 50, false);
	lualib:Map_GenMonster(mapid, 366, 236, 6, 4, "·çÄ§1", 50, false);
	lualib:Map_GenMonster(mapid, 368, 229, 6, 4, "·çÄ§1", 50, false);
	lualib:Map_GenMonster(mapid, 360, 221, 6, 4, "·çÄ§1", 50, false);
	--»Ê¹¬ÃÅÇ°±øÁ¦²¿Êğ
	lualib:Map_GenMonster(mapid, 344, 194, 1, 4, "ÑªìøÊ¦", 1, false);
	lualib:Map_GenMonster(mapid, 363, 185, 1, 4, "ÑªìøÊ¦", 1, false);
	lualib:Map_GenMonster(mapid, 362, 171, 1, 4, "èóÌìÉ®", 1, false);
	lualib:Map_GenMonster(mapid, 343, 190, 6, 4, "¹íÃæÎäÕß1", 40, false);
	lualib:Map_GenMonster(mapid, 348, 196, 6, 4, "ÌìÔ­ÃÍÊ¿1", 40, false);
	lualib:Map_GenMonster(mapid, 348, 196, 6, 4, "ÌìÔ­ÓÂÊ¿1", 40, false);
	lualib:Map_GenMonster(mapid, 366, 190, 6, 4, "ÌìÔ­ËÀÊ¿1", 40, false);
	lualib:Map_GenMonster(mapid, 365, 175, 6, 4, "Ò¹ĞĞÉ®1", 40, false);
	lualib:Map_GenMonster(mapid, 360, 180, 6, 4, "Ó°´Ì1", 40, false);
	lualib:Map_GenMonster(mapid, 368, 167, 6, 4, "ºÚ°µ´Ì¿Í1", 40, false);
	lualib:Map_GenMonster(mapid, 365, 174, 6, 4, "ÑıÉ®1", 40, false);
	--»Ê¹¬ÄÚ±øÁ¦²¿Êğ
	local mapid = lualib:Map_GetMapGuid("Éñ¸è³Ç»Ê¹¬");
	lualib:Map_GenMonster(mapid, 20, 30, 7, 4, "ºÚ°µ´Ì¿Í1", 100, false);
	lualib:Map_GenMonster(mapid, 30, 40, 7, 4, "ÑıÉ®1", 100, false);
	lualib:Map_GenMonster(mapid, 29, 29, 1, 4, "èóÌìÉ®", 1, false);
	--ÃÜµÀ±øÁ¦²¿Êğ
	local mapid = lualib:Map_GetMapGuid("Éñ¸è³ÇÃÜµÀ");
	lualib:Map_GenMonster(mapid, 88, 65, 1, 4, "ÑªìøÊ¦", 1, false);
	lualib:Map_GenMonster(mapid, 97, 68, 8, 4, "É³Ê¯Ä§2", 100, false);
	lualib:Map_GenMonster(mapid, 84, 53, 8, 4, "¾«Ó¢¹íÃæÎäÕß1", 100, false);
	lualib:Map_GenMonster(mapid, 85, 68, 8, 4, "µ¶Å«2", 100, false);
	lualib:Map_GenMonster(mapid, 83, 73, 8, 4, "·çÄ§3", 100, false);
	lualib:Map_GenMonster(mapid, 77, 79, 8, 4, "ÌìÔ­ÃÍÊ¿1", 100, false);
	lualib:Map_GenMonster(mapid, 70, 86, 8, 4, "Ò¹ĞĞÉ®1", 100, false);
	lualib:Map_GenMonster(mapid, 58, 79, 8, 4, "ÌìÔ­ËÀÊ¿3", 100, false);
	lualib:Map_GenMonster(mapid, 48, 71, 8, 4, "Ó°´Ì2", 100, false);
	lualib:Map_GenMonster(mapid, 39, 70, 8, 4, "ºÚ°µ´Ì¿Í3", 100, false);
	lualib:Map_GenMonster(mapid, 37, 81, 8, 4, "¾«Ó¢Ä§±ø1", 100, false);
	lualib:Map_GenMonster(mapid, 29, 94, 8, 4, "³¬¼¶É¢±ø1", 100, false);
	lualib:Map_GenMonster(mapid, 33, 105, 8, 4, "³¬¼¶Ò¹ĞĞÉ®1", 100, false);
	lualib:Map_GenMonster(mapid, 33, 117, 4, 4, "À¶ÊŞ1", 50, false);
	lualib:AddTimer(lualib:Map_GetMapGuid("Éñ¸è³Ç»Ê¹¬"), curindex, 1, 1, "on_timer")
end

function on_timer()
	lualib:SysMsg_SendBroadcastColor(msg[curindex], "", 1, 12)
	lualib:AddTimer(lualib:Map_GetMapGuid("Éñ¸è³Ç»Ê¹¬"), curindex, 5000, 1, "on_timer")
	curindex = curindex + 1;
	if(curindex >= table.getn(msg)) then
		return;
	end
end

