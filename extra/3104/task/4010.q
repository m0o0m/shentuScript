<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4010" name="[支线]-被迷惑的男子(1)" type="2" suggest_level="1" visible="1" next_id="4011">
		<description>
			东临城有位老妇人,似乎非常悲伤。我曾经多次看到过她在这里哭泣，如果你愿意帮忙,不妨前去问问。
		</description>
		<dialogue>
			<brief>东临城有位老妇人,似乎非常悲伤。我曾经多次看到过她在这里哭泣，如果你愿意帮忙,不妨前去问问。</brief>
			<await>你应该去找找东临城的老妇人~</await>
			<finish>是的，我在寻找一位勇士的帮助！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="200" />
			<prologues>
				<group>
					<prologue id="3286" />
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
			<![CDATA[与东临城的#NPCLINK<STR:老妇人,NPCKEYNAME:老妇人,MOVE:1>#谈谈]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城的#NPCLINK<STR:老妇人,NPCKEYNAME:老妇人,MOVE:1>#谈谈]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="55000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>