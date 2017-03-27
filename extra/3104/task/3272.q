<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3272" name="[主线]-绝望的士兵（2）" type="1" suggest_level="1" visible="1" next_id="3273">
		<description>
			恶魔的身体内有着神灵的力量，我们永远不能最终消灭它们！除非……\n　　身为军人，我们已经准备好随时付出生命，但是，我拜托你去寻找解决的方法。 天机老人知识渊博，或许他有办法。
		</description>
		<dialogue>
			<brief>恶魔的身体内有着神灵的力量，我们永远不能最终消灭它们！除非……\n　　身为军人，我们已经准备好随时付出生命，但是，我拜托你去寻找解决的方法。 天机老人知识渊博，或许他有办法。</brief>
			<await>天机老人或许知道，去找他看看吧。</await>
			<finish>城中压抑的气息，我已经注意到了，在你没来之前，我就已经在思索。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3271" />
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
			<![CDATA[去龙城找#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[去龙城找#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="250000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="7500" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>