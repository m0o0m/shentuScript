<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4013" name="[支线]-被迷惑的男子(4)" type="2" suggest_level="1" visible="1" next_id="4014">
		<description>
			你知道这些动人的歌声是谁唱的吗？是那可怕的海怪，海怪中有一种歌妖，能够吟唱美妙动听的歌曲，她们用歌声引诱经过男子，然后将他们拖下水吃掉。\n　　求求你，年轻的勇士，救救我的儿子吧，想要救他，只有杀掉那些引诱他的歌妖，得到喉管，将那歌妖的喉管拿给我，我将我对他的思念灌注其中，然后你在他面前吹响歌妖的喉管，他就可以恢复了。\n　　勇士，这只有你才能做得到。\n
		</description>
		<dialogue>
			<brief>你知道这些动人的歌声是谁唱的吗？是那可怕的海怪，海怪中有一种歌妖，能够吟唱美妙动听的歌曲，她们用歌声引诱经过男子，然后将他们拖下水吃掉。\n　　求求你，年轻的勇士，救救我的儿子吧，想要救他，只有杀掉那些引诱他的歌妖，得到喉管，将那歌妖的喉管拿给我，我将我对他的思念灌注其中，然后你在他面前吹响歌妖的喉管，他就可以恢复了。\n　　勇士，这只有你才能做得到。\n</brief>
			<await>求你杀死那些歌妖，救救我可怜的儿子吧！\n</await>
			<finish>把歌妖的喉管拿给我吧，我将我对儿子的思念灌注其中。\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="100" />
			<prologues>
				<group>
					<prologue id="4012" />
				</group>
				<group>
					<prologue id="4012" />
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
				<trophy monster="秘境歌妖1" item="歌妖的喉管" min_num="1" max_num="1" bind_require="1" limit="1" chance="1000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[前往#LINK<MAP:海底3,POSX:66,POSY:96,STR:秘境沉船三层,MOVE:1>#，或者#LINK<MAP:海底3野外,POSX:203,POSY:209,STR:海角秘境,MOVE:1>#，杀死#COLORCOLOR_GREENG#秘境歌妖#COLOREND#，取得#COLORCOLOR_GREENG#歌妖的喉管#COLOREND#，然后回去找#NPCLINK<STR:老妇人,NPCKEYNAME:老妇人,MOVE:1>#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[将歌妖的喉管交给东临城的#NPCLINK<STR:老妇人,NPCKEYNAME:老妇人,MOVE:1># 。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="歌妖的喉管"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="90000" ingot="0" bind_ingot="0" integral="0" gold="10000" bind_gold="0" >
			<awards>
				<award keyname="母亲的思念"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>