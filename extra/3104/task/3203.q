<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3203" name="[主线]-被劫走的粮食(2)" type="1" suggest_level="1" visible="1" next_id="3204">
		<description>
			对邪恶的警惕再怎么强调都不会过分。这批粮食虽然看起来没有被动过手脚，我们仍然要仔细的检查。\n　　巫山城的炼药师，对所有药品的研究都非常精深，你去帮我取回他用于测毒的试药银针吧。
		</description>
		<dialogue>
			<brief>对邪恶的警惕再怎么强调都不会过分。这批粮食虽然看起来没有被动过手脚，我们仍然要仔细的检查。\n　　巫山城的炼药师，对所有药品的研究都非常精深，你去帮我取回他用于测毒的试药银针吧。</brief>
			<await>借到炼药师的试药银针了吗？</await>
			<finish>需要我的试药银针吗？</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3202" />
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
			<![CDATA[找到巫山城的#NPCLINK<STR:炼药师,NPCKEYNAME:巫山城炼药师,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[与巫山城的#NPCLINK<STR:炼药师,NPCKEYNAME:巫山城炼药师,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="30000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>