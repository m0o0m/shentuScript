<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3326" name="[主线]-达到56级" type="1" suggest_level="1" visible="1" next_id="3331">
		<description>
			道家大师正在研究消除秘境中过于浓郁的水之力的方法,这需要一段时间.正好,你需要尽快提升实力.当你提升到56后再来找我吧.
		</description>
		<dialogue>
			<brief>道家大师正在研究消除秘境中过于浓郁的水之力的方法,这需要一段时间.正好,你需要尽快提升实力.当你提升到56后再来找我吧.</brief>
			<await>你还没有达到56级,要努力哦!</await>
			<finish>你提升实力的速度从来没让我失望过.</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3325" />
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
			<![CDATA[提升到56级。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与海底入口处的#NPCLINK<STR:远征军统领,NPCKEYNAME:远征军统领,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="56" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="355000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>