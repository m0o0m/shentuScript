<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3013" name="[主线]-带血迹的玉佩(1)" type="1" suggest_level="1" visible="1" next_id="3014">
		<description>
			唉，我的丈夫外出进货已快一月，至今杳无音讯，真真急死人了……，如今村外突然出现如此多的怪物，我丈夫恐怕已遭了毒手……\n　　勇士，你能帮帮我吗？请去找新手引导员询问下有什么线索吧！
		</description>
		<dialogue>
			<brief>唉，我的丈夫外出进货已快一月，至今杳无音讯，真真急死人了……，如今村外突然出现如此多的怪物，我丈夫恐怕已遭了毒手……\n　　勇士，你能帮帮我吗？请去找新手引导员询问下有什么线索吧！</brief>
			<await>去找新手引导员询问！</await>
			<finish>我记得一个月前他赶着马车前往巫山城，那时村里还非常安全，不久之后，村子周围突然出现无数的白茅人和木器人，很可能他在前往巫山城的路山遭了毒手！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3012" />
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
			<![CDATA[与#NPCLINK<STR:新手引导员,NPCKEYNAME:新手引导员左,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:新手引导员,NPCKEYNAME:新手引导员左,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="2000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>