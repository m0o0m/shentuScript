<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3236" name="[主线]-变得更强" type="1" suggest_level="1" visible="1" next_id="3249">
		<description>
			我在寻找一位强大的勇士，因为接下来的任务非常危险，当你提升到45级后再来找我吧。
		</description>
		<dialogue>
			<brief>我在寻找一位强大的勇士，因为接下来的任务非常危险，当你提升到45级后再来找我吧。</brief>
			<await>等你45级的时候再来找我吧</await>
			<finish>终于等到了一位强者。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3235" />
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
			<![CDATA[达到45级时，与#NPCLINK<STR:东临城老兵,NPCKEYNAME:东临城老兵,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[与天魔石窟三层的#NPCLINK<STR:东临城老兵,NPCKEYNAME:东临城老兵,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="45" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="30000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>