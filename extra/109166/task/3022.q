<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3022" name="[主线]-寻找杂货商" type="1" suggest_level="1" visible="1" next_id="3023">
		<description>
			去找找杂货商，也许有你需要的东西。
		</description>
		<dialogue>
			<brief>现在，你已经算是一个合格的勇士了。去巫山城参加龙城救援军之前，我建议你去找找杂货商，也许有你有的东西。</brief>
			<await>我建议你去找找杂货商，也许有你有的东西。</await>
			<finish>咦？你怎么还在村里闲逛？其它人可都是在努力学习战斗的技能哦，你可别再想着偷懒！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3021" />
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
			<![CDATA[与#NPCLINK<STR:杂货商,NPCKEYNAME:新手村杂货商左,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:杂货商,NPCKEYNAME:新手村杂货商左,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="8000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>