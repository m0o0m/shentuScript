<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3151" name="[主线]-试炼教头的建议" type="1" suggest_level="1" visible="1" next_id="3152">
		<description>
			从封魔阵的冒险，到试炼场的历练，你在龙城的努力我都看在眼里。既然你对追求实力如此执着，说不得要指点你一条捷径了，看到旁边的秘境守护者了吗？去找他吧！
		</description>
		<dialogue>
			<brief>从封魔阵的冒险，到试炼场的历练，你在龙城的努力我都看在眼里。既然你对追求实力如此执着，说不得要指点你一条捷径了，看到旁边的秘境守护者了吗？去找他吧！</brief>
			<await>秘境守护者就在附近呢，找不到吗？</await>
			<finish>为守护龙城，提升实力而来的少年，欢迎你。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3103" />
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
			<![CDATA[与在龙城广场的#NPCLINK<STR:秘境守护者,NPCKEYNAME:秘境守护者龙城,MOVE:1>#对话。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与在龙城广场的#NPCLINK<STR:秘境守护者,NPCKEYNAME:秘境守护者龙城,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<rewards exp="45000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>