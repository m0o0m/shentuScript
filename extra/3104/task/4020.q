<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4020" name="[支线]-秘境海妖之争(3)" type="2" suggest_level="1" visible="1" next_id="4021">
		<description>
			二哥真是好糊涂，怎可犯如此大错，不行，我要马上点齐兵马，助我那可怜的侄儿一臂之力！\n　　人类，多谢你帮我们传话，否则我们海妖一族危险了，我那二哥一直想统一海角秘境，然后杀上陆地，只是我大哥一直不允，他才作罢。如果让他夺位成功，不但海角秘境会被他弄得一团糟，就连你们人类也会因此受害。\n　　勇士，可否助我一臂之力，我将率兵牵制二哥的兵力，而你则独自潜入他的所在之处，将他消灭？\n
		</description>
		<dialogue>
			<brief>二哥真是好糊涂，怎可犯如此大错，不行，我要马上点齐兵马，助我那可怜的侄儿一臂之力！\n　　人类，多谢你帮我们传话，否则我们海妖一族危险了，我那二哥一直想统一海角秘境，然后杀上陆地，只是我大哥一直不允，他才作罢。如果让他夺位成功，不但海角秘境会被他弄得一团糟，就连你们人类也会因此受害。\n　　勇士，可否助我一臂之力，我将率兵牵制二哥的兵力，而你则独自潜入他的所在之处，将他消灭？\n</brief>
			<await>我将率兵牵制二哥的兵力，你快去将他消灭吧！\n</await>
			<finish>唉……二哥啊二哥，一朝错，步步错，如今你竟落得如此下场，真是令人嗟叹……\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="55" max_num="200" />
			<prologues>
				<group>
					<prologue id="4019" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<process>
			<trophies>
				<trophy monster="海妖二王爷" item="海妖二王爷的头颅" min_num="1" max_num="1" bind_require="1" limit="1" chance="10000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[前往#LINK<MAP:海底3,POSX:150,POSY:90,STR:秘境沉船三层的船舱,MOVE:1>#，消灭#LINK<MAP:海底3船舱1,POSX:36,POSY:58,STR:海妖二王爷,MOVE:1>##ITEM0#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[回到#LINK<MAP:海底3,POSX:86,POSY:77,STR:海角秘境,MOVE:1>#，禀报#NPCLINK<STR:海妖三王爷,NPCKEYNAME:海妖三王爷,MOVE:1>#。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="海妖二王爷的头颅"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="375000" ingot="0" bind_ingot="0" integral="0" gold="8888" bind_gold="0" >
			<awards>
				<award keyname="1.5倍经验卷轴"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>