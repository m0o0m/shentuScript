<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3106" name="[主线]-助人为乐" type="1" suggest_level="1" visible="1" next_id="3107">
		<description>
			以你的实力，正好可以大显身手！听说龙城的的杂货商，正在寻找一个身手敏捷的勇士，我向他推荐了你，你可以去看看。
		</description>
		<dialogue>
			<brief>听说龙城的的杂货商，正在寻找一个身手敏捷的勇士，我向他推荐了你，你可以去看看。</brief>
			<await>快去找杂货商吧，他就在广场右边！</await>
			<finish>来的正好，我正好需要人帮助</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3104" />
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
			<![CDATA[去龙城找#NPCLINK<STR:杂货商,NPCKEYNAME:龙城杂货商,MOVE:1>#看看，有什么可以帮助他的]]>
			</progressing>
			<accomplishing>
			<![CDATA[去龙城找#NPCLINK<STR:杂货商,NPCKEYNAME:龙城杂货商,MOVE:1>#看看，有什么可以帮助他的]]>
			</accomplishing>
		</tracker>
		<rewards exp="15000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>