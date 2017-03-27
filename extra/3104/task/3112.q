<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3112" name="[主线]-向天机老人报告" type="1" suggest_level="1" visible="1" next_id="3113">
		<description>
			物资补给队的困难已经解决，自己先一步回到龙城告诉大家这个消息
		</description>
		<dialogue>
			<brief>我们这就准备出发，少侠你就先回龙城告诉大家一声吧，以免他们担心，回到龙城时请务必转告天机老人，我们军需处的人员，必定全力以赴，保证龙城物质的供应！</brief>
			<await>\n　　恩，回来的挺快啊，消息探听的如何啦</await>
			<finish>真是太好了，保证物质供应路线的安全，对于龙城的守卫和建设来说至关重要！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3111" />
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
			<![CDATA[回龙城去找#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#报告补给队的情况]]>
			</progressing>
			<accomplishing>
			<![CDATA[回龙城去找#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#报告补给队的情况]]>
			</accomplishing>
		</tracker>
		<rewards exp="20000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>