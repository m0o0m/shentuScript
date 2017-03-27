<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5011" name="[支线]-镇魔殿的危机" type="2" suggest_level="1" visible="1" next_id="5012">
		<description>
			从你的所作所为，我看到了你从未停下追求强大的脚步！既然你如此迫切，那就应该去镇魔殿历练一番。我正好收到镇殿殿传送人的报告，他那里正好需要年轻的勇士。
		</description>
		<dialogue>
			<brief>从你的所作所为，我看到了你从未停下追求强大的脚步！既然你如此迫切，那就应该去镇魔殿历练一番。我正好收到镇殿殿传送人的报告，他那里正好需要年轻的勇士。</brief>
			<await>去找镇魔殿传送人吧！</await>
			<finish>年经的勇士，这里是镇魔殿所在。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3121" />
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
			<![CDATA[与龙城#NPCLINK<STR:镇魔殿传送人,NPCKEYNAME:镇魔殿传送人>#对话。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与龙城#NPCLINK<STR:镇魔殿传送人,NPCKEYNAME:镇魔殿传送人>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1100" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>