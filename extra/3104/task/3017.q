<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3017" name="[主线]-寻找书商" type="1" suggest_level="1" visible="1" next_id="3018">
		<script name="3017" />
		<description>
			你之所以会受伤，除了敌人强大之外，还因为你缺乏足够的战斗技能啊。既然如此，那就一定要去寻找书商了。从他那里可以学到一些技能哦。
		</description>
		<dialogue>
			<brief>你之所以会受伤，除了敌人强大之外，还因为你缺乏足够的战斗技能啊。既然如此，那就一定要去寻找书商了。从他那里可以学到一些技能哦。</brief>
			<await>在村子西边可以找到书商。</await>
			<finish>哈哈，骚年！能够相遇在此刻，真是了不得的猿粪，猿粪啊！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3016" />
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
			<![CDATA[与#NPCLINK<STR:书商,NPCKEYNAME:新手村书商左,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:书商,NPCKEYNAME:新手村书商左,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="3500" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>