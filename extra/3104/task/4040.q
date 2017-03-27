<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4040" name="[支线]-书商的请求" type="2" suggest_level="1" visible="1" next_id="4041">
		<description>
			勇士请留步，我已经听说了你在巫山城的表现，解决将军冢和废弃矿洞的危机真是做得非常棒。事情是这样，我受书商的委托，寻找一位有能力前往废弃矿洞的勇士，我想你非常适合。
		</description>
		<dialogue>
			<brief>勇士请留步，我已经听说了你在巫山城的表现，解决将军冢和废弃矿洞的危机真是做得非常棒。事情是这样，我受书商的委托，寻找一位有能力前往废弃矿洞的勇士，我想你非常适合。</brief>
			<await>去找书商询问情况。</await>
			<finish>帮忙的人终于来了！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="22" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[找城里的#NPCLINK<STR:书商,NPCKEYNAME:龙城书商,MOVE:1>#打听情况。]]>
			</progressing>
			<accomplishing>
			<![CDATA[找城里的#NPCLINK<STR:书商,NPCKEYNAME:龙城书商,MOVE:1>#打听情况。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="25000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>