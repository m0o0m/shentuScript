<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3204" name="[主线]-被劫走的粮食(3)" type="1" suggest_level="1" visible="1" next_id="3205">
		<description>
			我的试药银针对于检测毒性极为灵敏，这可是我们炼药师的独门利器。虽然我可以借给你，不过你可要记得早点归还哦？
		</description>
		<dialogue>
			<brief>我的试药银针对于检测毒性极为灵敏，这可是我们炼药师的独门利器。虽然我可以借给你，不过你可要记得早点归还哦？</brief>
			<await>快去东临城检测那批粮食~</await>
			<finish>有了这试药银针，我就可以对食物和饮水放心了。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3203" />
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
			<![CDATA[找到#NPCLINK<STR:东临城军需官,NPCKEYNAME:东临城军需官,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:东临城军需官,NPCKEYNAME:东临城军需官,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="40000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>