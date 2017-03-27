<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4014" name="[支线]-被迷惑的男子(5)" type="2" suggest_level="1" visible="1">
		<description>
			把这歌妖的喉管拿去吧，里面灌注了母亲对他的思念，在他面前吹响它，一切就可以恢复正常了。\n
		</description>
		<dialogue>
			<brief>把这歌妖的喉管拿去吧，里面灌注了母亲对他的思念，在他面前吹响它，一切就可以恢复正常了。\n</brief>
			<await>这个歌妖的喉管中，灌注了母亲对儿子的思念，一定可以让被迷惑的男子恢复正常的！\n</await>
			<finish>什么？我这是怎么了？哎呀……我似乎已经数日没有回家了，母亲一定在家等急了，我得马上回去了。\n　　谢谢你，勇士，你救了我，我会报答你的！\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="100" />
			<prologues>
				<group>
					<prologue id="4011" />
				</group>
				<group>
					<prologue id="4012" />
				</group>
				<group>
					<prologue id="4013" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[从#LINK<MAP:海底3,POSX:66,POSY:96,STR:秘境沉船三层,MOVE:1>#进入#LINK<MAP:海底3野外,POSX:203,POSY:209,STR:海角秘境,MOVE:1>#，到达#NPCLINK<STR:被迷惑的男子,NPCKEYNAME:被迷惑的男子,MOVE:1>#面前，吹响#COLORCOLOR_GREENG#母亲的思念#COLOREND#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[#NPCLINK<STR:被迷惑的男子,NPCKEYNAME:被迷惑的男子,MOVE:1>#似乎清醒了，快和他说说话吧！]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="母亲的思念(完成)"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" ingot="0" bind_ingot="0" integral="0" gold="10000" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>