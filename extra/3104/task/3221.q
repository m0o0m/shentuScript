<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3221" name="[主线]-不能遵守的约定(5)" type="1" suggest_level="1" visible="1" next_id="3222">
		<description>
			巫山城的裁缝小姐正在焦急地等待消息……，再次辛苦你跑一趟吧！
		</description>
		<dialogue>
			<brief>巫山城的裁缝小姐正在焦急地等待消息……，再次辛苦你跑一趟吧！</brief>
			<await>将多多的消息转告巫山城的裁缝小姐。</await>
			<finish>~（悲伤地哭泣）\n　　多多，我们有过约定的，下个月回来结婚……</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3220" />
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
			<![CDATA[找到巫山城的#NPCLINK<STR:裁缝,NPCKEYNAME:巫山城裁缝,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[与巫山城的#NPCLINK<STR:裁缝,NPCKEYNAME:巫山城裁缝,MOVE:1>#对话]]>
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