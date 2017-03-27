<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3043" name="[主线]-骷髅暴动(3)" type="1" suggest_level="1" visible="1" next_id="3045">
		<description>
			这是抽取恶魔的精血与僵尸之血混血发动的邪恶魔法！被沾染上邪恶之血的骷髅，会变得更加强大和狂暴！\n    恶魔既然抽取过僵尸之血，那么，废弃矿洞也一定发生了变故，快去告诉天机老鬼！
		</description>
		<dialogue>
			<brief>这是抽取恶魔的精血与僵尸之血混血发动的邪恶魔法！被沾染上邪恶之血的骷髅，会变得更加强大和狂暴！\n    恶魔既然抽取过僵尸之血，那么，废弃矿洞也一定发生了变故，快去告诉天机老鬼！</brief>
			<await>回报天机老人！</await>
			<finish>原来如此，幸亏你带回了这些骨头！我们一定不能让恶魔的阴谋得逞。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3042" />
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
		<rewards exp="32000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>