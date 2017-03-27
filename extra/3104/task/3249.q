<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3249" name="[主线]-变得更强" type="1" suggest_level="1" visible="1" next_id="3237">
		<description>
			接下来的任务非常危险，我们派出了一位勇敢的战士深入天魔石窟，但直到如今他还没回来，我们希望你能深入天魔石窟寻找他的行踪。
		</description>
		<dialogue>
			<brief>接下来的任务非常危险，我们派出了一位勇敢的战士深入天魔石窟，但直到如今他还没回来，我们希望你能深入天魔石窟寻找他的行踪。</brief>
			<await>他可能已经进入了天魔石窟的深处。</await>
			<finish>你……是……找……我……吗？</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3236" />
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
			<![CDATA[深入到天魔石窟三层，找到#NPCLINK<STR:濒死的人类,NPCKEYNAME:濒死的人类,MOVE:1>#，向他提供帮助。]]>
			</progressing>
			<accomplishing>
			<![CDATA[深入到天魔石窟三层，找到#NPCLINK<STR:濒死的人类,NPCKEYNAME:濒死的人类,MOVE:1>#，向他提供帮助。]]>
			</accomplishing>
		</tracker>
		<rewards exp="100000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>