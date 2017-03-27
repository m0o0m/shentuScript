<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3201" name="[主线]-受到威胁的物资运输" type="1" suggest_level="1" visible="1" next_id="3202">
		<description>
			我们在西进的途中发现了东临城，它在神战的战火完全毁灭，因为神圣能量场的发现，我们决定在废墟之上重建城市。\n　　但是，天魔显然不会让我们安静地建设，在从龙城运送物质前往东临城的路上，天魔派出了一批天魔密探袭击我们的人员，毁坏我们的物质。请去消灭他们吧，只要击杀10个天魔密探，将可确保路线安全。
		</description>
		<dialogue>
			<brief>我们在西进的途中发现了东临城，它在神战的战火完全毁灭，因为神圣能量场的发现，我们决定在废墟之上重建城市。\n　　但是，天魔显然不会让我们安静地建设，在从龙城运送物质前往东临城的路上，天魔派出了一批天魔密探袭击我们的人员，毁坏我们的物质。请去消灭他们吧，只要击杀10个天魔密探，将可确保路线安全。</brief>
			<await>只要击杀10个天魔密探，将可确保路线安全。</await>
			<finish>幸好我们有着像你一样勇敢和强大的守护者，非常感谢你！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3200" />
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
			<![CDATA[在东临城北面击败天魔密探，获取#LINK<MAP:东临城,POSX:389,POSY:223,STR:天魔密探,MOVE:1>##MONSTERGROUP0#后找东临城军需官]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:东临城军需官,NPCKEYNAME:东临城军需官,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="天魔密探" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="150000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>