<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3226" name="[主线]-天魔石窟的秘密(3)" type="1" suggest_level="1" visible="1" next_id="3227">
		<description>
			这件盔甲很有价值……，这样吧，你带上这盔甲去询问装备大师吧。他不仅对装备的强化有着高深的造诣，而且对历史上有名的装备都有非常深刻的了解。
		</description>
		<dialogue>
			<brief>这件盔甲很有价值……，这样吧，你带上这盔甲去询问装备大师吧。他不仅对装备的强化有着高深的造诣，而且对历史上有名的装备都有非常深刻的了解。</brief>
			<await>去找巫山城的的装备大师问问吧。</await>
			<finish>经过还原修复，并且查询大量笔记，可以初步确认，这是当年大龙王朝宫廷藏品落日盔甲。当然，因为这件盔甲损坏过于严重，只能得出一个初步的结论。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3225" />
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
			<![CDATA[找巫山城的#NPCLINK<STR:装备大师,NPCKEYNAME:装备大师,MOVE:1>#询问情况]]>
			</progressing>
			<accomplishing>
			<![CDATA[与巫山城的#NPCLINK<STR:装备大师,NPCKEYNAME:装备大师,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="25000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>