<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3230" name="[主线]-变得更强" type="1" suggest_level="1" visible="1" next_id="3231">
		<description>
			东临城老兵正在寻找一位实力强大的勇士，当你提升到43级时，可以去找他哦。
		</description>
		<dialogue>
			<brief>东临城老兵正在寻找一位实力强大的勇士，当你提升到43级时，可以去找他哦。</brief>
			<await>等你43级的时候再来找我吧</await>
			<finish>终于等到了一位强大的勇士！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3229" />
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
			<![CDATA[达到43级时，与#NPCLINK<STR:东临城老兵,NPCKEYNAME:东临城老兵,MOVE:1>#对话。]]>
			</progressing>
			<accomplishing>
			<![CDATA[达到43级时，与#NPCLINK<STR:东临城老兵,NPCKEYNAME:东临城老兵,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="43" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="25000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>