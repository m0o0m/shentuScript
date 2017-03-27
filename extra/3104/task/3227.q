<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3227" name="[主线]-天魔石窟的秘密(4)" type="1" suggest_level="1" visible="1" next_id="3228">
		<description>
			关于这件装备的出处，我想龙城的藏宝阁守护人会知道的更多。他的老师曾是大龙王朝的宫廷大法师，对于大龙王朝的宫廷藏品有着我不能比的了解。
		</description>
		<dialogue>
			<brief>关于这件装备的出处，我想龙城的藏宝阁守护人会知道的更多。他的老师曾是大龙王朝的宫廷大法师，对于大龙王朝的宫廷藏品有着我不能比的了解。</brief>
			<await>去找龙城的幻境引渡者问问吧。</await>
			<finish>这确是落日盔甲无疑，当年，老师也参加了高手团，出发当天的情景老师都记在笔记之中，留给我们。在老师的笔记中，出发那天，大龙皇帝赐下了大批宫廷收藏的装备，其中就包括这件落日盔甲。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3226" />
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
			<![CDATA[找龙城的#NPCLINK<STR:藏宝阁守护人,NPCKEYNAME:藏宝阁守护人,MOVE:1>#询问情况]]>
			</progressing>
			<accomplishing>
			<![CDATA[与龙城的#NPCLINK<STR:藏宝阁守护人,NPCKEYNAME:藏宝阁守护人,MOVE:1>#对话]]>
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