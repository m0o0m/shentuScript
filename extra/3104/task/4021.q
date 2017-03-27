<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4021" name="[支线]-秘境海妖之争(4)" type="2" suggest_level="1" visible="1">
		<description>
			勇士，请你转告我侄儿一声，我马上准备仪式，将他接回，海妖一族将拥立他为主。\n
		</description>
		<dialogue>
			<brief>勇士，请你转告我侄儿一声，我马上准备仪式，将他接回，海妖一族将拥立他为主。\n</brief>
			<await>快去转告我侄儿吧。\n</await>
			<finish>真的吗？太好了，真是不知道这么感谢你才好，这些东西是我海妖族的谢意，请你收下吧！\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="55" max_num="200" />
			<prologues>
				<group>
					<prologue id="4020" />
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
			<![CDATA[前往#LINK<MAP:海底入口,POSX:33,POSY:60,STR:海角秘境入口处,MOVE:1>#，将消息转告#NPCLINK<STR:海妖王子,NPCKEYNAME:海妖王子,MOVE:1>#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[前往#LINK<MAP:海底入口,POSX:33,POSY:60,STR:海角秘境入口处,MOVE:1>#，将消息转告#NPCLINK<STR:海妖王子,NPCKEYNAME:海妖王子,MOVE:1>#。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="灵元珠"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>