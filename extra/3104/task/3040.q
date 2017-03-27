<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3040" name="[主线]-毒蛇之灾(3)" type="1" suggest_level="1" visible="1" next_id="3041">
		<script name="3040" />
		<description>
			先回去与天机老人通告一声吧，告知绝路谷的情况。
		</description>
		<dialogue>
			<brief>请勇士先回去与天机老人通告一声吧，迟则一天，我马上安排人去巫山城！</brief>
			<await>回城与天机老人对话。</await>
			<finish>那里的环境真的是太容易滋养蛇物了，可惜现在没有太多的心力彻底解决毒蛇的麻烦。\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3039" />
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
			<![CDATA[与#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="26000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>