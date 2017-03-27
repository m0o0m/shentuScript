<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3214" name="[主线]-奇特的物质(6)" type="1" suggest_level="1" visible="1" next_id="3215">
		<description>
			你的大名，现在可是响彻东临城啊，城里的铁匠听说了你的实力，非常希望你能去找他一趟。
		</description>
		<dialogue>
			<brief>你的大名，现在可是响彻东临城啊，城里的铁匠听说了你的实力，非常希望你能去找他一趟。</brief>
			<await>铁匠在城里呢。</await>
			<finish>你能来真是太好了，我正有事要你帮忙</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="35" max_num="200" />
			<prologues>
				<group>
					<prologue id="3213" />
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
			<![CDATA[与东临城的#NPCLINK<STR:铁匠,NPCKEYNAME:东临城铁匠,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城的#NPCLINK<STR:铁匠,NPCKEYNAME:东临城铁匠,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="10000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>